`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/01/2024 09:51:13 AM
// Design Name: 
// Module Name: Simple_Calculator
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


module hex2led7(
    input enable, //assign for SW1
    input wire [3:0] thous,
    input wire [3:0] hund,
    input wire [3:0] t,
    input wire [3:0] o,
    output reg [3:0] led_0,
    output reg [3:0] led_1,
    output reg [3:0] led_2,
    output reg [3:0] led_3
);

always @* begin
    if (enable) begin
	case (o[3:0])
        4'b0000: led_0 = 4'b0000; //0
        4'b0001: led_0 = 4'b0001; //1
        4'b0010: led_0 = 4'b0010; //2
        4'b0011: led_0 = 4'b0011; //3
        4'b0100: led_0 = 4'b0100; //4
        4'b0101: led_0 = 4'b0101; //5
        4'b0110: led_0 = 4'b0110; //6
        4'b0111: led_0 = 4'b0111; //7
        4'b1000: led_0 = 4'b1000; //8
        4'b1001: led_0 = 4'b1001; //9
        default: led_0 = 4'b0000; //off
    endcase
    end else begin
        led_0 = 4'b0000;
    end
end

always @* begin
    if (enable) begin
	case (t[3:0])
        4'b0000: led_1 = 4'b0000; //0
        4'b0001: led_1 = 4'b0001; //1
        4'b0010: led_1 = 4'b0010; //2
        4'b0011: led_1 = 4'b0011; //3
        4'b0100: led_1 = 4'b0100; //4
        4'b0101: led_1 = 4'b0101; //5
        4'b0110: led_1 = 4'b0110; //6
        4'b0111: led_1 = 4'b0111; //7
        4'b1000: led_1 = 4'b1000; //8
        4'b1001: led_1 = 4'b1001; //9
        default: led_1 = 4'b0000; //off
    endcase
    end else begin
        led_1 = 4'b0000;
    end
end

always @* begin
    if (enable) begin
	case (hund[3:0])
        4'b0000: led_2 = 4'b0000; //0
        4'b0001: led_2 = 4'b0001; //1
        4'b0010: led_2 = 4'b0010; //2
        4'b0011: led_2 = 4'b0011; //3
        4'b0100: led_2 = 4'b0100; //4
        4'b0101: led_2 = 4'b0101; //5
        4'b0110: led_2 = 4'b0110; //6
        4'b0111: led_2 = 4'b0111; //7
        4'b1000: led_2 = 4'b1000; //8
        4'b1001: led_2 = 4'b1001; //9
        default: led_2 = 4'b0000; //off
    endcase
    end else begin
        led_2 = 4'b0000;
    end
end

always @* begin
    if (enable) begin
	case (thous[3:0])
        4'b0000: led_3 = 4'b0000; //0
        4'b0001: led_3 = 4'b0001; //1
        4'b0010: led_3 = 4'b0010; //2
        4'b0011: led_3 = 4'b0011; //3
        4'b0100: led_3 = 4'b0100; //4
        4'b0101: led_3 = 4'b0101; //5
        4'b0110: led_3 = 4'b0110; //6
        4'b0111: led_3 = 4'b0111; //7
        4'b1000: led_3 = 4'b1000; //8
        4'b1001: led_3 = 4'b1001; //9
        default: led_3 = 4'b0000; //0
    endcase
    end else begin
        led_3 = 4'b0000;
    end
end
endmodule
