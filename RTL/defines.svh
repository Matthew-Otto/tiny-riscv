`ifndef DEFINES
`define DEFINES

typedef enum logic [4:0] {
    i_NOP,
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
    i_LUI,
    i_LB,
    i_LH,
    i_LW,
    i_LBU,
    i_LHU
} ls_op_t;

// func3 encoding
typedef enum logic [3:0] {
    i_BEQ =  {1'b1,3'h0},
    i_BNE =  {1'b1,3'h1},
    i_BLT =  {1'b1,3'h4},
    i_BGE =  {1'b1,3'h5},
    i_BLTU = {1'b1,3'h6},
    i_BGEU = {1'b1,3'h7},
    i_BRNOP = '0
} br_op_t;

`endif
