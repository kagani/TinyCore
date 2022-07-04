`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/27/2021 01:12:23 AM
// Design Name: 
// Module Name: Controller
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


module Controller( // This is fsm
    input logic clk, reset, isExternal, EQ, L_btn, R_btn,
    input logic [11:0] ins_data, switch_data
    );
    
    logic [2:0] c_in, c_out;
    assign c_in = 0;
    
    ProgramCounter pc(clk, ~isExternal, c_in, c_out); 
    
    
    
endmodule
