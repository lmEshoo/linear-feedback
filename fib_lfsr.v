module fib_lfsr(
  input  clk,
  input  rst,
  output [4:0] data

);

always @(posedge clk or negedge rst)
  if (~rst) 
    data <= 4'b0111;
  else
    data <= {data[3:0], data[4] ^ data[1]} ;
endmodule


