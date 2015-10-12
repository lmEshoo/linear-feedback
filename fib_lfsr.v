`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:45:16 10/12/2015 
// Design Name: 
// Module Name:    fib_lfsr 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module fib_lfsr(
  input  clk,
  input  rst,
  output reg [4:0] data,
  input [4:0] seed
);

always @(posedge clk)
  if (~rst) 
    data = {data[3:0], data[4] ^ data[2]} ;
  else
    data = seed;
endmodule


