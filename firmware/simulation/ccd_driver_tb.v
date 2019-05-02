// Verilog testbench created by TD v4.4.433
// 2019-05-02 08:40:45

`timescale 1ns / 1ps

module ccd_driver_tb();

reg CLK_IN;
reg FT_RXF;
reg FT_TXE;
reg RST_N;
wire CCD_CLK;
wire CCD_RS;
wire CCD_SH;
wire CCD_SP;
wire FT_RD;
wire FT_WR;
wire [2:0] RGB_LED;
wire [7:0] FT_D;

//Clock process
parameter PERIOD = 10;
always #(PERIOD/2) CCD_CLK = ~CCD_CLK;

//glbl Instantiate
glbl glbl();

//Unit Instantiate
ccd_driver uut(
	.CLK_IN(CLK_IN),
	.FT_RXF(FT_RXF),
	.FT_TXE(FT_TXE),
	.RST_N(RST_N),
	.CCD_CLK(CCD_CLK),
	.CCD_RS(CCD_RS),
	.CCD_SH(CCD_SH),
	.CCD_SP(CCD_SP),
	.FT_RD(FT_RD),
	.FT_WR(FT_WR),
	.RGB_LED(RGB_LED),
	.FT_D(FT_D));

//Stimulus process
initial begin
//To be inserted
end

endmodule