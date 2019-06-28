`timescale 1ns / 1ps

module ccd_driver(
           input wire CLK_IN,
           input wire RST_N,
           output wire [2: 0] RGB_LED,
           output wire CCD_SH,
           output wire CCD_CLK,
           output wire CCD_RS,
           output wire CCD_SP,

           inout wire [7: 0] FT_D,
           output wire FT_RD,
           output wire FT_WR,
           input wire FT_TXE,
           input wire FT_RXF,

           output wire ADC_CLK,
           input wire [11: 0] ADC_D,
           input wire ADC_OF
       );

wire sp;
wire ccd_done;

reg adc_clk;
reg [11: 0] adc_data;
reg [7: 0] ft_data;
reg [2: 0] rledout;
reg trig;
reg rd;
reg wr;

assign CCD_SP = sp;
assign ADC_CLK = adc_clk;
assign FT_WR = wr;
assign FT_D[7: 0] = ft_data; 
assign RGB_LED = rledout;

always @(posedge CLK_IN) begin
    rledout[2] <= 'b1;
    rledout[1] <= ccd_done;
    rledout[0] <= ~ADC_OF;
end

reg [4:0] adc_delay;
reg [7:0] ft_delay;
reg ccd_done_latch;

always @(posedge clk_main) begin
	if(sp == 'd1) begin
		ft_delay <= 'd0;
		adc_delay <= adc_delay + 'd1;
	end else if(sp == 'd0) begin
		adc_delay <= 'd0;
		ft_delay <= ft_delay + 'd1;
	end
		
	if(ccd_done == 'd1) ccd_done_latch = 'd1;
	
	if(adc_delay == 'd2) begin
		adc_clk <= 'd1;
	end else if(adc_delay == 'd4) begin
		adc_clk <= 'd0;
		adc_data <= ADC_D;
	end else if(adc_delay == 'd8) begin
		adc_clk <= 'd1;		// fake
	end else if(adc_delay == 'd10) begin
		adc_clk <= 'd0;		// fake
	end else begin
		adc_clk <= adc_clk;
	end
	
	if(ft_delay == 'd2) begin
		wr <= 'd1;
		ft_data <= (ccd_done_latch == 'd0) ? {4'b0000, adc_data[11:8]} : 'hF5;
	end else if(ft_delay == 'd8) begin
		wr <= 'd0;
	end else if(ft_delay == 'd23) begin
		wr <= 'd1;
		ft_data <= (ccd_done_latch == 'd0) ? ((adc_data[7:0] == 'hAA) ? 'hAB : adc_data[7:0]) : 'hAA;
	end else if(ft_delay == 'd31) begin
		wr <= 'd0;
		if(ccd_done_latch == 'd1) ccd_done_latch <= 'd0;
	end
	
	if(ft_delay == 'd2) begin
		adc_clk <= 'd1;
	end else if(ft_delay == 'd4) begin
		adc_clk <= 'd0;
	end else if(ft_delay == 'd8) begin
		adc_clk <= 'd1;
	end else if(ft_delay == 'd10) begin
		adc_clk <= 'd0;
	end else if(ft_delay == 'd12) begin
		adc_clk <= 'd1;
	end else if(ft_delay == 'd16) begin
		adc_clk <= 'd0;
	end

end

ip_pll pll(
           .refclk (CLK_IN),
           .reset (~RST_N),
           .clk0_out (clk_main)
       );

tcd1500c ccd(
        .clk (clk_main),
        .rst_n (RST_N),
        .phi (CCD_CLK),
        .sh (CCD_SH),
        .rs (CCD_RS),
        .sp (sp),
        .clk_100	(ccd_clk_100),
        .done (ccd_done)
    );

endmodule
