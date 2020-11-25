`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/24/2020 07:00:44 PM
// Design Name: 
// Module Name: ButtonPressor
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


module ButtonPressor(
    input button,
    input clk,
    output logic [3:0]number
    );
    always @ (posedge clk)
        if(button)
        begin
            number = number + 1;
        end
    
    
endmodule
