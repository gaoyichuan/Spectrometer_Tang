`timescale 1ns / 1ps

module ccd_driver(
	input wire CLK_IN,
	input wire RST_N,
	output wire [2:0] RGB_LED,
	output wire CCD_SH,
	output wire CCD_CLK,
	output wire CCD_RS,
	output wire CCD_SP,

	inout wire [7:0] FT_D,
	output wire FT_RD,
	output wire FT_WR,
	input wire FT_TXE,
	input wire FT_RXF
);

ip_pll pll(
	.refclk		(CLK_IN),
	.reset		(~RST_N),
	.extlock		(clklock),
	.clk0_out	(clk_20m),
	.clk1_out	(clk_50m)
);

tcd1500c ccd(
	.CLK20M	(clk_20m),
	.TRIG	(CCD_TRIG),
	.SH		(CCD_SH),
	.CLK		(CCD_CLK),
	.RS		(CCD_RS),
	.SP		(CCD_SP)
);

ft245 usb_fifo(
	.clk	(clk_50m),
	.D	(FT_D),
	.RD	(FT_RD),
	.WR	(FT_WR),
	.TXE(FT_TXE),
	.RXF(FT_RXF)
);


reg CCD_TRIG;
reg [31:0] counter;

always @(posedge clk_20m)
begin
	counter <= counter + 1;
	if(counter == 'hFFFFFF) begin
		CCD_TRIG <= 1;
	end
	else if(counter == 'h1000FF) begin
		CCD_TRIG <= 0;
		counter <= 0;
	end
end

endmodule
