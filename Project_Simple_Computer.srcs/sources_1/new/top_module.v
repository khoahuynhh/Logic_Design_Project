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
    input [2:0] but,
    output [3:0] led_0,
    output [3:0] led_1,
    output [3:0] led_2,
    output [3:0] led_3
    );
    
    reg [15:0] output_data;
    wire [15:0] input_data_BCD;
    wire [3:0] thousands_temp;
    wire [3:0] hundreds_temp;
    wire [3:0] tens_temp;
    wire [3:0] ones_temp;
    wire [2:0] but_debounce;
    reg [2:0] but_prev;
    integer count;
    reg done;
    
    debounce_but uut(
        .reset(reset),
        .clk(clk),
        .button_in(but),
        .button_out(but_debounce)
    );
    
    always @( posedge clk or posedge reset) begin
        if(reset) begin
            output_data <= 16'b0;
            count <= 15;
            done <= 1'b0;
            but_prev <= 3'b0; 
        end else if(but_debounce[0] && !but_prev[0] && count >= 0) begin
            output_data[count] <= 1'b0;
            count <= count - 1;
        end else if(but_debounce[1] && !but_prev[1] && count >= 0) begin
            output_data[count] <= 1'b1;
            count <= count - 1;
        end else if(but_debounce[2] && !but_prev[2] && count >=0) begin
            output_data <= output_data;
            done <= 1'b1;
        end else begin
            done <= 1'b1;
        end
        but_prev <= but_debounce;
    end
    
    assign input_data_BCD = output_data;
    
    BCD uut1(
        .numberInput(input_data_BCD),
        .thousands(thousands_temp),
        .hundreds(hundreds_temp),
        .tens(tens_temp),
        .ones(ones_temp)
    );
    
    hex2led7 uut2(
        .enable(done),
        .thous(thousands_temp),
        .hund(hundreds_temp),
        .t(tens_temp),
        .o(ones_temp),
        .led_0(led_0),
        .led_1(led_1),
        .led_2(led_2),
        .led_3(led_3)
    );
    
endmodule
