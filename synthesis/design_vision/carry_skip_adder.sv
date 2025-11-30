`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/28/2025 07:48:48 PM
// Design Name: 
// Module Name: carry_skip_adder
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


module carry_skip_adder #(
    parameter N = 32,
    parameter BLOCK_SIZE = 4        
)(
    input logic [N-1:0] a,
    input logic [N-1:0] b,
    input logic sub,
    output logic [N-1:0] s,
    output logic n,
    output logic z,
    output logic c,
    output logic v
);
    localparam CARRIES = N / BLOCK_SIZE;
    logic [CARRIES:0] carries;
    assign carries[0] = sub;
    
    logic [N-1:0] b_mod;
    assign b_mod = b ^ {N{sub}};
    
    assign n = s[N-1];
    assign z = ~|s;
    assign c = carries[CARRIES];
    assign v = (a[N-1] == b_mod[N-1]) && (s[N-1] != a[N-1]);
    
    genvar i;
    generate
        for (i = 0; i < CARRIES; i++) begin : CSKA_BLOCK
            localparam R = i * BLOCK_SIZE;
            localparam L = R + BLOCK_SIZE - 1;
            
            logic [BLOCK_SIZE-1:0] block_sum;
            logic block_cout;
            logic block_propagate;
            
            csa_ripple_carry_adder #(.N(BLOCK_SIZE)) rca(
                .a(a[L:R]),
                .b(b_mod[L:R]),
                .cin(carries[i]),
                .s(block_sum),
                .cout(block_cout)
            );
            
            logic [BLOCK_SIZE-1:0] p;
            assign p = a[L:R] ^ b_mod[L:R];
            assign block_propagate = &p;
            
            assign carries[i+1] = (block_propagate) ? carries[i] : block_cout;
            
            assign s[L:R] = block_sum;
        end
    endgenerate
endmodule
