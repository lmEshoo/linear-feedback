module fib_lfsr(

  input  clk,

  input  rst,



  output [4:0] data

);


reg data=5’b00111;


wire feedback = data[4] ^ data[1] ;



always @(posedge clk or negedge rst)

  if (~rst) 

    data <= 5'h1f;

  else

    data <= {data[3:0], feedback} ;



endmodule
