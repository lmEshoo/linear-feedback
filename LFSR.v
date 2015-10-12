`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:00:25 10/12/2015 
// Design Name: 
// Module Name:    LFSR 
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
module LFSR(out,rset, clk,seed);
input clk,rset;
output reg [4:0] out;
//reg feedback=1'b0;

input  [4:0] seed;

	always @ (posedge clk)
	begin
if (rset) begin
out=seed;
end
else

begin
out={out[3:0],out[4]^out[2]};

end
end
endmodule
