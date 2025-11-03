`ifndef DEFINES
`define DEFINES

typedef enum {
    NOP,
    ADDER_OP,
    COMP_OP,
    XOR_OP,
    OR_OP,
    AND_OP,
    SHIFTER_OP,
    LUI_OP
} alu_op_t;

typedef enum logic [2:0] {
    c_BEQ  = 3'h0,
    c_BNE  = 3'h1,
    c_SLT  = 3'h2,
    c_SLTU = 3'h3,
    c_BLT  = 3'h4,
    c_BGE  = 3'h5,
    c_BLTU = 3'h6,
    c_BGEU = 3'h7
} comp_t;

typedef enum logic [2:0] {
    i_LB  = 3'h0,
    i_LH  = 3'h1,
    i_LW  = 3'h2,
    i_LBU = 3'h4,
    i_LHU = 3'h5
} load_op_t;

typedef enum logic [2:0] {
    i_SB  = 3'h0,
    i_SH  = 3'h1,
    i_SW  = 3'h2
} store_op_t;

typedef enum logic [1:0] {
    bt_BRANCH = 2'b00,
    bt_JAL    = 2'b11,
    bt_JALR   = 2'b01
} br_type_t;

`endif
