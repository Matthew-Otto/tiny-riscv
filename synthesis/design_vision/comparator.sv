// computes comparisons for arithmetic and branch instructions
// focus on minimum gate count
module comparator (
    input  logic [31:0] a,
    input  logic [31:0] b,
    output logic        lt,
    output logic        eq,
    output logic        gt
);

    logic [31:0] eq_chain;
    logic [31:0] lt_chain;

    assign eq_chain[31] = 1'b1;
    assign lt_chain[31] = 1'b0;

    genvar i;
    generate
    for (i = 30; i >= 0; i--) begin
        assign eq_chain[i] = eq_chain[i+1] & ~(a[i] ^ b[i]);
        assign lt_chain[i] = (~a[i] & b[i]) | (eq_chain[i+1] & lt_chain[i+1]);
    end
    endgenerate

    assign lt = lt_chain[0];
    assign eq = eq_chain[0];
    assign gt = ~lt & ~eq;

endmodule : comparator
