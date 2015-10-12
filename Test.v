`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:46:12 10/12/2015
// Design Name:   fib_lfsr
// Module Name:   H:/My EGR Class Folders/test/test.v
// Project Name:  test
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fib_lfsr
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test;

	// Inputs
	reg clk;
	reg rst;
	reg [4:0] seed;

	// Outputs
	wire [4:0] data;

	// Instantiate the Unit Under Test (UUT)
	fib_lfsr uut (
		.clk(clk), 
		.rst(rst), 
		.data(data), 
		.seed(seed)
	);
	always begin #0.5 clk=~clk; end
	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		seed = 0;

		// Wait 100 ns for global reset to finish
		#100;
      #1 seed = 5'b00111;
		#1 rst = 1'b1;
		#1 rst =1'b0;
		// Add stimulus here

	end
      
endmodule

