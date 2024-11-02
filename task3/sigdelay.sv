module sigdelay #(
    parameter A_WIDTH = 8,
              D_WIDTH = 8
)(
    input logic clk,
    input logic rst,
    input logic en,
    input logic [D_WIDTH-1:0] offset,
    input logic [D_WIDTH-1:0] din,
    output logic [D_WIDTH-1:0] dout
);

    logic [A_WIDTH-1:0] address; //interconnect wire

counter addrCounter (
    .clk (clk),
    .rst (rst),
    .en (en),
    .count (address)
);

ram ram2ports(
    .clk (clk),
    .wr_addr (address),
    .rd_addr (address),
    .offset (offset),
    .din (din),
    .dout (dout)
);
endmodule
