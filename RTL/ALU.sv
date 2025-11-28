`include "defines.svh"

module ALU (
    input  alu_op_t     alu_op,
    input  logic        is_imm,
    input  logic        is_store_op,
    input  logic        is_auipc,
    input  comp_t       comp_op,
    input  logic        subtract,
    input  logic        shift_right,
    input  logic        shift_arith,

    input  logic [31:0] rs1_data,
    input  logic [31:0] rs2_data,
    input  logic [31:0] imm_i,
    input  logic [31:0] imm_u,
    input  logic [31:0] imm_s,
    input  logic [31:0] PC,
    output logic [31:0] rd_data,
    output logic        branch
);

    logic n;
    logic z;
    logic c;
    logic v;

    logic eq;
    logic lt;
    logic ltu;
    logic geu;
    
    logic [31:0] b_mux;
    logic [31:0] s_mux;
    logic [31:0] adder_out;
    logic        comp_out;
    logic [31:0] shifter_out;
    logic [31:0] xor_out;
    logic [31:0] or_out;
    logic [31:0] and_out;


    assign b_mux = is_imm ? imm_i : rs2_data;

    assign s_mux = is_store_op ? imm_s : b_mux;

    ripple_carry_adder adder_i (
        .sub(subtract),
        .a(is_auipc ? PC : rs1_data),
        .b(is_auipc ? imm_u : s_mux),
        .sum(adder_out),
        .n, .z, .c, .v
    );

    assign eq = z;
    assign lt = n ^ v;
    assign ltu = ~c;
    assign geu = c;

    always_comb begin : comparator
        case (comp_op)
            c_BEQ  : comp_out = eq;
            c_BNE  : comp_out = ~eq;
            c_SLT,
            c_BLT  : comp_out = lt;
            c_BGE  : comp_out = ~lt;
            c_SLTU,
            c_BLTU : comp_out = ltu;
            c_BGEU : comp_out = geu;
        endcase
    end

    shifter shifter_i (
        .sr(shift_right),
        .arith(shift_arith),
        .shamt(b_mux[4:0]),
        .data_in(rs1_data),
        .data_out(shifter_out)
    );

    assign xor_out = rs1_data ^ b_mux;
    assign or_out  = rs1_data | b_mux;
    assign and_out = rs1_data & b_mux;

    assign branch = comp_out;

    always_comb begin : out_mux
        case (alu_op)
            ADDER_OP   : rd_data = adder_out;
            //COMP_OP    : rd_data = {31'b0,comp_out};
            SHIFTER_OP : rd_data = shifter_out;
            XOR_OP     : rd_data = xor_out;
            OR_OP      : rd_data = or_out;
            AND_OP     : rd_data = and_out;
            LUI_OP     : rd_data = imm_u;
            default    : rd_data = adder_out;
        endcase
    end

endmodule : ALU
