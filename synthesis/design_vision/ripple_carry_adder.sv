// Ripple carry for now
// compare with carry skip later

module ripple_carry_adder (
    input  logic        sub,
    input  logic [31:0] a,
    input  logic [31:0] b,
    output logic [31:0] sum,
    output logic        n,
    output logic        z,
    output logic        c,
    output logic        v
);

    logic [32:0] carry;
    logic [31:0] b_mod;

    assign carry[0] = sub;

    assign n = sum[31];
    assign z = ~|sum;
    assign c = carry[32];
    assign v = carry[32] ^ carry[31];

    genvar i;
    generate
    for (i = 0; i < 32; i++) begin
        assign b_mod[i] = b[i] ^ sub;
        
        full_adder full_adder_i (
            .a(a[i]),
            .b(b_mod[i]),
            .cin(carry[i]),
            .sum(sum[i]),
            .cout(carry[i+1])
        );
    end
    endgenerate

endmodule : ripple_carry_adder
