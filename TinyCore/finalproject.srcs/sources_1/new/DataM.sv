`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/26/2021 07:16:30 PM
// Design Name: 
// Module Name: DataM
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


module DataM(
    input logic clk, M_re, M_we, [3:0]M_wd, [3:0]M_add,
    output logic [3:0] M_rd
    );
    
    logic [3:0] data [15:0];
    
    always_comb
        for (int i = 0; i < 16; i++)
            assign data[i] = i;
        
    always@(posedge clk) begin
        if (M_we) begin
            data[M_add] <= M_wd;
        end
        else if (M_re) begin
            M_rd <= data[M_add];
        end
    end
endmodule
