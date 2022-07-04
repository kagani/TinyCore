`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/26/2021 04:04:48 AM
// Design Name: 
// Module Name: REGF
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


module REGF(
    input logic clk, RF_we,
    input logic [2:0] RF_add1, RF_add2, RF_wa,
    input logic [3:0] RF_wd,
    output logic [3:0] RF_d1, RF_d2
    );
    
    logic [1:0] RF [3:0];
    
    always_ff@(posedge clk) begin
        if (RF_we)
            RF <= RF_wd;
        assign RF_d1 = RF_add1 == 0 ? 0 : RF[RF_add1];
        assign RF_d2 = RF_add2 == 0 ? 0 : RF[RF_add2];
    end
endmodule
