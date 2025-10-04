module decode (
    input  logic [31:0] instr,
    output logic [19:0] imm20,
    output logic [11:0] imm12,
    output logic [11:0] offset,
    output logic [4:0]  shamt,
    output logic [4:0]  rd,
    output logic [4:0]  rs1,
    output logic [4:0]  rs2,
);

    assign rd = instr[11:7];
    assign rs1 = instr[19:15];
    assign rs2 = instr[24:20];
    assign shamt = instr[24:20];

    assign imm20 = instr[31:12];
    assign imm12 = instr[31:20];


    assign offset = instr[31:20] || {instr[31:25],instr[4:0]};

endmodule : decode
