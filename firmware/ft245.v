module ft245(
           input wire clk,
           inout wire [7: 0] D,
           output RD,
           output WR,
           input TXE,
           input RXF
       );

reg [7: 0] data;
reg [31: 0] counter;
reg RD, WR;

assign D = data;

always @(posedge clk) begin
    counter <= counter + 1;
    if (counter == 'hffff) begin
        WR <= 1;
        data <= 8'h55;
    end
    if (counter == 'h100ff) begin
        WR <= 0;
    end
    if (counter == 'h1ffff) begin
        WR <= 1;
        data <= 8'hAA;
    end
    if (counter == 'h200ff) begin
        WR <= 0;
        counter <= 0;
    end

end

endmodule
