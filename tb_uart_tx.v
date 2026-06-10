module tb_uart_tx;

reg clk;
reg rst;
reg tx_start;
reg [7:0] data_in;

wire tx;
wire busy;

uart_tx uut(
    .clk(clk),
    .rst(rst),
    .tx_start(tx_start),
    .data_in(data_in),
    .tx(tx),
    .busy(busy)
);

always #5 clk = ~clk;

initial
begin
    clk = 0;
    rst = 1;
    tx_start = 0;
    data_in = 8'b10110011;

    #10 rst = 0;

    #10;
    tx_start = 1;

    #10;
    tx_start = 0;

    #150;
    $finish;
end

initial
begin
    $dumpfile("uart_tx.vcd");
    $dumpvars(0,tb_uart_tx);
end

endmodule


