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

wire ccd_clk_100;
wire sp;
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
assign FT_D[7: 0] = ft_data; //  = adc_data[11: 4];
assign RGB_LED = rledout;

always @(posedge CLK_IN) begin
    rledout[2] <= 'b1;
    rledout[1] <= 'b1;
    rledout[0] <= ~ADC_OF;
end

reg [4:0] adc_delay;

always @(posedge clk_50m) begin
	if(sp == 'd1) begin
		adc_delay <= adc_delay + 'b1;
	end else if((sp == 'd0) || (adc_delay > 'd12)) begin
		adc_delay <= 'd0;
	end
	
	if(adc_delay == 'd4) begin
		adc_clk <= 'd1;
		wr <= 'd1;
	end else if(adc_delay == 'd6) begin
		adc_clk <= 'd0;
		wr <= 'd0;
		adc_data <= ADC_D;
		ft_data <= {4'b0000, adc_data[11:8]};
	end else if(adc_delay == 'd10) begin
		wr <= 'd1;
		adc_clk <= adc_clk;
	end else if(adc_delay == 'd12) begin
		wr <= 'd0;
		ft_data <= adc_data[7:0];
		adc_clk <= adc_clk;
	end else begin
		adc_clk <= adc_clk;
	end
end


ip_pll pll(
           .refclk (CLK_IN),
           .reset (~RST_N),
           .extlock (clklock),
           .clk0_out (clk_20m),
           .clk1_out (clk_50m)
       );

tcd1500c ccd(
        .clk (clk_50m),
        .rst_n (RST_N),
        .phi (CCD_CLK),
        .sh (CCD_SH),
        .rs (CCD_RS),
        .sp (sp),
        .clk_100	(ccd_clk_100)
    );

endmodule
