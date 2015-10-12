module fib_lfsr(
  input  clk,
  input  rst,
  output reg [4:0] data;
  input [4:0] seed
);

always @(posedge clk)
  if (~rst) 
    data = {data[3:0], data[4] ^ data[2]} ;
  else
    data = seed;
endmodule


