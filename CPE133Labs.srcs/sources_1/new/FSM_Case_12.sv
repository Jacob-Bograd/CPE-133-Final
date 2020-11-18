`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////// 
// Engineer: Jacob Bograd
// 
// Create Date: 11/17/2020 12:21:19 PM
// Design Name: FSM for memory check
// Module Name: FSM_Case_0
// Description: This is the FSM for checking if the user input is the same as the nuber displayed on the screen
// This is going to be copy and patesd for all 15 cases, the FSM is going to be powerd on if it's nubmer is generated by the random number generator
// 
//
//
//              THIS TEST CASE IS FOR: ACDC : 1010 1100 1101 1100 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module FSM_Case_12(
    input [15:0]switches,
    input power,
    input clk,
    input check, //check might not be needed going to start off of power first, if it does not stop then will have check be the starter
    output logic cc
    );
    parameter [3:0] START = 4'b0000; //this is the starting state, if a FSM check fails it gets passed back to this
    logic [3:0] NS; // this is the next states
    logic [3:0] PS = START; //this is defianing the first rotation MIGHT BREAK SOMETHING
    //all of the states represent one of the bits in switches
    logic [4:0] a = 5'b0000;// state 1   //bit 0
    logic [4:0] b = 5'b0001;// state 2   //bit 1
    logic [4:0] c = 5'b0010;// state 3   //bit 2
    logic [4:0] d = 5'b0011;// state 4   //bit 3
    logic [4:0] e = 5'b0100;// state 5   //bit 4
    logic [4:0] f = 5'b0101;// state 6   //bit 5
    logic [4:0] g = 5'b0110;// state 7   //bit 6
    logic [4:0] h = 5'b0111;// state 8   //bit 7
    logic [4:0] i = 5'b1000;// state 9   //bit 8
    logic [4:0] j = 5'b1001;// state 10  //bit 9
    logic [4:0] k = 5'b1010;// state 11  //bit 10
    logic [4:0] l = 5'b1011;// state 12  //bit 11
    logic [4:0] m = 5'b1100;// state 13  //bit 12
    logic [4:0] n = 5'b1101;// state 14  //bit 13
    logic [4:0] o = 5'b1110;// state 15  //bit 14
    logic [4:0] p = 5'b1111;// state 16  //bit 15  
    logic [4:0] FAIL = 5'b11111; //this is what the state goes to if the test case fails
    logic [4:0] DONE = 5'b10111; //This is the ending state which just holds
    
    always_ff @(posedge clk)
    begin
       
       if(check) PS = a;
       else PS = NS;
    end
    
    
    always_comb
    begin
    if(power == 1)//this is checking if this FSM is powerd on
    begin
    case(PS)
        a:// this is checking if the first bit is correct
        begin
            if(switches[0] == 1) //this is the correct position
                begin
                    NS = b;
                end
            else //this failed
                begin 
                    NS = FAIL;
                    cc = 0;
                end
       end
        b:// this is checking if the second bit is correct
        begin
            if(switches[1] == 0) //this is the correct position
                begin
                    NS = c;
                end
            else //this failed
                begin 
                    NS = FAIL;
                    cc = 0;
                end
       end
        c:// this is checking if the thrid bit is correct
        begin
            if(switches[2] == 1) //this is the correct position
                begin
                    NS = d;
                end
            else //this failed
                begin 
                    NS = FAIL;
                    cc = 0;
                end
       end
        d:// this is checking if the forth bit is correct
        begin
            if(switches[3] == 0) //this is the correct position
                begin
                    NS = e;
                end
            else //this failed
                begin 
                    NS = FAIL;
                    cc = 0;
                end
       end
        e:// this is checking if the fifth bit is correct
        begin
            if(switches[4] == 1) //this is the correct position
                begin
                    NS = f;
                end
            else //this failed
                begin 
                    NS = FAIL;
                    cc = 0;
                end
       end
        f:// this is checking if the sixth bit is correct
        begin
            if(switches[5] == 1) //this is the correct position
                begin
                    NS = g;
                end
            else //this failed
                begin 
                    NS = FAIL;
                    cc = 0;
                end
       end
        g:// this is checking if the seventh bit is correct
        begin
            if(switches[6] == 0) //this is the correct position
                begin
                    NS = h;
                end
            else //this failed
                begin 
                    NS = FAIL;
                    cc = 0;
                end
       end
        h:// this is checking if the eight bit is correct
        begin
            if(switches[7] == 0) //this is the correct position
                begin
                    NS = i;
                end
            else //this failed
                begin 
                    NS = FAIL;
                    cc = 0;
                end
       end
        i:// this is checking if the ninth bit is correct
        begin
            if(switches[8] == 1) //this is the correct position
                begin
                    NS = j;
                end
            else //this failed
                begin 
                    NS = FAIL;
                    cc = 0;
                end
       end
        j:// this is checking if the tenth bit is correct
        begin
            if(switches[9] == 1) //this is the correct position
                begin
                    NS = k;
                end
            else //this failed
                begin 
                    NS = FAIL;
                    cc = 0;
                end
       end
        k:// this is checking if the 11 bit is correct
        begin
            if(switches[10] == 0) //this is the correct position
                begin
                    NS = l;
                end
            else //this failed
                begin 
                    NS = FAIL;
                    cc = 0;
                end
       end
        l:// this is checking if the 12 bit is correct
        begin
            if(switches[11] == 1) //this is the correct position
                begin
                    NS = m;
                end
            else //this failed
                begin 
                    NS = FAIL;
                    cc = 0;
                end
       end
        m:// this is checking if the 13 bit is correct
        begin
            if(switches[12] == 1) //this is the correct position
                begin
                    NS = n;
                end
            else //this failed
                begin 
                    NS = FAIL;
                    cc = 0;
                end
       end       
         o:// this is checking if the 14 bit is correct
        begin
            if(switches[13] == 0) //this is the correct position
                begin
                    NS = p;
                end
            else //this failed
                begin 
                    NS = FAIL;
                    cc = 0;
                end
       end
        p:// this is checking if the second bit is correct
        begin
            if(switches[1] == 0) //this is the correct position
                begin
                    cc = 1;
                    NS = DONE; // I do not think that 
                end
            else //this failed
                begin 
                    NS = FAIL;
                    cc = 0;
                end
       end
        FAIL:// this is the failure state
        begin
            cc = 0; 
            //The user has failed its input 
            NS = FAIL; //this might cause an endless loop
       end
       DONE: //This is the state when it is done and it just holds until check is hit again
        begin
            cc = 1;
            NS = DONE; //This might casue an endless loop
        end
       default: //this is the defualt case to catch anything that slipped through the cracks
        begin
        NS = FAIL;
        end
        endcase
    end
end
endmodule
