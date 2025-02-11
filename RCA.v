`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/11/2025 09:25:06 AM
// Design Name: 
// Module Name: RCA
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


module RCA #(parameter n = 8)
(
input [n-1:0]a, 
input [n-1:0]b, 
input cin, 
output [n:0]s
    );
        
    wire[n:0] carry;
    
    assign carry[0] = cin;
    
    
    genvar i;
    
    generate 
    
        for(i = 0; i < n; i = i+1)  begin
        
            FA fa(.a(a[i]) ,.b(b[i]) ,.cin(carry[i]),.sum(s[i]), .cout(carry[i+1]) );
            
        end
    
    
    endgenerate
    
    assign s[n] = carry[n];
    
endmodule
