`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/27/2021 06:28:42 AM
// Design Name: 
// Module Name: InstructionMemory
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


module InstructionMemory(
    input logic clk, [2:0] counter,
    output logic [11:0] o
    );
    
    always_ff@(posedge clk)
        case(counter)
            0 : o <= 12'b000_00_000_0000; // RF[0] = D[0]
            1 : o <= 12'b000_00_001_0001; // RF[1] = D[1]
            2 : o <= 12'b010_010_001_000; // RF[2] = RF[0] - RF[1]
            3 : o <= 12'b000_00_000_0010; // RF[0] = D[2]
            4 : o <= 12'b000_00_001_0011; // RF[1] = D[3]
            5 : o <= 12'b010_011_001_000; // RF[2] = RF[2] - RF[3]
            6 : o <= 12'b001_00_001_0000; // D[0] = RF[1]
            7 : o <= 12'b001_00_010_0001; // D[1] = RF[2]
            8 : o <= 12'b101_001_001_001; // RF[1] = RF[1] + 1
            9 : o <= 12'b101_000_001_100; // RF[0] = RF[1] + 4
            10 : o <= 12'b001_00_000_0010; // D[2] = RF[0]
            11 : o <= 12'b001_00_001_0011; // D[3] = RF[1]
            default : o <= 12'b000000000000;
        endcase
endmodule
