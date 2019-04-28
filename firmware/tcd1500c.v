module tcd1500c(input CLK20M,
                input TRIG,
                output SH,
                output CLK,
                output RS,
                output SP);

reg SH, CLK, RS, SP;
reg OS,DOS;
reg [7:0]i; //定义几个计数量
reg [7:0]j;
reg [7:0]k;
reg [13:0]h;

reg run, run_1, run_2;
reg stop, stop_1, stop_2;

always @(posedge TRIG)
begin
    run_2 <= 1;
end

always @(posedge CLK20M) begin
    run_1  <= run_2;
    run    <= run_1;
    stop_1 <= stop_2;
    stop   <= stop_1;
    if (run == 1 && stop == 0) begin

        begin   //对j累加，用于后面RS控制
            j <= j+1;
        end

        begin   //判断RS信号是否反转
            if (j == 19)
            begin
                j  <= 0;
                RS <= ~RS;
                i  <= 0;
                k  <= 12;
            end
            else
                if (j < 4)
                begin
                    RS <= 1;
                end
                else
                begin
                    RS <= 0;
                end
        end

        begin
            if (SH) begin //SH高电平停止工作
                CLK <= 1;
                SP  <= 0;
                DOS <= 1;
            end
            else begin   //SH低电平时对CLK、SP进行控制
                begin
                    i <= i+1;
                    k <= k+1;
                end

                begin
                    if (i == 19) begin   //对i进行判断，以确定 CLK 信号是否反转
                        i   <= 0;
                        CLK <= ~CLK;
                    end
                end

                begin   //判断SP信号是否反转
                    if (k == 19) begin
                        k  <= 0;
                        SP <= ~SP;
                        OS <= 1;
                    end else if (k < 2) begin
                        SP <= 1;
                        OS <= 1;
                    end else begin
                        SP <= 0;
                        OS <= 0;
                    end
                end
            end
        end
    end else begin
        if (stop == 1) begin
            stop <= 0;
            run  <= 0;
        end
    end
end

always@(negedge RS)     //对SH周期的判断
begin
    h <= h+1;

    if (h == 5411) begin
        h  <= 0;
        SH <= ~SH;
    end

    if (h == 0) begin
        SH     <= 1;
        stop_2 <= 1;
    end else
        SH <= 0;
end

endmodule
