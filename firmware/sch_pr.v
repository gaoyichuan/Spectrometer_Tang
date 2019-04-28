// Verilog netlist created by TD v4.3.815
// Sun Apr 28 10:53:17 2019

`timescale 1ns / 1ps
module ccd_driver  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ccd_driver.v(3)
  (
  CLK_IN,
  FT_RXF,
  FT_TXE,
  RST_N,
  CCD_CLK,
  CCD_RS,
  CCD_SH,
  CCD_SP,
  FT_RD,
  FT_WR,
  RGB_LED,
  FT_D
  );

  input CLK_IN;  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ccd_driver.v(4)
  input FT_RXF;  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ccd_driver.v(16)
  input FT_TXE;  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ccd_driver.v(15)
  input RST_N;  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ccd_driver.v(5)
  output CCD_CLK;  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ccd_driver.v(8)
  output CCD_RS;  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ccd_driver.v(9)
  output CCD_SH;  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ccd_driver.v(7)
  output CCD_SP;  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ccd_driver.v(10)
  output FT_RD;  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ccd_driver.v(13)
  output FT_WR;  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ccd_driver.v(14)
  output [2:0] RGB_LED;  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ccd_driver.v(6)
  inout [7:0] FT_D;  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ccd_driver.v(12)

  wire [7:0] FT_D_pad;  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ccd_driver.v(12)
  wire [13:0] \ccd/h ;  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/tcd1500c.v(13)
  wire [7:0] \ccd/i ;  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/tcd1500c.v(10)
  wire [7:0] \ccd/j ;  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/tcd1500c.v(11)
  wire [7:0] \ccd/k ;  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/tcd1500c.v(12)
  wire [7:0] \ccd/n10 ;
  wire [7:0] \ccd/n11 ;
  wire [7:0] \ccd/n3 ;
  wire [13:0] \ccd/n37 ;
  wire [31:0] \usb_fifo/counter ;  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ft245.v(11)
  wire [31:0] \usb_fifo/n0 ;
  wire CCD_CLK_pad;  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ccd_driver.v(8)
  wire CCD_RS_pad;  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ccd_driver.v(9)
  wire CCD_RS_pad_gclk_net;
  wire CCD_SH_pad;  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ccd_driver.v(7)
  wire CCD_SP_pad;  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ccd_driver.v(10)
  wire CLK_IN_pad;  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ccd_driver.v(4)
  wire FT_WR_pad;  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ccd_driver.v(14)
  wire RST_N_pad;  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ccd_driver.v(5)
  wire _al_u100_o;
  wire _al_u101_o;
  wire _al_u102_o;
  wire _al_u103_o;
  wire _al_u104_o;
  wire _al_u105_o;
  wire _al_u106_o;
  wire _al_u107_o;
  wire _al_u108_o;
  wire _al_u110_o;
  wire _al_u111_o;
  wire _al_u112_o;
  wire _al_u113_o;
  wire _al_u114_o;
  wire _al_u116_o;
  wire _al_u59_o;
  wire _al_u60_o;
  wire _al_u61_o;
  wire _al_u62_o;
  wire _al_u64_o;
  wire _al_u65_o;
  wire _al_u75_o;
  wire _al_u76_o;
  wire _al_u78_o;
  wire _al_u89_o;
  wire \ccd/add0/c1 ;
  wire \ccd/add0/c3 ;
  wire \ccd/add0/c5 ;
  wire \ccd/add0/c7 ;
  wire \ccd/add1/c1 ;
  wire \ccd/add1/c3 ;
  wire \ccd/add1/c5 ;
  wire \ccd/add1/c7 ;
  wire \ccd/add2/c1 ;
  wire \ccd/add2/c3 ;
  wire \ccd/add2/c5 ;
  wire \ccd/add2/c7 ;
  wire \ccd/add3/c11 ;
  wire \ccd/add3/c3 ;
  wire \ccd/add3/c7 ;
  wire \ccd/lt0_c1 ;
  wire \ccd/lt0_c3 ;
  wire \ccd/lt0_c5 ;
  wire \ccd/lt0_c7 ;
  wire \ccd/lt1_c1 ;
  wire \ccd/lt1_c3 ;
  wire \ccd/lt1_c5 ;
  wire \ccd/lt1_c7 ;
  wire \ccd/n12_lutinv ;
  wire \ccd/n16_lutinv ;
  wire \ccd/n18 ;
  wire \ccd/n2 ;
  wire \ccd/n38 ;
  wire \ccd/n5 ;
  wire \ccd/run ;  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/tcd1500c.v(15)
  wire \ccd/u16_sel_is_2_o ;
  wire clk_20m;  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ccd_driver.v(23)
  wire clk_50m;  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ccd_driver.v(24)
  wire n0;
  wire \pll/clk0_buf ;  // al_ip/ip_pll.v(35)
  wire \usb_fifo/add0/c11 ;
  wire \usb_fifo/add0/c15 ;
  wire \usb_fifo/add0/c19 ;
  wire \usb_fifo/add0/c23 ;
  wire \usb_fifo/add0/c27 ;
  wire \usb_fifo/add0/c3 ;
  wire \usb_fifo/add0/c31 ;
  wire \usb_fifo/add0/c7 ;
  wire \usb_fifo/n1 ;
  wire \usb_fifo/n6 ;
  wire \usb_fifo/n9 ;

  EG_PHY_GCLK CCD_RS_pad_gclk_inst (
    .clki(CCD_RS_pad),
    .clko(CCD_RS_pad_gclk_net));
  EG_PHY_PAD #(
    //.LOCATION("N4"),
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS33"),
    .MODE("BI"),
    .TSMUX("0"))
    _al_u10 (
    .do({open_n1,open_n2,open_n3,FT_D_pad[6]}),
    .bpad(FT_D[6]));  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ccd_driver.v(12)
  EG_PHY_LSLICE #(
    //.LUTF0("0"),
    //.LUTG0("~A*~B*~C*D+A*~B*~C*D+~A*B*~C*D+A*B*~C*D+~A*~B*C*D+A*~B*C*D+~A*B*C*D+A*B*C*D"),
    .INIT_LUTF0(16'b0000000000000000),
    .INIT_LUTG0(16'b1111111100000000),
    .LSFMUX0("FUNC5"),
    .MODE("LOGIC"))
    _al_u104 (
    .d({open_n25,_al_u101_o}),
    .e({open_n26,_al_u103_o}),
    .f({open_n42,_al_u104_o}));
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ft245.v(34)
  EG_PHY_LSLICE #(
    //.LUTF0("~A*~D*~B*~C+~A*D*~B*~C"),
    //.LUTF1("(A*C*B)"),
    //.LUTG0("0"),
    //.LUTG1("(A*C*B)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000100000001),
    .INIT_LUTF1(16'b1000000010000000),
    .INIT_LUTG0(16'b0000000000000000),
    .INIT_LUTG1(16'b1000000010000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .SRMODE("SYNC"),
    .SRMUX("SR"))
    \_al_u109|usb_fifo/reg1_b20  (
    .a({_al_u108_o,\usb_fifo/counter [20]}),
    .b({_al_u104_o,\usb_fifo/counter [22]}),
    .c({_al_u106_o,\usb_fifo/counter [23]}),
    .clk(clk_50m),
    .e({open_n51,\usb_fifo/counter [21]}),
    .mi({open_n53,\usb_fifo/n0 [20]}),
    .sr(\usb_fifo/n9 ),
    .f({\usb_fifo/n9 ,_al_u107_o}),
    .q({open_n68,\usb_fifo/counter [20]}));  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ft245.v(34)
  EG_PHY_PAD #(
    //.LOCATION("N5"),
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS33"),
    .MODE("BI"),
    .TSMUX("0"))
    _al_u11 (
    .do({open_n70,open_n71,open_n72,FT_D_pad[1]}),
    .bpad(FT_D[5]));  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ccd_driver.v(12)
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ft245.v(34)
  EG_PHY_LSLICE #(
    //.LUTF0("(~0*~D*~C*B*A)"),
    //.LUTF1("(D*C)"),
    //.LUTG0("(~1*~D*~C*B*A)"),
    //.LUTG1("(D*C)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000000001000),
    .INIT_LUTF1(16'b1111000000000000),
    .INIT_LUTG0(16'b0000000000000000),
    .INIT_LUTG1(16'b1111000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .SRMODE("SYNC"),
    .SRMUX("SR"))
    \_al_u111|usb_fifo/reg1_b17  (
    .a({open_n86,_al_u107_o}),
    .b({open_n87,\usb_fifo/counter [16]}),
    .c({_al_u106_o,\usb_fifo/counter [17]}),
    .clk(clk_50m),
    .d({_al_u110_o,\usb_fifo/counter [18]}),
    .e({open_n89,\usb_fifo/counter [19]}),
    .mi({open_n91,\usb_fifo/n0 [17]}),
    .sr(\usb_fifo/n9 ),
    .f({_al_u111_o,_al_u110_o}),
    .q({open_n106,\usb_fifo/counter [17]}));  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ft245.v(34)
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/tcd1500c.v(109)
  EG_PHY_LSLICE #(
    //.LUTF0("0"),
    //.LUTF1("0"),
    //.LUTG0("~A*B*~C*~D+A*B*~C*~D+~A*B*C*~D+A*B*C*~D+~A*B*~C*D+A*B*~C*D+~A*B*C*D+A*B*C*D"),
    //.LUTG1("~D*~B*~C*A+D*~B*~C*A+~D*B*~C*A+D*B*~C*A+~D*~B*C*A+D*~B*C*A+~D*B*C*A+D*B*C*A"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000000000000),
    .INIT_LUTF1(16'b0000000000000000),
    .INIT_LUTG0(16'b1100110011001100),
    .INIT_LUTG1(16'b1010101010101010),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \_al_u114|ccd/SH_reg  (
    .a({_al_u101_o,open_n107}),
    .b({open_n108,_al_u62_o}),
    .clk(CCD_RS_pad_gclk_net),
    .e({_al_u113_o,_al_u60_o}),
    .f({_al_u114_o,open_n129}),
    .q({open_n133,CCD_SH_pad}));  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/tcd1500c.v(109)
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ft245.v(34)
  EG_PHY_MSLICE #(
    //.LUT0("(A*B*C)"),
    //.LUT1("(C*B)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1000000010000000),
    .INIT_LUT1(16'b1100000011000000),
    .MODE("LOGIC"),
    .REG0_REGSET("SET"),
    .REG0_SD("MI"),
    .SRMODE("SYNC"),
    .SRMUX("SR"))
    \_al_u115|usb_fifo/reg0_b1  (
    .a({open_n134,_al_u116_o}),
    .b({_al_u111_o,_al_u106_o}),
    .c({_al_u114_o,_al_u114_o}),
    .ce(\usb_fifo/n1 ),
    .clk(clk_50m),
    .mi({open_n147,1'b0}),
    .sr(\usb_fifo/n6 ),
    .f({\usb_fifo/n6 ,\usb_fifo/n1 }),
    .q({open_n151,FT_D_pad[1]}));  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ft245.v(34)
  EG_PHY_PAD #(
    //.LOCATION("P2"),
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS33"),
    .MODE("BI"),
    .TSMUX("0"))
    _al_u12 (
    .do({open_n153,open_n154,open_n155,FT_D_pad[4]}),
    .bpad(FT_D[4]));  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ccd_driver.v(12)
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/tcd1500c.v(93)
  EG_PHY_MSLICE #(
    //.LUT0("(~A*B)"),
    //.LUT1("(~B)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0100010001000100),
    .INIT_LUT1(16'b0011001100110011),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .SRMODE("SYNC"),
    .SRMUX("SR"))
    \_al_u123|ccd/stop_reg  (
    .a({open_n169,\ccd/u16_sel_is_2_o }),
    .b({RST_N_pad,\ccd/run }),
    .clk(clk_20m),
    .mi({open_n185,1'b1}),
    .sr(\ccd/u16_sel_is_2_o ),
    .f({n0,\ccd/n2 }),
    .q({open_n189,\ccd/u16_sel_is_2_o }));  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/tcd1500c.v(93)
  EG_PHY_PAD #(
    //.LOCATION("P5"),
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS33"),
    .MODE("BI"),
    .TSMUX("0"))
    _al_u13 (
    .do({open_n191,open_n192,open_n193,FT_D_pad[1]}),
    .bpad(FT_D[3]));  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ccd_driver.v(12)
  EG_PHY_PAD #(
    //.LOCATION("M4"),
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS33"),
    .MODE("BI"),
    .TSMUX("0"))
    _al_u14 (
    .do({open_n208,open_n209,open_n210,FT_D_pad[2]}),
    .bpad(FT_D[2]));  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ccd_driver.v(12)
  EG_PHY_PAD #(
    //.LOCATION("R2"),
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS33"),
    .MODE("BI"),
    .TSMUX("0"))
    _al_u15 (
    .do({open_n225,open_n226,open_n227,FT_D_pad[1]}),
    .bpad(FT_D[1]));  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ccd_driver.v(12)
  EG_PHY_PAD #(
    //.LOCATION("N3"),
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS33"),
    .MODE("BI"),
    .TSMUX("0"))
    _al_u16 (
    .do({open_n242,open_n243,open_n244,FT_D_pad[0]}),
    .bpad(FT_D[0]));  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ccd_driver.v(12)
  EG_PHY_PAD #(
    //.LOCATION("C5"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS33"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u17 (
    .do({open_n259,open_n260,open_n261,1'b0}),
    .opad(FT_RD));  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ccd_driver.v(13)
  EG_PHY_PAD #(
    //.LOCATION("A3"),
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS33"),
    .MODE("IN"),
    .TSMUX("1"))
    _al_u18 (
    .ipad(FT_RXF));  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ccd_driver.v(16)
  EG_PHY_PAD #(
    //.LOCATION("A4"),
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS33"),
    .MODE("IN"),
    .TSMUX("1"))
    _al_u19 (
    .ipad(FT_TXE));  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ccd_driver.v(15)
  EG_PHY_PAD #(
    //.LOCATION("T7"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS33"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u20 (
    .do({open_n312,open_n313,open_n314,FT_WR_pad}),
    .opad(FT_WR));  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ccd_driver.v(14)
  EG_PHY_PAD #(
    //.LOCATION("P13"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS33"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u21 (
    .do({open_n329,open_n330,open_n331,1'b0}),
    .opad(RGB_LED[2]));  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ccd_driver.v(6)
  EG_PHY_PAD #(
    //.LOCATION("J14"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS33"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u22 (
    .do({open_n346,open_n347,open_n348,1'b0}),
    .opad(RGB_LED[1]));  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ccd_driver.v(6)
  EG_PHY_PAD #(
    //.LOCATION("R3"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS33"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u23 (
    .do({open_n363,open_n364,open_n365,1'b0}),
    .opad(RGB_LED[0]));  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ccd_driver.v(6)
  EG_PHY_PAD #(
    //.LOCATION("K16"),
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS33"),
    .MODE("IN"),
    .TSMUX("1"))
    _al_u24 (
    .ipad(RST_N),
    .di(RST_N_pad));  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ccd_driver.v(5)
  EG_PHY_PAD #(
    //.LOCATION("B10"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS33"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u4 (
    .do({open_n397,open_n398,open_n399,CCD_CLK_pad}),
    .opad(CCD_CLK));  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ccd_driver.v(8)
  EG_PHY_PAD #(
    //.LOCATION("C9"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS33"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u5 (
    .do({open_n414,open_n415,open_n416,CCD_RS_pad}),
    .opad(CCD_RS));  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ccd_driver.v(9)
  EG_PHY_PAD #(
    //.LOCATION("B6"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS33"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u6 (
    .do({open_n431,open_n432,open_n433,CCD_SH_pad}),
    .opad(CCD_SH));  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ccd_driver.v(7)
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/tcd1500c.v(93)
  EG_PHY_LSLICE #(
    //.LUTF0("(A*~B)"),
    //.LUTF1("A*B*~D*~C+A*B*D*~C"),
    //.LUTG0("(A*~B)"),
    //.LUTG1("0"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0010001000100010),
    .INIT_LUTF1(16'b0000100000001000),
    .INIT_LUTG0(16'b0010001000100010),
    .INIT_LUTG1(16'b0000000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \_al_u64|ccd/reg0_b4  (
    .a({\ccd/j [0],\ccd/n3 [4]}),
    .b({\ccd/j [1],_al_u65_o}),
    .c({\ccd/j [3],open_n447}),
    .ce(\ccd/n2 ),
    .clk(clk_20m),
    .e({\ccd/j [2],open_n450}),
    .f({_al_u64_o,open_n466}),
    .q({open_n470,\ccd/j [4]}));  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/tcd1500c.v(93)
  EG_PHY_PAD #(
    //.LOCATION("B14"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS33"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u7 (
    .do({open_n472,open_n473,open_n474,CCD_SP_pad}),
    .opad(CCD_SP));  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ccd_driver.v(10)
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/tcd1500c.v(93)
  EG_PHY_LSLICE #(
    //.LUTF0("(~D)"),
    //.LUTF1("0"),
    //.LUTG0("(~D)"),
    //.LUTG1("~D*~B*~C*A+D*~B*~C*A+~D*B*~C*A+D*B*~C*A+~D*~B*C*A+D*~B*C*A+~D*B*C*A+D*B*C*A"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011111111),
    .INIT_LUTF1(16'b0000000000000000),
    .INIT_LUTG0(16'b0000000011111111),
    .INIT_LUTG1(16'b1010101010101010),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("SET"),
    .REG0_SD("F"),
    .SRMODE("SYNC"),
    .SRMUX("SR"))
    \_al_u77|ccd/run_reg  (
    .a({_al_u60_o,open_n488}),
    .clk(clk_20m),
    .d({open_n494,\ccd/u16_sel_is_2_o }),
    .e({_al_u76_o,open_n495}),
    .sr(\ccd/n2 ),
    .f({\ccd/n38 ,open_n510}),
    .q({open_n514,\ccd/run }));  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/tcd1500c.v(93)
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/tcd1500c.v(93)
  EG_PHY_LSLICE #(
    //.LUTF0("((D*~B)*~((0*~A))*~(C)+(D*~B)*(0*~A)*~(C)+~((D*~B))*(0*~A)*C+(D*~B)*(0*~A)*C)"),
    //.LUTF1("0"),
    //.LUTG0("((D*~B)*~((1*~A))*~(C)+(D*~B)*(1*~A)*~(C)+~((D*~B))*(1*~A)*C+(D*~B)*(1*~A)*C)"),
    //.LUTG1("~A*B*~C*~D+A*B*~C*~D"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000001100000000),
    .INIT_LUTF1(16'b0000000000000000),
    .INIT_LUTG0(16'b0101001101010000),
    .INIT_LUTG1(16'b0000000000001100),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \_al_u78|ccd/reg1_b3  (
    .a({open_n515,_al_u65_o}),
    .b({\ccd/i [1],\ccd/n12_lutinv }),
    .c({\ccd/i [2],CCD_SH_pad}),
    .ce(\ccd/n2 ),
    .clk(clk_20m),
    .d({\ccd/i [3],\ccd/n10 [3]}),
    .e({\ccd/i [0],\ccd/i [3]}),
    .f({_al_u78_o,open_n531}),
    .q({open_n535,\ccd/i [3]}));  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/tcd1500c.v(93)
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/tcd1500c.v(93)
  EG_PHY_LSLICE #(
    //.LUTF0("((D*~B)*~((0*~A))*~(C)+(D*~B)*(0*~A)*~(C)+~((D*~B))*(0*~A)*C+(D*~B)*(0*~A)*C)"),
    //.LUTF1("A*B*~C*~D"),
    //.LUTG0("((D*~B)*~((1*~A))*~(C)+(D*~B)*(1*~A)*~(C)+~((D*~B))*(1*~A)*C+(D*~B)*(1*~A)*C)"),
    //.LUTG1("0"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000001100000000),
    .INIT_LUTF1(16'b0000000000001000),
    .INIT_LUTG0(16'b0101001101010000),
    .INIT_LUTG1(16'b0000000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \_al_u79|ccd/reg1_b7  (
    .a({_al_u78_o,_al_u65_o}),
    .b({\ccd/i [4],\ccd/n12_lutinv }),
    .c({\ccd/i [7],CCD_SH_pad}),
    .ce(\ccd/n2 ),
    .clk(clk_20m),
    .d({\ccd/i [5],\ccd/n10 [7]}),
    .e({\ccd/i [6],\ccd/i [7]}),
    .f({\ccd/n12_lutinv ,open_n551}),
    .q({open_n555,\ccd/i [7]}));  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/tcd1500c.v(93)
  EG_PHY_PAD #(
    //.LOCATION("K14"),
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS33"),
    .MODE("IN"),
    .TSMUX("1"))
    _al_u8 (
    .ipad(CLK_IN),
    .di(CLK_IN_pad));  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ccd_driver.v(4)
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/tcd1500c.v(93)
  EG_PHY_LSLICE #(
    //.LUTF0("~(~(D*~B)*~((~0*~A))*~(C)+~(D*~B)*(~0*~A)*~(C)+~(~(D*~B))*(~0*~A)*C+~(D*~B)*(~0*~A)*C)"),
    //.LUTF1("0"),
    //.LUTG0("~(~(D*~B)*~((~1*~A))*~(C)+~(D*~B)*(~1*~A)*~(C)+~(~(D*~B))*(~1*~A)*C+~(D*~B)*(~1*~A)*C)"),
    //.LUTG1("A*~D*~C*~B+A*D*~C*~B"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1010001110100000),
    .INIT_LUTF1(16'b0000000000000000),
    .INIT_LUTG0(16'b1111001111110000),
    .INIT_LUTG1(16'b0000001000000010),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \_al_u89|ccd/reg2_b3  (
    .a({\ccd/k [0],_al_u65_o}),
    .b({\ccd/k [2],\ccd/n16_lutinv }),
    .c({\ccd/k [3],CCD_SH_pad}),
    .ce(\ccd/n2 ),
    .clk(clk_20m),
    .d({open_n573,\ccd/n11 [3]}),
    .e({\ccd/k [1],\ccd/k [3]}),
    .f({_al_u89_o,open_n589}),
    .q({open_n593,\ccd/k [3]}));  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/tcd1500c.v(93)
  EG_PHY_PAD #(
    //.LOCATION("P4"),
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS33"),
    .MODE("BI"),
    .TSMUX("0"))
    _al_u9 (
    .do({open_n595,open_n596,open_n597,FT_D_pad[1]}),
    .bpad(FT_D[7]));  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ccd_driver.v(12)
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/tcd1500c.v(93)
  EG_PHY_LSLICE #(
    //.LUTF0("((D*~B)*~((0*~A))*~(C)+(D*~B)*(0*~A)*~(C)+~((D*~B))*(0*~A)*C+(D*~B)*(0*~A)*C)"),
    //.LUTF1("A*B*~C*~D"),
    //.LUTG0("((D*~B)*~((1*~A))*~(C)+(D*~B)*(1*~A)*~(C)+~((D*~B))*(1*~A)*C+(D*~B)*(1*~A)*C)"),
    //.LUTG1("0"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000001100000000),
    .INIT_LUTF1(16'b0000000000001000),
    .INIT_LUTG0(16'b0101001101010000),
    .INIT_LUTG1(16'b0000000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \_al_u90|ccd/reg2_b7  (
    .a({_al_u89_o,_al_u65_o}),
    .b({\ccd/k [4],\ccd/n16_lutinv }),
    .c({\ccd/k [5],CCD_SH_pad}),
    .ce(\ccd/n2 ),
    .clk(clk_20m),
    .d({\ccd/k [7],\ccd/n11 [7]}),
    .e({\ccd/k [6],\ccd/k [7]}),
    .f({\ccd/n16_lutinv ,open_n626}),
    .q({open_n630,\ccd/k [7]}));  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/tcd1500c.v(93)
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/tcd1500c.v(93)
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/tcd1500c.v(93)
  EG_PHY_MSLICE #(
    //.LUT0("(~B*~(~D*~(C)*~(A)+~D*C*~(A)+~(~D)*C*A+~D*C*A))"),
    //.LUT1("~(~C*~(A@D))"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0001001100000010),
    .INIT_LUT1(16'b1111010111111010),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \ccd/CLK_reg|ccd/SP_reg  (
    .a({CCD_CLK_pad,\ccd/n16_lutinv }),
    .b({open_n631,CCD_SH_pad}),
    .c({CCD_SH_pad,CCD_SP_pad}),
    .ce(\ccd/n2 ),
    .clk(clk_20m),
    .d({\ccd/n12_lutinv ,\ccd/n18 }),
    .q({CCD_CLK_pad,CCD_SP_pad}));  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/tcd1500c.v(93)
  EG_PHY_MSLICE #(
    //.MACRO("ccd/add0/u0|ccd/add0/ucin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("ADD_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"))
    \ccd/add0/u0|ccd/add0/ucin  (
    .a({\ccd/j [0],1'b0}),
    .b({1'b1,open_n650}),
    .f({\ccd/n3 [0],open_n670}),
    .fco(\ccd/add0/c1 ));
  EG_PHY_MSLICE #(
    //.MACRO("ccd/add0/u0|ccd/add0/ucin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("ADD"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"))
    \ccd/add0/u2|ccd/add0/u1  (
    .a({\ccd/j [2],1'b0}),
    .b({1'b0,\ccd/j [1]}),
    .fci(\ccd/add0/c1 ),
    .f(\ccd/n3 [2:1]),
    .fco(\ccd/add0/c3 ));
  EG_PHY_MSLICE #(
    //.MACRO("ccd/add0/u0|ccd/add0/ucin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("ADD"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"))
    \ccd/add0/u4|ccd/add0/u3  (
    .a(\ccd/j [4:3]),
    .b(2'b00),
    .fci(\ccd/add0/c3 ),
    .f(\ccd/n3 [4:3]),
    .fco(\ccd/add0/c5 ));
  EG_PHY_MSLICE #(
    //.MACRO("ccd/add0/u0|ccd/add0/ucin"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("ADD"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"))
    \ccd/add0/u6|ccd/add0/u5  (
    .a(2'b00),
    .b(\ccd/j [6:5]),
    .fci(\ccd/add0/c5 ),
    .f(\ccd/n3 [6:5]),
    .fco(\ccd/add0/c7 ));
  EG_PHY_MSLICE #(
    //.MACRO("ccd/add0/u0|ccd/add0/ucin"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("ADD"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"))
    \ccd/add0/u7_al_u139  (
    .a({open_n741,1'b0}),
    .b({open_n742,\ccd/j [7]}),
    .fci(\ccd/add0/c7 ),
    .f({open_n761,\ccd/n3 [7]}));
  EG_PHY_MSLICE #(
    //.MACRO("ccd/add1/u0|ccd/add1/ucin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("ADD_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"))
    \ccd/add1/u0|ccd/add1/ucin  (
    .a({\ccd/i [0],1'b0}),
    .b({1'b1,open_n767}),
    .f({\ccd/n10 [0],open_n787}),
    .fco(\ccd/add1/c1 ));
  EG_PHY_MSLICE #(
    //.MACRO("ccd/add1/u0|ccd/add1/ucin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("ADD"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"))
    \ccd/add1/u2|ccd/add1/u1  (
    .a(2'b00),
    .b(\ccd/i [2:1]),
    .fci(\ccd/add1/c1 ),
    .f(\ccd/n10 [2:1]),
    .fco(\ccd/add1/c3 ));
  EG_PHY_MSLICE #(
    //.MACRO("ccd/add1/u0|ccd/add1/ucin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("ADD"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"))
    \ccd/add1/u4|ccd/add1/u3  (
    .a(2'b00),
    .b(\ccd/i [4:3]),
    .fci(\ccd/add1/c3 ),
    .f(\ccd/n10 [4:3]),
    .fco(\ccd/add1/c5 ));
  EG_PHY_MSLICE #(
    //.MACRO("ccd/add1/u0|ccd/add1/ucin"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("ADD"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"))
    \ccd/add1/u6|ccd/add1/u5  (
    .a({\ccd/i [6],1'b0}),
    .b({1'b0,\ccd/i [5]}),
    .fci(\ccd/add1/c5 ),
    .f(\ccd/n10 [6:5]),
    .fco(\ccd/add1/c7 ));
  EG_PHY_MSLICE #(
    //.MACRO("ccd/add1/u0|ccd/add1/ucin"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("ADD"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"))
    \ccd/add1/u7_al_u140  (
    .a({open_n858,1'b0}),
    .b({open_n859,\ccd/i [7]}),
    .fci(\ccd/add1/c7 ),
    .f({open_n878,\ccd/n10 [7]}));
  EG_PHY_MSLICE #(
    //.MACRO("ccd/add2/u0|ccd/add2/ucin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("ADD_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"))
    \ccd/add2/u0|ccd/add2/ucin  (
    .a({\ccd/k [0],1'b0}),
    .b({1'b1,open_n884}),
    .f({\ccd/n11 [0],open_n904}),
    .fco(\ccd/add2/c1 ));
  EG_PHY_MSLICE #(
    //.MACRO("ccd/add2/u0|ccd/add2/ucin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("ADD"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"))
    \ccd/add2/u2|ccd/add2/u1  (
    .a({\ccd/k [2],1'b0}),
    .b({1'b0,\ccd/k [1]}),
    .fci(\ccd/add2/c1 ),
    .f(\ccd/n11 [2:1]),
    .fco(\ccd/add2/c3 ));
  EG_PHY_MSLICE #(
    //.MACRO("ccd/add2/u0|ccd/add2/ucin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("ADD"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"))
    \ccd/add2/u4|ccd/add2/u3  (
    .a(\ccd/k [4:3]),
    .b(2'b00),
    .fci(\ccd/add2/c3 ),
    .f(\ccd/n11 [4:3]),
    .fco(\ccd/add2/c5 ));
  EG_PHY_MSLICE #(
    //.MACRO("ccd/add2/u0|ccd/add2/ucin"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("ADD"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"))
    \ccd/add2/u6|ccd/add2/u5  (
    .a(2'b00),
    .b(\ccd/k [6:5]),
    .fci(\ccd/add2/c5 ),
    .f(\ccd/n11 [6:5]),
    .fco(\ccd/add2/c7 ));
  EG_PHY_MSLICE #(
    //.MACRO("ccd/add2/u0|ccd/add2/ucin"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("ADD"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"))
    \ccd/add2/u7_al_u141  (
    .a({open_n975,\ccd/k [7]}),
    .b({open_n976,1'b0}),
    .fci(\ccd/add2/c7 ),
    .f({open_n995,\ccd/n11 [7]}));
  EG_PHY_LSLICE #(
    //.MACRO("ccd/add3/ucin_al_u135"),
    //.R_POSITION("X0Y1Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \ccd/add3/u11_al_u138  (
    .a({\ccd/h [13],\ccd/h [11]}),
    .b({open_n1001,\ccd/h [12]}),
    .c(2'b00),
    .d(2'b00),
    .e({open_n1004,1'b0}),
    .fci(\ccd/add3/c11 ),
    .f({\ccd/n37 [13],\ccd/n37 [11]}),
    .fx({open_n1020,\ccd/n37 [12]}));
  EG_PHY_LSLICE #(
    //.MACRO("ccd/add3/ucin_al_u135"),
    //.R_POSITION("X0Y0Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \ccd/add3/u3_al_u136  (
    .a({\ccd/h [5],\ccd/h [3]}),
    .b({\ccd/h [6],\ccd/h [4]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\ccd/add3/c3 ),
    .f({\ccd/n37 [5],\ccd/n37 [3]}),
    .fco(\ccd/add3/c7 ),
    .fx({\ccd/n37 [6],\ccd/n37 [4]}));
  EG_PHY_LSLICE #(
    //.MACRO("ccd/add3/ucin_al_u135"),
    //.R_POSITION("X0Y1Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \ccd/add3/u7_al_u137  (
    .a({\ccd/h [9],\ccd/h [7]}),
    .b({\ccd/h [10],\ccd/h [8]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\ccd/add3/c7 ),
    .f({\ccd/n37 [9],\ccd/n37 [7]}),
    .fco(\ccd/add3/c11 ),
    .fx({\ccd/n37 [10],\ccd/n37 [8]}));
  EG_PHY_LSLICE #(
    //.MACRO("ccd/add3/ucin_al_u135"),
    //.R_POSITION("X0Y0Z0"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'h000A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("SYNC"),
    .SRMUX("SR"))
    \ccd/add3/ucin_al_u135  (
    .a({\ccd/h [1],1'b0}),
    .b({\ccd/h [2],\ccd/h [0]}),
    .c(2'b00),
    .clk(CCD_RS_pad_gclk_net),
    .d(2'b01),
    .e(2'b01),
    .mi(\ccd/n37 [1:0]),
    .sr(\ccd/n38 ),
    .f({\ccd/n37 [1],open_n1072}),
    .fco(\ccd/add3/c3 ),
    .fx({\ccd/n37 [2],\ccd/n37 [0]}),
    .q(\ccd/h [1:0]));
  EG_PHY_MSLICE #(
    //.MACRO("ccd/lt0_0|ccd/lt0_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \ccd/lt0_0|ccd/lt0_cin  (
    .a({\ccd/j [0],1'b0}),
    .b({1'b0,open_n1073}),
    .fco(\ccd/lt0_c1 ));
  EG_PHY_MSLICE #(
    //.MACRO("ccd/lt0_0|ccd/lt0_cin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \ccd/lt0_2|ccd/lt0_1  (
    .a(\ccd/j [2:1]),
    .b(2'b10),
    .fci(\ccd/lt0_c1 ),
    .fco(\ccd/lt0_c3 ));
  EG_PHY_MSLICE #(
    //.MACRO("ccd/lt0_0|ccd/lt0_cin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \ccd/lt0_4|ccd/lt0_3  (
    .a(\ccd/j [4:3]),
    .b(2'b00),
    .fci(\ccd/lt0_c3 ),
    .fco(\ccd/lt0_c5 ));
  EG_PHY_MSLICE #(
    //.MACRO("ccd/lt0_0|ccd/lt0_cin"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \ccd/lt0_6|ccd/lt0_5  (
    .a(\ccd/j [6:5]),
    .b(2'b00),
    .fci(\ccd/lt0_c5 ),
    .fco(\ccd/lt0_c7 ));
  EG_PHY_MSLICE #(
    //.MACRO("ccd/lt0_0|ccd/lt0_cin"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \ccd/lt0_cout|ccd/lt0_7  (
    .a({1'b0,\ccd/j [7]}),
    .b(2'b10),
    .fci(\ccd/lt0_c7 ),
    .f({\ccd/n5 ,open_n1189}));
  EG_PHY_MSLICE #(
    //.MACRO("ccd/lt1_0|ccd/lt1_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \ccd/lt1_0|ccd/lt1_cin  (
    .a({\ccd/k [0],1'b0}),
    .b({1'b0,open_n1195}),
    .fco(\ccd/lt1_c1 ));
  EG_PHY_MSLICE #(
    //.MACRO("ccd/lt1_0|ccd/lt1_cin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \ccd/lt1_2|ccd/lt1_1  (
    .a(\ccd/k [2:1]),
    .b(2'b01),
    .fci(\ccd/lt1_c1 ),
    .fco(\ccd/lt1_c3 ));
  EG_PHY_MSLICE #(
    //.MACRO("ccd/lt1_0|ccd/lt1_cin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \ccd/lt1_4|ccd/lt1_3  (
    .a(\ccd/k [4:3]),
    .b(2'b00),
    .fci(\ccd/lt1_c3 ),
    .fco(\ccd/lt1_c5 ));
  EG_PHY_MSLICE #(
    //.MACRO("ccd/lt1_0|ccd/lt1_cin"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \ccd/lt1_6|ccd/lt1_5  (
    .a(\ccd/k [6:5]),
    .b(2'b00),
    .fci(\ccd/lt1_c5 ),
    .fco(\ccd/lt1_c7 ));
  EG_PHY_MSLICE #(
    //.MACRO("ccd/lt1_0|ccd/lt1_cin"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \ccd/lt1_cout|ccd/lt1_7  (
    .a({1'b0,\ccd/k [7]}),
    .b(2'b10),
    .fci(\ccd/lt1_c7 ),
    .f({\ccd/n18 ,open_n1311}));
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/tcd1500c.v(93)
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/tcd1500c.v(93)
  EG_PHY_MSLICE #(
    //.LUT0("~(~C*~(A)*~(B)+~C*A*~(B)+~(~C)*A*B+~C*A*B)"),
    //.LUT1("(B*~C)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0111010001110100),
    .INIT_LUT1(16'b0000110000001100),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \ccd/reg0_b0|ccd/RS_reg  (
    .a({open_n1317,CCD_RS_pad}),
    .b({\ccd/n3 [0],_al_u65_o}),
    .c({_al_u65_o,\ccd/n5 }),
    .ce(\ccd/n2 ),
    .clk(clk_20m),
    .q({\ccd/j [0],CCD_RS_pad}));  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/tcd1500c.v(93)
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/tcd1500c.v(93)
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/tcd1500c.v(93)
  EG_PHY_LSLICE #(
    //.LUTF0("(A*~B)"),
    //.LUTF1("A*~B*~C*~D+A*B*~C*~D+A*~B*~C*D+A*B*~C*D"),
    //.LUTG0("(A*~B)"),
    //.LUTG1("A*~B*~C*~D+A*B*~C*~D+A*~B*~C*D+A*B*~C*D"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0010001000100010),
    .INIT_LUTF1(16'b0000101000001010),
    .INIT_LUTG0(16'b0010001000100010),
    .INIT_LUTG1(16'b0000101000001010),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \ccd/reg0_b1|ccd/reg0_b7  (
    .a({\ccd/n3 [1],\ccd/n3 [7]}),
    .b({open_n1338,_al_u65_o}),
    .c({_al_u65_o,open_n1339}),
    .ce(\ccd/n2 ),
    .clk(clk_20m),
    .q({\ccd/j [1],\ccd/j [7]}));  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/tcd1500c.v(93)
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/tcd1500c.v(93)
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/tcd1500c.v(93)
  EG_PHY_MSLICE #(
    //.LUT0("(C*~A)"),
    //.LUT1("(B*~C)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0101000001010000),
    .INIT_LUT1(16'b0000110000001100),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \ccd/reg0_b2|ccd/reg0_b6  (
    .a({open_n1364,_al_u65_o}),
    .b({\ccd/n3 [2],open_n1365}),
    .c({_al_u65_o,\ccd/n3 [6]}),
    .ce(\ccd/n2 ),
    .clk(clk_20m),
    .q({\ccd/j [2],\ccd/j [6]}));  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/tcd1500c.v(93)
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/tcd1500c.v(93)
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/tcd1500c.v(93)
  EG_PHY_MSLICE #(
    //.LUT0("(B*~C)"),
    //.LUT1("(C*~D)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000110000001100),
    .INIT_LUT1(16'b0000000011110000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \ccd/reg0_b3|ccd/reg0_b5  (
    .b({open_n1388,\ccd/n3 [5]}),
    .c({\ccd/n3 [3],_al_u65_o}),
    .ce(\ccd/n2 ),
    .clk(clk_20m),
    .d({_al_u65_o,open_n1389}),
    .q({\ccd/j [3],\ccd/j [5]}));  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/tcd1500c.v(93)
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/tcd1500c.v(93)
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/tcd1500c.v(93)
  EG_PHY_LSLICE #(
    //.LUTF0("((D*~B)*~((0*~A))*~(C)+(D*~B)*(0*~A)*~(C)+~((D*~B))*(0*~A)*C+(D*~B)*(0*~A)*C)"),
    //.LUTF1("((D*~B)*~((0*~A))*~(C)+(D*~B)*(0*~A)*~(C)+~((D*~B))*(0*~A)*C+(D*~B)*(0*~A)*C)"),
    //.LUTG0("((D*~B)*~((1*~A))*~(C)+(D*~B)*(1*~A)*~(C)+~((D*~B))*(1*~A)*C+(D*~B)*(1*~A)*C)"),
    //.LUTG1("((D*~B)*~((1*~A))*~(C)+(D*~B)*(1*~A)*~(C)+~((D*~B))*(1*~A)*C+(D*~B)*(1*~A)*C)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000001100000000),
    .INIT_LUTF1(16'b0000001100000000),
    .INIT_LUTG0(16'b0101001101010000),
    .INIT_LUTG1(16'b0101001101010000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \ccd/reg1_b0|ccd/reg1_b6  (
    .a({_al_u65_o,_al_u65_o}),
    .b({\ccd/n12_lutinv ,\ccd/n12_lutinv }),
    .c({CCD_SH_pad,CCD_SH_pad}),
    .ce(\ccd/n2 ),
    .clk(clk_20m),
    .d({\ccd/n10 [0],\ccd/n10 [6]}),
    .e({\ccd/i [0],\ccd/i [6]}),
    .q({\ccd/i [0],\ccd/i [6]}));  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/tcd1500c.v(93)
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/tcd1500c.v(93)
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/tcd1500c.v(93)
  EG_PHY_LSLICE #(
    //.LUTF0("((D*~B)*~((0*~A))*~(C)+(D*~B)*(0*~A)*~(C)+~((D*~B))*(0*~A)*C+(D*~B)*(0*~A)*C)"),
    //.LUTF1("((D*~B)*~((0*~A))*~(C)+(D*~B)*(0*~A)*~(C)+~((D*~B))*(0*~A)*C+(D*~B)*(0*~A)*C)"),
    //.LUTG0("((D*~B)*~((1*~A))*~(C)+(D*~B)*(1*~A)*~(C)+~((D*~B))*(1*~A)*C+(D*~B)*(1*~A)*C)"),
    //.LUTG1("((D*~B)*~((1*~A))*~(C)+(D*~B)*(1*~A)*~(C)+~((D*~B))*(1*~A)*C+(D*~B)*(1*~A)*C)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000001100000000),
    .INIT_LUTF1(16'b0000001100000000),
    .INIT_LUTG0(16'b0101001101010000),
    .INIT_LUTG1(16'b0101001101010000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \ccd/reg1_b1|ccd/reg1_b5  (
    .a({_al_u65_o,_al_u65_o}),
    .b({\ccd/n12_lutinv ,\ccd/n12_lutinv }),
    .c({CCD_SH_pad,CCD_SH_pad}),
    .ce(\ccd/n2 ),
    .clk(clk_20m),
    .d({\ccd/n10 [1],\ccd/n10 [5]}),
    .e({\ccd/i [1],\ccd/i [5]}),
    .q({\ccd/i [1],\ccd/i [5]}));  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/tcd1500c.v(93)
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/tcd1500c.v(93)
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/tcd1500c.v(93)
  EG_PHY_LSLICE #(
    //.LUTF0("((D*~B)*~((0*~A))*~(C)+(D*~B)*(0*~A)*~(C)+~((D*~B))*(0*~A)*C+(D*~B)*(0*~A)*C)"),
    //.LUTF1("~B*~A*C*D+~B*A*C*D"),
    //.LUTG0("((D*~B)*~((1*~A))*~(C)+(D*~B)*(1*~A)*~(C)+~((D*~B))*(1*~A)*C+(D*~B)*(1*~A)*C)"),
    //.LUTG1("~B*~A*~C*~D+B*~A*~C*~D+~B*~A*~C*D+B*~A*~C*D+~B*~A*C*D+~B*A*C*D"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000001100000000),
    .INIT_LUTF1(16'b0011000000000000),
    .INIT_LUTG0(16'b0101001101010000),
    .INIT_LUTG1(16'b0011010100000101),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \ccd/reg1_b2|ccd/reg1_b4  (
    .a({\ccd/n12_lutinv ,_al_u65_o}),
    .b({_al_u65_o,\ccd/n12_lutinv }),
    .c({CCD_SH_pad,CCD_SH_pad}),
    .ce(\ccd/n2 ),
    .clk(clk_20m),
    .d({\ccd/i [2],\ccd/n10 [4]}),
    .e({\ccd/n10 [2],\ccd/i [4]}),
    .q({\ccd/i [2],\ccd/i [4]}));  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/tcd1500c.v(93)
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/tcd1500c.v(93)
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/tcd1500c.v(93)
  EG_PHY_LSLICE #(
    //.LUTF0("((D*~B)*~((0*~A))*~(C)+(D*~B)*(0*~A)*~(C)+~((D*~B))*(0*~A)*C+(D*~B)*(0*~A)*C)"),
    //.LUTF1("((D*~A)*~((0*~B))*~(C)+(D*~A)*(0*~B)*~(C)+~((D*~A))*(0*~B)*C+(D*~A)*(0*~B)*C)"),
    //.LUTG0("((D*~B)*~((1*~A))*~(C)+(D*~B)*(1*~A)*~(C)+~((D*~B))*(1*~A)*C+(D*~B)*(1*~A)*C)"),
    //.LUTG1("((D*~A)*~((1*~B))*~(C)+(D*~A)*(1*~B)*~(C)+~((D*~A))*(1*~B)*C+(D*~A)*(1*~B)*C)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000001100000000),
    .INIT_LUTF1(16'b0000010100000000),
    .INIT_LUTG0(16'b0101001101010000),
    .INIT_LUTG1(16'b0011010100110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \ccd/reg2_b0|ccd/reg2_b6  (
    .a({\ccd/n16_lutinv ,_al_u65_o}),
    .b({_al_u65_o,\ccd/n16_lutinv }),
    .c({CCD_SH_pad,CCD_SH_pad}),
    .ce(\ccd/n2 ),
    .clk(clk_20m),
    .d({\ccd/n11 [0],\ccd/n11 [6]}),
    .e({\ccd/k [0],\ccd/k [6]}),
    .q({\ccd/k [0],\ccd/k [6]}));  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/tcd1500c.v(93)
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/tcd1500c.v(93)
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/tcd1500c.v(93)
  EG_PHY_LSLICE #(
    //.LUTF0("((D*~B)*~((0*~A))*~(C)+(D*~B)*(0*~A)*~(C)+~((D*~B))*(0*~A)*C+(D*~B)*(0*~A)*C)"),
    //.LUTF1("((D*~A)*~((0*~B))*~(C)+(D*~A)*(0*~B)*~(C)+~((D*~A))*(0*~B)*C+(D*~A)*(0*~B)*C)"),
    //.LUTG0("((D*~B)*~((1*~A))*~(C)+(D*~B)*(1*~A)*~(C)+~((D*~B))*(1*~A)*C+(D*~B)*(1*~A)*C)"),
    //.LUTG1("((D*~A)*~((1*~B))*~(C)+(D*~A)*(1*~B)*~(C)+~((D*~A))*(1*~B)*C+(D*~A)*(1*~B)*C)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000001100000000),
    .INIT_LUTF1(16'b0000010100000000),
    .INIT_LUTG0(16'b0101001101010000),
    .INIT_LUTG1(16'b0011010100110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \ccd/reg2_b1|ccd/reg2_b5  (
    .a({\ccd/n16_lutinv ,_al_u65_o}),
    .b({_al_u65_o,\ccd/n16_lutinv }),
    .c({CCD_SH_pad,CCD_SH_pad}),
    .ce(\ccd/n2 ),
    .clk(clk_20m),
    .d({\ccd/n11 [1],\ccd/n11 [5]}),
    .e({\ccd/k [1],\ccd/k [5]}),
    .q({\ccd/k [1],\ccd/k [5]}));  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/tcd1500c.v(93)
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/tcd1500c.v(93)
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/tcd1500c.v(93)
  EG_PHY_LSLICE #(
    //.LUTF0("((D*~B)*~((0*~A))*~(C)+(D*~B)*(0*~A)*~(C)+~((D*~B))*(0*~A)*C+(D*~B)*(0*~A)*C)"),
    //.LUTF1("A*~B*C*~D+A*B*C*~D+~A*~B*C*D+A*~B*C*D+~A*B*C*D+A*B*C*D"),
    //.LUTG0("((D*~B)*~((1*~A))*~(C)+(D*~B)*(1*~A)*~(C)+~((D*~B))*(1*~A)*C+(D*~B)*(1*~A)*C)"),
    //.LUTG1("~A*~B*~C*~D+A*~B*~C*~D+A*~B*C*~D+A*B*C*~D+~A*~B*~C*D+A*~B*~C*D+~A*~B*C*D+A*~B*C*D+~A*B*C*D+A*B*C*D"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000001100000000),
    .INIT_LUTF1(16'b1111000010100000),
    .INIT_LUTG0(16'b0101001101010000),
    .INIT_LUTG1(16'b1111001110100011),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \ccd/reg2_b2|ccd/reg2_b4  (
    .a({_al_u65_o,_al_u65_o}),
    .b({\ccd/n16_lutinv ,\ccd/n16_lutinv }),
    .c({CCD_SH_pad,CCD_SH_pad}),
    .ce(\ccd/n2 ),
    .clk(clk_20m),
    .d({\ccd/k [2],\ccd/n11 [4]}),
    .e({\ccd/n11 [2],\ccd/k [4]}),
    .q({\ccd/k [2],\ccd/k [4]}));  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/tcd1500c.v(93)
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/tcd1500c.v(109)
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/tcd1500c.v(109)
  EG_PHY_MSLICE #(
    //.LUT0("(~D*~C*~B*~A)"),
    //.LUT1("(~D*C*B*A)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000000000000001),
    .INIT_LUT1(16'b0000000010000000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("SYNC"),
    .SRMUX("SR"))
    \ccd/reg3_b10|ccd/reg3_b11  (
    .a({\ccd/h [0],\ccd/h [0]}),
    .b({\ccd/h [1],\ccd/h [1]}),
    .c({\ccd/h [10],\ccd/h [10]}),
    .clk(CCD_RS_pad_gclk_net),
    .d({\ccd/h [11],\ccd/h [11]}),
    .mi({\ccd/n37 [10],\ccd/n37 [11]}),
    .sr(\ccd/n38 ),
    .f({_al_u75_o,_al_u61_o}),
    .q({\ccd/h [10],\ccd/h [11]}));  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/tcd1500c.v(109)
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/tcd1500c.v(109)
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/tcd1500c.v(109)
  EG_PHY_LSLICE #(
    //.LUTF0("(~0*~D*~C*~B*A)"),
    //.LUTF1("(~0*D*A*B*C)"),
    //.LUTG0("(~1*~D*~C*~B*A)"),
    //.LUTG1("(~1*D*A*B*C)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000000000010),
    .INIT_LUTF1(16'b1000000000000000),
    .INIT_LUTG0(16'b0000000000000000),
    .INIT_LUTG1(16'b0000000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("SYNC"),
    .SRMUX("SR"))
    \ccd/reg3_b12|ccd/reg3_b5  (
    .a({\ccd/h [5],_al_u61_o}),
    .b({\ccd/h [12],\ccd/h [12]}),
    .c({_al_u75_o,\ccd/h [5]}),
    .clk(CCD_RS_pad_gclk_net),
    .d({\ccd/h [8],\ccd/h [8]}),
    .e({\ccd/h [9],\ccd/h [9]}),
    .mi({\ccd/n37 [12],\ccd/n37 [5]}),
    .sr(\ccd/n38 ),
    .f({_al_u76_o,_al_u62_o}),
    .q({\ccd/h [12],\ccd/h [5]}));  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/tcd1500c.v(109)
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/tcd1500c.v(109)
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/tcd1500c.v(109)
  EG_PHY_LSLICE #(
    //.LUTF0("~A*~D*~C*~B+~A*D*~C*~B"),
    //.LUTF1("A*~B*~C*~D+A*~B*C*~D+A*~B*~C*D+A*~B*C*D"),
    //.LUTG0("0"),
    //.LUTG1("0"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000100000001),
    .INIT_LUTF1(16'b0010001000100010),
    .INIT_LUTG0(16'b0000000000000000),
    .INIT_LUTG1(16'b0000000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("SYNC"),
    .SRMUX("SR"))
    \ccd/reg3_b13|ccd/reg3_b3  (
    .a({_al_u59_o,\ccd/h [3]}),
    .b({\ccd/h [13],\ccd/h [7]}),
    .c({open_n1558,\ccd/h [6]}),
    .clk(CCD_RS_pad_gclk_net),
    .e({\ccd/h [2],\ccd/h [4]}),
    .mi({\ccd/n37 [13],\ccd/n37 [3]}),
    .sr(\ccd/n38 ),
    .f({_al_u60_o,_al_u59_o}),
    .q({\ccd/h [13],\ccd/h [3]}));  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/tcd1500c.v(109)
  EG_PHY_MSLICE #(
    //.LUT0("(~0*~D*~C*B*A)"),
    //.LUT1("(~1*~D*~C*B*A)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000000000001000),
    .INIT_LUT1(16'b0000000000000000),
    .MODE("LOGIC"),
    .MSFXMUX("ON"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("SYNC"),
    .SRMUX("SR"))
    \ccd/reg3_b2|_al_u65  (
    .a({_al_u64_o,_al_u64_o}),
    .b({\ccd/j [4],\ccd/j [4]}),
    .c({\ccd/j [5],\ccd/j [5]}),
    .clk(CCD_RS_pad_gclk_net),
    .d({\ccd/j [6],\ccd/j [6]}),
    .mi({\ccd/n37 [2],\ccd/j [7]}),
    .sr(\ccd/n38 ),
    .fx({open_n1591,_al_u65_o}),
    .q({\ccd/h [2],open_n1592}));  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/tcd1500c.v(109)
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/tcd1500c.v(109)
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/tcd1500c.v(109)
  EG_PHY_MSLICE #(
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("SYNC"),
    .SRMUX("SR"))
    \ccd/reg3_b4|ccd/reg3_b9  (
    .clk(CCD_RS_pad_gclk_net),
    .mi({\ccd/n37 [4],\ccd/n37 [9]}),
    .sr(\ccd/n38 ),
    .q({\ccd/h [4],\ccd/h [9]}));  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/tcd1500c.v(109)
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/tcd1500c.v(109)
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/tcd1500c.v(109)
  EG_PHY_MSLICE #(
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("SYNC"),
    .SRMUX("SR"))
    \ccd/reg3_b6|ccd/reg3_b8  (
    .clk(CCD_RS_pad_gclk_net),
    .mi({\ccd/n37 [6],\ccd/n37 [8]}),
    .sr(\ccd/n38 ),
    .q({\ccd/h [6],\ccd/h [8]}));  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/tcd1500c.v(109)
  EG_PHY_LSLICE #(
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .SRMODE("SYNC"),
    .SRMUX("SR"))
    \ccd/reg3_b7  (
    .clk(CCD_RS_pad_gclk_net),
    .mi({open_n1653,\ccd/n37 [7]}),
    .sr(\ccd/n38 ),
    .q({open_n1670,\ccd/h [7]}));  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/tcd1500c.v(109)
  EG_PHY_CONFIG #(
    .DONE_PERSISTN("ENABLE"),
    .INIT_PERSISTN("ENABLE"),
    .JTAG_PERSISTN("DISABLE"),
    .PROGRAMN_PERSISTN("DISABLE"))
    config_inst ();
  EG_PHY_GCLK \pll/bufg_feedback  (
    .clki(\pll/clk0_buf ),
    .clko(clk_20m));  // al_ip/ip_pll.v(37)
  EG_PHY_PLL #(
    //.RID("0X0100"),
    //.WID("0X0100"),
    .CLKC0_CPHASE(49),
    .CLKC0_DIV(50),
    .CLKC0_DIV2_ENABLE("DISABLE"),
    .CLKC0_ENABLE("ENABLE"),
    .CLKC0_FPHASE(0),
    .CLKC1_CPHASE(19),
    .CLKC1_DIV(20),
    .CLKC1_DIV2_ENABLE("DISABLE"),
    .CLKC1_ENABLE("ENABLE"),
    .CLKC1_FPHASE(0),
    .CLKC2_CPHASE(1),
    .CLKC2_DIV(1),
    .CLKC2_DIV2_ENABLE("DISABLE"),
    .CLKC2_ENABLE("DISABLE"),
    .CLKC2_FPHASE(0),
    .CLKC3_CPHASE(1),
    .CLKC3_DIV(1),
    .CLKC3_DIV2_ENABLE("DISABLE"),
    .CLKC3_ENABLE("DISABLE"),
    .CLKC3_FPHASE(0),
    .CLKC4_CPHASE(1),
    .CLKC4_DIV(1),
    .CLKC4_DIV2_ENABLE("DISABLE"),
    .CLKC4_ENABLE("DISABLE"),
    .CLKC4_FPHASE(0),
    .DERIVE_PLL_CLOCKS("DISABLE"),
    .DPHASE_SOURCE("DISABLE"),
    .DYNCFG("DISABLE"),
    .FBCLK_DIV(5),
    .FEEDBK_MODE("NORMAL"),
    .FEEDBK_PATH("CLKC0_EXT"),
    .FIN("24.000"),
    .FREQ_LOCK_ACCURACY(2),
    .GEN_BASIC_CLOCK("DISABLE"),
    .GMC_GAIN(6),
    .GMC_TEST(14),
    .ICP_CURRENT(3),
    .IF_ESCLKSTSW("DISABLE"),
    .INTFB_WAKE("DISABLE"),
    .KVCO(6),
    .LPF_CAPACITOR(3),
    .LPF_RESISTOR(2),
    .NORESET("DISABLE"),
    .ODIV_MUXC0("DIV"),
    .ODIV_MUXC1("DIV"),
    .ODIV_MUXC2("DIV"),
    .ODIV_MUXC3("DIV"),
    .ODIV_MUXC4("DIV"),
    .PLLC2RST_ENA("DISABLE"),
    .PLLC34RST_ENA("DISABLE"),
    .PLLMRST_ENA("DISABLE"),
    .PLLRST_ENA("ENABLE"),
    .PLL_LOCK_MODE(0),
    .PREDIV_MUXC0("VCO"),
    .PREDIV_MUXC1("VCO"),
    .PREDIV_MUXC2("VCO"),
    .PREDIV_MUXC3("VCO"),
    .PREDIV_MUXC4("VCO"),
    .REFCLK_DIV(6),
    .REFCLK_SEL("INTERNAL"),
    .STDBY_ENABLE("DISABLE"),
    .STDBY_VCO_ENA("DISABLE"),
    .SYNC_ENABLE("DISABLE"),
    .VCO_NORESET("DISABLE"))
    \pll/pll_inst  (
    .daddr(6'b000000),
    .dclk(1'b0),
    .dcs(1'b0),
    .di(8'b00000000),
    .dwe(1'b0),
    .fbclk(clk_20m),
    .psclk(1'b0),
    .psclksel(3'b000),
    .psdown(1'b0),
    .psstep(1'b0),
    .refclk(CLK_IN_pad),
    .reset(n0),
    .stdby(1'b0),
    .clkc({open_n1718,open_n1719,open_n1720,clk_50m,\pll/clk0_buf }));  // al_ip/ip_pll.v(64)
  EG_PHY_LSLICE #(
    //.MACRO("usb_fifo/add0/ucin_al_u126"),
    //.R_POSITION("X0Y1Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \usb_fifo/add0/u11_al_u129  (
    .a({\usb_fifo/counter [13],\usb_fifo/counter [11]}),
    .b({\usb_fifo/counter [14],\usb_fifo/counter [12]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\usb_fifo/add0/c11 ),
    .f({\usb_fifo/n0 [13],\usb_fifo/n0 [11]}),
    .fco(\usb_fifo/add0/c15 ),
    .fx({\usb_fifo/n0 [14],\usb_fifo/n0 [12]}));
  EG_PHY_LSLICE #(
    //.MACRO("usb_fifo/add0/ucin_al_u126"),
    //.R_POSITION("X0Y2Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \usb_fifo/add0/u15_al_u130  (
    .a({\usb_fifo/counter [17],\usb_fifo/counter [15]}),
    .b({\usb_fifo/counter [18],\usb_fifo/counter [16]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\usb_fifo/add0/c15 ),
    .f({\usb_fifo/n0 [17],\usb_fifo/n0 [15]}),
    .fco(\usb_fifo/add0/c19 ),
    .fx({\usb_fifo/n0 [18],\usb_fifo/n0 [16]}));
  EG_PHY_LSLICE #(
    //.MACRO("usb_fifo/add0/ucin_al_u126"),
    //.R_POSITION("X0Y2Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \usb_fifo/add0/u19_al_u131  (
    .a({\usb_fifo/counter [21],\usb_fifo/counter [19]}),
    .b({\usb_fifo/counter [22],\usb_fifo/counter [20]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\usb_fifo/add0/c19 ),
    .f({\usb_fifo/n0 [21],\usb_fifo/n0 [19]}),
    .fco(\usb_fifo/add0/c23 ),
    .fx({\usb_fifo/n0 [22],\usb_fifo/n0 [20]}));
  EG_PHY_LSLICE #(
    //.MACRO("usb_fifo/add0/ucin_al_u126"),
    //.R_POSITION("X0Y3Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \usb_fifo/add0/u23_al_u132  (
    .a({\usb_fifo/counter [25],\usb_fifo/counter [23]}),
    .b({\usb_fifo/counter [26],\usb_fifo/counter [24]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\usb_fifo/add0/c23 ),
    .f({\usb_fifo/n0 [25],\usb_fifo/n0 [23]}),
    .fco(\usb_fifo/add0/c27 ),
    .fx({\usb_fifo/n0 [26],\usb_fifo/n0 [24]}));
  EG_PHY_LSLICE #(
    //.MACRO("usb_fifo/add0/ucin_al_u126"),
    //.R_POSITION("X0Y3Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \usb_fifo/add0/u27_al_u133  (
    .a({\usb_fifo/counter [29],\usb_fifo/counter [27]}),
    .b({\usb_fifo/counter [30],\usb_fifo/counter [28]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\usb_fifo/add0/c27 ),
    .f({\usb_fifo/n0 [29],\usb_fifo/n0 [27]}),
    .fco(\usb_fifo/add0/c31 ),
    .fx({\usb_fifo/n0 [30],\usb_fifo/n0 [28]}));
  EG_PHY_LSLICE #(
    //.MACRO("usb_fifo/add0/ucin_al_u126"),
    //.R_POSITION("X0Y4Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \usb_fifo/add0/u31_al_u134  (
    .a({open_n1821,\usb_fifo/counter [31]}),
    .c(2'b00),
    .d({open_n1826,1'b0}),
    .fci(\usb_fifo/add0/c31 ),
    .f({open_n1843,\usb_fifo/n0 [31]}));
  EG_PHY_LSLICE #(
    //.MACRO("usb_fifo/add0/ucin_al_u126"),
    //.R_POSITION("X0Y0Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \usb_fifo/add0/u3_al_u127  (
    .a({\usb_fifo/counter [5],\usb_fifo/counter [3]}),
    .b({\usb_fifo/counter [6],\usb_fifo/counter [4]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\usb_fifo/add0/c3 ),
    .f({\usb_fifo/n0 [5],\usb_fifo/n0 [3]}),
    .fco(\usb_fifo/add0/c7 ),
    .fx({\usb_fifo/n0 [6],\usb_fifo/n0 [4]}));
  EG_PHY_LSLICE #(
    //.MACRO("usb_fifo/add0/ucin_al_u126"),
    //.R_POSITION("X0Y1Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \usb_fifo/add0/u7_al_u128  (
    .a({\usb_fifo/counter [9],\usb_fifo/counter [7]}),
    .b({\usb_fifo/counter [10],\usb_fifo/counter [8]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\usb_fifo/add0/c7 ),
    .f({\usb_fifo/n0 [9],\usb_fifo/n0 [7]}),
    .fco(\usb_fifo/add0/c11 ),
    .fx({\usb_fifo/n0 [10],\usb_fifo/n0 [8]}));
  EG_PHY_LSLICE #(
    //.MACRO("usb_fifo/add0/ucin_al_u126"),
    //.R_POSITION("X0Y0Z0"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'h000A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("SYNC"),
    .SRMUX("SR"))
    \usb_fifo/add0/ucin_al_u126  (
    .a({\usb_fifo/counter [1],1'b0}),
    .b({\usb_fifo/counter [2],\usb_fifo/counter [0]}),
    .c(2'b00),
    .clk(clk_50m),
    .d(2'b01),
    .e(2'b01),
    .mi(\usb_fifo/n0 [1:0]),
    .sr(\usb_fifo/n9 ),
    .f({\usb_fifo/n0 [1],open_n1898}),
    .fco(\usb_fifo/add0/c3 ),
    .fx({\usb_fifo/n0 [2],\usb_fifo/n0 [0]}),
    .q(\usb_fifo/counter [1:0]));
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ft245.v(34)
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ft245.v(34)
  EG_PHY_LSLICE #(
    //.LUTF0("~(~A*~B)"),
    //.LUTF1("~(~A*~B)"),
    //.LUTG0("~(~A*~B)"),
    //.LUTG1("~(~A*~B)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1110111011101110),
    .INIT_LUTF1(16'b1110111011101110),
    .INIT_LUTG0(16'b1110111011101110),
    .INIT_LUTG1(16'b1110111011101110),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("SYNC"),
    .SRMUX("SR"))
    \usb_fifo/reg0_b0|usb_fifo/reg0_b6  (
    .a({FT_D_pad[0],FT_D_pad[6]}),
    .b({\usb_fifo/n1 ,\usb_fifo/n1 }),
    .clk(clk_50m),
    .sr(\usb_fifo/n6 ),
    .q({FT_D_pad[0],FT_D_pad[6]}));  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ft245.v(34)
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ft245.v(34)
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ft245.v(34)
  EG_PHY_MSLICE #(
    //.LUT0("~(~A*~C)"),
    //.LUT1("~(~C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1111101011111010),
    .INIT_LUT1(16'b1111111111110000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("SYNC"),
    .SRMUX("SR"))
    \usb_fifo/reg0_b2|usb_fifo/reg0_b4  (
    .a({open_n1925,FT_D_pad[4]}),
    .c({FT_D_pad[2],\usb_fifo/n1 }),
    .clk(clk_50m),
    .d({\usb_fifo/n1 ,open_n1929}),
    .sr(\usb_fifo/n6 ),
    .q({FT_D_pad[2],FT_D_pad[4]}));  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ft245.v(34)
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ft245.v(34)
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ft245.v(34)
  EG_PHY_LSLICE #(
    //.LUTF0("~A*~C*~D*~B+~A*C*~D*~B"),
    //.LUTF1("0"),
    //.LUTG0("0"),
    //.LUTG1("A*~C*D*B+A*C*D*B"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000000010001),
    .INIT_LUTF1(16'b0000000000000000),
    .INIT_LUTG0(16'b0000000000000000),
    .INIT_LUTG1(16'b1000100000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("SYNC"),
    .SRMUX("SR"))
    \usb_fifo/reg1_b10|usb_fifo/reg1_b11  (
    .a({\usb_fifo/counter [10],\usb_fifo/counter [10]}),
    .b({\usb_fifo/counter [13],\usb_fifo/counter [13]}),
    .clk(clk_50m),
    .d({\usb_fifo/counter [12],\usb_fifo/counter [12]}),
    .e({\usb_fifo/counter [11],\usb_fifo/counter [11]}),
    .mi({\usb_fifo/n0 [10],\usb_fifo/n0 [11]}),
    .sr(\usb_fifo/n9 ),
    .f({_al_u112_o,_al_u102_o}),
    .q({\usb_fifo/counter [10],\usb_fifo/counter [11]}));  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ft245.v(34)
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ft245.v(34)
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ft245.v(34)
  EG_PHY_MSLICE #(
    //.LUT0("(~(B)*~(C)*~(D)*~((~0*~A))+B*~(C)*~(D)*~((~0*~A))+~(B)*C*~(D)*~((~0*~A))+~(B)*~(C)*D*~((~0*~A))+B*~(C)*D*~((~0*~A))+~(B)*C*D*~((~0*~A))+B*C*D*~((~0*~A))+~(B)*C*D*(~0*~A)+B*C*D*(~0*~A))"),
    //.LUT1("(~(B)*~(C)*~(D)*~((~1*~A))+B*~(C)*~(D)*~((~1*~A))+~(B)*C*~(D)*~((~1*~A))+~(B)*~(C)*D*~((~1*~A))+B*~(C)*D*~((~1*~A))+~(B)*C*D*~((~1*~A))+B*C*D*~((~1*~A))+~(B)*C*D*(~1*~A)+B*C*D*(~1*~A))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1111101000101010),
    .INIT_LUT1(16'b1111111100111111),
    .MODE("LOGIC"),
    .MSFXMUX("ON"),
    .REG0_REGSET("RESET"),
    .REG0_SD("FX"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("SYNC"),
    .SRMUX("SR"))
    \usb_fifo/reg1_b12|usb_fifo/WR_reg  (
    .a({\usb_fifo/n1 ,\usb_fifo/n1 }),
    .b({_al_u104_o,_al_u104_o}),
    .c({_al_u111_o,_al_u111_o}),
    .clk(clk_50m),
    .d({_al_u114_o,_al_u114_o}),
    .mi({\usb_fifo/n0 [12],FT_WR_pad}),
    .sr(\usb_fifo/n9 ),
    .q({\usb_fifo/counter [12],FT_WR_pad}));  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ft245.v(34)
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ft245.v(34)
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ft245.v(34)
  EG_PHY_MSLICE #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("SYNC"),
    .SRMUX("SR"))
    \usb_fifo/reg1_b13|usb_fifo/reg1_b19  (
    .clk(clk_50m),
    .mi({\usb_fifo/n0 [13],\usb_fifo/n0 [19]}),
    .sr(\usb_fifo/n9 ),
    .q({\usb_fifo/counter [13],\usb_fifo/counter [19]}));  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ft245.v(34)
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ft245.v(34)
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ft245.v(34)
  EG_PHY_LSLICE #(
    //.LUTF0("(~0*~D*~C*~B*A)"),
    //.LUTF1("(0*A*C*B*D)"),
    //.LUTG0("(~1*~D*~C*~B*A)"),
    //.LUTG1("(1*A*C*B*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000000000010),
    .INIT_LUTF1(16'b0000000000000000),
    .INIT_LUTG0(16'b0000000000000000),
    .INIT_LUTG1(16'b1000000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("SYNC"),
    .SRMUX("SR"))
    \usb_fifo/reg1_b14|usb_fifo/reg1_b15  (
    .a({\usb_fifo/counter [8],_al_u102_o}),
    .b({\usb_fifo/counter [14],\usb_fifo/counter [14]}),
    .c({\usb_fifo/counter [15],\usb_fifo/counter [15]}),
    .clk(clk_50m),
    .d({_al_u112_o,\usb_fifo/counter [8]}),
    .e({\usb_fifo/counter [9],\usb_fifo/counter [9]}),
    .mi({\usb_fifo/n0 [14],\usb_fifo/n0 [15]}),
    .sr(\usb_fifo/n9 ),
    .f({_al_u113_o,_al_u103_o}),
    .q({\usb_fifo/counter [14],\usb_fifo/counter [15]}));  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ft245.v(34)
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ft245.v(34)
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ft245.v(34)
  EG_PHY_LSLICE #(
    //.LUTF0("(~0*~D*C*~B*A)"),
    //.LUTF1("(~0*~D*~C*~A*B)"),
    //.LUTG0("(~1*~D*C*~B*A)"),
    //.LUTG1("(~1*~D*~C*~A*B)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000000100000),
    .INIT_LUTF1(16'b0000000000000100),
    .INIT_LUTG0(16'b0000000000000000),
    .INIT_LUTG1(16'b0000000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("SYNC"),
    .SRMUX("SR"))
    \usb_fifo/reg1_b16|usb_fifo/reg1_b18  (
    .a({\usb_fifo/counter [16],_al_u107_o}),
    .b({_al_u107_o,\usb_fifo/counter [16]}),
    .c({\usb_fifo/counter [17],\usb_fifo/counter [17]}),
    .clk(clk_50m),
    .d({\usb_fifo/counter [18],\usb_fifo/counter [18]}),
    .e({\usb_fifo/counter [19],\usb_fifo/counter [19]}),
    .mi({\usb_fifo/n0 [16],\usb_fifo/n0 [18]}),
    .sr(\usb_fifo/n9 ),
    .f({_al_u116_o,_al_u108_o}),
    .q({\usb_fifo/counter [16],\usb_fifo/counter [18]}));  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ft245.v(34)
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ft245.v(34)
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ft245.v(34)
  EG_PHY_LSLICE #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("SYNC"),
    .SRMUX("SR"))
    \usb_fifo/reg1_b21|usb_fifo/reg1_b9  (
    .clk(clk_50m),
    .mi({\usb_fifo/n0 [21],\usb_fifo/n0 [9]}),
    .sr(\usb_fifo/n9 ),
    .q({\usb_fifo/counter [21],\usb_fifo/counter [9]}));  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ft245.v(34)
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ft245.v(34)
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ft245.v(34)
  EG_PHY_LSLICE #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("SYNC"),
    .SRMUX("SR"))
    \usb_fifo/reg1_b22|usb_fifo/reg1_b8  (
    .clk(clk_50m),
    .mi({\usb_fifo/n0 [22],\usb_fifo/n0 [8]}),
    .sr(\usb_fifo/n9 ),
    .q({\usb_fifo/counter [22],\usb_fifo/counter [8]}));  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ft245.v(34)
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ft245.v(34)
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ft245.v(34)
  EG_PHY_MSLICE #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("SYNC"),
    .SRMUX("SR"))
    \usb_fifo/reg1_b23|usb_fifo/reg1_b7  (
    .clk(clk_50m),
    .mi({\usb_fifo/n0 [23],\usb_fifo/n0 [7]}),
    .sr(\usb_fifo/n9 ),
    .q({\usb_fifo/counter [23],\usb_fifo/counter [7]}));  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ft245.v(34)
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ft245.v(34)
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ft245.v(34)
  EG_PHY_LSLICE #(
    //.LUTF0("(~0*~A*~C*~B*D)"),
    //.LUTF1("~A*~B*~C*~D+~A*B*~C*~D"),
    //.LUTG0("(~1*~A*~C*~B*D)"),
    //.LUTG1("0"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000100000000),
    .INIT_LUTF1(16'b0000000000000101),
    .INIT_LUTG0(16'b0000000000000000),
    .INIT_LUTG1(16'b0000000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("SYNC"),
    .SRMUX("SR"))
    \usb_fifo/reg1_b24|usb_fifo/reg1_b28  (
    .a({\usb_fifo/counter [24],\usb_fifo/counter [30]}),
    .b({open_n2117,\usb_fifo/counter [28]}),
    .c({\usb_fifo/counter [26],\usb_fifo/counter [29]}),
    .clk(clk_50m),
    .d({\usb_fifo/counter [27],_al_u105_o}),
    .e({\usb_fifo/counter [25],\usb_fifo/counter [31]}),
    .mi({\usb_fifo/n0 [24],\usb_fifo/n0 [28]}),
    .sr(\usb_fifo/n9 ),
    .f({_al_u105_o,_al_u106_o}),
    .q({\usb_fifo/counter [24],\usb_fifo/counter [28]}));  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ft245.v(34)
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ft245.v(34)
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ft245.v(34)
  EG_PHY_MSLICE #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("SYNC"),
    .SRMUX("SR"))
    \usb_fifo/reg1_b25|usb_fifo/reg1_b6  (
    .clk(clk_50m),
    .mi({\usb_fifo/n0 [25],\usb_fifo/n0 [6]}),
    .sr(\usb_fifo/n9 ),
    .q({\usb_fifo/counter [25],\usb_fifo/counter [6]}));  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ft245.v(34)
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ft245.v(34)
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ft245.v(34)
  EG_PHY_LSLICE #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("SYNC"),
    .SRMUX("SR"))
    \usb_fifo/reg1_b26|usb_fifo/reg1_b5  (
    .clk(clk_50m),
    .mi({\usb_fifo/n0 [26],\usb_fifo/n0 [5]}),
    .sr(\usb_fifo/n9 ),
    .q({\usb_fifo/counter [26],\usb_fifo/counter [5]}));  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ft245.v(34)
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ft245.v(34)
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ft245.v(34)
  EG_PHY_LSLICE #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("SYNC"),
    .SRMUX("SR"))
    \usb_fifo/reg1_b27|usb_fifo/reg1_b31  (
    .clk(clk_50m),
    .mi({\usb_fifo/n0 [27],\usb_fifo/n0 [31]}),
    .sr(\usb_fifo/n9 ),
    .q({\usb_fifo/counter [27],\usb_fifo/counter [31]}));  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ft245.v(34)
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ft245.v(34)
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ft245.v(34)
  EG_PHY_MSLICE #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("SYNC"),
    .SRMUX("SR"))
    \usb_fifo/reg1_b29|usb_fifo/reg1_b30  (
    .clk(clk_50m),
    .mi({\usb_fifo/n0 [29],\usb_fifo/n0 [30]}),
    .sr(\usb_fifo/n9 ),
    .q({\usb_fifo/counter [29],\usb_fifo/counter [30]}));  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ft245.v(34)
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ft245.v(34)
  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ft245.v(34)
  EG_PHY_LSLICE #(
    //.LUTF0("(0*D*C*B*A)"),
    //.LUTF1("0"),
    //.LUTG0("(1*D*C*B*A)"),
    //.LUTG1("B*~C*D*A+B*C*D*A"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000000000000),
    .INIT_LUTF1(16'b0000000000000000),
    .INIT_LUTG0(16'b1000000000000000),
    .INIT_LUTG1(16'b1000100000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("SYNC"),
    .SRMUX("SR"))
    \usb_fifo/reg1_b2|usb_fifo/reg1_b4  (
    .a({\usb_fifo/counter [3],_al_u100_o}),
    .b({\usb_fifo/counter [1],\usb_fifo/counter [4]}),
    .c({open_n2238,\usb_fifo/counter [5]}),
    .clk(clk_50m),
    .d({\usb_fifo/counter [2],\usb_fifo/counter [6]}),
    .e({\usb_fifo/counter [0],\usb_fifo/counter [7]}),
    .mi({\usb_fifo/n0 [2],\usb_fifo/n0 [4]}),
    .sr(\usb_fifo/n9 ),
    .f({_al_u100_o,_al_u101_o}),
    .q({\usb_fifo/counter [2],\usb_fifo/counter [4]}));  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ft245.v(34)
  EG_PHY_MSLICE #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .SRMODE("SYNC"),
    .SRMUX("SR"))
    \usb_fifo/reg1_b3  (
    .clk(clk_50m),
    .mi({open_n2274,\usb_fifo/n0 [3]}),
    .sr(\usb_fifo/n9 ),
    .q({open_n2280,\usb_fifo/counter [3]}));  // /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ft245.v(34)

endmodule 

