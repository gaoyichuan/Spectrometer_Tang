// Verilog netlist created by TD v4.3.815
// Tue Apr 30 08:37:36 2019

`timescale 1ns / 1ps
module ccd_driver  // ccd_driver.v(3)
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

  input CLK_IN;  // ccd_driver.v(4)
  input FT_RXF;  // ccd_driver.v(16)
  input FT_TXE;  // ccd_driver.v(15)
  input RST_N;  // ccd_driver.v(5)
  output CCD_CLK;  // ccd_driver.v(8)
  output CCD_RS;  // ccd_driver.v(9)
  output CCD_SH;  // ccd_driver.v(7)
  output CCD_SP;  // ccd_driver.v(10)
  output FT_RD;  // ccd_driver.v(13)
  output FT_WR;  // ccd_driver.v(14)
  output [2:0] RGB_LED;  // ccd_driver.v(6)
  inout [7:0] FT_D;  // ccd_driver.v(12)

  wire [7:0] FT_D_pad;  // ccd_driver.v(12)
  wire [7:0] \ccd/cnt_100 ;  // tcd1500c.v(13)
  wire [13:0] \ccd/cnt_sh ;  // tcd1500c.v(14)
  wire [7:0] \ccd/n1 ;
  wire [13:0] \ccd/n18 ;
  wire [31:0] \usb_fifo/counter ;  // ft245.v(11)
  wire [31:0] \usb_fifo/n0 ;
  wire CCD_SH_pad;  // ccd_driver.v(7)
  wire CCD_SP_pad;  // ccd_driver.v(10)
  wire CLK_IN_pad;  // ccd_driver.v(4)
  wire FT_WR_pad;  // ccd_driver.v(14)
  wire RST_N_pad;  // ccd_driver.v(5)
  wire _al_n0_en;
  wire _al_n0_en_al_n1;
  wire _al_u107_o;
  wire _al_u109_o;
  wire _al_u110_o;
  wire _al_u111_o;
  wire _al_u114_o;
  wire _al_u116_o;
  wire _al_u118_o;
  wire _al_u119_o;
  wire _al_u120_o;
  wire _al_u121_o;
  wire _al_u122_o;
  wire _al_u123_o;
  wire _al_u124_o;
  wire _al_u125_o;
  wire _al_u126_o;
  wire _al_u128_o;
  wire _al_u129_o;
  wire _al_u130_o;
  wire _al_u131_o;
  wire _al_u132_o;
  wire _al_u134_o;
  wire _al_u136_o;
  wire _al_u137_o;
  wire _al_u159_o;
  wire _al_u160_o;
  wire _al_u86_o;
  wire _al_u87_o;
  wire _al_u88_o;
  wire _al_u89_o;
  wire _al_u91_o;
  wire _al_u92_o;
  wire _al_u93_o;
  wire _al_u94_o;
  wire _al_u95_o;
  wire \ccd/add0/c1 ;
  wire \ccd/add0/c3 ;
  wire \ccd/add0/c5 ;
  wire \ccd/add0/c7 ;
  wire \ccd/add1/c11 ;
  wire \ccd/add1/c3 ;
  wire \ccd/add1/c7 ;
  wire \ccd/clk_100  /* synthesis keep 1 */ ;  // tcd1500c.v(4)
  wire \ccd/lt0_c1 ;
  wire \ccd/lt0_c11 ;
  wire \ccd/lt0_c13 ;
  wire \ccd/lt0_c3 ;
  wire \ccd/lt0_c5 ;
  wire \ccd/lt0_c7 ;
  wire \ccd/lt0_c9 ;
  wire \ccd/n0_lutinv ;
  wire \ccd/n11_lutinv ;
  wire \ccd/n15 ;
  wire \ccd/n16_lutinv ;
  wire \ccd/n25 ;
  wire \ccd/n26 ;
  wire \ccd/n30_lutinv ;
  wire \ccd/n31_lutinv ;
  wire \ccd/n3_lutinv ;
  wire \ccd/n8_lutinv ;
  wire \ccd/n9 ;
  wire clk_50m;  // ccd_driver.v(24)
  wire \pll/clk0_buf ;  // al_ip/ip_pll.v(35)
  wire \pll/clk0_out ;  // al_ip/ip_pll.v(32)
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

  EG_PHY_PAD #(
    //.LOCATION("N5"),
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS33"),
    .MODE("BI"),
    .TSMUX("0"))
    _al_u10 (
    .do({open_n1,open_n2,open_n3,FT_D_pad[1]}),
    .bpad(FT_D[5]));  // ccd_driver.v(12)
  EG_PHY_LSLICE #(
    //.LUTF0("~(~0*B*A*(D@C))"),
    //.LUTF1("0"),
    //.LUTG0("~(~1*B*A*(D@C))"),
    //.LUTG1("~A*~B*~C*~D"),
    .INIT_LUTF0(16'b1111011101111111),
    .INIT_LUTF1(16'b0000000000000000),
    .INIT_LUTG0(16'b1111111111111111),
    .INIT_LUTG1(16'b0000000000000001),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u108|_al_u107  (
    .a({\ccd/cnt_sh [9],_al_u87_o}),
    .b({\ccd/cnt_sh [11],_al_u88_o}),
    .c({\ccd/cnt_sh [7],\ccd/cnt_sh [0]}),
    .d({_al_u107_o,\ccd/cnt_sh [1]}),
    .e({_al_u86_o,\ccd/cnt_sh [2]}),
    .f({_al_n0_en_al_n1,_al_u107_o}));
  EG_PHY_LSLICE #(
    //.LUTF0("0"),
    //.LUTF1("0"),
    //.LUTG0("A*~C*D*B+A*C*D*B"),
    //.LUTG1("~C*~B*~D*~A+C*~B*~D*~A"),
    .INIT_LUTF0(16'b0000000000000000),
    .INIT_LUTF1(16'b0000000000000000),
    .INIT_LUTG0(16'b1000100000000000),
    .INIT_LUTG1(16'b0000000000010001),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u109|_al_u110  (
    .a({\ccd/cnt_100 [0],_al_u109_o}),
    .b({\ccd/cnt_100 [2],\ccd/cnt_100 [5]}),
    .d({\ccd/cnt_100 [3],\ccd/cnt_100 [4]}),
    .e({\ccd/cnt_100 [1],_al_u93_o}),
    .f({_al_u109_o,_al_u110_o}));
  EG_PHY_PAD #(
    //.LOCATION("P2"),
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS33"),
    .MODE("BI"),
    .TSMUX("0"))
    _al_u11 (
    .do({open_n64,open_n65,open_n66,FT_D_pad[4]}),
    .bpad(FT_D[4]));  // ccd_driver.v(12)
  EG_PHY_MSLICE #(
    //.LUT0("(D*~C*~B*~A)"),
    //.LUT1("(~B*~C*~D*~A)"),
    .INIT_LUT0(16'b0000000100000000),
    .INIT_LUT1(16'b0000000000000001),
    .MODE("LOGIC"))
    \_al_u111|_al_u116  (
    .a({\ccd/cnt_100 [0],\ccd/cnt_100 [0]}),
    .b({\ccd/cnt_100 [3],\ccd/cnt_100 [1]}),
    .c({\ccd/cnt_100 [2],\ccd/cnt_100 [4]}),
    .d({\ccd/cnt_100 [1],\ccd/cnt_100 [5]}),
    .f({_al_u111_o,_al_u116_o}));
  EG_PHY_MSLICE #(
    //.LUT0("(~A*B*C)"),
    //.LUT1("(A*~B*C)"),
    .INIT_LUT0(16'b0100000001000000),
    .INIT_LUT1(16'b0010000000100000),
    .MODE("LOGIC"))
    \_al_u114|_al_u92  (
    .a({\ccd/cnt_100 [1],\ccd/cnt_100 [1]}),
    .b({\ccd/cnt_100 [0],\ccd/cnt_100 [0]}),
    .c({_al_u91_o,_al_u91_o}),
    .f({_al_u114_o,_al_u92_o}));
  EG_PHY_LSLICE #(
    //.LUTF0("(~0*D*~C*B*A)"),
    //.LUTF1("~(~A*~D*~(0*B*C))"),
    //.LUTG0("(~1*D*~C*B*A)"),
    //.LUTG1("~(~A*~D*~(1*B*C))"),
    .INIT_LUTF0(16'b0000100000000000),
    .INIT_LUTF1(16'b1111111110101010),
    .INIT_LUTG0(16'b0000000000000000),
    .INIT_LUTG1(16'b1111111111101010),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u117|_al_u115  (
    .a({\ccd/n11_lutinv ,_al_u114_o}),
    .b({_al_u91_o,\ccd/cnt_100 [4]}),
    .c({_al_u116_o,\ccd/cnt_100 [5]}),
    .d({\ccd/n9 ,\ccd/cnt_100 [6]}),
    .e({_al_u93_o,\ccd/cnt_100 [7]}),
    .f({_al_n0_en,\ccd/n11_lutinv }));
  EG_PHY_PAD #(
    //.LOCATION("P5"),
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS33"),
    .MODE("BI"),
    .TSMUX("0"))
    _al_u12 (
    .do({open_n145,open_n146,open_n147,FT_D_pad[1]}),
    .bpad(FT_D[3]));  // ccd_driver.v(12)
  EG_PHY_LSLICE #(
    //.LUTF0("0"),
    //.LUTG0("~A*~B*C*~D+A*~B*C*~D+~A*B*C*~D+A*B*C*~D+~A*~B*C*D+A*~B*C*D+~A*B*C*D+A*B*C*D"),
    .INIT_LUTF0(16'b0000000000000000),
    .INIT_LUTG0(16'b1111000011110000),
    .LSFMUX0("FUNC5"),
    .MODE("LOGIC"))
    _al_u122 (
    .c({open_n165,_al_u121_o}),
    .e({open_n170,_al_u119_o}),
    .f({open_n186,_al_u122_o}));
  // ft245.v(34)
  EG_PHY_LSLICE #(
    //.LUTF0("~A*~B*~C*~D+~A*~B*~C*D"),
    //.LUTF1("0"),
    //.LUTG0("0"),
    //.LUTG1("~A*C*~B*D+A*C*~B*D+~A*C*B*D+A*C*B*D"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000100000001),
    .INIT_LUTF1(16'b0000000000000000),
    .INIT_LUTG0(16'b0000000000000000),
    .INIT_LUTG1(16'b1111000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .SRMODE("SYNC"),
    .SRMUX("SR"))
    \_al_u127|usb_fifo/reg1_b20  (
    .a({open_n192,\usb_fifo/counter [20]}),
    .b({open_n193,\usb_fifo/counter [21]}),
    .c({_al_u124_o,\usb_fifo/counter [22]}),
    .clk(clk_50m),
    .d({_al_u122_o,open_n195}),
    .e({_al_u126_o,\usb_fifo/counter [23]}),
    .mi({open_n197,\usb_fifo/n0 [20]}),
    .sr(\usb_fifo/n9 ),
    .f({\usb_fifo/n9 ,_al_u125_o}),
    .q({open_n212,\usb_fifo/counter [20]}));  // ft245.v(34)
  // ft245.v(34)
  EG_PHY_LSLICE #(
    //.LUTF0("(~0*~D*~C*B*A)"),
    //.LUTF1("(D*B)"),
    //.LUTG0("(~1*~D*~C*B*A)"),
    //.LUTG1("(D*B)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000000001000),
    .INIT_LUTF1(16'b1100110000000000),
    .INIT_LUTG0(16'b0000000000000000),
    .INIT_LUTG1(16'b1100110000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .SRMODE("SYNC"),
    .SRMUX("SR"))
    \_al_u129|usb_fifo/reg1_b17  (
    .a({open_n213,_al_u125_o}),
    .b({_al_u124_o,\usb_fifo/counter [16]}),
    .c({open_n214,\usb_fifo/counter [17]}),
    .clk(clk_50m),
    .d({_al_u128_o,\usb_fifo/counter [18]}),
    .e({open_n216,\usb_fifo/counter [19]}),
    .mi({open_n218,\usb_fifo/n0 [17]}),
    .sr(\usb_fifo/n9 ),
    .f({_al_u129_o,_al_u128_o}),
    .q({open_n233,\usb_fifo/counter [17]}));  // ft245.v(34)
  EG_PHY_PAD #(
    //.LOCATION("M4"),
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS33"),
    .MODE("BI"),
    .TSMUX("0"))
    _al_u13 (
    .do({open_n235,open_n236,open_n237,FT_D_pad[2]}),
    .bpad(FT_D[2]));  // ccd_driver.v(12)
  EG_PHY_LSLICE #(
    //.LUTF0("(A*~C)"),
    //.LUTF1("(D*A)"),
    //.LUTG0("(A*~C)"),
    //.LUTG1("(D*A)"),
    .INIT_LUTF0(16'b0000101000001010),
    .INIT_LUTF1(16'b1010101000000000),
    .INIT_LUTG0(16'b0000101000001010),
    .INIT_LUTG1(16'b1010101000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u132|_al_u91  (
    .a({_al_u119_o,\ccd/cnt_100 [3]}),
    .c({open_n253,\ccd/cnt_100 [2]}),
    .d({_al_u131_o,open_n256}),
    .f({_al_u132_o,_al_u91_o}));
  // ft245.v(34)
  EG_PHY_LSLICE #(
    //.LUTF0("0"),
    //.LUTF1("(D*A)"),
    //.LUTG0("~A*~B*C*D+A*~B*C*D+~A*B*C*D+A*B*C*D"),
    //.LUTG1("(D*A)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000000000000),
    .INIT_LUTF1(16'b1010101000000000),
    .INIT_LUTG0(16'b1111000000000000),
    .INIT_LUTG1(16'b1010101000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("SET"),
    .REG0_SD("MI"),
    .SRMODE("SYNC"),
    .SRMUX("SR"))
    \_al_u133|usb_fifo/reg0_b1  (
    .a({_al_u129_o,open_n279}),
    .c({open_n282,_al_u134_o}),
    .ce(\usb_fifo/n1 ),
    .clk(clk_50m),
    .d({_al_u132_o,_al_u132_o}),
    .e({open_n283,_al_u124_o}),
    .mi({open_n285,1'b0}),
    .sr(\usb_fifo/n6 ),
    .f({\usb_fifo/n6 ,\usb_fifo/n1 }),
    .q({open_n300,FT_D_pad[1]}));  // ft245.v(34)
  EG_PHY_MSLICE #(
    //.LUT0("(0*D*C*B*A)"),
    //.LUT1("(1*D*A*C*B)"),
    .INIT_LUT0(16'b0000000000000000),
    .INIT_LUT1(16'b1000000000000000),
    .MODE("LOGIC"),
    .MSFXMUX("ON"))
    _al_u136 (
    .a({\ccd/cnt_sh [11],_al_u86_o}),
    .b({_al_u86_o,\ccd/cnt_sh [0]}),
    .c({\ccd/cnt_sh [0],\ccd/cnt_sh [11]}),
    .d({\ccd/cnt_sh [2],\ccd/cnt_sh [2]}),
    .mi({open_n313,\ccd/cnt_sh [3]}),
    .fx({open_n318,_al_u136_o}));
  // tcd1500c.v(50)
  EG_PHY_MSLICE #(
    //.LUT0("(D*~((C*~A))*~(B)+D*(C*~A)*~(B)+~(D)*(C*~A)*B+D*(C*~A)*B)"),
    //.LUT1("(D*C*A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0111001101000000),
    .INIT_LUT1(16'b1010000000000000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u137|ccd/reg0_b9  (
    .a({\ccd/cnt_sh [4],\ccd/n16_lutinv }),
    .b({open_n321,_al_u110_o}),
    .c({\ccd/cnt_sh [7],\ccd/n18 [9]}),
    .clk(CLK_IN_pad),
    .d({\ccd/cnt_sh [9],\ccd/cnt_sh [9]}),
    .sr(RST_N_pad),
    .f({_al_u137_o,open_n335}),
    .q({open_n339,\ccd/cnt_sh [9]}));  // tcd1500c.v(50)
  // tcd1500c.v(50)
  EG_PHY_MSLICE #(
    //.LUT0("(D*~((C*~A))*~(B)+D*(C*~A)*~(B)+~(D)*(C*~A)*B+D*(C*~A)*B)"),
    //.LUT1("(A*B*C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0111001101000000),
    .INIT_LUT1(16'b1000000000000000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u138|ccd/reg0_b1  (
    .a({\ccd/cnt_sh [1],\ccd/n16_lutinv }),
    .b({_al_u87_o,_al_u110_o}),
    .c({_al_u137_o,\ccd/n18 [1]}),
    .clk(CLK_IN_pad),
    .d({_al_u136_o,\ccd/cnt_sh [1]}),
    .sr(RST_N_pad),
    .f({\ccd/n16_lutinv ,open_n353}),
    .q({open_n357,\ccd/cnt_sh [1]}));  // tcd1500c.v(50)
  EG_PHY_PAD #(
    //.LOCATION("R2"),
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS33"),
    .MODE("BI"),
    .TSMUX("0"))
    _al_u14 (
    .do({open_n359,open_n360,open_n361,FT_D_pad[1]}),
    .bpad(FT_D[1]));  // ccd_driver.v(12)
  EG_PHY_PAD #(
    //.LOCATION("N3"),
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS33"),
    .MODE("BI"),
    .TSMUX("0"))
    _al_u15 (
    .do({open_n376,open_n377,open_n378,FT_D_pad[0]}),
    .bpad(FT_D[0]));  // ccd_driver.v(12)
  EG_PHY_MSLICE #(
    //.LUT0("(~0*D*~C*~B*A)"),
    //.LUT1("(~1*D*~C*~B*A)"),
    .INIT_LUT0(16'b0000001000000000),
    .INIT_LUT1(16'b0000000000000000),
    .MODE("LOGIC"),
    .MSFXMUX("ON"))
    _al_u157 (
    .a({_al_u92_o,_al_u92_o}),
    .b({\ccd/cnt_100 [4],\ccd/cnt_100 [4]}),
    .c({\ccd/cnt_100 [5],\ccd/cnt_100 [5]}),
    .d({\ccd/cnt_100 [6],\ccd/cnt_100 [6]}),
    .mi({open_n404,\ccd/cnt_100 [7]}),
    .fx({open_n409,\ccd/n31_lutinv }));
  EG_PHY_MSLICE #(
    //.LUT0("(~0*D*C*B*A)"),
    //.LUT1("(~1*C*D*A*B)"),
    .INIT_LUT0(16'b1000000000000000),
    .INIT_LUT1(16'b0000000000000000),
    .MODE("LOGIC"),
    .MSFXMUX("ON"))
    _al_u158 (
    .a({\ccd/cnt_100 [0],_al_u94_o}),
    .b({_al_u94_o,\ccd/cnt_100 [0]}),
    .c(\ccd/cnt_100 [2:1]),
    .d({\ccd/cnt_100 [1],\ccd/cnt_100 [2]}),
    .mi({open_n424,\ccd/cnt_100 [3]}),
    .fx({open_n429,\ccd/n30_lutinv }));
  EG_PHY_LSLICE #(
    //.LUTF0("~(C*(B*~(A)*~(D)*~(0)+B*A*~(D)*~(0)+~(B)*A*D*0+B*A*D*0))"),
    //.LUTF1("~A*B*C*~D+A*B*C*~D"),
    //.LUTG0("~(C*(B*~(A)*~(D)*~(1)+B*A*~(D)*~(1)+~(B)*A*D*1+B*A*D*1))"),
    //.LUTG1("0"),
    .INIT_LUTF0(16'b1111111100111111),
    .INIT_LUTF1(16'b0000000011000000),
    .INIT_LUTG0(16'b0101111111111111),
    .INIT_LUTG1(16'b0000000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u159|_al_u160  (
    .a({open_n432,_al_u159_o}),
    .b({\ccd/cnt_100 [2],_al_u114_o}),
    .c({\ccd/cnt_100 [3],_al_u93_o}),
    .d({\ccd/cnt_100 [0],\ccd/cnt_100 [4]}),
    .e({\ccd/cnt_100 [1],\ccd/cnt_100 [5]}),
    .f({_al_u159_o,_al_u160_o}));
  EG_PHY_PAD #(
    //.LOCATION("C5"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS33"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u16 (
    .do({open_n456,open_n457,open_n458,1'b0}),
    .opad(FT_RD));  // ccd_driver.v(13)
  EG_PHY_PAD #(
    //.LOCATION("A3"),
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS33"),
    .MODE("IN"),
    .TSMUX("1"))
    _al_u17 (
    .ipad(FT_RXF));  // ccd_driver.v(16)
  EG_PHY_PAD #(
    //.LOCATION("A4"),
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS33"),
    .MODE("IN"),
    .TSMUX("1"))
    _al_u18 (
    .ipad(FT_TXE));  // ccd_driver.v(15)
  EG_PHY_PAD #(
    //.LOCATION("T7"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS33"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u19 (
    .do({open_n509,open_n510,open_n511,FT_WR_pad}),
    .opad(FT_WR));  // ccd_driver.v(14)
  EG_PHY_PAD #(
    //.LOCATION("P13"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS33"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u20 (
    .do({open_n526,open_n527,open_n528,1'b0}),
    .opad(RGB_LED[2]));  // ccd_driver.v(6)
  EG_PHY_PAD #(
    //.LOCATION("J14"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS33"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u21 (
    .do({open_n543,open_n544,open_n545,1'b0}),
    .opad(RGB_LED[1]));  // ccd_driver.v(6)
  EG_PHY_PAD #(
    //.LOCATION("R3"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS33"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u22 (
    .do({open_n560,open_n561,open_n562,1'b0}),
    .opad(RGB_LED[0]));  // ccd_driver.v(6)
  EG_PHY_PAD #(
    //.LOCATION("K16"),
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS33"),
    .MODE("IN"),
    .TSMUX("1"))
    _al_u23 (
    .ipad(RST_N),
    .di(RST_N_pad));  // ccd_driver.v(5)
  EG_PHY_PAD #(
    //.LOCATION("B6"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS33"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u5 (
    .do({open_n594,open_n595,open_n596,CCD_SH_pad}),
    .opad(CCD_SH));  // ccd_driver.v(7)
  EG_PHY_PAD #(
    //.LOCATION("B14"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS33"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u6 (
    .do({open_n611,open_n612,open_n613,CCD_SP_pad}),
    .opad(CCD_SP));  // ccd_driver.v(10)
  EG_PHY_PAD #(
    //.LOCATION("K14"),
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS33"),
    .MODE("IN"),
    .TSMUX("1"))
    _al_u7 (
    .ipad(CLK_IN),
    .di(CLK_IN_pad));  // ccd_driver.v(4)
  EG_PHY_PAD #(
    //.LOCATION("P4"),
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS33"),
    .MODE("BI"),
    .TSMUX("0"))
    _al_u8 (
    .do({open_n645,open_n646,open_n647,FT_D_pad[1]}),
    .bpad(FT_D[7]));  // ccd_driver.v(12)
  EG_PHY_MSLICE #(
    //.LUT0("(~C)"),
    //.LUT1("~(~B*~A)"),
    .INIT_LUT0(16'b0000111100001111),
    .INIT_LUT1(16'b1110111011101110),
    .MODE("LOGIC"))
    \_al_u85|_al_u163  (
    .a({\ccd/clk_100 ,open_n661}),
    .b({CCD_SH_pad,open_n662}),
    .c({open_n663,RST_N_pad}),
    .f({\ccd/n25 ,\ccd/n15 }));
  // tcd1500c.v(50)
  EG_PHY_LSLICE #(
    //.LUTF0("~D*A*C*~B+D*A*C*~B+~D*~A*~C*B+D*~A*~C*B+~D*~A*C*B+D*~A*C*B+~D*A*C*B+D*A*C*B"),
    //.LUTF1("~A*~D*~B*~C+~A*~D*B*~C"),
    //.LUTG0("~D*~A*~C*B+D*~A*~C*B+~D*~A*C*B+D*~A*C*B"),
    //.LUTG1("0"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1110010011100100),
    .INIT_LUTF1(16'b0000000000000101),
    .INIT_LUTG0(16'b0100010001000100),
    .INIT_LUTG1(16'b0000000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u86|ccd/reg0_b8  (
    .a({\ccd/cnt_sh [13],_al_u110_o}),
    .b({open_n686,\ccd/cnt_sh [8]}),
    .c({\ccd/cnt_sh [10],\ccd/n18 [8]}),
    .clk(CLK_IN_pad),
    .d({\ccd/cnt_sh [8],open_n688}),
    .e({\ccd/cnt_sh [12],\ccd/n16_lutinv }),
    .sr(RST_N_pad),
    .f({_al_u86_o,open_n703}),
    .q({open_n707,\ccd/cnt_sh [8]}));  // tcd1500c.v(50)
  // tcd1500c.v(50)
  EG_PHY_MSLICE #(
    //.LUT0("(D*~((C*~A))*~(B)+D*(C*~A)*~(B)+~(D)*(C*~A)*B+D*(C*~A)*B)"),
    //.LUT1("(~D*~B)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0111001101000000),
    .INIT_LUT1(16'b0000000000110011),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u87|ccd/reg0_b6  (
    .a({open_n708,\ccd/n16_lutinv }),
    .b({\ccd/cnt_sh [5],_al_u110_o}),
    .c({open_n709,\ccd/n18 [6]}),
    .clk(CLK_IN_pad),
    .d({\ccd/cnt_sh [6],\ccd/cnt_sh [6]}),
    .sr(RST_N_pad),
    .f({_al_u87_o,open_n723}),
    .q({open_n727,\ccd/cnt_sh [6]}));  // tcd1500c.v(50)
  // tcd1500c.v(50)
  EG_PHY_MSLICE #(
    //.LUT0("(D*~((C*~A))*~(B)+D*(C*~A)*~(B)+~(D)*(C*~A)*B+D*(C*~A)*B)"),
    //.LUT1("(~C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0111001101000000),
    .INIT_LUT1(16'b0000000000001111),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u88|ccd/reg0_b4  (
    .a({open_n728,\ccd/n16_lutinv }),
    .b({open_n729,_al_u110_o}),
    .c({\ccd/cnt_sh [4],\ccd/n18 [4]}),
    .clk(CLK_IN_pad),
    .d({\ccd/cnt_sh [3],\ccd/cnt_sh [4]}),
    .sr(RST_N_pad),
    .f({_al_u88_o,open_n743}),
    .q({open_n747,\ccd/cnt_sh [4]}));  // tcd1500c.v(50)
  EG_PHY_MSLICE #(
    //.LUT0("(~0*~D*C*B*A)"),
    //.LUT1("(~1*~B*C*D*A)"),
    .INIT_LUT0(16'b0000000010000000),
    .INIT_LUT1(16'b0000000000000000),
    .MODE("LOGIC"),
    .MSFXMUX("ON"))
    _al_u89 (
    .a({_al_u87_o,_al_u87_o}),
    .b({\ccd/cnt_sh [1],_al_u88_o}),
    .c({\ccd/cnt_sh [0],\ccd/cnt_sh [0]}),
    .d({_al_u88_o,\ccd/cnt_sh [1]}),
    .mi({open_n760,\ccd/cnt_sh [2]}),
    .fx({open_n765,_al_u89_o}));
  EG_PHY_PAD #(
    //.LOCATION("N4"),
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS33"),
    .MODE("BI"),
    .TSMUX("0"))
    _al_u9 (
    .do({open_n769,open_n770,open_n771,FT_D_pad[6]}),
    .bpad(FT_D[6]));  // ccd_driver.v(12)
  EG_PHY_MSLICE #(
    //.LUT0("(~D*C*B*A)"),
    //.LUT1("(~A*~C)"),
    .INIT_LUT0(16'b0000000010000000),
    .INIT_LUT1(16'b0000010100000101),
    .MODE("LOGIC"))
    \_al_u93|_al_u95  (
    .a({\ccd/cnt_100 [7],\ccd/cnt_100 [0]}),
    .b({open_n785,\ccd/cnt_100 [1]}),
    .c({\ccd/cnt_100 [6],\ccd/cnt_100 [6]}),
    .d({open_n788,\ccd/cnt_100 [7]}),
    .f({_al_u93_o,_al_u95_o}));
  EG_PHY_LSLICE #(
    //.LUTF0("0"),
    //.LUTF1("A*B*~D*~C+A*B*~D*C"),
    //.LUTG0("A*~C*~B*~D+A*C*~B*~D"),
    //.LUTG1("A*B*~D*~C+A*B*~D*C"),
    .INIT_LUTF0(16'b0000000000000000),
    .INIT_LUTF1(16'b0000000010001000),
    .INIT_LUTG0(16'b0000000000100010),
    .INIT_LUTG1(16'b0000000010001000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u94|_al_u112  (
    .a({_al_u93_o,_al_u111_o}),
    .b({\ccd/cnt_100 [4],\ccd/cnt_100 [4]}),
    .d({\ccd/cnt_100 [5],\ccd/cnt_100 [5]}),
    .e({open_n811,_al_u93_o}),
    .f({_al_u94_o,\ccd/n3_lutinv }));
  EG_PHY_LSLICE #(
    //.LUTF0("0"),
    //.LUTF1("~A*~B*~C*D+A*~B*~C*D+~A*B*~C*D+A*B*~C*D+~A*~B*C*D+A*~B*C*D+~A*B*C*D+A*B*C*D"),
    //.LUTG0("A*~C*~D*~B+A*C*~D*~B"),
    //.LUTG1("~A*~B*C*~D+A*~B*C*~D+~A*B*C*~D+A*B*C*~D+~A*~B*~C*D+A*~B*~C*D+~A*B*~C*D+A*B*~C*D+~A*~B*C*D+A*~B*C*D+~A*B*C*D+A*B*C*D"),
    .INIT_LUTF0(16'b0000000000000000),
    .INIT_LUTF1(16'b1111111100000000),
    .INIT_LUTG0(16'b0000000000100010),
    .INIT_LUTG1(16'b1111111111110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u97|_al_u96  (
    .a({open_n832,_al_u95_o}),
    .b({open_n833,\ccd/cnt_100 [5]}),
    .c({_al_u94_o,open_n834}),
    .d({\ccd/n8_lutinv ,\ccd/cnt_100 [4]}),
    .e({_al_u92_o,_al_u91_o}),
    .f({\ccd/n9 ,\ccd/n8_lutinv }));
  EG_PHY_MSLICE #(
    //.LUT0("(0*~D*~C*~B*A)"),
    //.LUT1("(1*~B*~A*~D*C)"),
    .INIT_LUT0(16'b0000000000000000),
    .INIT_LUT1(16'b0000000000010000),
    .MODE("LOGIC"),
    .MSFXMUX("ON"))
    _al_u98 (
    .a({\ccd/cnt_100 [3],_al_u95_o}),
    .b({\ccd/cnt_100 [4],\ccd/cnt_100 [2]}),
    .c({_al_u95_o,\ccd/cnt_100 [3]}),
    .d({\ccd/cnt_100 [2],\ccd/cnt_100 [4]}),
    .mi({open_n869,\ccd/cnt_100 [5]}),
    .fx({open_n874,\ccd/n0_lutinv }));
  EG_PHY_MSLICE #(
    //.MACRO("ccd/add0/u0|ccd/add0/ucin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("ADD_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"))
    \ccd/add0/u0|ccd/add0/ucin  (
    .a({\ccd/cnt_100 [0],1'b0}),
    .b({1'b1,open_n877}),
    .f({\ccd/n1 [0],open_n897}),
    .fco(\ccd/add0/c1 ));
  EG_PHY_MSLICE #(
    //.MACRO("ccd/add0/u0|ccd/add0/ucin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("ADD"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"))
    \ccd/add0/u2|ccd/add0/u1  (
    .a(2'b00),
    .b(\ccd/cnt_100 [2:1]),
    .fci(\ccd/add0/c1 ),
    .f(\ccd/n1 [2:1]),
    .fco(\ccd/add0/c3 ));
  EG_PHY_MSLICE #(
    //.MACRO("ccd/add0/u0|ccd/add0/ucin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("ADD"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"))
    \ccd/add0/u4|ccd/add0/u3  (
    .a({\ccd/cnt_100 [4],1'b0}),
    .b({1'b0,\ccd/cnt_100 [3]}),
    .fci(\ccd/add0/c3 ),
    .f(\ccd/n1 [4:3]),
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
    .b(\ccd/cnt_100 [6:5]),
    .fci(\ccd/add0/c5 ),
    .f(\ccd/n1 [6:5]),
    .fco(\ccd/add0/c7 ));
  EG_PHY_MSLICE #(
    //.MACRO("ccd/add0/u0|ccd/add0/ucin"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("ADD"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"))
    \ccd/add0/u7_al_u177  (
    .a({open_n968,1'b0}),
    .b({open_n969,\ccd/cnt_100 [7]}),
    .fci(\ccd/add0/c7 ),
    .f({open_n988,\ccd/n1 [7]}));
  EG_PHY_LSLICE #(
    //.MACRO("ccd/add1/ucin_al_u173"),
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
    \ccd/add1/u11_al_u176  (
    .a({\ccd/cnt_sh [13],\ccd/cnt_sh [11]}),
    .b({open_n994,\ccd/cnt_sh [12]}),
    .c(2'b00),
    .d(2'b00),
    .e({open_n997,1'b0}),
    .fci(\ccd/add1/c11 ),
    .f({\ccd/n18 [13],\ccd/n18 [11]}),
    .fx({open_n1013,\ccd/n18 [12]}));
  EG_PHY_LSLICE #(
    //.MACRO("ccd/add1/ucin_al_u173"),
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
    \ccd/add1/u3_al_u174  (
    .a({\ccd/cnt_sh [5],\ccd/cnt_sh [3]}),
    .b({\ccd/cnt_sh [6],\ccd/cnt_sh [4]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\ccd/add1/c3 ),
    .f({\ccd/n18 [5],\ccd/n18 [3]}),
    .fco(\ccd/add1/c7 ),
    .fx({\ccd/n18 [6],\ccd/n18 [4]}));
  EG_PHY_LSLICE #(
    //.MACRO("ccd/add1/ucin_al_u173"),
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
    \ccd/add1/u7_al_u175  (
    .a({\ccd/cnt_sh [9],\ccd/cnt_sh [7]}),
    .b({\ccd/cnt_sh [10],\ccd/cnt_sh [8]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\ccd/add1/c7 ),
    .f({\ccd/n18 [9],\ccd/n18 [7]}),
    .fco(\ccd/add1/c11 ),
    .fx({\ccd/n18 [10],\ccd/n18 [8]}));
  EG_PHY_LSLICE #(
    //.MACRO("ccd/add1/ucin_al_u173"),
    //.R_POSITION("X0Y0Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'h000A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \ccd/add1/ucin_al_u173  (
    .a({\ccd/cnt_sh [1],1'b0}),
    .b({\ccd/cnt_sh [2],\ccd/cnt_sh [0]}),
    .c(2'b00),
    .d(2'b01),
    .e(2'b01),
    .f({\ccd/n18 [1],open_n1069}),
    .fco(\ccd/add1/c3 ),
    .fx({\ccd/n18 [2],\ccd/n18 [0]}));
  // tcd1500c.v(50)
  // tcd1500c.v(32)
  EG_PHY_MSLICE #(
    //.LUT0("(D*~((C*~A))*~(B)+D*(C*~A)*~(B)+~(D)*(C*~A)*B+D*(C*~A)*B)"),
    //.LUT1("(~D*~(~C*~A))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0111001101000000),
    .INIT_LUT1(16'b0000000011111010),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \ccd/clk_100_reg|ccd/reg0_b5  (
    .a({_al_u110_o,\ccd/n16_lutinv }),
    .b({open_n1072,_al_u110_o}),
    .c({\ccd/clk_100 ,\ccd/n18 [5]}),
    .clk(CLK_IN_pad),
    .d({\ccd/n3_lutinv ,\ccd/cnt_sh [5]}),
    .sr(RST_N_pad),
    .q({\ccd/clk_100 ,\ccd/cnt_sh [5]}));  // tcd1500c.v(50)
  EG_PHY_MSLICE #(
    //.MACRO("ccd/lt0_0|ccd/lt0_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \ccd/lt0_0|ccd/lt0_cin  (
    .a({\ccd/cnt_sh [0],1'b0}),
    .b({1'b1,open_n1091}),
    .fco(\ccd/lt0_c1 ));
  EG_PHY_MSLICE #(
    //.MACRO("ccd/lt0_0|ccd/lt0_cin"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \ccd/lt0_10|ccd/lt0_9  (
    .a(\ccd/cnt_sh [10:9]),
    .b(2'b00),
    .fci(\ccd/lt0_c9 ),
    .fco(\ccd/lt0_c11 ));
  EG_PHY_MSLICE #(
    //.MACRO("ccd/lt0_0|ccd/lt0_cin"),
    //.R_POSITION("X0Y3Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \ccd/lt0_12|ccd/lt0_11  (
    .a(\ccd/cnt_sh [12:11]),
    .b(2'b00),
    .fci(\ccd/lt0_c11 ),
    .fco(\ccd/lt0_c13 ));
  EG_PHY_MSLICE #(
    //.MACRO("ccd/lt0_0|ccd/lt0_cin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \ccd/lt0_2|ccd/lt0_1  (
    .a(\ccd/cnt_sh [2:1]),
    .b(2'b01),
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
    .a(\ccd/cnt_sh [4:3]),
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
    .a(\ccd/cnt_sh [6:5]),
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
    \ccd/lt0_8|ccd/lt0_7  (
    .a(\ccd/cnt_sh [8:7]),
    .b(2'b00),
    .fci(\ccd/lt0_c7 ),
    .fco(\ccd/lt0_c9 ));
  EG_PHY_MSLICE #(
    //.MACRO("ccd/lt0_0|ccd/lt0_cin"),
    //.R_POSITION("X0Y3Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \ccd/lt0_cout|ccd/lt0_13  (
    .a({1'b0,\ccd/cnt_sh [13]}),
    .b(2'b10),
    .fci(\ccd/lt0_c13 ),
    .f({\ccd/n26 ,open_n1279}));
  EG_PHY_PAD #(
    //.CLKSRC("CLK"),
    //.LOCATION("B10"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DO_DFFMODE("FF"),
    .DO_REGSET("RESET"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS33"),
    .MODE("OUT"),
    .OUTCEMUX("1"),
    .OUTRSTMUX("INV"),
    .OUTSCLKMUX("CLK"),
    .SRMODE("ASYNC"),
    .TSMUX("0"))
    \ccd/phi_reg_DO  (
    .ce(1'b1),
    .do({open_n1285,open_n1286,open_n1287,\ccd/n25 }),
    .osclk(CLK_IN_pad),
    .rst(RST_N_pad),
    .opad(CCD_CLK));  // tcd1500c.v(66)
  // tcd1500c.v(50)
  // tcd1500c.v(50)
  EG_PHY_MSLICE #(
    //.LUT0("(D*~((C*~A))*~(B)+D*(C*~A)*~(B)+~(D)*(C*~A)*B+D*(C*~A)*B)"),
    //.LUT1("(C*~((A*~B))*~(D)+C*(A*~B)*~(D)+~(C)*(A*~B)*D+C*(A*~B)*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0111001101000000),
    .INIT_LUT1(16'b0010001011110000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \ccd/reg0_b0|ccd/reg0_b7  (
    .a({\ccd/n18 [0],\ccd/n16_lutinv }),
    .b({\ccd/n16_lutinv ,_al_u110_o}),
    .c({\ccd/cnt_sh [0],\ccd/n18 [7]}),
    .clk(CLK_IN_pad),
    .d({_al_u110_o,\ccd/cnt_sh [7]}),
    .sr(RST_N_pad),
    .q({\ccd/cnt_sh [0],\ccd/cnt_sh [7]}));  // tcd1500c.v(50)
  // tcd1500c.v(50)
  // tcd1500c.v(50)
  EG_PHY_LSLICE #(
    //.LUTF0("~A*~C*~B*D+A*~C*~B*D+~A*C*~B*D+A*C*~B*D+~A*~C*B*D+A*~C*B*D+~A*C*B*D+A*C*B*D"),
    //.LUTF1("A*~D*~B*~C+A*D*~B*~C+A*~D*B*~C+A*D*B*~C+A*~D*~B*C+A*D*~B*C+A*~D*B*C+A*D*B*C"),
    //.LUTG0("~A*~C*B*~D+~A*C*B*~D+~A*~C*B*D+~A*C*B*D"),
    //.LUTG1("~A*~D*~B*C+A*~D*~B*C+~A*D*~B*C+A*D*~B*C"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111111100000000),
    .INIT_LUTF1(16'b1010101010101010),
    .INIT_LUTG0(16'b0100010001000100),
    .INIT_LUTG1(16'b0011000000110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \ccd/reg0_b10|ccd/reg0_b2  (
    .a({\ccd/cnt_sh [10],\ccd/n16_lutinv }),
    .b({\ccd/n16_lutinv ,\ccd/n18 [2]}),
    .c({\ccd/n18 [10],open_n1317}),
    .clk(CLK_IN_pad),
    .d({open_n1319,\ccd/cnt_sh [2]}),
    .e({_al_u110_o,_al_u110_o}),
    .sr(RST_N_pad),
    .q({\ccd/cnt_sh [10],\ccd/cnt_sh [2]}));  // tcd1500c.v(50)
  // tcd1500c.v(50)
  // tcd1500c.v(50)
  EG_PHY_LSLICE #(
    //.LUTF0("~D*B*C*~A+D*B*C*~A+~D*~B*~C*A+D*~B*~C*A+~D*~B*C*A+D*~B*C*A+~D*B*C*A+D*B*C*A"),
    //.LUTF1("A*B*~D*~C+A*B*D*~C"),
    //.LUTG0("~D*~B*~C*A+D*~B*~C*A+~D*~B*C*A+D*~B*C*A"),
    //.LUTG1("~A*~B*~D*~C+A*~B*~D*~C+A*B*~D*~C+~A*~B*D*~C+A*~B*D*~C+A*B*D*~C+~A*~B*~D*C+A*~B*~D*C+~A*~B*D*C+A*~B*D*C"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1110001011100010),
    .INIT_LUTF1(16'b0000100000001000),
    .INIT_LUTG0(16'b0010001000100010),
    .INIT_LUTG1(16'b0011101100111011),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \ccd/reg0_b12|ccd/reg0_b11  (
    .a({\ccd/n18 [12],\ccd/cnt_sh [11]}),
    .b({_al_u110_o,_al_u110_o}),
    .c({\ccd/n16_lutinv ,\ccd/n18 [11]}),
    .clk(CLK_IN_pad),
    .e({\ccd/cnt_sh [12],\ccd/n16_lutinv }),
    .sr(RST_N_pad),
    .q(\ccd/cnt_sh [12:11]));  // tcd1500c.v(50)
  // tcd1500c.v(50)
  // tcd1500c.v(50)
  EG_PHY_LSLICE #(
    //.LUTF0("~B*~D*~C*A+B*~D*~C*A+~B*D*~C*A+B*D*~C*A+~B*~D*C*A+B*~D*C*A+~B*D*C*A+B*D*C*A"),
    //.LUTF1("A*~D*~C*~B+A*D*~C*~B+A*~D*C*~B+A*D*C*~B+A*~D*~C*B+A*D*~C*B+A*~D*C*B+A*D*C*B"),
    //.LUTG0("~B*~D*C*~A+~B*D*C*~A+~B*~D*C*A+~B*D*C*A"),
    //.LUTG1("~A*~D*C*~B+A*~D*C*~B+~A*D*C*~B+A*D*C*~B"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1010101010101010),
    .INIT_LUTF1(16'b1010101010101010),
    .INIT_LUTG0(16'b0011000000110000),
    .INIT_LUTG1(16'b0011000000110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \ccd/reg0_b13|ccd/reg0_b3  (
    .a({\ccd/cnt_sh [13],\ccd/cnt_sh [3]}),
    .b({\ccd/n16_lutinv ,\ccd/n16_lutinv }),
    .c({\ccd/n18 [13],\ccd/n18 [3]}),
    .clk(CLK_IN_pad),
    .e({_al_u110_o,_al_u110_o}),
    .sr(RST_N_pad),
    .q({\ccd/cnt_sh [13],\ccd/cnt_sh [3]}));  // tcd1500c.v(50)
  // tcd1500c.v(23)
  // tcd1500c.v(23)
  EG_PHY_MSLICE #(
    //.LUT0("(C*~D)"),
    //.LUT1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000000011110000),
    .INIT_LUT1(16'b0000000011110000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \ccd/reg1_b0|ccd/reg1_b5  (
    .c({\ccd/n1 [0],\ccd/n1 [5]}),
    .clk(CLK_IN_pad),
    .d({\ccd/n0_lutinv ,\ccd/n0_lutinv }),
    .sr(RST_N_pad),
    .q({\ccd/cnt_100 [0],\ccd/cnt_100 [5]}));  // tcd1500c.v(23)
  // tcd1500c.v(23)
  // tcd1500c.v(23)
  EG_PHY_MSLICE #(
    //.LUT0("(B*~D)"),
    //.LUT1("(A*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000000011001100),
    .INIT_LUT1(16'b0000000010101010),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \ccd/reg1_b1|ccd/reg1_b4  (
    .a({\ccd/n1 [1],open_n1405}),
    .b({open_n1406,\ccd/n1 [4]}),
    .clk(CLK_IN_pad),
    .d({\ccd/n0_lutinv ,\ccd/n0_lutinv }),
    .sr(RST_N_pad),
    .q({\ccd/cnt_100 [1],\ccd/cnt_100 [4]}));  // tcd1500c.v(23)
  // tcd1500c.v(23)
  // tcd1500c.v(23)
  EG_PHY_MSLICE #(
    //.LUT0("(C*~B)"),
    //.LUT1("(D*~B)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0011000000110000),
    .INIT_LUT1(16'b0011001100000000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \ccd/reg1_b2|ccd/reg1_b3  (
    .b({\ccd/n0_lutinv ,\ccd/n0_lutinv }),
    .c({open_n1429,\ccd/n1 [3]}),
    .clk(CLK_IN_pad),
    .d({\ccd/n1 [2],open_n1431}),
    .sr(RST_N_pad),
    .q({\ccd/cnt_100 [2],\ccd/cnt_100 [3]}));  // tcd1500c.v(23)
  // tcd1500c.v(23)
  // tcd1500c.v(23)
  EG_PHY_MSLICE #(
    //.LUT0("(B*~D)"),
    //.LUT1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000000011001100),
    .INIT_LUT1(16'b0000000011110000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \ccd/reg1_b6|ccd/reg1_b7  (
    .b({open_n1451,\ccd/n1 [7]}),
    .c({\ccd/n1 [6],open_n1452}),
    .clk(CLK_IN_pad),
    .d({\ccd/n0_lutinv ,\ccd/n0_lutinv }),
    .sr(RST_N_pad),
    .q({\ccd/cnt_100 [6],\ccd/cnt_100 [7]}));  // tcd1500c.v(23)
  EG_PHY_PAD #(
    //.CLKSRC("CLK"),
    //.LOCATION("C9"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DO_DFFMODE("FF"),
    .DO_REGSET("RESET"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS33"),
    .MODE("OUT"),
    .OUTCEMUX("CE"),
    .OUTRSTMUX("INV"),
    .OUTSCLKMUX("CLK"),
    .SRMODE("ASYNC"),
    .TSMUX("0"))
    \ccd/rs_reg_DO  (
    .ce(_al_n0_en),
    .do({open_n1471,open_n1472,open_n1473,\ccd/n9 }),
    .osclk(CLK_IN_pad),
    .rst(RST_N_pad),
    .opad(CCD_RS));  // tcd1500c.v(42)
  EG_PHY_MSLICE #(
    //.LUT0("(~0*~D*~C*B*A)"),
    //.LUT1("(~1*~C*~D*B*A)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000000000001000),
    .INIT_LUT1(16'b0000000000000000),
    .MODE("LOGIC"),
    .MSFXMUX("ON"),
    .REG0_REGSET("RESET"),
    .REG0_SD("FX"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \ccd/sh_reg  (
    .a({_al_u89_o,_al_u89_o}),
    .b({_al_u86_o,_al_u86_o}),
    .c({\ccd/cnt_sh [7],\ccd/cnt_sh [11]}),
    .ce(_al_n0_en_al_n1),
    .clk(CLK_IN_pad),
    .d({\ccd/cnt_sh [11],\ccd/cnt_sh [7]}),
    .mi({open_n1495,\ccd/cnt_sh [9]}),
    .sr(RST_N_pad),
    .q({open_n1501,CCD_SH_pad}));  // tcd1500c.v(60)
  EG_PHY_MSLICE #(
    //.LUT0("(~D*~(C*~(0*~B*~A)))"),
    //.LUT1("(~D*~(C*~(1*~B*~A)))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000000000001111),
    .INIT_LUT1(16'b0000000000011111),
    .MODE("LOGIC"),
    .MSFXMUX("ON"),
    .REG0_REGSET("RESET"),
    .REG0_SD("FX"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \ccd/sp_reg  (
    .a({\ccd/n31_lutinv ,\ccd/n31_lutinv }),
    .b({\ccd/n30_lutinv ,\ccd/n30_lutinv }),
    .c({_al_u160_o,_al_u160_o}),
    .clk(CLK_IN_pad),
    .d({\ccd/n26 ,\ccd/n26 }),
    .mi({open_n1513,CCD_SP_pad}),
    .sr(RST_N_pad),
    .q({open_n1519,CCD_SP_pad}));  // tcd1500c.v(78)
  EG_PHY_CONFIG #(
    .DONE_PERSISTN("ENABLE"),
    .INIT_PERSISTN("ENABLE"),
    .JTAG_PERSISTN("DISABLE"),
    .PROGRAMN_PERSISTN("DISABLE"))
    config_inst ();
  EG_PHY_GCLK \pll/bufg_feedback  (
    .clki(\pll/clk0_buf ),
    .clko(\pll/clk0_out ));  // al_ip/ip_pll.v(37)
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
    .fbclk(\pll/clk0_out ),
    .psclk(1'b0),
    .psclksel(3'b000),
    .psdown(1'b0),
    .psstep(1'b0),
    .refclk(CLK_IN_pad),
    .reset(\ccd/n15 ),
    .stdby(1'b0),
    .clkc({open_n1567,open_n1568,open_n1569,clk_50m,\pll/clk0_buf }));  // al_ip/ip_pll.v(64)
  EG_PHY_LSLICE #(
    //.MACRO("usb_fifo/add0/ucin_al_u164"),
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
    \usb_fifo/add0/u11_al_u167  (
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
    //.MACRO("usb_fifo/add0/ucin_al_u164"),
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
    \usb_fifo/add0/u15_al_u168  (
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
    //.MACRO("usb_fifo/add0/ucin_al_u164"),
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
    \usb_fifo/add0/u19_al_u169  (
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
    //.MACRO("usb_fifo/add0/ucin_al_u164"),
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
    \usb_fifo/add0/u23_al_u170  (
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
    //.MACRO("usb_fifo/add0/ucin_al_u164"),
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
    \usb_fifo/add0/u27_al_u171  (
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
    //.MACRO("usb_fifo/add0/ucin_al_u164"),
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
    \usb_fifo/add0/u31_al_u172  (
    .a({open_n1670,\usb_fifo/counter [31]}),
    .c(2'b00),
    .d({open_n1675,1'b0}),
    .fci(\usb_fifo/add0/c31 ),
    .f({open_n1692,\usb_fifo/n0 [31]}));
  EG_PHY_LSLICE #(
    //.MACRO("usb_fifo/add0/ucin_al_u164"),
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
    \usb_fifo/add0/u3_al_u165  (
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
    //.MACRO("usb_fifo/add0/ucin_al_u164"),
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
    \usb_fifo/add0/u7_al_u166  (
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
    //.MACRO("usb_fifo/add0/ucin_al_u164"),
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
    \usb_fifo/add0/ucin_al_u164  (
    .a({\usb_fifo/counter [1],1'b0}),
    .b({\usb_fifo/counter [2],\usb_fifo/counter [0]}),
    .c(2'b00),
    .clk(clk_50m),
    .d(2'b01),
    .e(2'b01),
    .mi(\usb_fifo/n0 [1:0]),
    .sr(\usb_fifo/n9 ),
    .f({\usb_fifo/n0 [1],open_n1747}),
    .fco(\usb_fifo/add0/c3 ),
    .fx({\usb_fifo/n0 [2],\usb_fifo/n0 [0]}),
    .q(\usb_fifo/counter [1:0]));
  // ft245.v(34)
  // ft245.v(34)
  EG_PHY_MSLICE #(
    //.LUT0("~(~A*~C)"),
    //.LUT1("~(~A*~C)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1111101011111010),
    .INIT_LUT1(16'b1111101011111010),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("SYNC"),
    .SRMUX("SR"))
    \usb_fifo/reg0_b0|usb_fifo/reg0_b6  (
    .a({FT_D_pad[0],FT_D_pad[6]}),
    .c({\usb_fifo/n1 ,\usb_fifo/n1 }),
    .clk(clk_50m),
    .sr(\usb_fifo/n6 ),
    .q({FT_D_pad[0],FT_D_pad[6]}));  // ft245.v(34)
  // ft245.v(34)
  // ft245.v(34)
  EG_PHY_LSLICE #(
    //.LUTF0("A*~B*~C*~D+A*B*~C*~D+A*~B*C*~D+A*B*C*~D+A*~B*~C*D+A*B*~C*D+A*~B*C*D+A*B*C*D"),
    //.LUTF1("A*~B*~C*~D+A*B*~C*~D+A*~B*C*~D+A*B*C*~D+A*~B*~C*D+A*B*~C*D+A*~B*C*D+A*B*C*D"),
    //.LUTG0("~A*~B*~C*~D+A*~B*~C*~D+~A*B*~C*~D+A*B*~C*~D+~A*~B*C*~D+A*~B*C*~D+~A*B*C*~D+A*B*C*~D+~A*~B*~C*D+A*~B*~C*D+~A*B*~C*D+A*B*~C*D+~A*~B*C*D+A*~B*C*D+~A*B*C*D+A*B*C*D"),
    //.LUTG1("~A*~B*~C*~D+A*~B*~C*~D+~A*B*~C*~D+A*B*~C*~D+~A*~B*C*~D+A*~B*C*~D+~A*B*C*~D+A*B*C*~D+~A*~B*~C*D+A*~B*~C*D+~A*B*~C*D+A*B*~C*D+~A*~B*C*D+A*~B*C*D+~A*B*C*D+A*B*C*D"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1010101010101010),
    .INIT_LUTF1(16'b1010101010101010),
    .INIT_LUTG0(16'b1111111111111111),
    .INIT_LUTG1(16'b1111111111111111),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("SYNC"),
    .SRMUX("SR"))
    \usb_fifo/reg0_b2|usb_fifo/reg0_b4  (
    .a({FT_D_pad[2],FT_D_pad[4]}),
    .clk(clk_50m),
    .e({\usb_fifo/n1 ,\usb_fifo/n1 }),
    .sr(\usb_fifo/n6 ),
    .q({FT_D_pad[2],FT_D_pad[4]}));  // ft245.v(34)
  // ft245.v(34)
  // ft245.v(34)
  EG_PHY_LSLICE #(
    //.LUTF0("~B*~A*~C*~D+B*~A*~C*~D"),
    //.LUTF1("0"),
    //.LUTG0("0"),
    //.LUTG1("A*~B*C*D+A*B*C*D"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000000000101),
    .INIT_LUTF1(16'b0000000000000000),
    .INIT_LUTG0(16'b0000000000000000),
    .INIT_LUTG1(16'b1010000000000000),
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
    .a({\usb_fifo/counter [10],\usb_fifo/counter [11]}),
    .c({\usb_fifo/counter [12],\usb_fifo/counter [12]}),
    .clk(clk_50m),
    .d({\usb_fifo/counter [13],\usb_fifo/counter [13]}),
    .e(\usb_fifo/counter [11:10]),
    .mi({\usb_fifo/n0 [10],\usb_fifo/n0 [11]}),
    .sr(\usb_fifo/n9 ),
    .f({_al_u130_o,_al_u120_o}),
    .q({\usb_fifo/counter [10],\usb_fifo/counter [11]}));  // ft245.v(34)
  // ft245.v(34)
  // ft245.v(34)
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
    .b({_al_u122_o,_al_u122_o}),
    .c({_al_u129_o,_al_u129_o}),
    .clk(clk_50m),
    .d({_al_u132_o,_al_u132_o}),
    .mi({\usb_fifo/n0 [12],FT_WR_pad}),
    .sr(\usb_fifo/n9 ),
    .q({\usb_fifo/counter [12],FT_WR_pad}));  // ft245.v(34)
  // ft245.v(34)
  // ft245.v(34)
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
    \usb_fifo/reg1_b13|usb_fifo/reg1_b19  (
    .clk(clk_50m),
    .mi({\usb_fifo/n0 [13],\usb_fifo/n0 [19]}),
    .sr(\usb_fifo/n9 ),
    .q({\usb_fifo/counter [13],\usb_fifo/counter [19]}));  // ft245.v(34)
  // ft245.v(34)
  // ft245.v(34)
  EG_PHY_LSLICE #(
    //.LUTF0("(~0*~D*~C*~B*A)"),
    //.LUTF1("(0*B*C*A*D)"),
    //.LUTG0("(~1*~D*~C*~B*A)"),
    //.LUTG1("(1*B*C*A*D)"),
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
    .a({\usb_fifo/counter [14],_al_u120_o}),
    .b({\usb_fifo/counter [8],\usb_fifo/counter [14]}),
    .c({\usb_fifo/counter [15],\usb_fifo/counter [15]}),
    .clk(clk_50m),
    .d({_al_u130_o,\usb_fifo/counter [8]}),
    .e({\usb_fifo/counter [9],\usb_fifo/counter [9]}),
    .mi({\usb_fifo/n0 [14],\usb_fifo/n0 [15]}),
    .sr(\usb_fifo/n9 ),
    .f({_al_u131_o,_al_u121_o}),
    .q({\usb_fifo/counter [14],\usb_fifo/counter [15]}));  // ft245.v(34)
  // ft245.v(34)
  // ft245.v(34)
  EG_PHY_LSLICE #(
    //.LUTF0("(~0*~D*C*~B*A)"),
    //.LUTF1("(~0*~D*~C*~B*A)"),
    //.LUTG0("(~1*~D*C*~B*A)"),
    //.LUTG1("(~1*~D*~C*~B*A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000000100000),
    .INIT_LUTF1(16'b0000000000000010),
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
    .a({_al_u125_o,_al_u125_o}),
    .b({\usb_fifo/counter [16],\usb_fifo/counter [16]}),
    .c({\usb_fifo/counter [17],\usb_fifo/counter [17]}),
    .clk(clk_50m),
    .d({\usb_fifo/counter [18],\usb_fifo/counter [18]}),
    .e({\usb_fifo/counter [19],\usb_fifo/counter [19]}),
    .mi({\usb_fifo/n0 [16],\usb_fifo/n0 [18]}),
    .sr(\usb_fifo/n9 ),
    .f({_al_u134_o,_al_u126_o}),
    .q({\usb_fifo/counter [16],\usb_fifo/counter [18]}));  // ft245.v(34)
  // ft245.v(34)
  // ft245.v(34)
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
    .q({\usb_fifo/counter [21],\usb_fifo/counter [9]}));  // ft245.v(34)
  // ft245.v(34)
  // ft245.v(34)
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
    \usb_fifo/reg1_b22|usb_fifo/reg1_b8  (
    .clk(clk_50m),
    .mi({\usb_fifo/n0 [22],\usb_fifo/n0 [8]}),
    .sr(\usb_fifo/n9 ),
    .q({\usb_fifo/counter [22],\usb_fifo/counter [8]}));  // ft245.v(34)
  // ft245.v(34)
  // ft245.v(34)
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
    \usb_fifo/reg1_b23|usb_fifo/reg1_b7  (
    .clk(clk_50m),
    .mi({\usb_fifo/n0 [23],\usb_fifo/n0 [7]}),
    .sr(\usb_fifo/n9 ),
    .q({\usb_fifo/counter [23],\usb_fifo/counter [7]}));  // ft245.v(34)
  // ft245.v(34)
  // ft245.v(34)
  EG_PHY_LSLICE #(
    //.LUTF0("(~0*~D*~C*~B*A)"),
    //.LUTF1("~D*~A*~C*~B+~D*A*~C*~B"),
    //.LUTG0("(~1*~D*~C*~B*A)"),
    //.LUTG1("0"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000000000010),
    .INIT_LUTF1(16'b0000000000000011),
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
    .a({open_n1970,_al_u123_o}),
    .b({\usb_fifo/counter [27],\usb_fifo/counter [28]}),
    .c({\usb_fifo/counter [26],\usb_fifo/counter [29]}),
    .clk(clk_50m),
    .d({\usb_fifo/counter [25],\usb_fifo/counter [30]}),
    .e({\usb_fifo/counter [24],\usb_fifo/counter [31]}),
    .mi({\usb_fifo/n0 [24],\usb_fifo/n0 [28]}),
    .sr(\usb_fifo/n9 ),
    .f({_al_u123_o,_al_u124_o}),
    .q({\usb_fifo/counter [24],\usb_fifo/counter [28]}));  // ft245.v(34)
  // ft245.v(34)
  // ft245.v(34)
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
    \usb_fifo/reg1_b25|usb_fifo/reg1_b6  (
    .clk(clk_50m),
    .mi({\usb_fifo/n0 [25],\usb_fifo/n0 [6]}),
    .sr(\usb_fifo/n9 ),
    .q({\usb_fifo/counter [25],\usb_fifo/counter [6]}));  // ft245.v(34)
  // ft245.v(34)
  // ft245.v(34)
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
    \usb_fifo/reg1_b26|usb_fifo/reg1_b5  (
    .clk(clk_50m),
    .mi({\usb_fifo/n0 [26],\usb_fifo/n0 [5]}),
    .sr(\usb_fifo/n9 ),
    .q({\usb_fifo/counter [26],\usb_fifo/counter [5]}));  // ft245.v(34)
  // ft245.v(34)
  // ft245.v(34)
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
    \usb_fifo/reg1_b27|usb_fifo/reg1_b31  (
    .clk(clk_50m),
    .mi({\usb_fifo/n0 [27],\usb_fifo/n0 [31]}),
    .sr(\usb_fifo/n9 ),
    .q({\usb_fifo/counter [27],\usb_fifo/counter [31]}));  // ft245.v(34)
  // ft245.v(34)
  // ft245.v(34)
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
    \usb_fifo/reg1_b29|usb_fifo/reg1_b30  (
    .clk(clk_50m),
    .mi({\usb_fifo/n0 [29],\usb_fifo/n0 [30]}),
    .sr(\usb_fifo/n9 ),
    .q({\usb_fifo/counter [29],\usb_fifo/counter [30]}));  // ft245.v(34)
  // ft245.v(34)
  // ft245.v(34)
  EG_PHY_LSLICE #(
    //.LUTF0("(0*A*C*B*D)"),
    //.LUTF1("0"),
    //.LUTG0("(1*A*C*B*D)"),
    //.LUTG1("C*A*~B*D+C*A*B*D"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000000000000),
    .INIT_LUTF1(16'b0000000000000000),
    .INIT_LUTG0(16'b1000000000000000),
    .INIT_LUTG1(16'b1010000000000000),
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
    .a({\usb_fifo/counter [1],\usb_fifo/counter [6]}),
    .b({open_n2091,\usb_fifo/counter [4]}),
    .c({\usb_fifo/counter [0],\usb_fifo/counter [5]}),
    .clk(clk_50m),
    .d({\usb_fifo/counter [3],_al_u118_o}),
    .e({\usb_fifo/counter [2],\usb_fifo/counter [7]}),
    .mi({\usb_fifo/n0 [2],\usb_fifo/n0 [4]}),
    .sr(\usb_fifo/n9 ),
    .f({_al_u118_o,_al_u119_o}),
    .q({\usb_fifo/counter [2],\usb_fifo/counter [4]}));  // ft245.v(34)
  EG_PHY_LSLICE #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .SRMODE("SYNC"),
    .SRMUX("SR"))
    \usb_fifo/reg1_b3  (
    .clk(clk_50m),
    .mi({open_n2120,\usb_fifo/n0 [3]}),
    .sr(\usb_fifo/n9 ),
    .q({open_n2137,\usb_fifo/counter [3]}));  // ft245.v(34)

endmodule 

