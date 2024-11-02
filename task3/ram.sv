module ram #(
    parameter ADDRESS_WIDTH = 8,
              DATA_WIDTH = 8
)(
    input logic clk,
    input logic [ADDRESS_WIDTH-1:0] wr_addr,
    input logic [ADDRESS_WIDTH-1:0] rd_addr,
    input logic [ADDRESS_WIDTH-1:0] offset,
    input logic [DATA_WIDTH-1:0] din,
    output logic [DATA_WIDTH-1:0] dout
);

logic [DATA_WIDTH-1:0] ram_array [2**ADDRESS_WIDTH-1:0];

always_ff @(posedge clk) begin
    ram_array[wr_addr + offset] <= din;
    dout <= ram_array [rd_addr];
end

endmodule
