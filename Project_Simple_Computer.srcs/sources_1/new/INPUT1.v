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
    input [3:0] but,   
    output reg [15:0] output_data
);
 
    reg [1:0] position;

// Sequential block for reset and position update
always @( posedge clk or posedge reset) begin
    if (reset) begin
        output_data <= 16'b0; // Reset output_data to 0
        position <= 2'b00;    // Reset position to 0
    end else begin
        case (position)
            2'b00: begin
                        output_data[3:0] <= but;
                        position <= position + 1;
                   end
            2'b01: begin
                       output_data[7:4] <= but;
                       position <= position + 1;
                   end
            2'b10: begin
                       output_data[11:8] <= but;
                       position <= position + 1;
                   end
            2'b11: begin
                       output_data[15:12] <= but;
                       position <= 2'b00;
                   end
        endcase
    end
end
endmodule






