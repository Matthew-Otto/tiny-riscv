// instruction decode unit

`include "defines.svh"

module decode (
    input  logic [31:0] instr,

    output logic [3:0]  rd,
    output logic [3:0]  rs1,
    output logic [3:0]  rs2,

    output alu_op_t     alu_op,
    output logic        is_alu_op,
    output logic        is_imm,
    
    output ls_op_t      ls_op,
    output logic        is_ls_op,

    output logic        is_br_op,
    output br_op_t      br_op,
    output logic        is_br_type,
    output br_type_t    br_type,

    output logic [31:0] imm_b,
    output logic [31:0] imm_i,
    output logic [31:0] imm_s,
    output logic [31:0] imm_u,
    output logic [31:0] imm_j
);
    
    localparam OP_IMM    = 7'b0010011;
    localparam OP_REG    = 7'b0110011;
    localparam OP_LOAD   = 7'b0000011;
    localparam OP_STORE  = 7'b0100011;
    localparam OP_BRANCH = 7'b1100011;
    localparam OP_LUI    = 7'b0110111;
    localparam OP_AUIPC  = 7'b0010111;
    localparam OP_JAL    = 7'b1101111;
    localparam OP_JALR   = 7'b1100111;

    logic [6:0]  op;
    logic [2:0]  funct3;
    logic [6:0]  funct7;

    assign op = instr[6:0];
    assign rd = instr[10:7];
    assign funct3 = instr[14:12];
    assign rs1 = instr[18:15];
    assign rs2 = instr[23:20];
    assign funct7 = instr[31:25];
    // B-type: imm[12], imm[10:5], imm[4:1], imm[11] sign extended
    assign imm_b = {{19{instr[31]}}, instr[31], instr[7], instr[30:25], instr[11:8], 1'b0};
    // I-type: imm[11:0] sign extended
    assign imm_i = {{20{instr[31]}}, instr[31:20]};
    // S-type: imm[15:5] imm[4:0] sign extended
    assign imm_s = {{20{instr[31]}}, instr[31:25], instr[11:7]};
    // U-type: imm[31:12] lower 12 bits zero
    assign imm_u = {instr[31:12], 12'b0};
    // J-type: imm[20], imm[10:1], imm[11], imm[19:12]
    assign imm_j = {{11{instr[31]}}, instr[31], instr[19:12], instr[20], instr[30:21], 1'b0};

    // branch decode
    assign br_op = br_op_t'(funct3);
    assign is_br_type = ({op[6:4],op[1:0]} == 5'b11011);
    assign br_type = br_type_t'(op[3:2]);

    always_comb begin
        alu_op = i_ALUNOP;
        ls_op = ls_op_t'('x);
        is_br_op = 1'b0;
        is_alu_op = 1'b0;
        is_ls_op = 1'b0;
        is_imm = 1'b0;

        case (op)
            OP_IMM : begin
                is_alu_op = 1'b1;
                is_imm = 1'b1;
                case (funct3)
                    3'b000  : alu_op = i_ADD;
                    3'b100  : alu_op = i_XOR;
                    3'b110  : alu_op = i_OR;
                    3'b111  : alu_op = i_AND;
                    3'b001  : alu_op = i_SLL;
                    3'b101  : alu_op = i_SRA;
                    3'b010  : alu_op = i_SLT;
                    3'b011  : alu_op = i_SLTU;
                endcase
            end
            OP_REG : begin
                is_alu_op = 1'b1;
                case ({funct7,funct3})
                    10'b0000000_000 : alu_op = i_ADD;
                    10'b0100000_000 : alu_op = i_SUB;
                    10'b0000000_100 : alu_op = i_XOR;
                    10'b0000000_110 : alu_op = i_OR;
                    10'b0000000_111 : alu_op = i_AND;
                    10'b0000000_001 : alu_op = i_SLL;
                    10'b0000000_101 : alu_op = i_SRL;
                    10'b0100000_101 : alu_op = i_SRA;
                    10'b0000000_010 : alu_op = i_SLT;
                    10'b0000000_011 : alu_op = i_SLTU;
                    default;
                endcase
            end
            OP_LOAD : begin
                is_ls_op = 1'b1;
                case (funct3)
                    3'b000 : ls_op = i_LB;
                    3'b001 : ls_op = i_LH;
                    3'b010 : ls_op = i_LW;
                    3'b100 : ls_op = i_LBU;
                    3'b101 : ls_op = i_LHU;
                    default;
                endcase
            end
            OP_STORE : begin
                is_ls_op = 1'b1;
                case (funct3)
                    3'b001 : ls_op = i_SB;
                    3'b010 : ls_op = i_SH;
                    3'b011 : ls_op = i_SW;
                    default;
                endcase
            end
            OP_BRANCH : begin
                is_br_op = 1'b1;
            end
            OP_LUI : begin
            end
            OP_AUIPC : begin
            end
            default : begin
            end
        endcase
    end


endmodule : decode
