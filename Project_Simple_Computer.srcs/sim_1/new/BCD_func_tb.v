`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/20/2024 04:58:58 PM
// Design Name: 
// Module Name: BCD_func_tb
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

module BCD_tb_1;

    // Khai b�o c�c t�n hi?u
    reg [15:0] numberInput; // S? nh? ph�n 16 bit ??u v�o  
    wire [3:0] thousands;        
    wire [3:0] hundreds;         
    wire [3:0] tens;             
    wire [3:0] ones;             

    // Kh?i t?o module BCD
    BCD bcd_converter (
        .numberInput(numberInput),
        .thousands(thousands),
        .hundreds(hundreds),
        .tens(tens),
        .ones(ones)
    );

    // T?o m?t qu� tr�nh ki?m tra
    initial begin
        // In ti�u ??
        $display("Binary Input       | BCD Output");
        $display("-------------------|------------");

        // Ki?m tra v?i s? nh? ph�n 0
        numberInput = 16'b0000000000000000; // 0
        #10; 
        $display("%b | %d%d%d%d", numberInput, thousands, hundreds, tens, ones);

        // Ki?m tra v?i s? nh? ph�n 12345
        numberInput = 16'b0011000000111001; // 12345 (binary of 12345)
        #10;
        $display("%b | %d%d%d%d", numberInput, thousands, hundreds, tens, ones);

        // End simulation
        $finish;
    end
endmodule

