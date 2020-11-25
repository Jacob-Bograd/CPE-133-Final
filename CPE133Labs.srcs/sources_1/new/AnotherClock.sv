`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/24/2020 05:08:16 PM
// Design Name: 
// Module Name: AnotherClock
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


module AnotherClock(
input clk,
output logic otherclk

    );
    logic temp = 0;
    always_ff @ (posedge clk)
    begin
        if(temp == 1)
        begin
        otherclk = 0;
        temp = 0;
        end
        else
        begin
        otherclk = 1;
        temp = 1;
        end
        
    end
    
    
    
endmodule
