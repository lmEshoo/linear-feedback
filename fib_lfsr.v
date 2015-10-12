module fib_lfsr(
  input  clk,
  input  rst,
  output [4:0] data

);

wire feedback = data[4] ^ data[1] ;

always @(posedge clk or negedge rst)
  if (~rst) 
    data <= 4'b0111;
  else
    data <= {data[3:0], feedback} ;
endmodule
