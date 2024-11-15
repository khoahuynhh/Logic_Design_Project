`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2024 09:49:42 AM
// Design Name: 
// Module Name: INPUT1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module INPUT1(
    input clk,           // Add a clock signal
    input reset,         // Reset signal (assign for SW0)
    input [2:0] but,   
    output reg [15:0] output_data,
    output reg done
);

    integer count;

always @( posedge clk or posedge reset) begin
    if(reset) begin
        output_data <= 16'b0;
        count <= 0;
        done <= 1'b0; 
    end else if(!done &&  count < 16) begin
        
    end
end
endmodule






