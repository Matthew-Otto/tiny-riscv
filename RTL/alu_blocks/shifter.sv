// minimum area, single-cycle shifter
// support SLL, SRL, SRA

module shifter (
    input  logic        sr,
    input  logic        arith,
    input  logic [4:0]  shamt,
    input  logic [31:0] data_in,
    output logic [31:0] data_out
);

    // for shift right, reverse the data before and after shifting
    // for right shift arithmetic, shift-in = in[31]

    genvar i, s;
    logic shift_in;
    logic [31:0] shift_stage [5:0];

    // shift in sign bit if SRA
    assign shift_in = arith ? data_in[31] : 1'b0;

    generate 
    // reverse input if shift right
    for (i = 0; i < 32; i++) begin : gen_reverse_input
        assign shift_stage[0][i] = sr ? data_in[31-i] : data_in[i];
    end

    for (s = 0; s < 5; s++) begin : gen_shift_stage
        localparam int SHIFT = (1 << s);
        for (i = 0; i < 32; i++) begin : gen_shift_bit
            if (i < SHIFT)
                assign shift_stage[s+1][i] = shamt[s] ? shift_in : shift_stage[s][i];
            else
                assign shift_stage[s+1][i] = shamt[s] ? shift_stage[s][i-SHIFT] : shift_stage[s][i];
        end
    end

    // reverse output if shift right
    for (i = 0; i < 32; i++) begin : gen_reverse_output
        assign data_out[i] = sr ? shift_stage[5][31-i] : shift_stage[5][i];
    end
    endgenerate

endmodule : shifter
