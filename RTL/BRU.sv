// Branch unit

// TODO: reuse ALU's adder for comparisons
// TODO reuse PC+4 adder to compute branch target

`include "defines.svh"

module BRU (
    input  br_op_t      br_op,

    input  logic [31:0] rs1_data,
    input  logic [31:0] rs2_data,
    input  logic [31:0] imm_b,

    input  logic [31:0] PC,
    output logic [31:0] branch_target,
    output logic        branch_taken
);

    always_comb begin
        case (br_op)
            i_BEQ :  branch_taken = (rs1_data == rs2_data);
            i_BNE :  branch_taken = (rs1_data != rs2_data);
            i_BLT :  branch_taken = (rs1_data < rs2_data);  // TODO signed
            i_BGE :  branch_taken = (rs1_data >= rs2_data); // TODO signed
            i_BLTU : branch_taken = (rs1_data < rs2_data);
            i_BGEU : branch_taken = (rs1_data >= rs2_data);
            default: branch_taken = 0;
        endcase
    end

    assign branch_target = PC + imm_b;

endmodule : BRU
