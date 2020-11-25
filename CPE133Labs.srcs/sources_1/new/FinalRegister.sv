`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Jacob Bograd
// Date: 11/24/20 2:35PM
// Description: This is the register to store the random number while the counter is always counting more numbers
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module FinalRegister(
    input reset, //this is the input to restart the process
    //input clk, //this is the clock
    input [3:0]inputNum, //This is the inputed number from the counter
    output logic [3:0]outputNum //This is the output that is sent to everything as the random number
    );
    //logic [3:0]inputNum = 0;
  //  always_ff @ (posedge clk)
  always_ff @ (posedge reset)
    begin
        if(reset) // when the button is pushed
        begin
            outputNum <= inputNum; //set the output to be the input
        end
        else //in case nothing is pushed hold
        begin
            outputNum <= outputNum; //holding
        end
    end
//    always_ff @ (posedge reset)
//    begin
//        outputNum <= inputNum;
//        inputNum ++;
//    end
    
    
endmodule
