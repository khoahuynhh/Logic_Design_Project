`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/13/2024 09:42:50 PM
// Design Name: 
// Module Name: top_module
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


module top_module(
    input clk,
    input reset,
    input enable,
    input [3:0] but,
    output [3:0] led_0,
    output [3:0] led_1,
    output [3:0] led_2,
    output [3:0] led_3
    );
    
    wire [15:0] output_data_input1;
    wire [3:0] thousands_t;
    wire [3:0] hundreds_t;
    wire [3:0] tens_t;
    wire [3:0] ones_t;
    
    INPUT1 uut(
        .clk(clk),           
        .reset(reset),       
        .but(but),      
        .output_data(output_data_input1)
    );
    
    BCD uut1(
        .numberInput(output_data_input1),
        .thousands(thousands_t),
        .hundreds(hundreds_t),
        .tens(tens_t),
        .ones(ones_t)
    );
    
    hex2led7 uut2(
        .enable(enable),
        .thous(thousands_t),
        .hund(hundreds_t),
        .t(tens_t),
        .o(ones_t),
        .led_0(led_0),
        .led_1(led_1),
        .led_2(led_2),
        .led_3(led_3)
    );
    
endmodule
