// Calculates PC and fetches instructions from i_mem

`include "defines.svh"

module fetch (
    input  logic        clk,
    input  logic        rst,
    
    input  logic        is_br_type,
    input  br_type_t    br_type,
    input  logic        take_branch,
    input  logic [31:0] imm_b,
    input  logic [31:0] imm_i,
    input  logic [31:0] imm_j,

    output logic [31:0] i_addr,
    output logic [31:0] PC_f, // fetch stage PC
    output logic [31:0] PC_e  // execute stage PC
);

//////////////////////////////////////////////////////////////
// TODO: BOZO: taken branch causes a bubble
////////////////////////////////////////////////////////////////////////////////////////////////

    logic [31:0] next_PC;
    logic [31:0] PC_addend1, PC_addend2;

    always_ff @(posedge clk, posedge rst) begin
        if (rst) PC_f <= 32'h80000000;
        else     PC_f <= next_PC;

        if (rst) PC_e <= 0;
        else     PC_e <= PC_f;
    end

    always_comb begin
        casez ({is_br_type,br_type,take_branch})
            4'b1001 : begin // Branch (taken)
                PC_addend1 = PC_e;
                PC_addend2 = imm_b;
            end
            4'b111? : begin // Jump
                PC_addend1 = PC_e;
                PC_addend2 = imm_j;
            end
            4'b101? : begin // Jump reg
                PC_addend1 = PC_e;
                PC_addend2 = imm_i;
            end
            default : begin
                PC_addend1 = PC_f;
                PC_addend2 = 4;
            end
        endcase
    end

    assign next_PC = PC_addend1 + PC_addend2;
    assign i_addr = PC_f;

endmodule : fetch
