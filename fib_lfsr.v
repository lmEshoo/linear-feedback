module fib_lfsr(

  input  clk,

  input  rst_n,



  output [4:0] data

);


reg data=5’b00111;


wire feedback = data[4] ^ data[1] ;



always @(posedge clk or negedge rst_n)

  if (~rst_n) 

    data <= 4'hf;

  else

    data <= {data[3:0], feedback} ;



endmodule
