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
           input wire FT_RXF
       );

ip_pll pll(
           .refclk (CLK_IN),
           .reset (~RST_N),
           .extlock (clklock),
           .clk0_out (clk_20m),
           .clk1_out (clk_50m)
       );

tcd1500c ccd(
             .clk (clk_20m),
             .rst_n (RST_N),
             .phi (CCD_CLK),
             .sh (CCD_SH),
             .rs (CCD_RS),
             .sp (CCD_SP)
         );

ft245 usb_fifo(
          .clk (clk_50m),
          .D (FT_D),
          .RD (FT_RD),
          .WR (FT_WR),
          .TXE (FT_TXE),
          .RXF (FT_RXF)
      );

ltc2227 adc(
            .CLK (ADC_CLK),
            .D (ADC_D),
            .OF (ADC_OF)
        );


endmodule
