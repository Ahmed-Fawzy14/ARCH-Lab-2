`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/11/2025 09:46:20 AM
// Design Name: 
// Module Name: RCA_7SEG
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


module RCA_7SEG(
input clk,
input [7:0]A,
input [7:0]B,
output [3:0] Anode,
output [6:0] LED_out
    );


wire [12:0]sum;

wire[8:0] sum_nine;


 RCA #(.n(4'd8)) rca(
.a(A), 
.b(B), 
.cin(1'd0), 
.s(sum_nine)
    );
    
 //Not signed 
assign sum = {4'b0, sum_nine};


Four_Digit_Seven_Segment_Driver_Optimized four_digit_seven_segment_driver_optimized(.clk(clk), .num(sum), .Anode(Anode), .LED_out(LED_out));
    




endmodule



