// load/store unit


// LS unit drives address to data mem d_addr, the 
// requested data appears on d_wr_data in the next cycle.

`include "defines.svh"

module LSU (
    input  logic        clk,
    input  logic        rst,

    input  ls_op_t      ls_op,
    input  logic        is_ls_op,
    input  logic [4:0]  rd_addr,
    input  logic [31:0] rs1_data,

    input  logic [31:0] imm_i,
    input  logic [31:0] imm_u,

    output logic        ld_ready,
    output logic [4:0]  ld_rd_addr,

    output logic        d_we,
    output logic [31:0] d_addr,
    output logic [31:0] d_wr_data
);

    logic [31:0] addr;

    logic is_load_op;

    // TODO reuse the ALU for this add
    assign addr = rs1_data + imm_i;

    always_comb begin
        is_load_op = 0;
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
                is_load_op = is_ls_op;
                d_addr = addr;
            end
        endcase
    end

    always_ff @(posedge clk) begin
        ld_ready <= is_load_op;
        ld_rd_addr <= rd_addr;
    end

endmodule : LSU
