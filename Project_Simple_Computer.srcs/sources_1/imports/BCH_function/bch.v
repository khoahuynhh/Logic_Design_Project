module BCH (
    input [15:0] numberInput,  
    output reg [3:0] hex0,
    output reg [3:0] hex1,
    output reg [3:0] hex2,
    output reg [3:0] hex3
);

integer i;

always @(numberInput) begin
    hex0 = numberInput[3:0];
    hex1 = numberInput[7:4];
    hex2 = numberInput[11:8];
    hex3 = numberInput[15:12];
end

endmodule

