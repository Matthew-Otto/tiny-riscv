`include "defines.svh"

module ALU (
    input alu_op_t      alu_op,
    input logic         is_imm,

    input  logic [31:0] rs1_data,
    input  logic [31:0] rs2_data,
    input  logic [31:0] imm_i,
    input  logic [31:0] imm_u,
    input  logic [31:0] PC,
    output logic [31:0] rd_data
);

    always_comb begin
        case (alu_op)
            i_ADD   : rd_data = rs1_data + (is_imm ? imm_i : rs2_data);
            i_SUB   : rd_data = rs1_data - rs2_data;
            i_SLL   : rd_data = rs1_data << rs2_data[4:0];
            i_SLT   : rd_data = rs1_data < rs2_data ? 1 : 0; // TODO signed
            i_SLTU  : rd_data = rs1_data < rs2_data ? 1 : 0;
            i_XOR   : rd_data = rs1_data ^ rs2_data;
            i_SRL   : rd_data = rs1_data >> rs2_data[4:0];
            i_SRA   : rd_data = rs1_data >>> rs2_data[4:0];
            i_OR    : rd_data = rs1_data | rs2_data;
            i_AND   : rd_data = rs1_data & rs2_data;
            i_LUI   : rd_data = imm_u;
            i_AUIPC : rd_data = PC + imm_u;
            default : rd_data = 'x;
        endcase
    end

endmodule : ALU
