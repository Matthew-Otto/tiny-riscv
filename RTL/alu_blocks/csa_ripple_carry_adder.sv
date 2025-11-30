`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/28/2025 07:58:30 PM
// Design Name: 
// Module Name: ripple_carry_adder
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


module csa_ripple_carry_adder #(
    parameter N = 4
)(
    input logic [N-1:0] a,
    input logic [N-1:0] b,
    input logic cin,
    output logic [N-1:0] s,
    output logic cout
);
    logic [N:0] carries;
    assign carries[0] = cin;
    
    genvar i;
    generate
        for (i = 0; i < N; i++) begin : RCA_BLOCK
            full_adder fa(
                .a(a[i]),
                .b(b[i]),
                .cin(carries[i]),
                .sum(s[i]),
                .cout(carries[i+1])
            );
        end
    endgenerate
    
    assign cout = carries[N];
endmodule
