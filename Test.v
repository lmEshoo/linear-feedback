`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:04:32 10/12/2015
// Design Name:   LFSR
// Module Name:   C:/Users/arpineh/Desktop/ECE 431/LFSR-New/Test.v
// Project Name:  LFSR-New
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: LFSR
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test;
	// Inputs
	reg clk;
	reg rset;
	reg [4:0] seed;
	// Outputs
	wire [4:0] out;
	// Instantiate the Unit Under Test (UUT)
	LFSR uut (
		.out(out), 
		.clk(clk),
      .rset(rset),	
		.seed(seed)
	);
	always
		begin #0.5 clk = ~clk; end
	initial begin
		// Initialize Inputs
		clk = 0;
		seed = 0;
		rset = 0;
		// Wait 100 ns for1'b0 reset to finish
		#100;
        #1 seed = 5'b00111;
		  #1 rset = 1'b1;
		  #1 rset = 1'b0;
		// Add stimulus here
	end
      
endmodule

