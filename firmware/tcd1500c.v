module tcd1500c (
           input clk,
           input rst_n,
           output reg clk_100,
           // output clk_50,
           output reg phi,
           output reg sh,
           output reg rs,
           output reg sp
       );


reg [7: 0] cnt_100;
reg[13: 0] cnt_sh = 'd0;

always@(posedge clk or negedge rst_n) begin
    // clock divider 100
    if (!rst_n)
        cnt_100 <= 'd0;
    else if (cnt_100 == 'd99)
        cnt_100 <= 'd0;
    else
        cnt_100 <= cnt_100 + 1'b1;

    if (!rst_n)
        clk_100 <= 1'b0;
    else if (cnt_100 == 'd0)
        clk_100 <= 1'b0;
    else if (cnt_100 == 'd50)
        clk_100 <= 1'b1;
    else
        clk_100 <= clk_100;

    // rs output
    if (!rst_n)
        rs <= 'd0;
    else if ((cnt_100 == 'd25) || (cnt_100 == 'd75))
        rs <= 'd1;
    else if ((cnt_100 == 'd40) || (cnt_100 == 'd90))
        rs <= 'd0;
    else
        rs <= rs;

    // sh counter
    if (!rst_n)
        cnt_sh <= 'd0;
    else if ((cnt_sh == 'd2719) && (cnt_100 == 'd50))
        cnt_sh <= 'd0;
    else if (cnt_100 == 'd50)
        cnt_sh <= cnt_sh + 'd1;

    // sh output
    if (!rst_n)
        sh <= 'd0;
    else if (cnt_sh == 'd1)
        sh <= 'd1;
    else if (cnt_sh == 'd2)
        sh <= 'd0;
    else
        sh <= sh;

    // phi output
    if (!rst_n)
        phi <= 'd0;
    else
        phi <= (sh) || (clk_100);

    // sp output
    if (!rst_n)
        sp <= 'd0;
    else if (cnt_sh < 'd3)
        sp <= 'd0;
    else if ((cnt_100 == 'd10) || (cnt_100 == 'd60))
        sp <= 'd1;
    else if ((cnt_100 == 'd23) || (cnt_100 == 'd73))
        sp <= 'd0;
    else
        sp <= sp;
end

endmodule
