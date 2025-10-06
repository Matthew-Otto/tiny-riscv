// load/store unit

`include "defines.svh"

module LS (
    input  logic        clk,

    input  ls_op_t      ls_op,
    input  logic [31:0] rs1_data,

    input  logic [31:0] imm_u,
    input  logic [31:0] imm_i,

    output logic        d_we,
    output logic [31:0] d_addr,
    output logic [31:0] d_wr_data
);

    logic [31:0] addr;

    // TODO reuse the ALU for this add
    assign addr = rs1_data + imm_i;

    always_comb begin
        d_we = 0;
        d_addr = 'x;
        d_wr_data = 'x;

        case (ls_op)
            i_LUI : begin
            end
            i_LB,
            i_LH,
            i_LW,
            i_LBU,
            i_LHU : begin
                d_addr = addr;
            end
        endcase
    end

endmodule : LS
