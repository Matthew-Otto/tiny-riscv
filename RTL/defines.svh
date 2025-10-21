`ifndef DEFINES
`define DEFINES

typedef enum logic [4:0] {
    i_ALUNOP,
    i_ADD,
    i_SUB,
    i_SLL,
    i_SLT,
    i_SLTU,
    i_XOR,
    i_SRL,
    i_SRA,
    i_OR,
    i_AND
} alu_op_t;

typedef enum {
    i_LSNOP,
    i_AUIPC,
    i_LUI,
    i_LB,
    i_LH,
    i_LW,
    i_LBU,
    i_LHU,
    i_SB,
    i_SH,
    i_SW
} ls_op_t;

// func3 encoding
typedef enum logic [3:0] {
    i_BEQ  = 4'h0,
    i_BNE  = 4'h1,
    i_BLT  = 4'h4,
    i_BGE  = 4'h5,
    i_BLTU = 4'h6,
    i_BGEU = 4'h7,
    i_JAL  = 4'b1000,
    i_JALR = 4'b1001
} br_op_t;

`endif
