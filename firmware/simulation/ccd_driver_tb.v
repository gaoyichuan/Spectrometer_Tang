// Verilog testbench created by TD v4.3.815
// 2019-04-21 15:48:05

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
	.FT_D(FT_D));

//Stimulus process
initial begin
//To be inserted
end

endmodule