module regfile (
    input  logic        clk,
    input  logic        rst,
    input  logic        we,
    input  logic [4:0]  rd,
    input  logic [31:0] rd_data,
    input  logic [4:0]  rs1,
    input  logic [4:0]  rs2,
    output logic [31:0] rs1_data,
    output logic [31:0] rs2_data
);

    logic [31:0] regs [31:1];

    always_ff @(posedge clk) begin
        if (rst) begin
            for (int i = 0; i < 32; i++)
                regs[i] <= 0;
        end else if (we && |rd) begin
            regs[rd] <= rd_data;
        end
    end

    assign rs1_data = (rs1 == 0) ? '0 : regs[rs1];
    assign rs2_data = (rs2 == 0) ? '0 : regs[rs2];

endmodule : regfile
