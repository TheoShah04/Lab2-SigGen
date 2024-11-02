module counter #(
    parameter WIDTH = 8
)(
    input logic clk,
    input logic rst,
    input logic en,
    output logic [WIDTH-1:0] count
);

always_ff @ (posedge clk)
    count <= count + 1;
endmodule
