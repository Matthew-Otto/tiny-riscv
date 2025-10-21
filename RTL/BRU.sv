// Branch unit

// TODO: reuse ALU's adder for comparisons
// TODO reuse PC+4 adder to compute branch target

`include "defines.svh"

module BRU (
    input  br_op_t      br_op,
    input  logic        is_br_op,

    input  logic [31:0] rs1_data,
    input  logic [31:0] rs2_data,
    input  logic [31:0] imm_b,

    input  logic [31:0] PC,
    output logic [31:0] branch_target,
    output logic        branch_taken
);

    logic branch;
    assign branch_taken = branch & is_br_op;

    always_comb begin
        case (br_op)
            i_BEQ :  branch = (rs1_data == rs2_data);
            i_BNE :  branch = (rs1_data != rs2_data);
            i_BLT :  branch = (rs1_data < rs2_data);  // TODO signed
            i_BGE :  branch = (rs1_data >= rs2_data); // TODO signed
            i_BLTU : branch = (rs1_data < rs2_data);
            i_BGEU : branch = (rs1_data >= rs2_data);
            default: branch = 0;
        endcase
    end

    assign branch_target = PC + imm_b;

endmodule : BRU
