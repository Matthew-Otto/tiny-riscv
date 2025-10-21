// Branch unit

// TODO: reuse ALU's adder for comparisons
// TODO reuse PC+4 adder to compute branch target
// for JAL, send PC+4 to the alu

`include "defines.svh"

module BRU (
    input  logic        clk,
    input  logic        rst,

    input  br_op_t      br_op,
    input  logic        is_br_op,

    input  logic        stall,

    input  logic [31:0] rs1_data,
    input  logic [31:0] rs2_data,

    input  logic [31:0] imm_i,
    input  logic [31:0] imm_b,
    input  logic [31:0] imm_j,
    output logic [31:0] rd_data,

    output logic [31:0] PC
);

    logic branch;
    logic [31:0] next_PC;

    assign rd_data = PC + 4;

    always_ff @(posedge clk, posedge rst) begin
        if (rst)         PC <= '0;
        else if (!stall) PC <= next_PC;
    end

    always_comb begin
        next_PC = PC + 4;
        if (branch & is_br_op) begin
            case (br_op)
                i_BEQ,
                i_BNE,
                i_BLT,
                i_BGE,
                i_BLTU,
                i_BGEU : next_PC = PC + imm_b;
                i_JAL  : next_PC = PC + imm_j;
                i_JALR : next_PC = PC + imm_i;
                default;
            endcase
        end
    end

    always_comb begin
        case (br_op)
            i_BEQ :  branch = (rs1_data == rs2_data);
            i_BNE :  branch = (rs1_data != rs2_data);
            i_BLT :  branch = (rs1_data < rs2_data);  // TODO signed
            i_BGE :  branch = (rs1_data >= rs2_data); // TODO signed
            i_BLTU : branch = (rs1_data < rs2_data);
            i_BGEU : branch = (rs1_data >= rs2_data);
            i_JAL  : branch = 1;
            i_JALR : branch = 1;
            default: branch = 0;
        endcase
    end

endmodule : BRU
