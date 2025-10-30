// load/store unit

// Loads take one cycle
// LS unit drives address to data mem d_addr,
// The requested data appears on d_wr_data in the next cycle.
// The data is written to the reg file on the next cycle.
// Data hazard calculation occurs in control.sv.

`include "defines.svh"

module LSU (
    input  logic        clk,
    input  logic        rst,

    input  logic        lsu_en,
    input  ls_op_t      ls_op,
    input  logic [3:0]  rd,
    input  logic [31:0] rs1_data,
    input  logic [31:0] rs2_data,

    input  logic [31:0] imm_i,
    input  logic [31:0] imm_s,

    output logic        ls_load_ready,
    output logic [3:0]  ld_rd,
    output logic [31:0] rd_data,

    output logic [31:0] d_addr,
    output logic [1:0]  d_we,
    output logic [31:0] d_wr_data,
    input  logic [31:0] d_rd_data
);

    logic [31:0] addr;

    logic is_load_op;
    ls_op_t ld_op; 

    // TODO reuse the ALU for this add
    assign addr = rs1_data + (is_load_op ? imm_i : imm_s);
    assign d_addr = addr;
    assign d_wr_data = rs2_data;

    always_comb begin
        is_load_op = 0;
        d_we = '0;

        case (ls_op)
            i_LB,
            i_LH,
            i_LW,
            i_LBU,
            i_LHU : begin
                is_load_op = lsu_en;
            end
            i_SB : d_we = lsu_en ? 2'b01 : '0;
            i_SH : d_we = lsu_en ? 2'b10 : '0;
            i_SW : d_we = lsu_en ? 2'b11 : '0;
        endcase
    end

    always_ff @(posedge clk, posedge rst) begin
        if (rst) begin
            ls_load_ready <= '0;
        end else begin
            ls_load_ready <= is_load_op;
            ld_rd <= rd;
            ld_op <= ls_op;
        end
    end

    always_comb begin
        rd_data = 'x;
        case (ld_op)
            i_LB  : rd_data = {{24{d_rd_data[7]}},d_rd_data[7:0]};
            i_LH  : rd_data = {{16{d_rd_data[15]}},d_rd_data[15:0]};
            i_LW  : rd_data = d_rd_data;
            i_LBU : rd_data = {24'b0,d_rd_data[7:0]};
            i_LHU : rd_data = {16'b0,d_rd_data[15:0]};
        endcase
    end

endmodule : LSU
