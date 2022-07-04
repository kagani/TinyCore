`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/26/2021 03:50:02 AM
// Design Name: 
// Module Name: Alu
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


module Alu(
    input logic clk, ALU_op, [3:0] i1, i2,
    output logic EQ, [3:0] o
    );
    
    always_ff@(posedge clk)
        if (ALU_op)
            assign o = i1 + i2;
        else
            assign o = i1 - i2;
        assign EQ = i1 == i2 ? 1 : 0;
endmodule
