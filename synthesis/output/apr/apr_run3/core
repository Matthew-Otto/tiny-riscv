/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : T-2022.03-SP2
// Date      : Thu Nov 27 00:04:11 2025
/////////////////////////////////////////////////////////////


module control ( flush, is_writeback, ld_valid, rs1, rs2, ld_rd, fetch_stall, 
        reg_we, st_en, ld_en );
  input [4:0] rs1;
  input [4:0] rs2;
  input [4:0] ld_rd;
  input flush, is_writeback, ld_valid;
  output fetch_stall, reg_we, st_en, ld_en;
  wire   st_en, n1, n2, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n30, n31, n32, n33;
  assign ld_en = st_en;

  OAI21X1 U5 ( .A(flush), .B(n33), .C(n30), .Y(reg_we) );
  OAI21X1 U7 ( .A(n33), .B(n2), .C(n5), .Y(fetch_stall) );
  OAI21X1 U8 ( .A(n6), .B(n7), .C(ld_valid), .Y(n5) );
  NOR3X1 U9 ( .A(n31), .B(n9), .C(n10), .Y(n7) );
  XOR2X1 U10 ( .A(rs2[4]), .B(ld_rd[4]), .Y(n10) );
  XOR2X1 U11 ( .A(rs2[2]), .B(ld_rd[2]), .Y(n9) );
  NAND3X1 U12 ( .A(n11), .B(n12), .C(n13), .Y(n8) );
  XNOR2X1 U13 ( .A(ld_rd[1]), .B(rs2[1]), .Y(n13) );
  XNOR2X1 U14 ( .A(ld_rd[0]), .B(rs2[0]), .Y(n12) );
  XNOR2X1 U15 ( .A(ld_rd[3]), .B(rs2[3]), .Y(n11) );
  NOR3X1 U16 ( .A(n32), .B(n15), .C(n16), .Y(n6) );
  XOR2X1 U17 ( .A(rs1[4]), .B(ld_rd[4]), .Y(n16) );
  XOR2X1 U18 ( .A(rs1[3]), .B(ld_rd[3]), .Y(n15) );
  NAND3X1 U19 ( .A(n17), .B(n18), .C(n19), .Y(n14) );
  XNOR2X1 U20 ( .A(ld_rd[2]), .B(rs1[2]), .Y(n19) );
  XNOR2X1 U21 ( .A(ld_rd[1]), .B(rs1[1]), .Y(n18) );
  XNOR2X1 U22 ( .A(ld_rd[0]), .B(rs1[0]), .Y(n17) );
  AND2X1 U1 ( .A(is_writeback), .B(st_en), .Y(n4) );
  INVX1 U2 ( .A(n4), .Y(n30) );
  BUFX2 U3 ( .A(n8), .Y(n31) );
  BUFX2 U4 ( .A(n14), .Y(n32) );
  INVX1 U6 ( .A(ld_valid), .Y(n33) );
  INVX1 U23 ( .A(is_writeback), .Y(n2) );
  AND2X1 U24 ( .A(n5), .B(n1), .Y(st_en) );
  INVX1 U25 ( .A(flush), .Y(n1) );
endmodule


module full_adder_0 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n1, n2, n3;

  XOR2X1 U2 ( .A(n1), .B(n2), .Y(sum) );
  OAI21X1 U3 ( .A(n2), .B(n1), .C(n3), .Y(cout) );
  NAND2X1 U4 ( .A(a), .B(b), .Y(n3) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n2) );
  INVX1 U1 ( .A(cin), .Y(n1) );
endmodule


module full_adder_63 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n1, n2, n3;

  XOR2X1 U2 ( .A(n1), .B(n2), .Y(sum) );
  OAI21X1 U3 ( .A(n2), .B(n1), .C(n3), .Y(cout) );
  NAND2X1 U4 ( .A(a), .B(b), .Y(n3) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n2) );
  INVX1 U1 ( .A(cin), .Y(n1) );
endmodule


module full_adder_62 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n1, n2, n3;

  XOR2X1 U2 ( .A(n1), .B(n2), .Y(sum) );
  OAI21X1 U3 ( .A(n2), .B(n1), .C(n3), .Y(cout) );
  NAND2X1 U4 ( .A(a), .B(b), .Y(n3) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n2) );
  INVX1 U1 ( .A(cin), .Y(n1) );
endmodule


module full_adder_61 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n1, n2, n3;

  XOR2X1 U2 ( .A(n1), .B(n2), .Y(sum) );
  OAI21X1 U3 ( .A(n2), .B(n1), .C(n3), .Y(cout) );
  NAND2X1 U4 ( .A(a), .B(b), .Y(n3) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n2) );
  INVX1 U1 ( .A(cin), .Y(n1) );
endmodule


module full_adder_60 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n1, n2, n3, n14;

  XOR2X1 U2 ( .A(n1), .B(n2), .Y(sum) );
  OAI21X1 U3 ( .A(n2), .B(n1), .C(n14), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n2) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n3) );
  INVX1 U4 ( .A(n3), .Y(n14) );
  INVX1 U6 ( .A(cin), .Y(n1) );
endmodule


module full_adder_59 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n1, n2, n3, n10;

  XOR2X1 U2 ( .A(n1), .B(n2), .Y(sum) );
  OAI21X1 U3 ( .A(n2), .B(n1), .C(n10), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n2) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n3) );
  INVX1 U4 ( .A(n3), .Y(n10) );
  INVX1 U6 ( .A(cin), .Y(n1) );
endmodule


module full_adder_58 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n1, n2, n3, n13;

  XOR2X1 U2 ( .A(n1), .B(n2), .Y(sum) );
  OAI21X1 U3 ( .A(n2), .B(n1), .C(n13), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n2) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n3) );
  INVX1 U4 ( .A(n3), .Y(n13) );
  INVX1 U6 ( .A(cin), .Y(n1) );
endmodule


module full_adder_57 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n1, n2, n3, n14;

  XOR2X1 U2 ( .A(n1), .B(n2), .Y(sum) );
  OAI21X1 U3 ( .A(n2), .B(n1), .C(n14), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n2) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n3) );
  INVX1 U4 ( .A(n3), .Y(n14) );
  INVX1 U6 ( .A(cin), .Y(n1) );
endmodule


module full_adder_56 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n1, n2, n3, n13;

  XOR2X1 U2 ( .A(n1), .B(n2), .Y(sum) );
  OAI21X1 U3 ( .A(n2), .B(n1), .C(n13), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n2) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n3) );
  INVX1 U4 ( .A(n3), .Y(n13) );
  INVX1 U6 ( .A(cin), .Y(n1) );
endmodule


module full_adder_55 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n1, n2, n3;

  XOR2X1 U2 ( .A(n1), .B(n2), .Y(sum) );
  OAI21X1 U3 ( .A(n2), .B(n1), .C(n3), .Y(cout) );
  NAND2X1 U4 ( .A(a), .B(b), .Y(n3) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n2) );
  INVX1 U1 ( .A(cin), .Y(n1) );
endmodule


module full_adder_54 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n1, n2, n3;

  XOR2X1 U2 ( .A(n1), .B(n2), .Y(sum) );
  OAI21X1 U3 ( .A(n2), .B(n1), .C(n3), .Y(cout) );
  NAND2X1 U4 ( .A(a), .B(b), .Y(n3) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n2) );
  INVX1 U1 ( .A(cin), .Y(n1) );
endmodule


module full_adder_52 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n1, n2, n3;

  XOR2X1 U2 ( .A(n1), .B(n2), .Y(sum) );
  OAI21X1 U3 ( .A(n2), .B(n1), .C(n3), .Y(cout) );
  NAND2X1 U4 ( .A(a), .B(b), .Y(n3) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n2) );
  INVX1 U1 ( .A(cin), .Y(n1) );
endmodule


module full_adder_51 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n1, n2, n3;

  XOR2X1 U2 ( .A(n1), .B(n2), .Y(sum) );
  OAI21X1 U3 ( .A(n2), .B(n1), .C(n3), .Y(cout) );
  NAND2X1 U4 ( .A(a), .B(b), .Y(n3) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n2) );
  INVX1 U1 ( .A(cin), .Y(n1) );
endmodule


module full_adder_50 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n1, n2, n3;

  XOR2X1 U2 ( .A(n1), .B(n2), .Y(sum) );
  OAI21X1 U3 ( .A(n2), .B(n1), .C(n3), .Y(cout) );
  NAND2X1 U4 ( .A(a), .B(b), .Y(n3) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n2) );
  INVX1 U1 ( .A(cin), .Y(n1) );
endmodule


module full_adder_47 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n1, n2, n3;

  XOR2X1 U2 ( .A(n1), .B(n2), .Y(sum) );
  OAI21X1 U3 ( .A(n2), .B(n1), .C(n3), .Y(cout) );
  NAND2X1 U4 ( .A(a), .B(b), .Y(n3) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n2) );
  INVX1 U1 ( .A(cin), .Y(n1) );
endmodule


module full_adder_44 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n1, n2, n3;

  XOR2X1 U2 ( .A(n1), .B(n2), .Y(sum) );
  OAI21X1 U3 ( .A(n2), .B(n1), .C(n3), .Y(cout) );
  NAND2X1 U4 ( .A(a), .B(b), .Y(n3) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n2) );
  INVX1 U1 ( .A(cin), .Y(n1) );
endmodule


module full_adder_43 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n1, n2, n3;

  XOR2X1 U2 ( .A(n1), .B(n2), .Y(sum) );
  OAI21X1 U3 ( .A(n2), .B(n1), .C(n3), .Y(cout) );
  NAND2X1 U4 ( .A(a), .B(b), .Y(n3) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n2) );
  INVX1 U1 ( .A(cin), .Y(n1) );
endmodule


module full_adder_40 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n1, n2, n3;

  XOR2X1 U2 ( .A(n1), .B(n2), .Y(sum) );
  OAI21X1 U3 ( .A(n2), .B(n1), .C(n3), .Y(cout) );
  NAND2X1 U4 ( .A(a), .B(b), .Y(n3) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n2) );
  INVX1 U1 ( .A(cin), .Y(n1) );
endmodule


module full_adder_39 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n1, n2, n3;

  XOR2X1 U2 ( .A(n1), .B(n2), .Y(sum) );
  OAI21X1 U3 ( .A(n2), .B(n1), .C(n3), .Y(cout) );
  NAND2X1 U4 ( .A(a), .B(b), .Y(n3) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n2) );
  INVX1 U1 ( .A(cin), .Y(n1) );
endmodule


module full_adder_38 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n1, n2, n3;

  XOR2X1 U2 ( .A(n1), .B(n2), .Y(sum) );
  OAI21X1 U3 ( .A(n2), .B(n1), .C(n3), .Y(cout) );
  NAND2X1 U4 ( .A(a), .B(b), .Y(n3) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n2) );
  INVX1 U1 ( .A(cin), .Y(n1) );
endmodule


module full_adder_37 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n1, n2, n3;

  XOR2X1 U2 ( .A(n1), .B(n2), .Y(sum) );
  OAI21X1 U3 ( .A(n2), .B(n1), .C(n3), .Y(cout) );
  NAND2X1 U4 ( .A(a), .B(b), .Y(n3) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n2) );
  INVX1 U1 ( .A(cin), .Y(n1) );
endmodule


module full_adder_35 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n1, n2, n3, n14;

  XOR2X1 U2 ( .A(n1), .B(n2), .Y(sum) );
  OAI21X1 U3 ( .A(n2), .B(n1), .C(n14), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n2) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n3) );
  INVX1 U4 ( .A(n3), .Y(n14) );
  INVX1 U6 ( .A(cin), .Y(n1) );
endmodule


module full_adder_34 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n1, n2, n3, n16;

  XOR2X1 U2 ( .A(n1), .B(n2), .Y(sum) );
  OAI21X1 U3 ( .A(n2), .B(n1), .C(n16), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n2) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n3) );
  INVX1 U4 ( .A(n3), .Y(n16) );
  INVX1 U6 ( .A(cin), .Y(n1) );
endmodule


module full_adder_33 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n1, n2, n3, n15;

  XOR2X1 U2 ( .A(n1), .B(n2), .Y(sum) );
  OAI21X1 U3 ( .A(n2), .B(n1), .C(n15), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n2) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n3) );
  INVX1 U4 ( .A(n3), .Y(n15) );
  INVX1 U6 ( .A(cin), .Y(n1) );
endmodule


module full_adder_36 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n12, n13, n14, n15;

  XOR2X1 U2 ( .A(n15), .B(n14), .Y(sum) );
  OAI21X1 U3 ( .A(n14), .B(n15), .C(n12), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n14) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n13) );
  INVX1 U4 ( .A(n13), .Y(n12) );
  INVX1 U6 ( .A(cin), .Y(n15) );
endmodule


module full_adder_41 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n13, n14, n15;

  XOR2X1 U2 ( .A(n15), .B(n14), .Y(sum) );
  OAI21X1 U3 ( .A(n14), .B(n15), .C(n13), .Y(cout) );
  NAND2X1 U4 ( .A(a), .B(b), .Y(n13) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n14) );
  INVX1 U1 ( .A(cin), .Y(n15) );
endmodule


module full_adder_42 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n13, n14, n15;

  XOR2X1 U2 ( .A(n15), .B(n14), .Y(sum) );
  OAI21X1 U3 ( .A(n14), .B(n15), .C(n13), .Y(cout) );
  NAND2X1 U4 ( .A(a), .B(b), .Y(n13) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n14) );
  INVX1 U1 ( .A(cin), .Y(n15) );
endmodule


module full_adder_46 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n13, n14, n15;

  XOR2X1 U2 ( .A(n15), .B(n14), .Y(sum) );
  OAI21X1 U3 ( .A(n14), .B(n15), .C(n13), .Y(cout) );
  NAND2X1 U4 ( .A(a), .B(b), .Y(n13) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n14) );
  INVX1 U1 ( .A(cin), .Y(n15) );
endmodule


module full_adder_45 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n12, n13, n14;

  XOR2X1 U2 ( .A(n14), .B(n13), .Y(sum) );
  OAI21X1 U3 ( .A(n13), .B(n14), .C(n12), .Y(cout) );
  NAND2X1 U4 ( .A(a), .B(b), .Y(n12) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n13) );
  INVX1 U1 ( .A(cin), .Y(n14) );
endmodule


module full_adder_48 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n14, n15, n16;

  XOR2X1 U2 ( .A(n16), .B(n15), .Y(sum) );
  OAI21X1 U3 ( .A(n15), .B(n16), .C(n14), .Y(cout) );
  NAND2X1 U4 ( .A(a), .B(b), .Y(n14) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n15) );
  INVX1 U1 ( .A(cin), .Y(n16) );
endmodule


module full_adder_49 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n13, n14, n15;

  XOR2X1 U2 ( .A(n15), .B(n14), .Y(sum) );
  OAI21X1 U3 ( .A(n14), .B(n15), .C(n13), .Y(cout) );
  NAND2X1 U4 ( .A(a), .B(b), .Y(n13) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n14) );
  INVX1 U1 ( .A(cin), .Y(n15) );
endmodule


module full_adder_53 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n13, n14, n15, n16;

  XOR2X1 U2 ( .A(n16), .B(n15), .Y(sum) );
  OAI21X1 U3 ( .A(n15), .B(n16), .C(n13), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n15) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n14) );
  INVX1 U4 ( .A(n14), .Y(n13) );
  INVX1 U6 ( .A(cin), .Y(n16) );
endmodule


module fetch ( clk, rst, fetch_stall, is_br_type, br_type, take_branch, 
        rs1_data, imm_b, imm_i, imm_j, i_addr, PC_f, PC_e, flush );
  input [1:0] br_type;
  input [31:0] rs1_data;
  input [31:0] imm_b;
  input [31:0] imm_i;
  input [31:0] imm_j;
  output [31:0] i_addr;
  output [31:0] PC_f;
  output [31:0] PC_e;
  input clk, rst, fetch_stall, is_br_type, take_branch;
  output flush;
  wire   n494, n495, n496, n497, n498, n499, n500, n501, n502, n503, n504,
         n505, n506, n507, n508, n509, n510, n511, n512, n513, n514, n515,
         n516, n517, n518, n519, n520, n521, n522, n523, n524, n525, n526,
         n527, n528, n529, n530, n531, n532, n533, n534, n535, n536, n537,
         n538, n539, n540, n541, n542, n543, n544, n545, n546, n547, n548,
         n549, n550, n551, n552, n553, n554, n555, n556, n557, n558, n211,
         n214, n217, n220, n223, n226, n229, n232, n235, n238, n241, n244,
         n247, n250, n253, n256, n259, n262, n265, n268, n271, n274, n277,
         n280, n283, n286, n289, n292, n295, n298, n301, n304, n307, n1, n2,
         n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n305, n308, n309, n310, n311, n312,
         n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323,
         n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334,
         n335, n336, n337, n338, n951, n952, n953, n954, n955, n956, n957,
         n958, n959, n960, n961, n962, n963, n964, n965, n966, n967, n968,
         n969, n970, n971, n972, n973, n974, n975, n976, n977, n978, n979,
         n980, n981, n982, n983, n984, n985, n986, n987, n988, n989, n990,
         n991, n992, n993, n994, n995, n996, n997, n998, n999, n1000, n1001,
         n1002, n1003, n1004, n1005, n1006, n1007, n1008, n1009, n1010, n1011,
         n1012, n1013, n1014, n1015, n1016, n1017, n1018, n1019, n1020, n1021,
         n1022, n1023, n1024, n1025, n1026, n1027, n1028, n1029, n1030, n1031,
         n1032, n1033, n1034, n1035, n1036, n1037, n1046, n1047, n1048, n1049,
         n1050, n1051, n1052, n1078, n1079, n1080, n1081, n1082, n1083, n1116,
         n1117, n1118, n1119, n1120, n1121, n1122, n1123, n1124, n1125, n1126,
         n1127, n1128, n1129, n1130, n1131, n1132, n1133, n1134, n1135, n1136;
  wire   [31:0] next_PC;
  wire   [31:0] PC_addend1;
  wire   [32:1] carry;

  DFFSR flush_reg ( .D(n307), .CLK(clk), .R(1'b1), .S(n1123), .Q(n558) );
  DFFSR \PC_f_reg[31]  ( .D(n304), .CLK(clk), .R(1'b1), .S(n1123), .Q(n494) );
  DFFSR \PC_e_reg[31]  ( .D(i_addr[31]), .CLK(clk), .R(n1123), .S(1'b1), .Q(
        n526) );
  DFFSR \PC_f_reg[30]  ( .D(n301), .CLK(clk), .R(n1122), .S(1'b1), .Q(n495) );
  DFFSR \PC_e_reg[30]  ( .D(i_addr[30]), .CLK(clk), .R(n1124), .S(1'b1), .Q(
        n527) );
  DFFSR \PC_f_reg[29]  ( .D(n298), .CLK(clk), .R(n1122), .S(1'b1), .Q(n496) );
  DFFSR \PC_e_reg[29]  ( .D(i_addr[29]), .CLK(clk), .R(n1122), .S(1'b1), .Q(
        n528) );
  DFFSR \PC_f_reg[28]  ( .D(n295), .CLK(clk), .R(n1124), .S(1'b1), .Q(n497) );
  DFFSR \PC_e_reg[28]  ( .D(i_addr[28]), .CLK(clk), .R(n1124), .S(1'b1), .Q(
        n529) );
  DFFSR \PC_f_reg[27]  ( .D(n292), .CLK(clk), .R(n1123), .S(1'b1), .Q(n498) );
  DFFSR \PC_e_reg[27]  ( .D(i_addr[27]), .CLK(clk), .R(n1122), .S(1'b1), .Q(
        n530) );
  DFFSR \PC_f_reg[26]  ( .D(n289), .CLK(clk), .R(n1124), .S(1'b1), .Q(n499) );
  DFFSR \PC_e_reg[26]  ( .D(i_addr[26]), .CLK(clk), .R(n1122), .S(1'b1), .Q(
        n531) );
  DFFSR \PC_f_reg[25]  ( .D(n286), .CLK(clk), .R(n1123), .S(1'b1), .Q(n500) );
  DFFSR \PC_e_reg[25]  ( .D(i_addr[25]), .CLK(clk), .R(n1124), .S(1'b1), .Q(
        n532) );
  DFFSR \PC_f_reg[24]  ( .D(n283), .CLK(clk), .R(n1124), .S(1'b1), .Q(n501) );
  DFFSR \PC_e_reg[24]  ( .D(i_addr[24]), .CLK(clk), .R(n1123), .S(1'b1), .Q(
        n533) );
  DFFSR \PC_f_reg[23]  ( .D(n280), .CLK(clk), .R(n1122), .S(1'b1), .Q(n502) );
  DFFSR \PC_e_reg[23]  ( .D(i_addr[23]), .CLK(clk), .R(n1124), .S(1'b1), .Q(
        n534) );
  DFFSR \PC_f_reg[22]  ( .D(n277), .CLK(clk), .R(n1123), .S(1'b1), .Q(n503) );
  DFFSR \PC_e_reg[22]  ( .D(i_addr[22]), .CLK(clk), .R(n1124), .S(1'b1), .Q(
        n535) );
  DFFSR \PC_f_reg[21]  ( .D(n274), .CLK(clk), .R(n1122), .S(1'b1), .Q(n504) );
  DFFSR \PC_e_reg[21]  ( .D(i_addr[21]), .CLK(clk), .R(n1122), .S(1'b1), .Q(
        n536) );
  DFFSR \PC_f_reg[20]  ( .D(n271), .CLK(clk), .R(n1122), .S(1'b1), .Q(n505) );
  DFFSR \PC_e_reg[20]  ( .D(i_addr[20]), .CLK(clk), .R(n1122), .S(1'b1), .Q(
        n537) );
  DFFSR \PC_f_reg[19]  ( .D(n268), .CLK(clk), .R(n1122), .S(1'b1), .Q(n506) );
  DFFSR \PC_e_reg[19]  ( .D(i_addr[19]), .CLK(clk), .R(n1122), .S(1'b1), .Q(
        n538) );
  DFFSR \PC_f_reg[18]  ( .D(n265), .CLK(clk), .R(n1124), .S(1'b1), .Q(n507) );
  DFFSR \PC_e_reg[18]  ( .D(i_addr[18]), .CLK(clk), .R(n1124), .S(1'b1), .Q(
        n539) );
  DFFSR \PC_f_reg[17]  ( .D(n262), .CLK(clk), .R(n1123), .S(1'b1), .Q(n508) );
  DFFSR \PC_e_reg[17]  ( .D(i_addr[17]), .CLK(clk), .R(n1123), .S(1'b1), .Q(
        n540) );
  DFFSR \PC_f_reg[16]  ( .D(n259), .CLK(clk), .R(n1123), .S(1'b1), .Q(n509) );
  DFFSR \PC_e_reg[16]  ( .D(i_addr[16]), .CLK(clk), .R(n1124), .S(1'b1), .Q(
        n541) );
  DFFSR \PC_f_reg[15]  ( .D(n256), .CLK(clk), .R(n1124), .S(1'b1), .Q(n510) );
  DFFSR \PC_e_reg[15]  ( .D(i_addr[15]), .CLK(clk), .R(n1124), .S(1'b1), .Q(
        n542) );
  DFFSR \PC_f_reg[14]  ( .D(n253), .CLK(clk), .R(n1124), .S(1'b1), .Q(n511) );
  DFFSR \PC_e_reg[14]  ( .D(i_addr[14]), .CLK(clk), .R(n1123), .S(1'b1), .Q(
        n543) );
  DFFSR \PC_f_reg[13]  ( .D(n250), .CLK(clk), .R(n1122), .S(1'b1), .Q(n512) );
  DFFSR \PC_e_reg[13]  ( .D(i_addr[13]), .CLK(clk), .R(n1124), .S(1'b1), .Q(
        n544) );
  DFFSR \PC_f_reg[12]  ( .D(n247), .CLK(clk), .R(n1124), .S(1'b1), .Q(n513) );
  DFFSR \PC_e_reg[12]  ( .D(i_addr[12]), .CLK(clk), .R(n1124), .S(1'b1), .Q(
        n545) );
  DFFSR \PC_f_reg[11]  ( .D(n244), .CLK(clk), .R(n1124), .S(1'b1), .Q(n514) );
  DFFSR \PC_e_reg[11]  ( .D(i_addr[11]), .CLK(clk), .R(n1122), .S(1'b1), .Q(
        n546) );
  DFFSR \PC_f_reg[10]  ( .D(n241), .CLK(clk), .R(n1122), .S(1'b1), .Q(n515) );
  DFFSR \PC_e_reg[10]  ( .D(i_addr[10]), .CLK(clk), .R(n1122), .S(1'b1), .Q(
        n547) );
  DFFSR \PC_f_reg[9]  ( .D(n238), .CLK(clk), .R(n1122), .S(1'b1), .Q(n516) );
  DFFSR \PC_e_reg[9]  ( .D(i_addr[9]), .CLK(clk), .R(n1124), .S(1'b1), .Q(n548) );
  DFFSR \PC_f_reg[8]  ( .D(n235), .CLK(clk), .R(n1123), .S(1'b1), .Q(n517) );
  DFFSR \PC_e_reg[8]  ( .D(i_addr[8]), .CLK(clk), .R(n1123), .S(1'b1), .Q(n549) );
  DFFSR \PC_f_reg[7]  ( .D(n232), .CLK(clk), .R(n1123), .S(1'b1), .Q(n518) );
  DFFSR \PC_e_reg[7]  ( .D(i_addr[7]), .CLK(clk), .R(n1123), .S(1'b1), .Q(n550) );
  DFFSR \PC_f_reg[6]  ( .D(n229), .CLK(clk), .R(n1122), .S(1'b1), .Q(n519) );
  DFFSR \PC_e_reg[6]  ( .D(i_addr[6]), .CLK(clk), .R(n1124), .S(1'b1), .Q(n551) );
  DFFSR \PC_f_reg[5]  ( .D(n226), .CLK(clk), .R(n1123), .S(1'b1), .Q(n520) );
  DFFSR \PC_e_reg[5]  ( .D(i_addr[5]), .CLK(clk), .R(n1123), .S(1'b1), .Q(n552) );
  DFFSR \PC_f_reg[4]  ( .D(n223), .CLK(clk), .R(n1123), .S(1'b1), .Q(n521) );
  DFFSR \PC_e_reg[4]  ( .D(i_addr[4]), .CLK(clk), .R(n1122), .S(1'b1), .Q(n553) );
  DFFSR \PC_f_reg[3]  ( .D(n220), .CLK(clk), .R(n1122), .S(1'b1), .Q(n522) );
  DFFSR \PC_e_reg[3]  ( .D(i_addr[3]), .CLK(clk), .R(n1123), .S(1'b1), .Q(n554) );
  DFFSR \PC_f_reg[2]  ( .D(n217), .CLK(clk), .R(n1123), .S(1'b1), .Q(n523) );
  DFFSR \PC_e_reg[2]  ( .D(i_addr[2]), .CLK(clk), .R(n1123), .S(1'b1), .Q(n555) );
  DFFSR \PC_f_reg[1]  ( .D(n214), .CLK(clk), .R(n1124), .S(1'b1), .Q(n524) );
  DFFSR \PC_e_reg[1]  ( .D(i_addr[1]), .CLK(clk), .R(n1124), .S(1'b1), .Q(n556) );
  DFFSR \PC_f_reg[0]  ( .D(n211), .CLK(clk), .R(n1123), .S(1'b1), .Q(n525) );
  DFFSR \PC_e_reg[0]  ( .D(i_addr[0]), .CLK(clk), .R(n1122), .S(1'b1), .Q(n557) );
  full_adder_0 \rca[0].full_adder_i  ( .a(PC_addend1[0]), .b(n1011), .cin(1'b0), .sum(next_PC[0]), .cout(carry[1]) );
  full_adder_63 \rca[1].full_adder_i  ( .a(PC_addend1[1]), .b(n1002), .cin(
        carry[1]), .sum(next_PC[1]), .cout(carry[2]) );
  full_adder_62 \rca[2].full_adder_i  ( .a(PC_addend1[2]), .b(n952), .cin(
        carry[2]), .sum(next_PC[2]), .cout(carry[3]) );
  full_adder_61 \rca[3].full_adder_i  ( .a(PC_addend1[3]), .b(n991), .cin(
        carry[3]), .sum(next_PC[3]), .cout(carry[4]) );
  full_adder_60 \rca[4].full_adder_i  ( .a(PC_addend1[4]), .b(n1078), .cin(
        carry[4]), .sum(next_PC[4]), .cout(carry[5]) );
  full_adder_59 \rca[5].full_adder_i  ( .a(PC_addend1[5]), .b(n1046), .cin(
        carry[5]), .sum(next_PC[5]), .cout(carry[6]) );
  full_adder_58 \rca[6].full_adder_i  ( .a(PC_addend1[6]), .b(n1029), .cin(
        carry[6]), .sum(next_PC[6]), .cout(carry[7]) );
  full_adder_57 \rca[7].full_adder_i  ( .a(PC_addend1[7]), .b(n1020), .cin(
        carry[7]), .sum(next_PC[7]), .cout(carry[8]) );
  full_adder_56 \rca[8].full_adder_i  ( .a(PC_addend1[8]), .b(n1008), .cin(
        carry[8]), .sum(next_PC[8]), .cout(carry[9]) );
  full_adder_55 \rca[9].full_adder_i  ( .a(PC_addend1[9]), .b(n981), .cin(
        carry[9]), .sum(next_PC[9]), .cout(carry[10]) );
  full_adder_54 \rca[10].full_adder_i  ( .a(PC_addend1[10]), .b(n972), .cin(
        carry[10]), .sum(next_PC[10]), .cout(carry[11]) );
  full_adder_53 \rca[11].full_adder_i  ( .a(PC_addend1[11]), .b(n1017), .cin(
        carry[11]), .sum(next_PC[11]), .cout(carry[12]) );
  full_adder_52 \rca[12].full_adder_i  ( .a(PC_addend1[12]), .b(n965), .cin(
        carry[12]), .sum(next_PC[12]), .cout(carry[13]) );
  full_adder_51 \rca[13].full_adder_i  ( .a(PC_addend1[13]), .b(n958), .cin(
        carry[13]), .sum(next_PC[13]), .cout(carry[14]) );
  full_adder_50 \rca[14].full_adder_i  ( .a(PC_addend1[14]), .b(n999), .cin(
        carry[14]), .sum(next_PC[14]), .cout(carry[15]) );
  full_adder_49 \rca[15].full_adder_i  ( .a(PC_addend1[15]), .b(n963), .cin(
        carry[15]), .sum(next_PC[15]), .cout(carry[16]) );
  full_adder_48 \rca[16].full_adder_i  ( .a(PC_addend1[16]), .b(n988), .cin(
        carry[16]), .sum(next_PC[16]), .cout(carry[17]) );
  full_adder_47 \rca[17].full_adder_i  ( .a(PC_addend1[17]), .b(n964), .cin(
        carry[17]), .sum(next_PC[17]), .cout(carry[18]) );
  full_adder_46 \rca[18].full_adder_i  ( .a(PC_addend1[18]), .b(n960), .cin(
        carry[18]), .sum(next_PC[18]), .cout(carry[19]) );
  full_adder_45 \rca[19].full_adder_i  ( .a(PC_addend1[19]), .b(n961), .cin(
        carry[19]), .sum(next_PC[19]), .cout(carry[20]) );
  full_adder_44 \rca[20].full_adder_i  ( .a(PC_addend1[20]), .b(n962), .cin(
        carry[20]), .sum(next_PC[20]), .cout(carry[21]) );
  full_adder_43 \rca[21].full_adder_i  ( .a(PC_addend1[21]), .b(n996), .cin(
        carry[21]), .sum(next_PC[21]), .cout(carry[22]) );
  full_adder_42 \rca[22].full_adder_i  ( .a(PC_addend1[22]), .b(n978), .cin(
        carry[22]), .sum(next_PC[22]), .cout(carry[23]) );
  full_adder_41 \rca[23].full_adder_i  ( .a(PC_addend1[23]), .b(n969), .cin(
        carry[23]), .sum(next_PC[23]), .cout(carry[24]) );
  full_adder_40 \rca[24].full_adder_i  ( .a(PC_addend1[24]), .b(n955), .cin(
        carry[24]), .sum(next_PC[24]), .cout(carry[25]) );
  full_adder_39 \rca[25].full_adder_i  ( .a(PC_addend1[25]), .b(n959), .cin(
        carry[25]), .sum(next_PC[25]), .cout(carry[26]) );
  full_adder_38 \rca[26].full_adder_i  ( .a(PC_addend1[26]), .b(n956), .cin(
        carry[26]), .sum(next_PC[26]), .cout(carry[27]) );
  full_adder_37 \rca[27].full_adder_i  ( .a(PC_addend1[27]), .b(n957), .cin(
        carry[27]), .sum(next_PC[27]), .cout(carry[28]) );
  full_adder_36 \rca[28].full_adder_i  ( .a(PC_addend1[28]), .b(n1023), .cin(
        carry[28]), .sum(next_PC[28]), .cout(carry[29]) );
  full_adder_35 \rca[29].full_adder_i  ( .a(PC_addend1[29]), .b(n1032), .cin(
        carry[29]), .sum(next_PC[29]), .cout(carry[30]) );
  full_adder_34 \rca[30].full_adder_i  ( .a(PC_addend1[30]), .b(n1081), .cin(
        carry[30]), .sum(next_PC[30]), .cout(carry[31]) );
  full_adder_33 \rca[31].full_adder_i  ( .a(PC_addend1[31]), .b(n1049), .cin(
        carry[31]), .sum(next_PC[31]) );
  AOI22X1 U47 ( .A(imm_j[7]), .B(n2), .C(imm_b[7]), .D(n1125), .Y(n41) );
  AOI22X1 U50 ( .A(imm_j[6]), .B(n2), .C(imm_b[6]), .D(n1125), .Y(n44) );
  AOI22X1 U53 ( .A(imm_j[5]), .B(n2), .C(imm_b[5]), .D(n1125), .Y(n46) );
  AOI22X1 U56 ( .A(imm_j[4]), .B(n2), .C(imm_b[4]), .D(n1125), .Y(n48) );
  AOI22X1 U59 ( .A(imm_j[14]), .B(n2), .C(imm_b[14]), .D(n1125), .Y(n50) );
  AOI22X1 U62 ( .A(imm_j[16]), .B(n2), .C(imm_b[16]), .D(n1125), .Y(n52) );
  AOI22X1 U65 ( .A(imm_j[8]), .B(n2), .C(imm_b[8]), .D(n1125), .Y(n54) );
  NAND2X1 U67 ( .A(imm_i[12]), .B(n1120), .Y(n57) );
  AOI22X1 U68 ( .A(imm_j[12]), .B(n2), .C(imm_b[12]), .D(n3), .Y(n56) );
  NAND2X1 U70 ( .A(imm_i[17]), .B(n43), .Y(n59) );
  AOI22X1 U71 ( .A(imm_j[17]), .B(n2), .C(imm_b[17]), .D(n3), .Y(n58) );
  NAND2X1 U73 ( .A(imm_i[15]), .B(n43), .Y(n61) );
  AOI22X1 U74 ( .A(imm_j[15]), .B(n2), .C(imm_b[15]), .D(n3), .Y(n60) );
  NAND2X1 U76 ( .A(imm_i[20]), .B(n43), .Y(n63) );
  AOI22X1 U77 ( .A(imm_j[20]), .B(n2), .C(imm_b[20]), .D(n3), .Y(n62) );
  NAND2X1 U79 ( .A(imm_i[19]), .B(n43), .Y(n65) );
  AOI22X1 U80 ( .A(imm_j[19]), .B(n2), .C(imm_b[19]), .D(n3), .Y(n64) );
  AOI22X1 U83 ( .A(imm_j[10]), .B(n2), .C(imm_b[10]), .D(n3), .Y(n66) );
  AOI22X1 U86 ( .A(imm_j[1]), .B(n2), .C(imm_b[1]), .D(n3), .Y(n68) );
  NAND2X1 U88 ( .A(imm_i[18]), .B(n43), .Y(n71) );
  AOI22X1 U89 ( .A(imm_j[18]), .B(n2), .C(imm_b[18]), .D(n3), .Y(n70) );
  AOI22X1 U92 ( .A(imm_j[9]), .B(n2), .C(imm_b[9]), .D(n3), .Y(n72) );
  NAND2X1 U94 ( .A(imm_i[25]), .B(n43), .Y(n75) );
  AOI22X1 U95 ( .A(imm_j[25]), .B(n2), .C(imm_b[25]), .D(n3), .Y(n74) );
  AOI22X1 U98 ( .A(imm_j[28]), .B(n2), .C(imm_b[28]), .D(n3), .Y(n76) );
  AOI22X1 U101 ( .A(imm_j[30]), .B(n2), .C(imm_b[30]), .D(n3), .Y(n78) );
  AOI22X1 U104 ( .A(imm_j[31]), .B(n2), .C(imm_b[31]), .D(n1125), .Y(n80) );
  AOI22X1 U107 ( .A(imm_j[3]), .B(n2), .C(imm_b[3]), .D(n1125), .Y(n82) );
  AOI22X1 U110 ( .A(imm_j[0]), .B(n2), .C(imm_b[0]), .D(n1125), .Y(n84) );
  NAND2X1 U112 ( .A(imm_i[13]), .B(n43), .Y(n87) );
  AOI22X1 U113 ( .A(imm_j[13]), .B(n2), .C(imm_b[13]), .D(n1125), .Y(n86) );
  AOI22X1 U116 ( .A(imm_j[29]), .B(n2), .C(imm_b[29]), .D(n1125), .Y(n88) );
  NAND2X1 U118 ( .A(imm_i[27]), .B(n43), .Y(n91) );
  AOI22X1 U119 ( .A(imm_j[27]), .B(n2), .C(imm_b[27]), .D(n1125), .Y(n90) );
  NAND2X1 U121 ( .A(imm_i[26]), .B(n43), .Y(n93) );
  AOI22X1 U122 ( .A(imm_j[26]), .B(n2), .C(imm_b[26]), .D(n1125), .Y(n92) );
  NAND2X1 U124 ( .A(imm_i[24]), .B(n43), .Y(n95) );
  AOI22X1 U125 ( .A(imm_j[24]), .B(n2), .C(imm_b[24]), .D(n1125), .Y(n94) );
  AOI22X1 U128 ( .A(imm_j[23]), .B(n2), .C(imm_b[23]), .D(n1125), .Y(n96) );
  AOI22X1 U131 ( .A(imm_j[22]), .B(n2), .C(imm_b[22]), .D(n1125), .Y(n98) );
  AOI22X1 U134 ( .A(imm_j[21]), .B(n2), .C(imm_b[21]), .D(n1125), .Y(n100) );
  AOI22X1 U137 ( .A(imm_j[11]), .B(n2), .C(imm_b[11]), .D(n1125), .Y(n102) );
  NAND3X1 U138 ( .A(n1116), .B(n40), .C(n106), .Y(n104) );
  NAND3X1 U139 ( .A(br_type[0]), .B(n1116), .C(br_type[1]), .Y(n107) );
  AOI22X1 U141 ( .A(imm_i[2]), .B(n1052), .C(imm_b[2]), .D(n40), .Y(n109) );
  OAI21X1 U143 ( .A(n1131), .B(n111), .C(n112), .Y(n307) );
  NAND2X1 U144 ( .A(flush), .B(fetch_stall), .Y(n112) );
  OAI21X1 U145 ( .A(n1134), .B(n4), .C(n1026), .Y(n304) );
  OAI21X1 U147 ( .A(n1135), .B(n5), .C(n1014), .Y(n301) );
  OAI21X1 U149 ( .A(n1135), .B(n6), .C(n984), .Y(n298) );
  OAI21X1 U151 ( .A(n1135), .B(n7), .C(n116), .Y(n295) );
  NAND2X1 U152 ( .A(next_PC[28]), .B(n1136), .Y(n116) );
  OAI21X1 U153 ( .A(n1129), .B(n8), .C(n117), .Y(n292) );
  NAND2X1 U154 ( .A(next_PC[27]), .B(n1134), .Y(n117) );
  OAI21X1 U155 ( .A(n1129), .B(n9), .C(n118), .Y(n289) );
  NAND2X1 U156 ( .A(next_PC[26]), .B(n1135), .Y(n118) );
  OAI21X1 U157 ( .A(n1129), .B(n10), .C(n119), .Y(n286) );
  NAND2X1 U158 ( .A(next_PC[25]), .B(n1134), .Y(n119) );
  OAI21X1 U159 ( .A(n1129), .B(n11), .C(n120), .Y(n283) );
  NAND2X1 U160 ( .A(next_PC[24]), .B(n1136), .Y(n120) );
  OAI21X1 U161 ( .A(n1129), .B(n12), .C(n121), .Y(n280) );
  NAND2X1 U162 ( .A(next_PC[23]), .B(n1135), .Y(n121) );
  OAI21X1 U163 ( .A(n1129), .B(n13), .C(n122), .Y(n277) );
  NAND2X1 U164 ( .A(next_PC[22]), .B(n1135), .Y(n122) );
  OAI21X1 U165 ( .A(n1129), .B(n14), .C(n123), .Y(n274) );
  NAND2X1 U166 ( .A(next_PC[21]), .B(n1136), .Y(n123) );
  OAI21X1 U167 ( .A(n1136), .B(n15), .C(n124), .Y(n271) );
  NAND2X1 U168 ( .A(next_PC[20]), .B(n1136), .Y(n124) );
  OAI21X1 U169 ( .A(n1136), .B(n16), .C(n125), .Y(n268) );
  NAND2X1 U170 ( .A(next_PC[19]), .B(n1129), .Y(n125) );
  OAI21X1 U171 ( .A(n1136), .B(n17), .C(n126), .Y(n265) );
  NAND2X1 U172 ( .A(next_PC[18]), .B(n1135), .Y(n126) );
  OAI21X1 U173 ( .A(n1136), .B(n18), .C(n127), .Y(n262) );
  NAND2X1 U174 ( .A(next_PC[17]), .B(n1134), .Y(n127) );
  OAI21X1 U175 ( .A(n1136), .B(n19), .C(n128), .Y(n259) );
  NAND2X1 U176 ( .A(next_PC[16]), .B(n1136), .Y(n128) );
  OAI21X1 U177 ( .A(n1136), .B(n20), .C(n129), .Y(n256) );
  NAND2X1 U178 ( .A(next_PC[15]), .B(n1129), .Y(n129) );
  OAI21X1 U179 ( .A(n1136), .B(n21), .C(n130), .Y(n253) );
  NAND2X1 U180 ( .A(next_PC[14]), .B(n1135), .Y(n130) );
  OAI21X1 U181 ( .A(n1136), .B(n22), .C(n131), .Y(n250) );
  NAND2X1 U182 ( .A(next_PC[13]), .B(n1136), .Y(n131) );
  OAI21X1 U183 ( .A(n1135), .B(n23), .C(n132), .Y(n247) );
  NAND2X1 U184 ( .A(next_PC[12]), .B(n1136), .Y(n132) );
  OAI21X1 U185 ( .A(n1135), .B(n24), .C(n133), .Y(n244) );
  NAND2X1 U186 ( .A(next_PC[11]), .B(n1136), .Y(n133) );
  OAI21X1 U187 ( .A(n1129), .B(n25), .C(n134), .Y(n241) );
  NAND2X1 U188 ( .A(next_PC[10]), .B(n1135), .Y(n134) );
  OAI21X1 U189 ( .A(n1129), .B(n26), .C(n135), .Y(n238) );
  NAND2X1 U190 ( .A(next_PC[9]), .B(n1135), .Y(n135) );
  OAI21X1 U191 ( .A(n1136), .B(n27), .C(n967), .Y(n235) );
  OAI21X1 U193 ( .A(n1136), .B(n28), .C(n977), .Y(n232) );
  OAI21X1 U195 ( .A(n1136), .B(n29), .C(n986), .Y(n229) );
  OAI21X1 U197 ( .A(n1136), .B(n30), .C(n1006), .Y(n226) );
  OAI21X1 U199 ( .A(n1129), .B(n31), .C(n1035), .Y(n223) );
  OAI21X1 U201 ( .A(n1129), .B(n32), .C(n141), .Y(n220) );
  NAND2X1 U202 ( .A(next_PC[3]), .B(n1135), .Y(n141) );
  OAI21X1 U203 ( .A(n1129), .B(n33), .C(n142), .Y(n217) );
  NAND2X1 U204 ( .A(next_PC[2]), .B(n1136), .Y(n142) );
  OAI21X1 U205 ( .A(n1129), .B(n34), .C(n143), .Y(n214) );
  NAND2X1 U206 ( .A(next_PC[1]), .B(n1135), .Y(n143) );
  OAI21X1 U207 ( .A(n1135), .B(n35), .C(n144), .Y(n211) );
  NAND2X1 U208 ( .A(next_PC[0]), .B(n1136), .Y(n144) );
  OAI21X1 U209 ( .A(n1132), .B(n26), .C(n976), .Y(i_addr[9]) );
  OAI21X1 U211 ( .A(n1132), .B(n27), .C(n1027), .Y(i_addr[8]) );
  OAI21X1 U213 ( .A(n1132), .B(n28), .C(n968), .Y(i_addr[7]) );
  OAI21X1 U215 ( .A(n1132), .B(n29), .C(n995), .Y(i_addr[6]) );
  OAI21X1 U217 ( .A(n1132), .B(n30), .C(n987), .Y(i_addr[5]) );
  OAI21X1 U219 ( .A(n1132), .B(n31), .C(n1016), .Y(i_addr[4]) );
  OAI21X1 U221 ( .A(n1132), .B(n32), .C(n1007), .Y(i_addr[3]) );
  OAI21X1 U223 ( .A(n1132), .B(n4), .C(n152), .Y(i_addr[31]) );
  NAND2X1 U224 ( .A(PC_e[31]), .B(n1133), .Y(n152) );
  OAI21X1 U225 ( .A(n1132), .B(n5), .C(n153), .Y(i_addr[30]) );
  NAND2X1 U226 ( .A(PC_e[30]), .B(n1132), .Y(n153) );
  OAI21X1 U227 ( .A(n1131), .B(n33), .C(n1036), .Y(i_addr[2]) );
  OAI21X1 U229 ( .A(n1131), .B(n6), .C(n155), .Y(i_addr[29]) );
  NAND2X1 U230 ( .A(PC_e[29]), .B(n1133), .Y(n155) );
  OAI21X1 U231 ( .A(n1131), .B(n7), .C(n156), .Y(i_addr[28]) );
  NAND2X1 U232 ( .A(PC_e[28]), .B(n1132), .Y(n156) );
  OAI21X1 U233 ( .A(n1131), .B(n8), .C(n157), .Y(i_addr[27]) );
  NAND2X1 U234 ( .A(PC_e[27]), .B(n1133), .Y(n157) );
  OAI21X1 U235 ( .A(n1131), .B(n9), .C(n158), .Y(i_addr[26]) );
  NAND2X1 U236 ( .A(PC_e[26]), .B(n1133), .Y(n158) );
  OAI21X1 U237 ( .A(n1131), .B(n10), .C(n159), .Y(i_addr[25]) );
  NAND2X1 U238 ( .A(PC_e[25]), .B(n1132), .Y(n159) );
  OAI21X1 U239 ( .A(n1131), .B(n11), .C(n160), .Y(i_addr[24]) );
  NAND2X1 U240 ( .A(PC_e[24]), .B(n1132), .Y(n160) );
  OAI21X1 U241 ( .A(n1131), .B(n12), .C(n161), .Y(i_addr[23]) );
  NAND2X1 U242 ( .A(PC_e[23]), .B(n1133), .Y(n161) );
  OAI21X1 U243 ( .A(n1131), .B(n13), .C(n162), .Y(i_addr[22]) );
  NAND2X1 U244 ( .A(PC_e[22]), .B(n1133), .Y(n162) );
  OAI21X1 U245 ( .A(n1131), .B(n14), .C(n163), .Y(i_addr[21]) );
  NAND2X1 U246 ( .A(PC_e[21]), .B(n1133), .Y(n163) );
  OAI21X1 U247 ( .A(n1131), .B(n15), .C(n164), .Y(i_addr[20]) );
  NAND2X1 U248 ( .A(PC_e[20]), .B(n1133), .Y(n164) );
  OAI21X1 U249 ( .A(n1130), .B(n34), .C(n1028), .Y(i_addr[1]) );
  OAI21X1 U251 ( .A(n1130), .B(n16), .C(n166), .Y(i_addr[19]) );
  NAND2X1 U252 ( .A(PC_e[19]), .B(n1133), .Y(n166) );
  OAI21X1 U253 ( .A(n1130), .B(n17), .C(n167), .Y(i_addr[18]) );
  NAND2X1 U254 ( .A(PC_e[18]), .B(fetch_stall), .Y(n167) );
  OAI21X1 U255 ( .A(n1130), .B(n18), .C(n168), .Y(i_addr[17]) );
  NAND2X1 U256 ( .A(PC_e[17]), .B(n1133), .Y(n168) );
  OAI21X1 U257 ( .A(n1130), .B(n19), .C(n975), .Y(i_addr[16]) );
  OAI21X1 U259 ( .A(n1130), .B(n20), .C(n170), .Y(i_addr[15]) );
  NAND2X1 U260 ( .A(PC_e[15]), .B(fetch_stall), .Y(n170) );
  OAI21X1 U261 ( .A(n1130), .B(n21), .C(n966), .Y(i_addr[14]) );
  OAI21X1 U263 ( .A(n1130), .B(n22), .C(n985), .Y(i_addr[13]) );
  OAI21X1 U265 ( .A(n1130), .B(n23), .C(n994), .Y(i_addr[12]) );
  OAI21X1 U267 ( .A(n1130), .B(n24), .C(n1005), .Y(i_addr[11]) );
  OAI21X1 U269 ( .A(n1130), .B(n25), .C(n1015), .Y(i_addr[10]) );
  OAI21X1 U271 ( .A(n1130), .B(n35), .C(n1037), .Y(i_addr[0]) );
  OAI21X1 U273 ( .A(n1), .B(n26), .C(n177), .Y(PC_addend1[9]) );
  AOI22X1 U274 ( .A(n1119), .B(PC_e[9]), .C(rs1_data[9]), .D(n43), .Y(n177) );
  OAI21X1 U275 ( .A(n1), .B(n27), .C(n179), .Y(PC_addend1[8]) );
  AOI22X1 U276 ( .A(n1119), .B(PC_e[8]), .C(rs1_data[8]), .D(n43), .Y(n179) );
  OAI21X1 U277 ( .A(n1), .B(n28), .C(n180), .Y(PC_addend1[7]) );
  AOI22X1 U278 ( .A(n1119), .B(PC_e[7]), .C(rs1_data[7]), .D(n43), .Y(n180) );
  OAI21X1 U279 ( .A(n1), .B(n29), .C(n181), .Y(PC_addend1[6]) );
  AOI22X1 U280 ( .A(n1119), .B(PC_e[6]), .C(rs1_data[6]), .D(n43), .Y(n181) );
  OAI21X1 U281 ( .A(n1), .B(n30), .C(n182), .Y(PC_addend1[5]) );
  AOI22X1 U282 ( .A(n1119), .B(PC_e[5]), .C(rs1_data[5]), .D(n43), .Y(n182) );
  OAI21X1 U283 ( .A(n1), .B(n31), .C(n183), .Y(PC_addend1[4]) );
  AOI22X1 U284 ( .A(n1119), .B(PC_e[4]), .C(rs1_data[4]), .D(n43), .Y(n183) );
  OAI21X1 U285 ( .A(n1), .B(n32), .C(n184), .Y(PC_addend1[3]) );
  AOI22X1 U286 ( .A(n1119), .B(PC_e[3]), .C(rs1_data[3]), .D(n43), .Y(n184) );
  OAI21X1 U287 ( .A(n1), .B(n4), .C(n185), .Y(PC_addend1[31]) );
  AOI22X1 U288 ( .A(n1119), .B(PC_e[31]), .C(rs1_data[31]), .D(n43), .Y(n185)
         );
  OAI21X1 U289 ( .A(n1), .B(n5), .C(n186), .Y(PC_addend1[30]) );
  AOI22X1 U290 ( .A(n1119), .B(PC_e[30]), .C(rs1_data[30]), .D(n43), .Y(n186)
         );
  OAI21X1 U291 ( .A(n1), .B(n33), .C(n187), .Y(PC_addend1[2]) );
  AOI22X1 U292 ( .A(n1119), .B(PC_e[2]), .C(rs1_data[2]), .D(n43), .Y(n187) );
  OAI21X1 U293 ( .A(n1), .B(n6), .C(n188), .Y(PC_addend1[29]) );
  AOI22X1 U294 ( .A(n1119), .B(PC_e[29]), .C(rs1_data[29]), .D(n43), .Y(n188)
         );
  OAI21X1 U295 ( .A(n1), .B(n7), .C(n189), .Y(PC_addend1[28]) );
  AOI22X1 U296 ( .A(n1119), .B(PC_e[28]), .C(rs1_data[28]), .D(n43), .Y(n189)
         );
  OAI21X1 U297 ( .A(n1), .B(n8), .C(n190), .Y(PC_addend1[27]) );
  AOI22X1 U298 ( .A(n1119), .B(PC_e[27]), .C(rs1_data[27]), .D(n43), .Y(n190)
         );
  OAI21X1 U299 ( .A(n1), .B(n9), .C(n191), .Y(PC_addend1[26]) );
  AOI22X1 U300 ( .A(n1119), .B(PC_e[26]), .C(rs1_data[26]), .D(n43), .Y(n191)
         );
  OAI21X1 U301 ( .A(n1), .B(n10), .C(n192), .Y(PC_addend1[25]) );
  AOI22X1 U302 ( .A(n1119), .B(PC_e[25]), .C(rs1_data[25]), .D(n43), .Y(n192)
         );
  OAI21X1 U303 ( .A(n1), .B(n11), .C(n193), .Y(PC_addend1[24]) );
  AOI22X1 U304 ( .A(n1119), .B(PC_e[24]), .C(rs1_data[24]), .D(n43), .Y(n193)
         );
  OAI21X1 U305 ( .A(n1), .B(n12), .C(n194), .Y(PC_addend1[23]) );
  AOI22X1 U306 ( .A(n1119), .B(PC_e[23]), .C(rs1_data[23]), .D(n1120), .Y(n194) );
  OAI21X1 U307 ( .A(n1), .B(n13), .C(n195), .Y(PC_addend1[22]) );
  AOI22X1 U308 ( .A(n1119), .B(PC_e[22]), .C(rs1_data[22]), .D(n43), .Y(n195)
         );
  OAI21X1 U309 ( .A(n1), .B(n14), .C(n196), .Y(PC_addend1[21]) );
  AOI22X1 U310 ( .A(n1119), .B(PC_e[21]), .C(rs1_data[21]), .D(n43), .Y(n196)
         );
  OAI21X1 U311 ( .A(n1), .B(n15), .C(n197), .Y(PC_addend1[20]) );
  AOI22X1 U312 ( .A(n1118), .B(PC_e[20]), .C(rs1_data[20]), .D(n43), .Y(n197)
         );
  OAI21X1 U313 ( .A(n1), .B(n34), .C(n198), .Y(PC_addend1[1]) );
  AOI22X1 U314 ( .A(n1118), .B(PC_e[1]), .C(rs1_data[1]), .D(n1120), .Y(n198)
         );
  OAI21X1 U315 ( .A(n1), .B(n16), .C(n199), .Y(PC_addend1[19]) );
  AOI22X1 U316 ( .A(n1118), .B(PC_e[19]), .C(rs1_data[19]), .D(n1120), .Y(n199) );
  OAI21X1 U317 ( .A(n1), .B(n17), .C(n200), .Y(PC_addend1[18]) );
  AOI22X1 U318 ( .A(n1118), .B(PC_e[18]), .C(rs1_data[18]), .D(n1120), .Y(n200) );
  OAI21X1 U319 ( .A(n1), .B(n18), .C(n201), .Y(PC_addend1[17]) );
  AOI22X1 U320 ( .A(n1118), .B(PC_e[17]), .C(rs1_data[17]), .D(n1120), .Y(n201) );
  OAI21X1 U321 ( .A(n1), .B(n19), .C(n202), .Y(PC_addend1[16]) );
  AOI22X1 U322 ( .A(n1118), .B(PC_e[16]), .C(rs1_data[16]), .D(n1120), .Y(n202) );
  OAI21X1 U323 ( .A(n1), .B(n20), .C(n203), .Y(PC_addend1[15]) );
  AOI22X1 U324 ( .A(n1118), .B(PC_e[15]), .C(rs1_data[15]), .D(n1120), .Y(n203) );
  OAI21X1 U325 ( .A(n1), .B(n21), .C(n204), .Y(PC_addend1[14]) );
  AOI22X1 U326 ( .A(n1118), .B(PC_e[14]), .C(rs1_data[14]), .D(n1120), .Y(n204) );
  OAI21X1 U327 ( .A(n1), .B(n22), .C(n205), .Y(PC_addend1[13]) );
  AOI22X1 U328 ( .A(n1118), .B(PC_e[13]), .C(rs1_data[13]), .D(n1120), .Y(n205) );
  OAI21X1 U329 ( .A(n1), .B(n23), .C(n206), .Y(PC_addend1[12]) );
  AOI22X1 U330 ( .A(n1118), .B(PC_e[12]), .C(rs1_data[12]), .D(n1120), .Y(n206) );
  OAI21X1 U331 ( .A(n1), .B(n24), .C(n207), .Y(PC_addend1[11]) );
  AOI22X1 U332 ( .A(n1118), .B(PC_e[11]), .C(rs1_data[11]), .D(n1120), .Y(n207) );
  OAI21X1 U333 ( .A(n1), .B(n25), .C(n208), .Y(PC_addend1[10]) );
  AOI22X1 U334 ( .A(n1118), .B(PC_e[10]), .C(rs1_data[10]), .D(n1120), .Y(n208) );
  OAI21X1 U335 ( .A(n1), .B(n35), .C(n305), .Y(PC_addend1[0]) );
  AOI22X1 U336 ( .A(n1118), .B(PC_e[0]), .C(rs1_data[0]), .D(n1120), .Y(n305)
         );
  OAI21X1 U339 ( .A(br_type[0]), .B(n106), .C(n1116), .Y(n111) );
  AND2X1 U3 ( .A(n1012), .B(n1013), .Y(n329) );
  AND2X1 U4 ( .A(n1004), .B(n1003), .Y(n321) );
  AND2X1 U5 ( .A(n993), .B(n992), .Y(n328) );
  AND2X1 U6 ( .A(n1080), .B(n1079), .Y(n311) );
  AND2X1 U7 ( .A(n1048), .B(n1047), .Y(n310) );
  AND2X1 U8 ( .A(n1031), .B(n1030), .Y(n309) );
  AND2X1 U9 ( .A(n1022), .B(n1021), .Y(n308) );
  AND2X1 U10 ( .A(n1010), .B(n1009), .Y(n314) );
  AND2X1 U11 ( .A(n983), .B(n982), .Y(n323) );
  AND2X1 U12 ( .A(n974), .B(n973), .Y(n320) );
  AND2X1 U13 ( .A(n1019), .B(n1018), .Y(n338) );
  AND2X1 U14 ( .A(n1001), .B(n1000), .Y(n312) );
  AND2X1 U15 ( .A(n990), .B(n989), .Y(n313) );
  AND2X1 U16 ( .A(n998), .B(n997), .Y(n337) );
  AND2X1 U17 ( .A(n980), .B(n979), .Y(n336) );
  AND2X1 U18 ( .A(n971), .B(n970), .Y(n335) );
  AND2X1 U19 ( .A(n1025), .B(n1024), .Y(n325) );
  AND2X1 U20 ( .A(n1034), .B(n1033), .Y(n331) );
  OR2X1 U21 ( .A(n38), .B(flush), .Y(n105) );
  AND2X1 U22 ( .A(n1083), .B(n1082), .Y(n326) );
  AND2X1 U23 ( .A(n1051), .B(n1050), .Y(n327) );
  AND2X1 U24 ( .A(n1052), .B(n1116), .Y(n43) );
  OR2X1 U25 ( .A(n954), .B(n953), .Y(n951) );
  OR2X1 U26 ( .A(n111), .B(n951), .Y(n952) );
  OR2X1 U27 ( .A(n111), .B(n1052), .Y(n1117) );
  AND2X1 U28 ( .A(imm_j[2]), .B(br_type[1]), .Y(n953) );
  INVX1 U29 ( .A(n109), .Y(n954) );
  AND2X2 U30 ( .A(n94), .B(n95), .Y(n334) );
  INVX1 U31 ( .A(n334), .Y(n955) );
  AND2X2 U32 ( .A(n92), .B(n93), .Y(n333) );
  INVX1 U33 ( .A(n333), .Y(n956) );
  AND2X2 U34 ( .A(n90), .B(n91), .Y(n332) );
  INVX1 U35 ( .A(n332), .Y(n957) );
  AND2X2 U36 ( .A(n86), .B(n87), .Y(n330) );
  INVX1 U37 ( .A(n330), .Y(n958) );
  AND2X2 U38 ( .A(n74), .B(n75), .Y(n324) );
  INVX1 U39 ( .A(n324), .Y(n959) );
  AND2X2 U40 ( .A(n70), .B(n71), .Y(n322) );
  INVX1 U41 ( .A(n322), .Y(n960) );
  AND2X2 U42 ( .A(n64), .B(n65), .Y(n319) );
  INVX1 U43 ( .A(n319), .Y(n961) );
  AND2X2 U44 ( .A(n62), .B(n63), .Y(n318) );
  INVX1 U45 ( .A(n318), .Y(n962) );
  AND2X2 U46 ( .A(n60), .B(n61), .Y(n317) );
  INVX1 U48 ( .A(n317), .Y(n963) );
  AND2X2 U49 ( .A(n58), .B(n59), .Y(n316) );
  INVX1 U51 ( .A(n316), .Y(n964) );
  AND2X2 U52 ( .A(n56), .B(n57), .Y(n315) );
  INVX1 U54 ( .A(n315), .Y(n965) );
  AND2X1 U55 ( .A(PC_e[14]), .B(n1128), .Y(n171) );
  INVX1 U57 ( .A(n171), .Y(n966) );
  AND2X1 U58 ( .A(next_PC[8]), .B(n1129), .Y(n136) );
  INVX1 U60 ( .A(n136), .Y(n967) );
  AND2X1 U61 ( .A(PC_e[7]), .B(n1133), .Y(n147) );
  INVX1 U63 ( .A(n147), .Y(n968) );
  INVX1 U64 ( .A(n335), .Y(n969) );
  AND2X1 U66 ( .A(imm_i[23]), .B(n43), .Y(n97) );
  INVX1 U69 ( .A(n97), .Y(n970) );
  BUFX2 U72 ( .A(n96), .Y(n971) );
  INVX1 U75 ( .A(n320), .Y(n972) );
  AND2X1 U78 ( .A(imm_i[10]), .B(n1120), .Y(n67) );
  INVX1 U81 ( .A(n67), .Y(n973) );
  BUFX2 U82 ( .A(n66), .Y(n974) );
  AND2X1 U84 ( .A(PC_e[16]), .B(n1133), .Y(n169) );
  INVX1 U85 ( .A(n169), .Y(n975) );
  AND2X1 U87 ( .A(PC_e[9]), .B(fetch_stall), .Y(n145) );
  INVX1 U90 ( .A(n145), .Y(n976) );
  AND2X1 U91 ( .A(next_PC[7]), .B(n1135), .Y(n137) );
  INVX1 U93 ( .A(n137), .Y(n977) );
  INVX1 U96 ( .A(n336), .Y(n978) );
  AND2X1 U97 ( .A(imm_i[22]), .B(n43), .Y(n99) );
  INVX1 U99 ( .A(n99), .Y(n979) );
  BUFX2 U100 ( .A(n98), .Y(n980) );
  INVX1 U102 ( .A(n323), .Y(n981) );
  AND2X1 U103 ( .A(imm_i[9]), .B(n1120), .Y(n73) );
  INVX1 U105 ( .A(n73), .Y(n982) );
  BUFX2 U106 ( .A(n72), .Y(n983) );
  AND2X1 U108 ( .A(next_PC[29]), .B(n1136), .Y(n115) );
  INVX1 U109 ( .A(n115), .Y(n984) );
  AND2X1 U111 ( .A(PC_e[13]), .B(n1132), .Y(n172) );
  INVX1 U114 ( .A(n172), .Y(n985) );
  AND2X1 U115 ( .A(next_PC[6]), .B(n1136), .Y(n138) );
  INVX1 U117 ( .A(n138), .Y(n986) );
  AND2X1 U120 ( .A(PC_e[5]), .B(n1133), .Y(n149) );
  INVX1 U123 ( .A(n149), .Y(n987) );
  INVX1 U126 ( .A(n313), .Y(n988) );
  AND2X1 U127 ( .A(imm_i[16]), .B(n43), .Y(n53) );
  INVX1 U129 ( .A(n53), .Y(n989) );
  BUFX2 U130 ( .A(n52), .Y(n990) );
  INVX1 U132 ( .A(n328), .Y(n991) );
  AND2X1 U133 ( .A(imm_i[3]), .B(n1120), .Y(n83) );
  INVX1 U135 ( .A(n83), .Y(n992) );
  BUFX2 U136 ( .A(n82), .Y(n993) );
  AND2X1 U140 ( .A(PC_e[12]), .B(fetch_stall), .Y(n173) );
  INVX1 U142 ( .A(n173), .Y(n994) );
  AND2X1 U146 ( .A(PC_e[6]), .B(n1133), .Y(n148) );
  INVX1 U148 ( .A(n148), .Y(n995) );
  INVX1 U150 ( .A(n337), .Y(n996) );
  AND2X1 U192 ( .A(imm_i[21]), .B(n43), .Y(n101) );
  INVX1 U194 ( .A(n101), .Y(n997) );
  BUFX2 U196 ( .A(n100), .Y(n998) );
  INVX1 U198 ( .A(n312), .Y(n999) );
  AND2X1 U200 ( .A(imm_i[14]), .B(n43), .Y(n51) );
  INVX1 U210 ( .A(n51), .Y(n1000) );
  BUFX2 U212 ( .A(n50), .Y(n1001) );
  INVX1 U214 ( .A(n321), .Y(n1002) );
  AND2X1 U216 ( .A(imm_i[1]), .B(n1120), .Y(n69) );
  INVX1 U218 ( .A(n69), .Y(n1003) );
  BUFX2 U220 ( .A(n68), .Y(n1004) );
  AND2X1 U222 ( .A(PC_e[11]), .B(fetch_stall), .Y(n174) );
  INVX1 U228 ( .A(n174), .Y(n1005) );
  AND2X1 U250 ( .A(next_PC[5]), .B(n1129), .Y(n139) );
  INVX1 U258 ( .A(n139), .Y(n1006) );
  AND2X1 U262 ( .A(PC_e[3]), .B(n1133), .Y(n151) );
  INVX1 U264 ( .A(n151), .Y(n1007) );
  INVX1 U266 ( .A(n314), .Y(n1008) );
  AND2X1 U268 ( .A(imm_i[8]), .B(n43), .Y(n55) );
  INVX1 U270 ( .A(n55), .Y(n1009) );
  BUFX2 U272 ( .A(n54), .Y(n1010) );
  INVX1 U337 ( .A(n329), .Y(n1011) );
  BUFX2 U338 ( .A(n84), .Y(n1012) );
  AND2X1 U340 ( .A(imm_i[0]), .B(n1120), .Y(n85) );
  INVX1 U406 ( .A(n85), .Y(n1013) );
  AND2X1 U407 ( .A(next_PC[30]), .B(n1129), .Y(n114) );
  INVX1 U408 ( .A(n114), .Y(n1014) );
  AND2X1 U409 ( .A(PC_e[10]), .B(fetch_stall), .Y(n175) );
  INVX1 U410 ( .A(n175), .Y(n1015) );
  AND2X1 U411 ( .A(PC_e[4]), .B(n1133), .Y(n150) );
  INVX1 U412 ( .A(n150), .Y(n1016) );
  INVX1 U413 ( .A(n338), .Y(n1017) );
  AND2X1 U414 ( .A(imm_i[11]), .B(n43), .Y(n103) );
  INVX1 U415 ( .A(n103), .Y(n1018) );
  BUFX2 U416 ( .A(n102), .Y(n1019) );
  INVX1 U417 ( .A(n308), .Y(n1020) );
  AND2X1 U418 ( .A(imm_i[7]), .B(n43), .Y(n42) );
  INVX1 U419 ( .A(n42), .Y(n1021) );
  BUFX2 U420 ( .A(n41), .Y(n1022) );
  INVX1 U421 ( .A(n325), .Y(n1023) );
  AND2X1 U422 ( .A(imm_i[28]), .B(n43), .Y(n77) );
  INVX1 U423 ( .A(n77), .Y(n1024) );
  BUFX2 U424 ( .A(n76), .Y(n1025) );
  AND2X1 U425 ( .A(next_PC[31]), .B(n1136), .Y(n113) );
  INVX1 U426 ( .A(n113), .Y(n1026) );
  AND2X1 U427 ( .A(PC_e[8]), .B(fetch_stall), .Y(n146) );
  INVX1 U428 ( .A(n146), .Y(n1027) );
  AND2X1 U429 ( .A(PC_e[1]), .B(n1133), .Y(n165) );
  INVX1 U430 ( .A(n165), .Y(n1028) );
  INVX1 U431 ( .A(n309), .Y(n1029) );
  AND2X1 U432 ( .A(imm_i[6]), .B(n43), .Y(n45) );
  INVX1 U433 ( .A(n45), .Y(n1030) );
  BUFX2 U434 ( .A(n44), .Y(n1031) );
  INVX1 U435 ( .A(n331), .Y(n1032) );
  AND2X1 U436 ( .A(imm_i[29]), .B(n43), .Y(n89) );
  INVX1 U437 ( .A(n89), .Y(n1033) );
  BUFX2 U438 ( .A(n88), .Y(n1034) );
  AND2X1 U439 ( .A(next_PC[4]), .B(n1136), .Y(n140) );
  INVX1 U440 ( .A(n140), .Y(n1035) );
  AND2X1 U441 ( .A(PC_e[2]), .B(n1132), .Y(n154) );
  INVX1 U442 ( .A(n154), .Y(n1036) );
  AND2X1 U443 ( .A(PC_e[0]), .B(fetch_stall), .Y(n176) );
  INVX1 U444 ( .A(n176), .Y(n1037) );
  BUFX2 U445 ( .A(n511), .Y(PC_f[14]) );
  BUFX2 U446 ( .A(n512), .Y(PC_f[13]) );
  BUFX2 U447 ( .A(n513), .Y(PC_f[12]) );
  BUFX2 U448 ( .A(n514), .Y(PC_f[11]) );
  BUFX2 U449 ( .A(n515), .Y(PC_f[10]) );
  BUFX2 U450 ( .A(n516), .Y(PC_f[9]) );
  BUFX2 U451 ( .A(n517), .Y(PC_f[8]) );
  BUFX2 U452 ( .A(n510), .Y(PC_f[15]) );
  INVX1 U453 ( .A(n310), .Y(n1046) );
  AND2X1 U454 ( .A(imm_i[5]), .B(n43), .Y(n47) );
  INVX1 U455 ( .A(n47), .Y(n1047) );
  BUFX2 U456 ( .A(n46), .Y(n1048) );
  INVX1 U457 ( .A(n327), .Y(n1049) );
  AND2X1 U458 ( .A(imm_i[31]), .B(n43), .Y(n81) );
  INVX1 U459 ( .A(n81), .Y(n1050) );
  BUFX2 U460 ( .A(n80), .Y(n1051) );
  OR2X1 U461 ( .A(n40), .B(br_type[1]), .Y(n110) );
  INVX1 U462 ( .A(n110), .Y(n1052) );
  BUFX2 U463 ( .A(n558), .Y(flush) );
  BUFX2 U464 ( .A(n518), .Y(PC_f[7]) );
  BUFX2 U465 ( .A(n519), .Y(PC_f[6]) );
  BUFX2 U466 ( .A(n520), .Y(PC_f[5]) );
  BUFX2 U467 ( .A(n521), .Y(PC_f[4]) );
  BUFX2 U468 ( .A(n522), .Y(PC_f[3]) );
  BUFX2 U469 ( .A(n523), .Y(PC_f[2]) );
  BUFX2 U470 ( .A(n524), .Y(PC_f[1]) );
  BUFX2 U471 ( .A(n525), .Y(PC_f[0]) );
  BUFX2 U472 ( .A(n494), .Y(PC_f[31]) );
  BUFX2 U473 ( .A(n495), .Y(PC_f[30]) );
  BUFX2 U474 ( .A(n496), .Y(PC_f[29]) );
  BUFX2 U475 ( .A(n497), .Y(PC_f[28]) );
  BUFX2 U476 ( .A(n498), .Y(PC_f[27]) );
  BUFX2 U477 ( .A(n499), .Y(PC_f[26]) );
  BUFX2 U478 ( .A(n500), .Y(PC_f[25]) );
  BUFX2 U479 ( .A(n501), .Y(PC_f[24]) );
  BUFX2 U480 ( .A(n502), .Y(PC_f[23]) );
  BUFX2 U481 ( .A(n503), .Y(PC_f[22]) );
  BUFX2 U482 ( .A(n504), .Y(PC_f[21]) );
  BUFX2 U483 ( .A(n505), .Y(PC_f[20]) );
  BUFX2 U484 ( .A(n506), .Y(PC_f[19]) );
  BUFX2 U485 ( .A(n507), .Y(PC_f[18]) );
  BUFX2 U486 ( .A(n508), .Y(PC_f[17]) );
  BUFX2 U487 ( .A(n509), .Y(PC_f[16]) );
  INVX1 U488 ( .A(n311), .Y(n1078) );
  AND2X1 U489 ( .A(imm_i[4]), .B(n43), .Y(n49) );
  INVX1 U490 ( .A(n49), .Y(n1079) );
  BUFX2 U491 ( .A(n48), .Y(n1080) );
  INVX1 U492 ( .A(n326), .Y(n1081) );
  AND2X1 U493 ( .A(imm_i[30]), .B(n43), .Y(n79) );
  INVX1 U494 ( .A(n79), .Y(n1082) );
  BUFX2 U495 ( .A(n78), .Y(n1083) );
  BUFX2 U496 ( .A(n526), .Y(PC_e[31]) );
  BUFX2 U497 ( .A(n527), .Y(PC_e[30]) );
  BUFX2 U498 ( .A(n528), .Y(PC_e[29]) );
  BUFX2 U499 ( .A(n529), .Y(PC_e[28]) );
  BUFX2 U500 ( .A(n530), .Y(PC_e[27]) );
  BUFX2 U501 ( .A(n531), .Y(PC_e[26]) );
  BUFX2 U502 ( .A(n532), .Y(PC_e[25]) );
  BUFX2 U503 ( .A(n533), .Y(PC_e[24]) );
  BUFX2 U504 ( .A(n534), .Y(PC_e[23]) );
  BUFX2 U505 ( .A(n535), .Y(PC_e[22]) );
  BUFX2 U506 ( .A(n536), .Y(PC_e[21]) );
  BUFX2 U507 ( .A(n537), .Y(PC_e[20]) );
  BUFX2 U508 ( .A(n538), .Y(PC_e[19]) );
  BUFX2 U509 ( .A(n539), .Y(PC_e[18]) );
  BUFX2 U510 ( .A(n540), .Y(PC_e[17]) );
  BUFX2 U511 ( .A(n541), .Y(PC_e[16]) );
  BUFX2 U512 ( .A(n542), .Y(PC_e[15]) );
  BUFX2 U513 ( .A(n543), .Y(PC_e[14]) );
  BUFX2 U514 ( .A(n544), .Y(PC_e[13]) );
  BUFX2 U515 ( .A(n545), .Y(PC_e[12]) );
  BUFX2 U516 ( .A(n546), .Y(PC_e[11]) );
  BUFX2 U517 ( .A(n547), .Y(PC_e[10]) );
  BUFX2 U518 ( .A(n548), .Y(PC_e[9]) );
  BUFX2 U519 ( .A(n549), .Y(PC_e[8]) );
  BUFX2 U520 ( .A(n550), .Y(PC_e[7]) );
  BUFX2 U521 ( .A(n551), .Y(PC_e[6]) );
  BUFX2 U522 ( .A(n552), .Y(PC_e[5]) );
  BUFX2 U523 ( .A(n553), .Y(PC_e[4]) );
  BUFX2 U524 ( .A(n554), .Y(PC_e[3]) );
  BUFX2 U525 ( .A(n555), .Y(PC_e[2]) );
  BUFX2 U526 ( .A(n556), .Y(PC_e[1]) );
  BUFX2 U527 ( .A(n557), .Y(PC_e[0]) );
  INVX1 U528 ( .A(n105), .Y(n1116) );
  INVX1 U529 ( .A(n1134), .Y(n1132) );
  INVX1 U530 ( .A(n1134), .Y(n1133) );
  INVX1 U531 ( .A(n1135), .Y(n1130) );
  INVX1 U532 ( .A(n1135), .Y(n1131) );
  INVX1 U533 ( .A(n1121), .Y(n1120) );
  INVX1 U534 ( .A(n1127), .Y(n1134) );
  INVX1 U535 ( .A(n1128), .Y(n1136) );
  INVX1 U536 ( .A(n1127), .Y(n1135) );
  INVX1 U537 ( .A(n1117), .Y(n1118) );
  INVX1 U538 ( .A(n1117), .Y(n1119) );
  INVX1 U539 ( .A(n1126), .Y(n1125) );
  INVX1 U540 ( .A(n43), .Y(n1121) );
  INVX1 U541 ( .A(n1129), .Y(n1127) );
  INVX1 U542 ( .A(n1129), .Y(n1128) );
  INVX1 U543 ( .A(rst), .Y(n1123) );
  INVX1 U544 ( .A(rst), .Y(n1124) );
  INVX1 U545 ( .A(rst), .Y(n1122) );
  INVX1 U546 ( .A(n111), .Y(n1) );
  INVX1 U547 ( .A(n3), .Y(n1126) );
  INVX1 U548 ( .A(n104), .Y(n3) );
  INVX1 U549 ( .A(fetch_stall), .Y(n1129) );
  AND2X1 U550 ( .A(take_branch), .B(n39), .Y(n106) );
  INVX1 U551 ( .A(br_type[1]), .Y(n39) );
  INVX1 U552 ( .A(is_br_type), .Y(n38) );
  INVX1 U553 ( .A(n107), .Y(n2) );
  INVX1 U554 ( .A(PC_f[0]), .Y(n35) );
  INVX1 U555 ( .A(PC_f[1]), .Y(n34) );
  INVX1 U556 ( .A(PC_f[2]), .Y(n33) );
  INVX1 U557 ( .A(PC_f[3]), .Y(n32) );
  INVX1 U558 ( .A(PC_f[4]), .Y(n31) );
  INVX1 U559 ( .A(PC_f[5]), .Y(n30) );
  INVX1 U560 ( .A(PC_f[6]), .Y(n29) );
  INVX1 U561 ( .A(PC_f[7]), .Y(n28) );
  INVX1 U562 ( .A(PC_f[8]), .Y(n27) );
  INVX1 U563 ( .A(PC_f[9]), .Y(n26) );
  INVX1 U564 ( .A(PC_f[10]), .Y(n25) );
  INVX1 U565 ( .A(PC_f[11]), .Y(n24) );
  INVX1 U566 ( .A(PC_f[12]), .Y(n23) );
  INVX1 U567 ( .A(PC_f[13]), .Y(n22) );
  INVX1 U568 ( .A(PC_f[14]), .Y(n21) );
  INVX1 U569 ( .A(PC_f[15]), .Y(n20) );
  INVX1 U570 ( .A(PC_f[16]), .Y(n19) );
  INVX1 U571 ( .A(PC_f[17]), .Y(n18) );
  INVX1 U572 ( .A(PC_f[18]), .Y(n17) );
  INVX1 U573 ( .A(PC_f[19]), .Y(n16) );
  INVX1 U574 ( .A(PC_f[20]), .Y(n15) );
  INVX1 U575 ( .A(PC_f[21]), .Y(n14) );
  INVX1 U576 ( .A(PC_f[22]), .Y(n13) );
  INVX1 U577 ( .A(PC_f[23]), .Y(n12) );
  INVX1 U578 ( .A(PC_f[24]), .Y(n11) );
  INVX1 U579 ( .A(PC_f[25]), .Y(n10) );
  INVX1 U580 ( .A(PC_f[26]), .Y(n9) );
  INVX1 U581 ( .A(PC_f[27]), .Y(n8) );
  INVX1 U582 ( .A(PC_f[28]), .Y(n7) );
  INVX1 U583 ( .A(PC_f[29]), .Y(n6) );
  INVX1 U584 ( .A(PC_f[30]), .Y(n5) );
  INVX1 U585 ( .A(PC_f[31]), .Y(n4) );
  INVX1 U586 ( .A(br_type[0]), .Y(n40) );
endmodule


module decode ( instr, rd, rs1, rs2, is_writeback, alu_op, comp_op, subtract, 
        shift_right, shift_arith, is_auipc, is_load_op, load_op, is_store_op, 
        store_op, is_br_type, br_type, is_jump_op, is_imm, imm_b, imm_i, imm_s, 
        imm_u, imm_j );
  input [31:0] instr;
  output [4:0] rd;
  output [4:0] rs1;
  output [4:0] rs2;
  output [31:0] alu_op;
  output [2:0] comp_op;
  output [2:0] load_op;
  output [2:0] store_op;
  output [1:0] br_type;
  output [31:0] imm_b;
  output [31:0] imm_i;
  output [31:0] imm_s;
  output [31:0] imm_u;
  output [31:0] imm_j;
  output is_writeback, subtract, shift_right, shift_arith, is_auipc,
         is_load_op, is_store_op, is_br_type, is_jump_op, is_imm;
  wire   \instr[11] , \instr[10] , \instr[9] , \instr[8] , \instr[7] ,
         \instr[19] , \instr[18] , \instr[17] , \instr[16] , \instr[15] ,
         \instr[24] , \instr[23] , \instr[22] , \instr[21] , \instr[20] , n47,
         \instr[14] , \instr[13] , \instr[12] , \instr[3] , \instr[2] ,
         \instr[31] , \instr[30] , \instr[29] , \instr[28] , \instr[27] ,
         \instr[26] , \instr[25] , n1, n4, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n21, n22, n23, n99, n100, n98, n84, n85,
         n86, n87, n90, n92, n94, n95, n96, n97;
  assign imm_j[0] = 1'b0;
  assign imm_u[0] = 1'b0;
  assign imm_u[1] = 1'b0;
  assign imm_u[2] = 1'b0;
  assign imm_u[3] = 1'b0;
  assign imm_u[4] = 1'b0;
  assign imm_u[5] = 1'b0;
  assign imm_u[6] = 1'b0;
  assign imm_u[7] = 1'b0;
  assign imm_u[8] = 1'b0;
  assign imm_u[9] = 1'b0;
  assign imm_u[10] = 1'b0;
  assign imm_u[11] = 1'b0;
  assign imm_b[0] = 1'b0;
  assign alu_op[3] = 1'b0;
  assign alu_op[4] = 1'b0;
  assign alu_op[5] = 1'b0;
  assign alu_op[6] = 1'b0;
  assign alu_op[7] = 1'b0;
  assign alu_op[8] = 1'b0;
  assign alu_op[9] = 1'b0;
  assign alu_op[10] = 1'b0;
  assign alu_op[11] = 1'b0;
  assign alu_op[12] = 1'b0;
  assign alu_op[13] = 1'b0;
  assign alu_op[14] = 1'b0;
  assign alu_op[15] = 1'b0;
  assign alu_op[16] = 1'b0;
  assign alu_op[17] = 1'b0;
  assign alu_op[18] = 1'b0;
  assign alu_op[19] = 1'b0;
  assign alu_op[20] = 1'b0;
  assign alu_op[21] = 1'b0;
  assign alu_op[22] = 1'b0;
  assign alu_op[23] = 1'b0;
  assign alu_op[24] = 1'b0;
  assign alu_op[25] = 1'b0;
  assign alu_op[26] = 1'b0;
  assign alu_op[27] = 1'b0;
  assign alu_op[28] = 1'b0;
  assign alu_op[29] = 1'b0;
  assign alu_op[30] = 1'b0;
  assign alu_op[31] = 1'b0;
  assign imm_s[4] = \instr[11] ;
  assign imm_b[4] = \instr[11] ;
  assign rd[4] = \instr[11] ;
  assign \instr[11]  = instr[11];
  assign imm_s[3] = \instr[10] ;
  assign imm_b[3] = \instr[10] ;
  assign rd[3] = \instr[10] ;
  assign \instr[10]  = instr[10];
  assign imm_s[2] = \instr[9] ;
  assign imm_b[2] = \instr[9] ;
  assign rd[2] = \instr[9] ;
  assign \instr[9]  = instr[9];
  assign imm_s[1] = \instr[8] ;
  assign imm_b[1] = \instr[8] ;
  assign rd[1] = \instr[8] ;
  assign \instr[8]  = instr[8];
  assign imm_s[0] = \instr[7] ;
  assign imm_b[11] = \instr[7] ;
  assign rd[0] = \instr[7] ;
  assign \instr[7]  = instr[7];
  assign imm_j[19] = \instr[19] ;
  assign imm_u[19] = \instr[19] ;
  assign rs1[4] = \instr[19] ;
  assign \instr[19]  = instr[19];
  assign imm_j[18] = \instr[18] ;
  assign imm_u[18] = \instr[18] ;
  assign rs1[3] = \instr[18] ;
  assign \instr[18]  = instr[18];
  assign imm_j[17] = \instr[17] ;
  assign imm_u[17] = \instr[17] ;
  assign rs1[2] = \instr[17] ;
  assign \instr[17]  = instr[17];
  assign imm_j[16] = \instr[16] ;
  assign imm_u[16] = \instr[16] ;
  assign rs1[1] = \instr[16] ;
  assign \instr[16]  = instr[16];
  assign imm_j[15] = \instr[15] ;
  assign imm_u[15] = \instr[15] ;
  assign rs1[0] = \instr[15] ;
  assign \instr[15]  = instr[15];
  assign imm_j[4] = \instr[24] ;
  assign imm_u[24] = \instr[24] ;
  assign imm_i[4] = \instr[24] ;
  assign rs2[4] = \instr[24] ;
  assign \instr[24]  = instr[24];
  assign imm_j[3] = \instr[23] ;
  assign imm_u[23] = \instr[23] ;
  assign imm_i[3] = \instr[23] ;
  assign rs2[3] = \instr[23] ;
  assign \instr[23]  = instr[23];
  assign imm_j[2] = \instr[22] ;
  assign imm_u[22] = \instr[22] ;
  assign imm_i[2] = \instr[22] ;
  assign rs2[2] = \instr[22] ;
  assign \instr[22]  = instr[22];
  assign imm_j[1] = \instr[21] ;
  assign imm_u[21] = \instr[21] ;
  assign imm_i[1] = \instr[21] ;
  assign rs2[1] = \instr[21] ;
  assign \instr[21]  = instr[21];
  assign imm_j[11] = \instr[20] ;
  assign imm_u[20] = \instr[20] ;
  assign imm_i[0] = \instr[20] ;
  assign rs2[0] = \instr[20] ;
  assign \instr[20]  = instr[20];
  assign load_op[2] = \instr[14] ;
  assign store_op[2] = \instr[14] ;
  assign imm_j[14] = \instr[14] ;
  assign comp_op[2] = \instr[14] ;
  assign shift_right = \instr[14] ;
  assign imm_u[14] = \instr[14] ;
  assign \instr[14]  = instr[14];
  assign imm_j[13] = \instr[13] ;
  assign imm_u[13] = \instr[13] ;
  assign store_op[1] = \instr[13] ;
  assign load_op[1] = \instr[13] ;
  assign comp_op[1] = \instr[13] ;
  assign \instr[13]  = instr[13];
  assign imm_j[12] = \instr[12] ;
  assign imm_u[12] = \instr[12] ;
  assign store_op[0] = \instr[12] ;
  assign load_op[0] = \instr[12] ;
  assign comp_op[0] = \instr[12] ;
  assign \instr[12]  = instr[12];
  assign br_type[1] = \instr[3] ;
  assign \instr[3]  = instr[3];
  assign br_type[0] = \instr[2] ;
  assign \instr[2]  = instr[2];
  assign imm_s[17] = \instr[31] ;
  assign imm_s[16] = \instr[31] ;
  assign imm_s[13] = \instr[31] ;
  assign imm_j[26] = \instr[31] ;
  assign imm_j[27] = \instr[31] ;
  assign imm_j[28] = \instr[31] ;
  assign imm_j[29] = \instr[31] ;
  assign imm_j[30] = \instr[31] ;
  assign imm_j[31] = \instr[31] ;
  assign imm_b[30] = \instr[31] ;
  assign imm_b[29] = \instr[31] ;
  assign imm_b[28] = \instr[31] ;
  assign imm_b[27] = \instr[31] ;
  assign imm_b[26] = \instr[31] ;
  assign imm_b[25] = \instr[31] ;
  assign imm_b[24] = \instr[31] ;
  assign imm_b[23] = \instr[31] ;
  assign imm_b[22] = \instr[31] ;
  assign imm_b[21] = \instr[31] ;
  assign imm_b[20] = \instr[31] ;
  assign imm_b[19] = \instr[31] ;
  assign imm_b[18] = \instr[31] ;
  assign imm_b[17] = \instr[31] ;
  assign imm_b[16] = \instr[31] ;
  assign imm_b[15] = \instr[31] ;
  assign imm_b[14] = \instr[31] ;
  assign imm_b[13] = \instr[31] ;
  assign imm_b[12] = \instr[31] ;
  assign imm_s[31] = \instr[31] ;
  assign imm_b[31] = \instr[31] ;
  assign imm_s[30] = \instr[31] ;
  assign imm_s[15] = \instr[31] ;
  assign imm_s[11] = \instr[31] ;
  assign imm_s[27] = \instr[31] ;
  assign imm_s[24] = \instr[31] ;
  assign imm_s[21] = \instr[31] ;
  assign imm_s[18] = \instr[31] ;
  assign imm_s[19] = \instr[31] ;
  assign imm_s[12] = \instr[31] ;
  assign imm_s[29] = \instr[31] ;
  assign imm_s[28] = \instr[31] ;
  assign imm_s[26] = \instr[31] ;
  assign imm_s[25] = \instr[31] ;
  assign imm_s[23] = \instr[31] ;
  assign imm_s[22] = \instr[31] ;
  assign imm_s[20] = \instr[31] ;
  assign imm_s[14] = \instr[31] ;
  assign imm_i[11] = \instr[31] ;
  assign imm_i[12] = \instr[31] ;
  assign imm_i[14] = \instr[31] ;
  assign imm_i[15] = \instr[31] ;
  assign imm_i[17] = \instr[31] ;
  assign imm_i[20] = \instr[31] ;
  assign imm_i[21] = \instr[31] ;
  assign imm_i[23] = \instr[31] ;
  assign imm_i[24] = \instr[31] ;
  assign imm_i[27] = \instr[31] ;
  assign imm_i[29] = \instr[31] ;
  assign imm_i[30] = \instr[31] ;
  assign imm_i[13] = \instr[31] ;
  assign imm_i[16] = \instr[31] ;
  assign imm_i[19] = \instr[31] ;
  assign imm_i[22] = \instr[31] ;
  assign imm_i[18] = \instr[31] ;
  assign imm_i[25] = \instr[31] ;
  assign imm_i[31] = \instr[31] ;
  assign imm_i[28] = \instr[31] ;
  assign imm_i[26] = \instr[31] ;
  assign imm_u[31] = \instr[31] ;
  assign imm_j[20] = \instr[31] ;
  assign imm_j[21] = \instr[31] ;
  assign imm_j[22] = \instr[31] ;
  assign imm_j[23] = \instr[31] ;
  assign imm_j[24] = \instr[31] ;
  assign imm_j[25] = \instr[31] ;
  assign \instr[31]  = instr[31];
  assign imm_j[10] = \instr[30] ;
  assign imm_u[30] = \instr[30] ;
  assign imm_s[10] = \instr[30] ;
  assign imm_i[10] = \instr[30] ;
  assign imm_b[10] = \instr[30] ;
  assign shift_arith = \instr[30] ;
  assign \instr[30]  = instr[30];
  assign imm_j[9] = \instr[29] ;
  assign imm_u[29] = \instr[29] ;
  assign imm_s[9] = \instr[29] ;
  assign imm_i[9] = \instr[29] ;
  assign imm_b[9] = \instr[29] ;
  assign \instr[29]  = instr[29];
  assign imm_j[8] = \instr[28] ;
  assign imm_u[28] = \instr[28] ;
  assign imm_s[8] = \instr[28] ;
  assign imm_i[8] = \instr[28] ;
  assign imm_b[8] = \instr[28] ;
  assign \instr[28]  = instr[28];
  assign imm_j[7] = \instr[27] ;
  assign imm_u[27] = \instr[27] ;
  assign imm_s[7] = \instr[27] ;
  assign imm_i[7] = \instr[27] ;
  assign imm_b[7] = \instr[27] ;
  assign \instr[27]  = instr[27];
  assign imm_j[6] = \instr[26] ;
  assign imm_u[26] = \instr[26] ;
  assign imm_s[6] = \instr[26] ;
  assign imm_i[6] = \instr[26] ;
  assign imm_b[6] = \instr[26] ;
  assign \instr[26]  = instr[26];
  assign imm_j[5] = \instr[25] ;
  assign imm_u[25] = \instr[25] ;
  assign imm_s[5] = \instr[25] ;
  assign imm_i[5] = \instr[25] ;
  assign imm_b[5] = \instr[25] ;
  assign \instr[25]  = instr[25];

  AOI21X1 U13 ( .A(n87), .B(n9), .C(n97), .Y(subtract) );
  NAND3X1 U14 ( .A(\instr[30] ), .B(n11), .C(n12), .Y(n9) );
  NOR3X1 U15 ( .A(is_imm), .B(\instr[14] ), .C(\instr[12] ), .Y(n12) );
  NAND3X1 U17 ( .A(\instr[12] ), .B(n19), .C(n85), .Y(n14) );
  NAND3X1 U20 ( .A(\instr[14] ), .B(n19), .C(n84), .Y(n17) );
  NAND3X1 U22 ( .A(n19), .B(instr[5]), .C(\instr[2] ), .Y(n13) );
  AOI21X1 U24 ( .A(n87), .B(n21), .C(n97), .Y(n47) );
  NAND2X1 U25 ( .A(n11), .B(n22), .Y(n21) );
  XNOR2X1 U26 ( .A(n1), .B(\instr[12] ), .Y(n22) );
  AOI21X1 U27 ( .A(n96), .B(n11), .C(is_br_type), .Y(n8) );
  NOR3X1 U29 ( .A(instr[4]), .B(instr[6]), .C(n97), .Y(n23) );
  NOR3X1 U32 ( .A(is_imm), .B(instr[4]), .C(n4), .Y(is_br_type) );
  NOR3X1 U33 ( .A(n7), .B(instr[5]), .C(n95), .Y(is_auipc) );
  OR2X1 U3 ( .A(\instr[2] ), .B(\instr[12] ), .Y(n18) );
  INVX1 U4 ( .A(n18), .Y(n84) );
  OR2X1 U5 ( .A(n96), .B(\instr[2] ), .Y(n15) );
  INVX1 U6 ( .A(n15), .Y(n85) );
  BUFX2 U7 ( .A(n13), .Y(n86) );
  BUFX2 U8 ( .A(n8), .Y(n87) );
  AND2X2 U9 ( .A(n86), .B(n14), .Y(n99) );
  INVX1 U10 ( .A(n99), .Y(alu_op[2]) );
  BUFX2 U11 ( .A(n47), .Y(alu_op[0]) );
  INVX1 U12 ( .A(n92), .Y(n90) );
  INVX1 U16 ( .A(n90), .Y(alu_op[1]) );
  AND2X2 U18 ( .A(n86), .B(n17), .Y(n100) );
  INVX1 U19 ( .A(n100), .Y(n92) );
  AND2X1 U21 ( .A(n94), .B(n95), .Y(n98) );
  INVX1 U23 ( .A(n98), .Y(is_writeback) );
  AND2X1 U28 ( .A(is_br_type), .B(\instr[2] ), .Y(is_jump_op) );
  INVX1 U30 ( .A(is_jump_op), .Y(n94) );
  AND2X1 U31 ( .A(n11), .B(n6), .Y(n19) );
  INVX1 U34 ( .A(n19), .Y(n95) );
  OR2X1 U35 ( .A(n1), .B(\instr[14] ), .Y(n16) );
  INVX1 U36 ( .A(n16), .Y(n96) );
  AND2X1 U37 ( .A(n7), .B(n6), .Y(n10) );
  INVX1 U38 ( .A(n10), .Y(n97) );
  AND2X1 U39 ( .A(is_imm), .B(n23), .Y(is_load_op) );
  INVX1 U40 ( .A(instr[5]), .Y(is_imm) );
  AND2X1 U41 ( .A(instr[4]), .B(n4), .Y(n11) );
  AND2X1 U42 ( .A(instr[5]), .B(n23), .Y(is_store_op) );
  INVX1 U43 ( .A(\instr[13] ), .Y(n1) );
  INVX1 U44 ( .A(instr[6]), .Y(n4) );
  INVX1 U45 ( .A(\instr[2] ), .Y(n7) );
  INVX1 U46 ( .A(\instr[3] ), .Y(n6) );
endmodule


module full_adder_32 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n2, n3, n13, n14;

  XOR2X1 U2 ( .A(n14), .B(n2), .Y(sum) );
  OAI21X1 U3 ( .A(n2), .B(n14), .C(n13), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n2) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n3) );
  INVX1 U4 ( .A(n3), .Y(n13) );
  INVX1 U6 ( .A(cin), .Y(n14) );
endmodule


module full_adder_31 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n1, n2, n3, n16;

  XOR2X1 U2 ( .A(n1), .B(n2), .Y(sum) );
  OAI21X1 U3 ( .A(n2), .B(n1), .C(n16), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n2) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n3) );
  INVX1 U4 ( .A(n3), .Y(n16) );
  INVX1 U6 ( .A(cin), .Y(n1) );
endmodule


module full_adder_30 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n1, n2, n3, n16;

  XOR2X1 U2 ( .A(n1), .B(n2), .Y(sum) );
  OAI21X1 U3 ( .A(n2), .B(n1), .C(n16), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n2) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n3) );
  INVX1 U4 ( .A(n3), .Y(n16) );
  INVX1 U6 ( .A(cin), .Y(n1) );
endmodule


module full_adder_29 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n1, n2, n3, n15;

  XOR2X1 U2 ( .A(n1), .B(n2), .Y(sum) );
  OAI21X1 U3 ( .A(n2), .B(n1), .C(n15), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n2) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n3) );
  INVX1 U4 ( .A(n3), .Y(n15) );
  INVX1 U6 ( .A(cin), .Y(n1) );
endmodule


module full_adder_26 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n1, n2, n3, n16;

  XOR2X1 U2 ( .A(n1), .B(n2), .Y(sum) );
  OAI21X1 U3 ( .A(n2), .B(n1), .C(n16), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n2) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n3) );
  INVX1 U4 ( .A(n3), .Y(n16) );
  INVX1 U6 ( .A(cin), .Y(n1) );
endmodule


module full_adder_25 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n1, n2, n3, n15;

  XOR2X1 U2 ( .A(n1), .B(n2), .Y(sum) );
  OAI21X1 U3 ( .A(n2), .B(n1), .C(n15), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n2) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n3) );
  INVX1 U4 ( .A(n3), .Y(n15) );
  INVX1 U6 ( .A(cin), .Y(n1) );
endmodule


module full_adder_22 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n1, n2, n3, n16;

  XOR2X1 U2 ( .A(n1), .B(n2), .Y(sum) );
  OAI21X1 U3 ( .A(n2), .B(n1), .C(n16), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n2) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n3) );
  INVX1 U4 ( .A(n3), .Y(n16) );
  INVX1 U6 ( .A(cin), .Y(n1) );
endmodule


module full_adder_21 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n1, n2, n3, n15;

  XOR2X1 U2 ( .A(n1), .B(n2), .Y(sum) );
  OAI21X1 U3 ( .A(n2), .B(n1), .C(n15), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n2) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n3) );
  INVX1 U4 ( .A(n3), .Y(n15) );
  INVX1 U6 ( .A(cin), .Y(n1) );
endmodule


module full_adder_16 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n1, n2, n3, n15;

  XOR2X1 U2 ( .A(n1), .B(n2), .Y(sum) );
  OAI21X1 U3 ( .A(n2), .B(n1), .C(n15), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n2) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n3) );
  INVX1 U4 ( .A(n3), .Y(n15) );
  INVX1 U6 ( .A(cin), .Y(n1) );
endmodule


module full_adder_14 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n1, n2, n3, n16;

  XOR2X1 U2 ( .A(n1), .B(n2), .Y(sum) );
  OAI21X1 U3 ( .A(n2), .B(n1), .C(n16), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n2) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n3) );
  INVX1 U4 ( .A(n3), .Y(n16) );
  INVX1 U6 ( .A(cin), .Y(n1) );
endmodule


module full_adder_10 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n1, n2, n3, n16;

  XOR2X1 U2 ( .A(n1), .B(n2), .Y(sum) );
  OAI21X1 U3 ( .A(n2), .B(n1), .C(n16), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n2) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n3) );
  INVX1 U4 ( .A(n3), .Y(n16) );
  INVX1 U6 ( .A(cin), .Y(n1) );
endmodule


module full_adder_9 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n1, n2, n3, n15;

  XOR2X1 U2 ( .A(n1), .B(n2), .Y(sum) );
  OAI21X1 U3 ( .A(n2), .B(n1), .C(n15), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n2) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n3) );
  INVX1 U4 ( .A(n3), .Y(n15) );
  INVX1 U6 ( .A(cin), .Y(n1) );
endmodule


module full_adder_7 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n1, n2, n3, n16;

  XOR2X1 U2 ( .A(n1), .B(n2), .Y(sum) );
  OAI21X1 U3 ( .A(n2), .B(n1), .C(n16), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n2) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n3) );
  INVX1 U4 ( .A(n3), .Y(n16) );
  INVX1 U6 ( .A(cin), .Y(n1) );
endmodule


module full_adder_2 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n16, n1, n2, n3, n17;
  assign cout = n16;

  XOR2X1 U2 ( .A(n1), .B(n2), .Y(sum) );
  OAI21X1 U3 ( .A(n2), .B(n1), .C(n17), .Y(n16) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n2) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n3) );
  INVX1 U4 ( .A(n3), .Y(n17) );
  INVX1 U6 ( .A(cin), .Y(n1) );
endmodule


module full_adder_1 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n1, n2, n3, n16;

  XOR2X1 U2 ( .A(n1), .B(n2), .Y(sum) );
  OAI21X1 U3 ( .A(n2), .B(n1), .C(n16), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n2) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n3) );
  INVX1 U4 ( .A(n3), .Y(n16) );
  INVX1 U6 ( .A(cin), .Y(n1) );
endmodule


module full_adder_3 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n16, n17, n18, n19;

  XOR2X1 U2 ( .A(n19), .B(n18), .Y(sum) );
  OAI21X1 U3 ( .A(n18), .B(n19), .C(n16), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n18) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n17) );
  INVX1 U4 ( .A(n17), .Y(n16) );
  INVX1 U6 ( .A(cin), .Y(n19) );
endmodule


module full_adder_4 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n16, n17, n18, n19;

  XOR2X1 U2 ( .A(n19), .B(n18), .Y(sum) );
  OAI21X1 U3 ( .A(n18), .B(n19), .C(n16), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n18) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n17) );
  INVX1 U4 ( .A(n17), .Y(n16) );
  INVX1 U6 ( .A(cin), .Y(n19) );
endmodule


module full_adder_8 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n16, n17, n18, n19;

  XOR2X1 U2 ( .A(n19), .B(n18), .Y(sum) );
  OAI21X1 U3 ( .A(n18), .B(n19), .C(n16), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n18) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n17) );
  INVX1 U4 ( .A(n17), .Y(n16) );
  INVX1 U6 ( .A(cin), .Y(n19) );
endmodule


module full_adder_13 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n16, n17, n18, n19;

  XOR2X1 U2 ( .A(n19), .B(n18), .Y(sum) );
  OAI21X1 U3 ( .A(n18), .B(n19), .C(n16), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n18) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n17) );
  INVX1 U4 ( .A(n17), .Y(n16) );
  INVX1 U6 ( .A(cin), .Y(n19) );
endmodule


module full_adder_5 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n15, n16, n17, n18;

  XOR2X1 U2 ( .A(n18), .B(n17), .Y(sum) );
  OAI21X1 U3 ( .A(n17), .B(n18), .C(n15), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n17) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n16) );
  INVX1 U4 ( .A(n16), .Y(n15) );
  INVX1 U6 ( .A(cin), .Y(n18) );
endmodule


module full_adder_17 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n15, n16, n17, n18;

  XOR2X1 U2 ( .A(n18), .B(n17), .Y(sum) );
  OAI21X1 U3 ( .A(n17), .B(n18), .C(n15), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n17) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n16) );
  INVX1 U4 ( .A(n16), .Y(n15) );
  INVX1 U6 ( .A(cin), .Y(n18) );
endmodule


module full_adder_20 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n15, n16, n17, n18;

  XOR2X1 U2 ( .A(n18), .B(n17), .Y(sum) );
  OAI21X1 U3 ( .A(n17), .B(n18), .C(n15), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n17) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n16) );
  INVX1 U4 ( .A(n16), .Y(n15) );
  INVX1 U6 ( .A(cin), .Y(n18) );
endmodule


module full_adder_27 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n15, n16, n17, n18;

  XOR2X1 U2 ( .A(n18), .B(n17), .Y(sum) );
  OAI21X1 U3 ( .A(n17), .B(n18), .C(n15), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n17) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n16) );
  INVX1 U4 ( .A(n16), .Y(n15) );
  INVX1 U6 ( .A(cin), .Y(n18) );
endmodule


module full_adder_28 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n15, n16, n17, n18;

  XOR2X1 U2 ( .A(n18), .B(n17), .Y(sum) );
  OAI21X1 U3 ( .A(n17), .B(n18), .C(n15), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n17) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n16) );
  INVX1 U4 ( .A(n16), .Y(n15) );
  INVX1 U6 ( .A(cin), .Y(n18) );
endmodule


module full_adder_6 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n16, n17, n18, n19;

  XOR2X1 U2 ( .A(n19), .B(n18), .Y(sum) );
  OAI21X1 U3 ( .A(n18), .B(n19), .C(n16), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n18) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n17) );
  INVX1 U4 ( .A(n17), .Y(n16) );
  INVX1 U6 ( .A(cin), .Y(n19) );
endmodule


module full_adder_11 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n16, n17, n18, n19;

  XOR2X1 U2 ( .A(n19), .B(n18), .Y(sum) );
  OAI21X1 U3 ( .A(n18), .B(n19), .C(n16), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n18) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n17) );
  INVX1 U4 ( .A(n17), .Y(n16) );
  INVX1 U6 ( .A(cin), .Y(n19) );
endmodule


module full_adder_18 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n16, n17, n18, n19;

  XOR2X1 U2 ( .A(n19), .B(n18), .Y(sum) );
  OAI21X1 U3 ( .A(n18), .B(n19), .C(n16), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n18) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n17) );
  INVX1 U4 ( .A(n17), .Y(n16) );
  INVX1 U6 ( .A(cin), .Y(n19) );
endmodule


module full_adder_12 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n16, n17, n18, n19;

  XOR2X1 U2 ( .A(n19), .B(n18), .Y(sum) );
  OAI21X1 U3 ( .A(n18), .B(n19), .C(n16), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n18) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n17) );
  INVX1 U4 ( .A(n17), .Y(n16) );
  INVX1 U6 ( .A(cin), .Y(n19) );
endmodule


module full_adder_15 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n15, n16, n17, n18;

  XOR2X1 U2 ( .A(n18), .B(n17), .Y(sum) );
  OAI21X1 U3 ( .A(n17), .B(n18), .C(n15), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n17) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n16) );
  INVX1 U4 ( .A(n16), .Y(n15) );
  INVX1 U6 ( .A(cin), .Y(n18) );
endmodule


module full_adder_19 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n15, n16, n17, n18;

  XOR2X1 U2 ( .A(n18), .B(n17), .Y(sum) );
  OAI21X1 U3 ( .A(n17), .B(n18), .C(n15), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n17) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n16) );
  INVX1 U4 ( .A(n16), .Y(n15) );
  INVX1 U6 ( .A(cin), .Y(n18) );
endmodule


module full_adder_23 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n15, n16, n17, n18;

  XOR2X1 U2 ( .A(n18), .B(n17), .Y(sum) );
  OAI21X1 U3 ( .A(n17), .B(n18), .C(n15), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n17) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n16) );
  INVX1 U4 ( .A(n16), .Y(n15) );
  INVX1 U6 ( .A(cin), .Y(n18) );
endmodule


module full_adder_24 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n15, n16, n17, n18;

  XOR2X1 U2 ( .A(n18), .B(n17), .Y(sum) );
  OAI21X1 U3 ( .A(n17), .B(n18), .C(n15), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n17) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n16) );
  INVX1 U4 ( .A(n16), .Y(n15) );
  INVX1 U6 ( .A(cin), .Y(n18) );
endmodule


module ripple_carry_adder ( sub, a, b, sum, n, z, c, v );
  input [31:0] a;
  input [31:0] b;
  output [31:0] sum;
  input sub;
  output n, z, c, v;
  wire   n44, n46, n45, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n47, n48, n49, n50, n51;
  wire   [31:1] carry;
  wire   [31:0] b_mod;
  assign n = n44;
  assign sum[31] = n44;
  assign c = n46;
  assign z = n45;

  full_adder_32 \genblk1[0].full_adder_i  ( .a(a[0]), .b(b_mod[0]), .cin(n50), 
        .sum(sum[0]), .cout(carry[1]) );
  full_adder_31 \genblk1[1].full_adder_i  ( .a(a[1]), .b(b_mod[1]), .cin(
        carry[1]), .sum(sum[1]), .cout(carry[2]) );
  full_adder_30 \genblk1[2].full_adder_i  ( .a(a[2]), .b(b_mod[2]), .cin(
        carry[2]), .sum(sum[2]), .cout(carry[3]) );
  full_adder_29 \genblk1[3].full_adder_i  ( .a(a[3]), .b(b_mod[3]), .cin(
        carry[3]), .sum(sum[3]), .cout(carry[4]) );
  full_adder_28 \genblk1[4].full_adder_i  ( .a(a[4]), .b(b_mod[4]), .cin(
        carry[4]), .sum(sum[4]), .cout(carry[5]) );
  full_adder_27 \genblk1[5].full_adder_i  ( .a(a[5]), .b(b_mod[5]), .cin(
        carry[5]), .sum(sum[5]), .cout(carry[6]) );
  full_adder_26 \genblk1[6].full_adder_i  ( .a(a[6]), .b(b_mod[6]), .cin(
        carry[6]), .sum(sum[6]), .cout(carry[7]) );
  full_adder_25 \genblk1[7].full_adder_i  ( .a(a[7]), .b(b_mod[7]), .cin(
        carry[7]), .sum(sum[7]), .cout(carry[8]) );
  full_adder_24 \genblk1[8].full_adder_i  ( .a(a[8]), .b(b_mod[8]), .cin(
        carry[8]), .sum(sum[8]), .cout(carry[9]) );
  full_adder_23 \genblk1[9].full_adder_i  ( .a(a[9]), .b(b_mod[9]), .cin(
        carry[9]), .sum(sum[9]), .cout(carry[10]) );
  full_adder_22 \genblk1[10].full_adder_i  ( .a(a[10]), .b(b_mod[10]), .cin(
        carry[10]), .sum(sum[10]), .cout(carry[11]) );
  full_adder_21 \genblk1[11].full_adder_i  ( .a(a[11]), .b(b_mod[11]), .cin(
        carry[11]), .sum(sum[11]), .cout(carry[12]) );
  full_adder_20 \genblk1[12].full_adder_i  ( .a(a[12]), .b(b_mod[12]), .cin(
        carry[12]), .sum(sum[12]), .cout(carry[13]) );
  full_adder_19 \genblk1[13].full_adder_i  ( .a(a[13]), .b(b_mod[13]), .cin(
        carry[13]), .sum(sum[13]), .cout(carry[14]) );
  full_adder_18 \genblk1[14].full_adder_i  ( .a(a[14]), .b(b_mod[14]), .cin(
        carry[14]), .sum(sum[14]), .cout(carry[15]) );
  full_adder_17 \genblk1[15].full_adder_i  ( .a(a[15]), .b(b_mod[15]), .cin(
        carry[15]), .sum(sum[15]), .cout(carry[16]) );
  full_adder_16 \genblk1[16].full_adder_i  ( .a(a[16]), .b(b_mod[16]), .cin(
        carry[16]), .sum(sum[16]), .cout(carry[17]) );
  full_adder_15 \genblk1[17].full_adder_i  ( .a(a[17]), .b(b_mod[17]), .cin(
        carry[17]), .sum(sum[17]), .cout(carry[18]) );
  full_adder_14 \genblk1[18].full_adder_i  ( .a(a[18]), .b(b_mod[18]), .cin(
        carry[18]), .sum(sum[18]), .cout(carry[19]) );
  full_adder_13 \genblk1[19].full_adder_i  ( .a(a[19]), .b(b_mod[19]), .cin(
        carry[19]), .sum(sum[19]), .cout(carry[20]) );
  full_adder_12 \genblk1[20].full_adder_i  ( .a(a[20]), .b(b_mod[20]), .cin(
        carry[20]), .sum(sum[20]), .cout(carry[21]) );
  full_adder_11 \genblk1[21].full_adder_i  ( .a(a[21]), .b(b_mod[21]), .cin(
        carry[21]), .sum(sum[21]), .cout(carry[22]) );
  full_adder_10 \genblk1[22].full_adder_i  ( .a(a[22]), .b(b_mod[22]), .cin(
        carry[22]), .sum(sum[22]), .cout(carry[23]) );
  full_adder_9 \genblk1[23].full_adder_i  ( .a(a[23]), .b(b_mod[23]), .cin(
        carry[23]), .sum(sum[23]), .cout(carry[24]) );
  full_adder_8 \genblk1[24].full_adder_i  ( .a(a[24]), .b(b_mod[24]), .cin(
        carry[24]), .sum(sum[24]), .cout(carry[25]) );
  full_adder_7 \genblk1[25].full_adder_i  ( .a(a[25]), .b(b_mod[25]), .cin(
        carry[25]), .sum(sum[25]), .cout(carry[26]) );
  full_adder_6 \genblk1[26].full_adder_i  ( .a(a[26]), .b(b_mod[26]), .cin(
        carry[26]), .sum(sum[26]), .cout(carry[27]) );
  full_adder_5 \genblk1[27].full_adder_i  ( .a(a[27]), .b(b_mod[27]), .cin(
        carry[27]), .sum(sum[27]), .cout(carry[28]) );
  full_adder_4 \genblk1[28].full_adder_i  ( .a(a[28]), .b(b_mod[28]), .cin(
        carry[28]), .sum(sum[28]), .cout(carry[29]) );
  full_adder_3 \genblk1[29].full_adder_i  ( .a(a[29]), .b(b_mod[29]), .cin(
        carry[29]), .sum(sum[29]), .cout(carry[30]) );
  full_adder_2 \genblk1[30].full_adder_i  ( .a(a[30]), .b(b_mod[30]), .cin(
        carry[30]), .sum(sum[30]), .cout(carry[31]) );
  full_adder_1 \genblk1[31].full_adder_i  ( .a(a[31]), .b(b_mod[31]), .cin(
        carry[31]), .sum(n44), .cout(n46) );
  XOR2X1 U10 ( .A(n46), .B(carry[31]), .Y(v) );
  NOR3X1 U11 ( .A(n48), .B(n47), .C(n49), .Y(n45) );
  NOR3X1 U13 ( .A(n6), .B(sum[13]), .C(sum[12]), .Y(n5) );
  NOR3X1 U14 ( .A(n7), .B(sum[0]), .C(n44), .Y(n4) );
  NOR3X1 U16 ( .A(n10), .B(sum[20]), .C(sum[1]), .Y(n9) );
  NOR3X1 U17 ( .A(n11), .B(sum[17]), .C(sum[16]), .Y(n8) );
  NAND3X1 U18 ( .A(n12), .B(n13), .C(n14), .Y(n1) );
  NOR3X1 U19 ( .A(n17), .B(sum[7]), .C(sum[6]), .Y(n16) );
  NOR3X1 U20 ( .A(n18), .B(sum[3]), .C(sum[30]), .Y(n15) );
  NOR3X1 U21 ( .A(n19), .B(sum[28]), .C(sum[27]), .Y(n13) );
  NOR3X1 U22 ( .A(n20), .B(sum[24]), .C(sum[23]), .Y(n12) );
  XOR2X1 U23 ( .A(n50), .B(b[9]), .Y(b_mod[9]) );
  XOR2X1 U24 ( .A(n50), .B(b[8]), .Y(b_mod[8]) );
  XOR2X1 U25 ( .A(n50), .B(b[7]), .Y(b_mod[7]) );
  XOR2X1 U26 ( .A(n50), .B(b[6]), .Y(b_mod[6]) );
  XOR2X1 U27 ( .A(n50), .B(b[5]), .Y(b_mod[5]) );
  XOR2X1 U28 ( .A(n50), .B(b[4]), .Y(b_mod[4]) );
  XOR2X1 U29 ( .A(n50), .B(b[3]), .Y(b_mod[3]) );
  XOR2X1 U30 ( .A(n50), .B(b[31]), .Y(b_mod[31]) );
  XOR2X1 U31 ( .A(n50), .B(b[30]), .Y(b_mod[30]) );
  XOR2X1 U32 ( .A(n50), .B(b[2]), .Y(b_mod[2]) );
  XOR2X1 U33 ( .A(n50), .B(b[29]), .Y(b_mod[29]) );
  XOR2X1 U34 ( .A(n50), .B(b[28]), .Y(b_mod[28]) );
  XOR2X1 U35 ( .A(n50), .B(b[27]), .Y(b_mod[27]) );
  XOR2X1 U36 ( .A(n50), .B(b[26]), .Y(b_mod[26]) );
  XOR2X1 U37 ( .A(n50), .B(b[25]), .Y(b_mod[25]) );
  XOR2X1 U38 ( .A(n50), .B(b[24]), .Y(b_mod[24]) );
  XOR2X1 U39 ( .A(n50), .B(b[23]), .Y(b_mod[23]) );
  XOR2X1 U40 ( .A(n50), .B(b[22]), .Y(b_mod[22]) );
  XOR2X1 U41 ( .A(n50), .B(b[21]), .Y(b_mod[21]) );
  XOR2X1 U42 ( .A(n50), .B(b[20]), .Y(b_mod[20]) );
  XOR2X1 U43 ( .A(n50), .B(b[1]), .Y(b_mod[1]) );
  XOR2X1 U44 ( .A(n50), .B(b[19]), .Y(b_mod[19]) );
  XOR2X1 U45 ( .A(n50), .B(b[18]), .Y(b_mod[18]) );
  XOR2X1 U46 ( .A(n50), .B(b[17]), .Y(b_mod[17]) );
  XOR2X1 U47 ( .A(n50), .B(b[16]), .Y(b_mod[16]) );
  XOR2X1 U48 ( .A(n50), .B(b[15]), .Y(b_mod[15]) );
  XOR2X1 U49 ( .A(n50), .B(b[14]), .Y(b_mod[14]) );
  XOR2X1 U50 ( .A(n50), .B(b[13]), .Y(b_mod[13]) );
  XOR2X1 U51 ( .A(n50), .B(b[12]), .Y(b_mod[12]) );
  XOR2X1 U52 ( .A(n50), .B(b[11]), .Y(b_mod[11]) );
  XOR2X1 U53 ( .A(n50), .B(b[10]), .Y(b_mod[10]) );
  XOR2X1 U54 ( .A(n50), .B(b[0]), .Y(b_mod[0]) );
  AND2X1 U1 ( .A(n8), .B(n9), .Y(n2) );
  INVX1 U2 ( .A(n2), .Y(n47) );
  BUFX2 U3 ( .A(n1), .Y(n48) );
  AND2X1 U4 ( .A(n4), .B(n5), .Y(n3) );
  INVX1 U5 ( .A(n3), .Y(n49) );
  OR2X1 U6 ( .A(sum[11]), .B(sum[10]), .Y(n7) );
  AND2X1 U7 ( .A(n15), .B(n16), .Y(n14) );
  OR2X1 U8 ( .A(sum[9]), .B(sum[8]), .Y(n17) );
  OR2X1 U9 ( .A(sum[2]), .B(sum[29]), .Y(n19) );
  OR2X1 U12 ( .A(sum[26]), .B(sum[25]), .Y(n20) );
  OR2X1 U15 ( .A(sum[22]), .B(sum[21]), .Y(n10) );
  OR2X1 U55 ( .A(sum[19]), .B(sum[18]), .Y(n11) );
  OR2X1 U56 ( .A(sum[15]), .B(sum[14]), .Y(n6) );
  OR2X1 U57 ( .A(sum[5]), .B(sum[4]), .Y(n18) );
  INVX1 U58 ( .A(n51), .Y(n50) );
  INVX1 U59 ( .A(sub), .Y(n51) );
endmodule


module shifter ( sr, arith, shamt, data_in, data_out );
  input [4:0] shamt;
  input [31:0] data_in;
  output [31:0] data_out;
  input sr, arith;
  wire   n1, n7, n8, n11, n12, n16, n17, n18, n19, n20, n23, n26, n28, n29,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n70, n71, n72, n73, n74,
         n75, n76, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n189, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228,
         n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239,
         n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, n250,
         n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261,
         n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, n272,
         n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283,
         n284, n285, n286, n288, n289, n290, n291, n292, n293, n294, n295,
         n296, n297, n298, n299, n300, n302, n304, n305, n306, n307, n308,
         n309, n310, n311, n312, n313, n314, n315, n316, n317, n318, n319,
         n320, n321, n322, n323, n324, n325, n326, n327, n328, n329, n330,
         n331, n332, n333, n334, n335, n336, n337, n338, n339, n340, n341,
         n342, n343, n344, n345, n346, n347, n348, n349, n350, n351, n352,
         n353, n354, n355, n356, n357, n358, n359, n360, n361, n362, n363,
         n365, n757, n758, n759, n760, n761, n762, n763, n764, n765, n766,
         n767, n768, n769, n770, n771, n772, n773, n774, n775, n776, n777,
         n778, n779, n780, n781, n782, n783, n784, n785, n786, n787, n788,
         n789, n790, n791, n792, n793, n794, n795, n796, n797, n798, n799,
         n800, n801, n802, n803, n804, n805, n806, n807, n808, n809, n810,
         n811, n812, n813, n814, n815, n816, n817, n818, n819, n820, n821,
         n822, n823, n824, n825, n826, n827, n828, n829, n830, n831, n832,
         n833, n834, n835, n836, n837, n838, n839, n840, n841, n842, n843,
         n844, n845, n846, n847, n848, n849, n850, n851, n852, n853, n854,
         n855, n856, n857, n858, n859, n860, n861, n862, n863, n864, n865,
         n866, n867, n868, n869, n870, n871, n872, n873, n874, n875, n876,
         n877, n878, n879, n880, n881, n882, n883, n884, n885, n886, n887,
         n888, n889, n890, n891, n892, n893, n894, n895, n896, n897, n898,
         n899, n900, n901, n902, n903, n904, n905, n906, n907, n908, n909,
         n910, n911, n912, n913, n914, n915, n916, n917, n918, n919, n920,
         n921, n922, n923, n924, n925, n926, n927, n928, n929, n930, n931,
         n932, n933, n934, n935, n936, n937, n938, n939, n940, n941, n942;

  OAI21X1 U41 ( .A(n12), .B(n942), .C(n31), .Y(data_out[9]) );
  NAND2X1 U42 ( .A(n32), .B(n941), .Y(n31) );
  NAND3X1 U43 ( .A(n33), .B(n884), .C(n808), .Y(data_out[8]) );
  AOI22X1 U44 ( .A(n912), .B(n868), .C(n895), .D(n39), .Y(n35) );
  NAND2X1 U45 ( .A(n940), .B(n760), .Y(n33) );
  NAND3X1 U46 ( .A(n41), .B(n788), .C(n818), .Y(data_out[7]) );
  AOI21X1 U47 ( .A(n921), .B(n824), .C(n46), .Y(n43) );
  OAI21X1 U48 ( .A(n17), .B(n888), .C(n894), .Y(n46) );
  AOI22X1 U50 ( .A(n50), .B(n837), .C(n926), .D(n868), .Y(n41) );
  NAND3X1 U51 ( .A(n53), .B(n787), .C(n817), .Y(data_out[6]) );
  AOI21X1 U52 ( .A(n920), .B(n825), .C(n57), .Y(n55) );
  OAI21X1 U53 ( .A(n885), .B(n888), .C(n894), .Y(n57) );
  AOI22X1 U55 ( .A(n50), .B(n836), .C(n926), .D(n842), .Y(n53) );
  NAND3X1 U56 ( .A(n62), .B(n786), .C(n816), .Y(data_out[5]) );
  AOI21X1 U57 ( .A(n919), .B(n826), .C(n66), .Y(n64) );
  OAI21X1 U58 ( .A(n16), .B(n888), .C(n894), .Y(n66) );
  AOI22X1 U60 ( .A(n50), .B(n835), .C(n904), .D(n758), .Y(n62) );
  NAND3X1 U61 ( .A(n70), .B(n785), .C(n815), .Y(data_out[4]) );
  AOI21X1 U62 ( .A(n918), .B(n827), .C(n74), .Y(n72) );
  OAI21X1 U63 ( .A(n7), .B(n888), .C(n894), .Y(n74) );
  AOI22X1 U65 ( .A(n50), .B(n834), .C(n903), .D(n757), .Y(n70) );
  NAND3X1 U66 ( .A(n78), .B(n784), .C(n814), .Y(data_out[3]) );
  AOI21X1 U67 ( .A(n919), .B(n828), .C(n82), .Y(n80) );
  OAI21X1 U68 ( .A(n877), .B(n888), .C(n894), .Y(n82) );
  AOI22X1 U71 ( .A(n50), .B(n838), .C(n909), .D(n85), .Y(n78) );
  NAND3X1 U72 ( .A(n86), .B(n889), .C(n807), .Y(data_out[31]) );
  AOI22X1 U73 ( .A(n929), .B(n869), .C(n91), .D(n942), .Y(n88) );
  NAND2X1 U74 ( .A(n915), .B(n39), .Y(n86) );
  NAND3X1 U75 ( .A(n92), .B(n889), .C(n806), .Y(data_out[30]) );
  AOI22X1 U76 ( .A(n925), .B(n8), .C(n929), .D(n871), .Y(n93) );
  NAND2X1 U77 ( .A(n95), .B(n941), .Y(n92) );
  NAND3X1 U78 ( .A(n96), .B(n783), .C(n805), .Y(data_out[2]) );
  AOI22X1 U79 ( .A(n881), .B(n99), .C(n926), .D(n870), .Y(n98) );
  AOI21X1 U81 ( .A(n918), .B(n829), .C(n20), .Y(n96) );
  NAND3X1 U82 ( .A(n103), .B(n782), .C(n804), .Y(data_out[29]) );
  AOI22X1 U83 ( .A(n924), .B(n99), .C(n929), .D(n870), .Y(n105) );
  OAI21X1 U85 ( .A(n875), .B(n891), .C(n107), .Y(n101) );
  NAND2X1 U86 ( .A(n167), .B(n819), .Y(n107) );
  AOI21X1 U87 ( .A(n904), .B(n829), .C(n1), .Y(n103) );
  AOI22X1 U89 ( .A(n936), .B(n846), .C(n934), .D(n839), .Y(n110) );
  AOI22X1 U90 ( .A(n938), .B(n830), .C(n933), .D(n865), .Y(n109) );
  NAND3X1 U91 ( .A(n118), .B(n781), .C(n813), .Y(data_out[28]) );
  AOI21X1 U92 ( .A(n903), .B(n828), .C(n121), .Y(n120) );
  OAI21X1 U93 ( .A(n877), .B(n887), .C(n889), .Y(n121) );
  AOI22X1 U95 ( .A(n111), .B(n845), .C(n934), .D(n840), .Y(n124) );
  AOI22X1 U96 ( .A(n939), .B(n831), .C(n932), .D(n864), .Y(n123) );
  AOI22X1 U98 ( .A(n879), .B(n85), .C(n928), .D(n867), .Y(n118) );
  NAND3X1 U99 ( .A(n129), .B(n780), .C(n812), .Y(data_out[27]) );
  AOI21X1 U100 ( .A(n909), .B(n827), .C(n132), .Y(n131) );
  OAI21X1 U101 ( .A(n7), .B(n887), .C(n889), .Y(n132) );
  AOI22X1 U103 ( .A(n933), .B(n846), .C(n936), .D(n851), .Y(n134) );
  AOI22X1 U104 ( .A(n938), .B(n839), .C(n934), .D(n865), .Y(n133) );
  AOI22X1 U106 ( .A(n925), .B(n757), .C(n928), .D(n833), .Y(n129) );
  NAND3X1 U107 ( .A(n136), .B(n779), .C(n811), .Y(data_out[26]) );
  AOI21X1 U108 ( .A(n908), .B(n826), .C(n139), .Y(n138) );
  OAI21X1 U109 ( .A(n16), .B(n887), .C(n889), .Y(n139) );
  AOI22X1 U111 ( .A(n933), .B(n845), .C(n938), .D(n840), .Y(n141) );
  AOI22X1 U112 ( .A(n934), .B(n864), .C(n936), .D(n863), .Y(n140) );
  AOI22X1 U114 ( .A(n921), .B(n758), .C(n928), .D(n866), .Y(n136) );
  NAND3X1 U115 ( .A(n143), .B(n778), .C(n810), .Y(data_out[25]) );
  AOI21X1 U116 ( .A(n907), .B(n825), .C(n146), .Y(n145) );
  OAI21X1 U117 ( .A(n885), .B(n887), .C(n889), .Y(n146) );
  AOI22X1 U119 ( .A(n111), .B(n860), .C(n934), .D(n846), .Y(n148) );
  AOI22X1 U120 ( .A(n933), .B(n851), .C(n938), .D(n865), .Y(n147) );
  AOI22X1 U122 ( .A(n920), .B(n873), .C(n928), .D(n842), .Y(n143) );
  NAND3X1 U123 ( .A(n150), .B(n777), .C(n809), .Y(data_out[24]) );
  AOI21X1 U124 ( .A(n906), .B(n824), .C(n153), .Y(n152) );
  OAI21X1 U125 ( .A(n17), .B(n887), .C(n889), .Y(n153) );
  NAND3X1 U126 ( .A(n23), .B(n154), .C(sr), .Y(n87) );
  AOI22X1 U129 ( .A(n113), .B(n845), .C(n938), .D(n864), .Y(n156) );
  AOI22X1 U130 ( .A(n111), .B(n862), .C(n932), .D(n863), .Y(n155) );
  AOI22X1 U132 ( .A(n917), .B(n872), .C(n928), .D(n868), .Y(n150) );
  NAND3X1 U133 ( .A(n158), .B(n883), .C(n803), .Y(data_out[23]) );
  AOI22X1 U134 ( .A(n916), .B(n868), .C(n50), .D(n39), .Y(n160) );
  NAND2X1 U135 ( .A(n760), .B(n941), .Y(n158) );
  AOI22X1 U137 ( .A(n167), .B(n869), .C(n874), .D(n872), .Y(n163) );
  OAI21X1 U139 ( .A(sr), .B(n12), .C(n166), .Y(data_out[22]) );
  NAND2X1 U140 ( .A(n940), .B(n32), .Y(n166) );
  OAI21X1 U141 ( .A(n885), .B(n890), .C(n168), .Y(n32) );
  AOI21X1 U142 ( .A(n28), .B(n842), .C(n886), .Y(n168) );
  NAND3X1 U143 ( .A(n171), .B(n893), .C(n802), .Y(n170) );
  AOI22X1 U144 ( .A(n167), .B(n871), .C(n874), .D(n873), .Y(n172) );
  NAND2X1 U145 ( .A(n28), .B(n823), .Y(n171) );
  NAND3X1 U146 ( .A(n174), .B(n883), .C(n801), .Y(data_out[21]) );
  AOI22X1 U147 ( .A(n50), .B(n99), .C(n759), .D(n942), .Y(n175) );
  NAND2X1 U148 ( .A(n914), .B(n866), .Y(n174) );
  OAI21X1 U149 ( .A(n940), .B(n11), .C(n177), .Y(data_out[20]) );
  NAND2X1 U150 ( .A(n940), .B(n178), .Y(n177) );
  NAND3X1 U151 ( .A(n179), .B(n894), .C(n800), .Y(data_out[1]) );
  AOI22X1 U152 ( .A(n927), .B(n871), .C(n908), .D(n8), .Y(n180) );
  NAND2X1 U153 ( .A(n940), .B(n95), .Y(n179) );
  OAI21X1 U154 ( .A(n59), .B(n891), .C(n181), .Y(n95) );
  AOI22X1 U155 ( .A(n28), .B(n182), .C(n167), .D(n823), .Y(n181) );
  AOI22X1 U157 ( .A(n939), .B(n845), .C(n932), .D(n862), .Y(n184) );
  AOI22X1 U159 ( .A(data_in[10]), .B(n187), .C(data_in[9]), .D(n931), .Y(n186)
         );
  AOI22X1 U160 ( .A(data_in[21]), .B(n189), .C(data_in[22]), .D(n930), .Y(n185) );
  AOI22X1 U161 ( .A(n113), .B(n863), .C(n936), .D(n892), .Y(n183) );
  NAND2X1 U162 ( .A(n192), .B(n193), .Y(n182) );
  AOI22X1 U163 ( .A(n939), .B(n194), .C(n932), .D(n840), .Y(n193) );
  AOI22X1 U165 ( .A(data_in[25]), .B(n189), .C(data_in[5]), .D(n931), .Y(n196)
         );
  AOI22X1 U166 ( .A(data_in[26]), .B(n930), .C(data_in[6]), .D(n187), .Y(n195)
         );
  NAND2X1 U167 ( .A(n197), .B(n198), .Y(n194) );
  AOI22X1 U168 ( .A(data_in[2]), .B(n187), .C(n189), .D(data_in[29]), .Y(n198)
         );
  AOI22X1 U169 ( .A(data_in[1]), .B(n931), .C(data_in[30]), .D(n930), .Y(n197)
         );
  AOI22X1 U170 ( .A(n113), .B(n831), .C(n936), .D(n864), .Y(n192) );
  AOI22X1 U172 ( .A(data_in[23]), .B(n189), .C(data_in[7]), .D(n931), .Y(n200)
         );
  AOI22X1 U173 ( .A(data_in[24]), .B(n930), .C(data_in[8]), .D(n187), .Y(n199)
         );
  AOI22X1 U175 ( .A(data_in[27]), .B(n189), .C(n931), .D(data_in[3]), .Y(n202)
         );
  AOI22X1 U176 ( .A(data_in[28]), .B(n930), .C(data_in[4]), .D(n187), .Y(n201)
         );
  NAND3X1 U177 ( .A(n203), .B(n776), .C(n799), .Y(data_out[19]) );
  AOI22X1 U178 ( .A(n50), .B(n757), .C(n206), .D(n942), .Y(n205) );
  AOI21X1 U180 ( .A(n917), .B(n867), .C(n159), .Y(n203) );
  NAND3X1 U181 ( .A(n207), .B(n775), .C(n798), .Y(data_out[18]) );
  AOI22X1 U182 ( .A(n50), .B(n758), .C(n210), .D(n942), .Y(n209) );
  AOI21X1 U184 ( .A(n916), .B(n870), .C(n159), .Y(n207) );
  NAND3X1 U185 ( .A(n211), .B(n774), .C(n797), .Y(data_out[17]) );
  AOI22X1 U186 ( .A(n50), .B(n873), .C(n214), .D(n942), .Y(n213) );
  AOI21X1 U188 ( .A(n915), .B(n871), .C(n159), .Y(n211) );
  NAND3X1 U189 ( .A(n215), .B(n773), .C(n796), .Y(data_out[16]) );
  AOI22X1 U190 ( .A(n50), .B(n872), .C(n218), .D(n942), .Y(n217) );
  AOI21X1 U193 ( .A(n914), .B(n869), .C(n159), .Y(n215) );
  NAND3X1 U196 ( .A(n219), .B(n772), .C(n795), .Y(data_out[15]) );
  AOI22X1 U197 ( .A(n895), .B(n872), .C(n926), .D(n39), .Y(n221) );
  AOI21X1 U199 ( .A(n940), .B(n218), .C(n34), .Y(n219) );
  OAI21X1 U200 ( .A(n37), .B(n890), .C(n222), .Y(n218) );
  AOI21X1 U201 ( .A(n28), .B(n837), .C(n162), .Y(n222) );
  AOI22X1 U203 ( .A(n113), .B(n859), .C(n938), .D(n892), .Y(n224) );
  AOI22X1 U204 ( .A(n111), .B(n856), .C(n932), .D(n858), .Y(n223) );
  AOI22X1 U206 ( .A(n111), .B(n844), .C(n932), .D(n857), .Y(n229) );
  AOI22X1 U207 ( .A(n113), .B(n848), .C(n938), .D(n855), .Y(n228) );
  NAND3X1 U208 ( .A(n234), .B(n771), .C(n794), .Y(data_out[14]) );
  AOI22X1 U209 ( .A(n927), .B(n8), .C(n895), .D(n873), .Y(n236) );
  AOI22X1 U211 ( .A(n939), .B(n848), .C(n932), .D(n844), .Y(n238) );
  AOI22X1 U212 ( .A(n113), .B(n857), .C(n936), .D(n18), .Y(n237) );
  AOI21X1 U213 ( .A(n843), .B(n938), .C(n240), .Y(n58) );
  OAI21X1 U215 ( .A(n61), .B(n890), .C(n242), .Y(n214) );
  AOI21X1 U216 ( .A(n28), .B(n836), .C(n162), .Y(n242) );
  AOI22X1 U218 ( .A(n111), .B(n854), .C(n938), .D(n847), .Y(n244) );
  AOI22X1 U219 ( .A(n113), .B(n861), .C(n932), .D(n852), .Y(n243) );
  AOI22X1 U221 ( .A(n111), .B(n841), .C(n932), .D(n849), .Y(n250) );
  AOI22X1 U222 ( .A(n113), .B(n850), .C(n938), .D(n853), .Y(n249) );
  AOI21X1 U223 ( .A(n902), .B(n871), .C(n34), .Y(n234) );
  AOI22X1 U225 ( .A(n111), .B(n855), .C(n932), .D(n856), .Y(n256) );
  AOI22X1 U226 ( .A(n113), .B(n858), .C(n938), .D(n859), .Y(n255) );
  NAND3X1 U227 ( .A(n257), .B(n770), .C(n793), .Y(data_out[13]) );
  AOI22X1 U228 ( .A(n895), .B(n758), .C(n926), .D(n99), .Y(n259) );
  AOI21X1 U230 ( .A(n940), .B(n210), .C(n34), .Y(n257) );
  OAI21X1 U231 ( .A(n67), .B(n890), .C(n260), .Y(n210) );
  AOI21X1 U232 ( .A(n28), .B(n835), .C(n162), .Y(n260) );
  AOI22X1 U234 ( .A(n111), .B(n858), .C(n932), .D(n859), .Y(n262) );
  AOI22X1 U235 ( .A(n113), .B(n892), .C(n938), .D(n862), .Y(n261) );
  NAND3X1 U236 ( .A(n263), .B(n769), .C(n792), .Y(data_out[12]) );
  AOI22X1 U237 ( .A(n927), .B(n85), .C(n895), .D(n757), .Y(n265) );
  OAI21X1 U239 ( .A(n75), .B(n890), .C(n266), .Y(n206) );
  AOI21X1 U240 ( .A(n28), .B(n834), .C(n162), .Y(n266) );
  AOI22X1 U242 ( .A(n111), .B(n852), .C(n938), .D(n860), .Y(n268) );
  AOI22X1 U243 ( .A(n113), .B(n847), .C(n933), .D(n861), .Y(n267) );
  AOI21X1 U244 ( .A(n901), .B(n867), .C(n34), .Y(n263) );
  OAI21X1 U245 ( .A(n11), .B(n942), .C(n269), .Y(data_out[11]) );
  NAND2X1 U246 ( .A(n178), .B(n941), .Y(n269) );
  OAI21X1 U247 ( .A(n75), .B(n154), .C(n270), .Y(n178) );
  AOI21X1 U248 ( .A(n167), .B(n85), .C(n886), .Y(n270) );
  OAI21X1 U249 ( .A(n251), .B(n241), .C(n271), .Y(n85) );
  AOI22X1 U250 ( .A(n113), .B(n843), .C(shamt[2]), .D(n23), .Y(n271) );
  AOI22X1 U252 ( .A(n111), .B(n849), .C(n933), .D(n850), .Y(n273) );
  AOI22X1 U253 ( .A(n113), .B(n853), .C(n938), .D(n854), .Y(n272) );
  NAND3X1 U254 ( .A(n275), .B(n893), .C(n791), .Y(n274) );
  AOI22X1 U255 ( .A(n874), .B(n757), .C(n28), .D(n838), .Y(n276) );
  AOI22X1 U257 ( .A(n936), .B(n859), .C(n939), .D(n863), .Y(n278) );
  AOI22X1 U259 ( .A(data_in[12]), .B(n187), .C(data_in[20]), .D(n930), .Y(n280) );
  AOI22X1 U260 ( .A(data_in[11]), .B(n931), .C(data_in[19]), .D(n189), .Y(n279) );
  AOI22X1 U262 ( .A(data_in[13]), .B(n189), .C(data_in[17]), .D(n931), .Y(n282) );
  AOI22X1 U263 ( .A(data_in[14]), .B(n930), .C(data_in[18]), .D(n187), .Y(n281) );
  AOI22X1 U264 ( .A(n932), .B(n892), .C(n934), .D(n862), .Y(n277) );
  AOI22X1 U266 ( .A(data_in[14]), .B(n187), .C(data_in[18]), .D(n930), .Y(n284) );
  AOI22X1 U267 ( .A(data_in[13]), .B(n931), .C(data_in[17]), .D(n189), .Y(n283) );
  OAI21X1 U269 ( .A(n189), .B(n931), .C(data_in[15]), .Y(n286) );
  OAI21X1 U270 ( .A(n187), .B(n930), .C(data_in[16]), .Y(n285) );
  AOI22X1 U272 ( .A(n933), .B(n18), .C(n939), .D(n857), .Y(n289) );
  NAND2X1 U274 ( .A(n167), .B(n867), .Y(n275) );
  AOI22X1 U276 ( .A(n936), .B(n848), .C(n933), .D(n855), .Y(n291) );
  AOI22X1 U277 ( .A(n934), .B(n856), .C(n939), .D(n858), .Y(n290) );
  AOI22X1 U279 ( .A(data_in[11]), .B(n189), .C(data_in[19]), .D(n931), .Y(n293) );
  AOI22X1 U280 ( .A(data_in[12]), .B(n930), .C(data_in[20]), .D(n187), .Y(n292) );
  NAND3X1 U281 ( .A(n294), .B(n884), .C(n790), .Y(data_out[10]) );
  AOI22X1 U282 ( .A(sr), .B(n759), .C(n895), .D(n99), .Y(n295) );
  OAI21X1 U283 ( .A(n882), .B(n29), .C(n297), .Y(n99) );
  AOI22X1 U284 ( .A(n939), .B(n844), .C(n934), .D(n18), .Y(n297) );
  AOI22X1 U286 ( .A(data_in[1]), .B(n189), .C(data_in[2]), .D(n930), .Y(n300)
         );
  AOI22X1 U287 ( .A(n931), .B(data_in[29]), .C(data_in[30]), .D(n187), .Y(n299) );
  AOI22X1 U290 ( .A(n167), .B(n870), .C(n874), .D(n758), .Y(n302) );
  AOI22X1 U292 ( .A(n113), .B(n841), .C(n939), .D(n849), .Y(n304) );
  AOI22X1 U296 ( .A(n936), .B(n850), .C(n933), .D(n853), .Y(n306) );
  AOI22X1 U297 ( .A(n934), .B(n854), .C(n939), .D(n852), .Y(n305) );
  AOI22X1 U301 ( .A(n933), .B(n847), .C(n934), .D(n860), .Y(n308) );
  AOI22X1 U302 ( .A(n939), .B(n851), .C(n936), .D(n861), .Y(n307) );
  NAND2X1 U305 ( .A(n902), .B(n866), .Y(n294) );
  AOI22X1 U307 ( .A(n936), .B(n857), .C(n933), .D(n848), .Y(n310) );
  AOI22X1 U309 ( .A(data_in[26]), .B(n187), .C(data_in[6]), .D(n930), .Y(n312)
         );
  AOI22X1 U310 ( .A(data_in[25]), .B(n931), .C(data_in[5]), .D(n189), .Y(n311)
         );
  AOI22X1 U312 ( .A(data_in[28]), .B(n187), .C(data_in[4]), .D(n930), .Y(n314)
         );
  AOI22X1 U313 ( .A(data_in[27]), .B(n931), .C(n189), .D(data_in[3]), .Y(n313)
         );
  AOI22X1 U314 ( .A(n934), .B(n855), .C(n939), .D(n856), .Y(n309) );
  AOI22X1 U316 ( .A(data_in[21]), .B(n931), .C(data_in[22]), .D(n187), .Y(n316) );
  AOI22X1 U317 ( .A(data_in[10]), .B(n930), .C(data_in[9]), .D(n189), .Y(n315)
         );
  AOI22X1 U319 ( .A(data_in[24]), .B(n187), .C(data_in[8]), .D(n930), .Y(n318)
         );
  AOI22X1 U320 ( .A(data_in[23]), .B(n931), .C(data_in[7]), .D(n189), .Y(n317)
         );
  NAND3X1 U321 ( .A(n319), .B(n894), .C(n789), .Y(data_out[0]) );
  AOI22X1 U322 ( .A(sr), .B(n91), .C(n926), .D(n869), .Y(n320) );
  AOI22X1 U324 ( .A(n936), .B(n853), .C(n933), .D(n854), .Y(n322) );
  AOI22X1 U326 ( .A(data_in[10]), .B(n189), .C(data_in[20]), .D(n931), .Y(n324) );
  AOI22X1 U327 ( .A(data_in[11]), .B(n930), .C(data_in[21]), .D(n187), .Y(n323) );
  AOI22X1 U329 ( .A(data_in[23]), .B(n187), .C(data_in[9]), .D(n930), .Y(n326)
         );
  AOI22X1 U330 ( .A(data_in[22]), .B(n931), .C(data_in[8]), .D(n189), .Y(n325)
         );
  AOI22X1 U331 ( .A(n934), .B(n852), .C(n939), .D(n861), .Y(n321) );
  AOI22X1 U333 ( .A(data_in[14]), .B(n189), .C(data_in[16]), .D(n931), .Y(n328) );
  AOI22X1 U334 ( .A(data_in[15]), .B(n930), .C(data_in[17]), .D(n187), .Y(n327) );
  AOI22X1 U336 ( .A(data_in[12]), .B(n189), .C(data_in[18]), .D(n931), .Y(n330) );
  AOI22X1 U337 ( .A(data_in[13]), .B(n930), .C(data_in[19]), .D(n187), .Y(n329) );
  OAI21X1 U339 ( .A(n49), .B(n891), .C(n331), .Y(n91) );
  AOI22X1 U340 ( .A(n28), .B(n332), .C(n167), .D(n822), .Y(n331) );
  AOI22X1 U342 ( .A(n936), .B(n847), .C(n933), .D(n860), .Y(n334) );
  AOI22X1 U344 ( .A(data_in[13]), .B(n187), .C(data_in[19]), .D(n930), .Y(n336) );
  AOI22X1 U345 ( .A(data_in[12]), .B(n931), .C(data_in[18]), .D(n189), .Y(n335) );
  AOI22X1 U347 ( .A(data_in[15]), .B(n187), .C(data_in[17]), .D(n930), .Y(n338) );
  AOI22X1 U348 ( .A(data_in[14]), .B(n931), .C(data_in[16]), .D(n189), .Y(n337) );
  AOI22X1 U349 ( .A(n939), .B(n846), .C(n934), .D(n851), .Y(n333) );
  AOI22X1 U351 ( .A(data_in[11]), .B(n187), .C(data_in[21]), .D(n930), .Y(n340) );
  AOI22X1 U352 ( .A(data_in[10]), .B(n931), .C(data_in[20]), .D(n189), .Y(n339) );
  AOI22X1 U354 ( .A(data_in[22]), .B(n189), .C(data_in[8]), .D(n931), .Y(n342)
         );
  AOI22X1 U355 ( .A(data_in[23]), .B(n930), .C(data_in[9]), .D(n187), .Y(n341)
         );
  NAND2X1 U357 ( .A(n343), .B(n344), .Y(n332) );
  AOI22X1 U358 ( .A(n939), .B(n345), .C(n933), .D(n839), .Y(n344) );
  AOI22X1 U360 ( .A(data_in[26]), .B(n189), .C(data_in[4]), .D(n931), .Y(n347)
         );
  AOI22X1 U361 ( .A(data_in[27]), .B(n930), .C(data_in[5]), .D(n187), .Y(n346)
         );
  NAND2X1 U362 ( .A(n348), .B(n349), .Y(n345) );
  AOI22X1 U363 ( .A(data_in[1]), .B(n187), .C(data_in[30]), .D(n189), .Y(n349)
         );
  AOI22X1 U364 ( .A(data_in[0]), .B(n931), .C(n930), .D(data_in[31]), .Y(n348)
         );
  AOI22X1 U365 ( .A(n934), .B(n830), .C(n936), .D(n865), .Y(n343) );
  AOI22X1 U367 ( .A(data_in[24]), .B(n189), .C(data_in[6]), .D(n931), .Y(n351)
         );
  AOI22X1 U368 ( .A(data_in[25]), .B(n930), .C(data_in[7]), .D(n187), .Y(n350)
         );
  AOI22X1 U370 ( .A(n189), .B(data_in[28]), .C(data_in[2]), .D(n931), .Y(n353)
         );
  AOI22X1 U371 ( .A(n930), .B(data_in[29]), .C(data_in[3]), .D(n187), .Y(n352)
         );
  AOI22X1 U374 ( .A(n111), .B(n843), .C(n932), .D(n841), .Y(n355) );
  AOI22X1 U376 ( .A(data_in[29]), .B(n187), .C(data_in[3]), .D(n930), .Y(n357)
         );
  AOI22X1 U377 ( .A(data_in[28]), .B(n931), .C(data_in[2]), .D(n189), .Y(n356)
         );
  AOI22X1 U380 ( .A(data_in[0]), .B(n189), .C(data_in[30]), .D(n931), .Y(n359)
         );
  AOI22X1 U381 ( .A(data_in[1]), .B(n930), .C(n187), .D(data_in[31]), .Y(n358)
         );
  AOI22X1 U382 ( .A(n934), .B(n849), .C(n938), .D(n850), .Y(n354) );
  AOI22X1 U384 ( .A(data_in[25]), .B(n187), .C(data_in[7]), .D(n930), .Y(n361)
         );
  AOI22X1 U385 ( .A(data_in[24]), .B(n931), .C(data_in[6]), .D(n189), .Y(n360)
         );
  AOI22X1 U387 ( .A(data_in[27]), .B(n187), .C(data_in[5]), .D(n930), .Y(n363)
         );
  AOI22X1 U388 ( .A(data_in[26]), .B(n931), .C(data_in[4]), .D(n189), .Y(n362)
         );
  NAND3X1 U389 ( .A(n154), .B(n942), .C(n23), .Y(n48) );
  NAND2X1 U390 ( .A(n901), .B(n39), .Y(n319) );
  OAI21X1 U391 ( .A(n821), .B(n241), .C(n880), .Y(n39) );
  AOI21X1 U393 ( .A(n930), .B(data_in[0]), .C(n19), .Y(n298) );
  AOI22X1 U394 ( .A(n931), .B(data_in[31]), .C(shamt[0]), .D(n23), .Y(n365) );
  AND2X1 U2 ( .A(n874), .B(n940), .Y(n52) );
  AND2X1 U3 ( .A(n874), .B(n941), .Y(n89) );
  OR2X1 U4 ( .A(n26), .B(n882), .Y(n169) );
  OR2X1 U5 ( .A(n890), .B(n942), .Y(n896) );
  OR2X1 U6 ( .A(n890), .B(n940), .Y(n38) );
  OR2X1 U7 ( .A(n766), .B(n763), .Y(n757) );
  OR2X1 U8 ( .A(n765), .B(n761), .Y(n758) );
  OR2X1 U9 ( .A(n768), .B(n762), .Y(n759) );
  OR2X1 U10 ( .A(n767), .B(n764), .Y(n760) );
  OR2X1 U11 ( .A(n876), .B(n288), .Y(n761) );
  OR2X1 U12 ( .A(n832), .B(n162), .Y(n762) );
  OR2X1 U13 ( .A(n878), .B(n288), .Y(n763) );
  OR2X1 U14 ( .A(n820), .B(n162), .Y(n764) );
  AND2X1 U15 ( .A(n886), .B(shamt[3]), .Y(n162) );
  AND2X1 U16 ( .A(n932), .B(n843), .Y(n765) );
  AND2X1 U17 ( .A(n113), .B(n844), .Y(n766) );
  AND2X1 U18 ( .A(n28), .B(n822), .Y(n767) );
  AND2X1 U19 ( .A(n28), .B(n819), .Y(n768) );
  AND2X1 U20 ( .A(n940), .B(n206), .Y(n264) );
  INVX1 U21 ( .A(n264), .Y(n769) );
  AND2X1 U22 ( .A(n911), .B(n870), .Y(n258) );
  INVX1 U23 ( .A(n258), .Y(n770) );
  AND2X1 U24 ( .A(n940), .B(n214), .Y(n235) );
  INVX1 U25 ( .A(n235), .Y(n771) );
  AND2X1 U26 ( .A(n881), .B(n869), .Y(n220) );
  INVX1 U27 ( .A(n220), .Y(n772) );
  AND2X1 U28 ( .A(n929), .B(n39), .Y(n216) );
  INVX1 U29 ( .A(n216), .Y(n773) );
  AND2X1 U30 ( .A(n929), .B(n8), .Y(n212) );
  INVX1 U31 ( .A(n212), .Y(n774) );
  AND2X1 U32 ( .A(n929), .B(n99), .Y(n208) );
  INVX1 U33 ( .A(n208), .Y(n775) );
  AND2X1 U34 ( .A(n929), .B(n85), .Y(n204) );
  INVX1 U35 ( .A(n204), .Y(n776) );
  AND2X1 U36 ( .A(n895), .B(n837), .Y(n151) );
  INVX1 U37 ( .A(n151), .Y(n777) );
  AND2X1 U38 ( .A(n895), .B(n836), .Y(n144) );
  INVX1 U39 ( .A(n144), .Y(n778) );
  AND2X1 U40 ( .A(n895), .B(n835), .Y(n137) );
  INVX1 U49 ( .A(n137), .Y(n779) );
  AND2X1 U54 ( .A(n895), .B(n834), .Y(n130) );
  INVX1 U59 ( .A(n130), .Y(n780) );
  AND2X1 U64 ( .A(n895), .B(n838), .Y(n119) );
  INVX1 U69 ( .A(n119), .Y(n781) );
  AND2X1 U70 ( .A(n101), .B(n941), .Y(n104) );
  INVX1 U80 ( .A(n104), .Y(n782) );
  AND2X1 U84 ( .A(n940), .B(n101), .Y(n97) );
  INVX1 U88 ( .A(n97), .Y(n783) );
  AND2X1 U94 ( .A(n927), .B(n867), .Y(n79) );
  INVX1 U97 ( .A(n79), .Y(n784) );
  AND2X1 U102 ( .A(n927), .B(n833), .Y(n71) );
  INVX1 U105 ( .A(n71), .Y(n785) );
  AND2X1 U110 ( .A(n927), .B(n866), .Y(n63) );
  INVX1 U113 ( .A(n63), .Y(n786) );
  AND2X1 U118 ( .A(n906), .B(n873), .Y(n54) );
  INVX1 U121 ( .A(n54), .Y(n787) );
  AND2X1 U127 ( .A(n907), .B(n872), .Y(n42) );
  INVX1 U128 ( .A(n42), .Y(n788) );
  BUFX2 U131 ( .A(n320), .Y(n789) );
  BUFX2 U136 ( .A(n295), .Y(n790) );
  BUFX2 U138 ( .A(n276), .Y(n791) );
  BUFX2 U156 ( .A(n265), .Y(n792) );
  BUFX2 U158 ( .A(n259), .Y(n793) );
  BUFX2 U164 ( .A(n236), .Y(n794) );
  BUFX2 U171 ( .A(n221), .Y(n795) );
  BUFX2 U174 ( .A(n217), .Y(n796) );
  BUFX2 U179 ( .A(n213), .Y(n797) );
  BUFX2 U183 ( .A(n209), .Y(n798) );
  BUFX2 U187 ( .A(n205), .Y(n799) );
  BUFX2 U191 ( .A(n180), .Y(n800) );
  BUFX2 U192 ( .A(n175), .Y(n801) );
  BUFX2 U194 ( .A(n172), .Y(n802) );
  BUFX2 U195 ( .A(n160), .Y(n803) );
  BUFX2 U198 ( .A(n105), .Y(n804) );
  BUFX2 U202 ( .A(n98), .Y(n805) );
  BUFX2 U205 ( .A(n93), .Y(n806) );
  BUFX2 U210 ( .A(n88), .Y(n807) );
  BUFX2 U214 ( .A(n35), .Y(n808) );
  BUFX2 U217 ( .A(n152), .Y(n809) );
  BUFX2 U220 ( .A(n145), .Y(n810) );
  BUFX2 U224 ( .A(n138), .Y(n811) );
  BUFX2 U229 ( .A(n131), .Y(n812) );
  BUFX2 U233 ( .A(n120), .Y(n813) );
  BUFX2 U238 ( .A(n80), .Y(n814) );
  BUFX2 U241 ( .A(n72), .Y(n815) );
  BUFX2 U251 ( .A(n64), .Y(n816) );
  BUFX2 U256 ( .A(n55), .Y(n817) );
  BUFX2 U258 ( .A(n43), .Y(n818) );
  AND2X1 U261 ( .A(n111), .B(n23), .Y(n288) );
  AND2X2 U265 ( .A(n307), .B(n308), .Y(n108) );
  INVX1 U268 ( .A(n108), .Y(n819) );
  INVX1 U271 ( .A(n163), .Y(n820) );
  BUFX2 U273 ( .A(n298), .Y(n821) );
  AND2X2 U275 ( .A(n333), .B(n334), .Y(n165) );
  INVX1 U278 ( .A(n165), .Y(n822) );
  AND2X2 U285 ( .A(n183), .B(n184), .Y(n173) );
  INVX1 U288 ( .A(n173), .Y(n823) );
  AND2X2 U289 ( .A(n155), .B(n156), .Y(n45) );
  INVX1 U291 ( .A(n45), .Y(n824) );
  AND2X2 U293 ( .A(n147), .B(n148), .Y(n56) );
  INVX1 U294 ( .A(n56), .Y(n825) );
  AND2X2 U295 ( .A(n140), .B(n141), .Y(n65) );
  INVX1 U298 ( .A(n65), .Y(n826) );
  AND2X2 U299 ( .A(n133), .B(n134), .Y(n73) );
  INVX1 U300 ( .A(n73), .Y(n827) );
  AND2X2 U303 ( .A(n123), .B(n124), .Y(n81) );
  INVX1 U304 ( .A(n81), .Y(n828) );
  AND2X2 U306 ( .A(n109), .B(n110), .Y(n102) );
  INVX1 U308 ( .A(n102), .Y(n829) );
  AND2X2 U311 ( .A(n352), .B(n353), .Y(n115) );
  INVX1 U315 ( .A(n115), .Y(n830) );
  AND2X2 U318 ( .A(n201), .B(n202), .Y(n127) );
  INVX1 U323 ( .A(n127), .Y(n831) );
  INVX1 U325 ( .A(n302), .Y(n832) );
  INVX1 U328 ( .A(n75), .Y(n833) );
  AND2X2 U332 ( .A(n272), .B(n273), .Y(n75) );
  AND2X2 U335 ( .A(n267), .B(n268), .Y(n76) );
  INVX1 U338 ( .A(n76), .Y(n834) );
  AND2X2 U341 ( .A(n261), .B(n262), .Y(n68) );
  INVX1 U343 ( .A(n68), .Y(n835) );
  AND2X2 U346 ( .A(n243), .B(n244), .Y(n60) );
  INVX1 U350 ( .A(n60), .Y(n836) );
  AND2X2 U353 ( .A(n223), .B(n224), .Y(n51) );
  INVX1 U356 ( .A(n51), .Y(n837) );
  AND2X2 U359 ( .A(n277), .B(n278), .Y(n84) );
  INVX1 U366 ( .A(n84), .Y(n838) );
  AND2X2 U369 ( .A(n346), .B(n347), .Y(n114) );
  INVX1 U372 ( .A(n114), .Y(n839) );
  AND2X2 U373 ( .A(n195), .B(n196), .Y(n126) );
  INVX1 U375 ( .A(n126), .Y(n840) );
  INVX1 U378 ( .A(n251), .Y(n841) );
  AND2X2 U379 ( .A(n356), .B(n357), .Y(n251) );
  INVX1 U383 ( .A(n61), .Y(n842) );
  AND2X2 U386 ( .A(n249), .B(n250), .Y(n61) );
  AND2X2 U392 ( .A(n358), .B(n359), .Y(n239) );
  INVX1 U395 ( .A(n239), .Y(n843) );
  AND2X2 U396 ( .A(n299), .B(n300), .Y(n230) );
  INVX1 U397 ( .A(n230), .Y(n844) );
  AND2X2 U398 ( .A(n185), .B(n186), .Y(n125) );
  INVX1 U399 ( .A(n125), .Y(n845) );
  AND2X2 U400 ( .A(n341), .B(n342), .Y(n112) );
  INVX1 U401 ( .A(n112), .Y(n846) );
  AND2X2 U402 ( .A(n337), .B(n338), .Y(n246) );
  INVX1 U403 ( .A(n246), .Y(n847) );
  AND2X2 U404 ( .A(n311), .B(n312), .Y(n232) );
  INVX1 U405 ( .A(n232), .Y(n848) );
  AND2X2 U406 ( .A(n362), .B(n363), .Y(n252) );
  INVX1 U407 ( .A(n252), .Y(n849) );
  AND2X2 U408 ( .A(n360), .B(n361), .Y(n253) );
  INVX1 U409 ( .A(n253), .Y(n850) );
  AND2X2 U410 ( .A(n339), .B(n340), .Y(n135) );
  INVX1 U411 ( .A(n135), .Y(n851) );
  AND2X2 U412 ( .A(n329), .B(n330), .Y(n248) );
  INVX1 U413 ( .A(n248), .Y(n852) );
  AND2X2 U414 ( .A(n325), .B(n326), .Y(n254) );
  INVX1 U415 ( .A(n254), .Y(n853) );
  AND2X2 U416 ( .A(n323), .B(n324), .Y(n245) );
  INVX1 U417 ( .A(n245), .Y(n854) );
  AND2X2 U418 ( .A(n317), .B(n318), .Y(n233) );
  INVX1 U419 ( .A(n233), .Y(n855) );
  AND2X2 U420 ( .A(n315), .B(n316), .Y(n226) );
  INVX1 U421 ( .A(n226), .Y(n856) );
  AND2X2 U422 ( .A(n313), .B(n314), .Y(n231) );
  INVX1 U423 ( .A(n231), .Y(n857) );
  AND2X2 U424 ( .A(n292), .B(n293), .Y(n227) );
  INVX1 U425 ( .A(n227), .Y(n858) );
  AND2X2 U426 ( .A(n281), .B(n282), .Y(n225) );
  INVX1 U427 ( .A(n225), .Y(n859) );
  AND2X2 U428 ( .A(n335), .B(n336), .Y(n149) );
  INVX1 U429 ( .A(n149), .Y(n860) );
  AND2X2 U430 ( .A(n327), .B(n328), .Y(n247) );
  INVX1 U431 ( .A(n247), .Y(n861) );
  AND2X2 U432 ( .A(n283), .B(n284), .Y(n157) );
  INVX1 U433 ( .A(n157), .Y(n862) );
  AND2X2 U434 ( .A(n279), .B(n280), .Y(n142) );
  INVX1 U435 ( .A(n142), .Y(n863) );
  AND2X2 U436 ( .A(n199), .B(n200), .Y(n128) );
  INVX1 U437 ( .A(n128), .Y(n864) );
  AND2X2 U438 ( .A(n350), .B(n351), .Y(n117) );
  INVX1 U439 ( .A(n117), .Y(n865) );
  INVX1 U440 ( .A(n67), .Y(n866) );
  AND2X2 U441 ( .A(n309), .B(n310), .Y(n67) );
  AND2X2 U442 ( .A(n290), .B(n291), .Y(n83) );
  INVX1 U443 ( .A(n83), .Y(n867) );
  INVX1 U444 ( .A(n37), .Y(n868) );
  AND2X2 U445 ( .A(n228), .B(n229), .Y(n37) );
  AND2X2 U446 ( .A(n321), .B(n322), .Y(n90) );
  INVX1 U447 ( .A(n90), .Y(n869) );
  AND2X2 U448 ( .A(n305), .B(n306), .Y(n100) );
  INVX1 U449 ( .A(n100), .Y(n870) );
  AND2X2 U450 ( .A(n255), .B(n256), .Y(n94) );
  INVX1 U451 ( .A(n94), .Y(n871) );
  INVX1 U452 ( .A(n49), .Y(n872) );
  AND2X2 U453 ( .A(n354), .B(n355), .Y(n49) );
  INVX1 U454 ( .A(n59), .Y(n873) );
  AND2X2 U455 ( .A(n237), .B(n238), .Y(n59) );
  OR2X1 U456 ( .A(n26), .B(shamt[3]), .Y(n164) );
  INVX1 U457 ( .A(n164), .Y(n874) );
  INVX1 U458 ( .A(n758), .Y(n875) );
  INVX1 U459 ( .A(n304), .Y(n876) );
  INVX1 U460 ( .A(n757), .Y(n877) );
  INVX1 U461 ( .A(n289), .Y(n878) );
  OR2X1 U462 ( .A(n154), .B(n942), .Y(n44) );
  INVX1 U463 ( .A(n44), .Y(n879) );
  INVX1 U464 ( .A(n240), .Y(n880) );
  OR2X1 U465 ( .A(n154), .B(n940), .Y(n36) );
  INVX1 U466 ( .A(n36), .Y(n881) );
  AND2X1 U467 ( .A(data_in[31]), .B(arith), .Y(n296) );
  INVX1 U468 ( .A(n296), .Y(n882) );
  AND2X1 U469 ( .A(n886), .B(n940), .Y(n159) );
  INVX1 U470 ( .A(n159), .Y(n883) );
  AND2X1 U471 ( .A(n886), .B(n941), .Y(n34) );
  INVX1 U472 ( .A(n34), .Y(n884) );
  BUFX2 U473 ( .A(n58), .Y(n885) );
  INVX1 U474 ( .A(n169), .Y(n886) );
  AND2X1 U475 ( .A(n106), .B(n942), .Y(n122) );
  INVX1 U476 ( .A(n122), .Y(n887) );
  AND2X1 U477 ( .A(n106), .B(n940), .Y(n47) );
  INVX1 U478 ( .A(n47), .Y(n888) );
  BUFX2 U479 ( .A(n87), .Y(n889) );
  AND2X1 U480 ( .A(shamt[3]), .B(n26), .Y(n167) );
  INVX1 U481 ( .A(n167), .Y(n890) );
  AND2X1 U482 ( .A(shamt[3]), .B(shamt[4]), .Y(n106) );
  INVX1 U483 ( .A(n106), .Y(n891) );
  AND2X1 U484 ( .A(n285), .B(n286), .Y(n191) );
  INVX1 U485 ( .A(n191), .Y(n892) );
  INVX1 U486 ( .A(n162), .Y(n893) );
  BUFX2 U487 ( .A(n48), .Y(n894) );
  INVX1 U488 ( .A(n38), .Y(n895) );
  INVX1 U489 ( .A(sr), .Y(n942) );
  INVX1 U490 ( .A(n99), .Y(n16) );
  INVX1 U491 ( .A(n39), .Y(n17) );
  INVX1 U492 ( .A(n894), .Y(n20) );
  INVX1 U493 ( .A(n889), .Y(n1) );
  INVX1 U494 ( .A(n885), .Y(n8) );
  BUFX2 U495 ( .A(n52), .Y(n926) );
  BUFX2 U496 ( .A(n89), .Y(n929) );
  BUFX2 U497 ( .A(n52), .Y(n927) );
  BUFX2 U498 ( .A(n89), .Y(n928) );
  INVX1 U499 ( .A(n241), .Y(n939) );
  INVX1 U500 ( .A(n941), .Y(n940) );
  INVX1 U501 ( .A(n241), .Y(n938) );
  AND2X1 U502 ( .A(n23), .B(n241), .Y(n240) );
  INVX1 U503 ( .A(n896), .Y(n50) );
  INVX1 U504 ( .A(n882), .Y(n23) );
  INVX1 U505 ( .A(n85), .Y(n7) );
  INVX1 U506 ( .A(n154), .Y(n28) );
  INVX1 U507 ( .A(n899), .Y(n933) );
  INVX1 U508 ( .A(n897), .Y(n930) );
  INVX1 U509 ( .A(n898), .Y(n931) );
  INVX1 U510 ( .A(n899), .Y(n932) );
  INVX1 U511 ( .A(n821), .Y(n18) );
  INVX1 U512 ( .A(n935), .Y(n934) );
  INVX1 U513 ( .A(n937), .Y(n936) );
  INVX1 U514 ( .A(n274), .Y(n11) );
  INVX1 U515 ( .A(n170), .Y(n12) );
  INVX1 U516 ( .A(sr), .Y(n941) );
  OR2X1 U517 ( .A(shamt[4]), .B(shamt[3]), .Y(n154) );
  INVX1 U518 ( .A(n365), .Y(n19) );
  OR2X1 U519 ( .A(n940), .B(shamt[0]), .Y(n897) );
  OR2X1 U520 ( .A(n942), .B(shamt[0]), .Y(n898) );
  OR2X1 U521 ( .A(n29), .B(shamt[1]), .Y(n899) );
  OR2X1 U522 ( .A(shamt[2]), .B(shamt[1]), .Y(n241) );
  AND2X1 U523 ( .A(shamt[0]), .B(n941), .Y(n189) );
  INVX1 U524 ( .A(n113), .Y(n935) );
  AND2X1 U525 ( .A(shamt[1]), .B(n29), .Y(n113) );
  AND2X1 U526 ( .A(sr), .B(shamt[0]), .Y(n187) );
  INVX1 U527 ( .A(n111), .Y(n937) );
  AND2X1 U528 ( .A(shamt[2]), .B(shamt[1]), .Y(n111) );
  INVX1 U529 ( .A(shamt[2]), .Y(n29) );
  INVX1 U530 ( .A(shamt[4]), .Y(n26) );
  INVX1 U531 ( .A(n911), .Y(n900) );
  INVX1 U532 ( .A(n900), .Y(n901) );
  INVX1 U533 ( .A(n900), .Y(n902) );
  INVX1 U534 ( .A(n905), .Y(n903) );
  INVX1 U535 ( .A(n910), .Y(n904) );
  INVX1 U536 ( .A(n912), .Y(n905) );
  INVX1 U537 ( .A(n900), .Y(n906) );
  INVX1 U538 ( .A(n910), .Y(n907) );
  INVX1 U539 ( .A(n905), .Y(n908) );
  INVX1 U540 ( .A(n905), .Y(n909) );
  INVX1 U541 ( .A(n881), .Y(n910) );
  INVX1 U542 ( .A(n910), .Y(n911) );
  INVX1 U543 ( .A(n36), .Y(n912) );
  INVX1 U544 ( .A(n924), .Y(n913) );
  INVX1 U545 ( .A(n913), .Y(n914) );
  INVX1 U546 ( .A(n913), .Y(n915) );
  INVX1 U547 ( .A(n922), .Y(n916) );
  INVX1 U548 ( .A(n923), .Y(n917) );
  INVX1 U549 ( .A(n44), .Y(n918) );
  INVX1 U550 ( .A(n922), .Y(n919) );
  INVX1 U551 ( .A(n922), .Y(n920) );
  INVX1 U552 ( .A(n44), .Y(n921) );
  INVX1 U553 ( .A(n879), .Y(n922) );
  INVX1 U554 ( .A(n879), .Y(n923) );
  INVX1 U555 ( .A(n923), .Y(n924) );
  INVX1 U556 ( .A(n923), .Y(n925) );
endmodule


module ALU ( alu_op, is_imm, is_store_op, is_auipc, comp_op, subtract, 
        shift_right, shift_arith, rs1_data, rs2_data, imm_i, imm_u, imm_s, PC, 
        rd_data, branch );
  input [31:0] alu_op;
  input [2:0] comp_op;
  input [31:0] rs1_data;
  input [31:0] rs2_data;
  input [31:0] imm_i;
  input [31:0] imm_u;
  input [31:0] imm_s;
  input [31:0] PC;
  output [31:0] rd_data;
  input is_imm, is_store_op, is_auipc, subtract, shift_right, shift_arith;
  output branch;
  wire   \_0_net_[31] , \_0_net_[30] , \_0_net_[29] , \_0_net_[28] ,
         \_0_net_[27] , \_0_net_[26] , \_0_net_[25] , \_0_net_[24] ,
         \_0_net_[23] , \_0_net_[22] , \_0_net_[21] , \_0_net_[20] ,
         \_0_net_[19] , \_0_net_[18] , \_0_net_[17] , \_0_net_[16] ,
         \_0_net_[15] , \_0_net_[14] , \_0_net_[13] , \_0_net_[12] ,
         \_0_net_[11] , \_0_net_[10] , \_0_net_[9] , \_0_net_[8] ,
         \_0_net_[7] , \_0_net_[6] , \_0_net_[5] , \_0_net_[4] , \_0_net_[3] ,
         \_0_net_[2] , \_0_net_[1] , \_0_net_[0] , \_1_net_[31] ,
         \_1_net_[30] , \_1_net_[29] , \_1_net_[28] , \_1_net_[27] ,
         \_1_net_[26] , \_1_net_[25] , \_1_net_[24] , \_1_net_[23] ,
         \_1_net_[22] , \_1_net_[21] , \_1_net_[20] , \_1_net_[19] ,
         \_1_net_[18] , \_1_net_[17] , \_1_net_[16] , \_1_net_[15] ,
         \_1_net_[14] , \_1_net_[13] , \_1_net_[12] , \_1_net_[11] ,
         \_1_net_[10] , \_1_net_[9] , \_1_net_[8] , \_1_net_[7] , \_1_net_[6] ,
         \_1_net_[5] , \_1_net_[4] , \_1_net_[3] , \_1_net_[2] , \_1_net_[1] ,
         \_1_net_[0] , n, z, c, v, n1, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n340, n341, n342, n343,
         n344, n345, n346, n347, n348, n349, n350, n351, n352, n353, n354,
         n355, n356, n357, n358, n359, n360, n361, n362, n363, n364, n365,
         n366, n367, n368, n369, n370, n371, n372, n373, n374, n375, n376,
         n377, n378, n379, n380, n381, n382, n383, n384, n385, n386, n387,
         n388, n389, n390, n391, n392, n393, n394, n395, n396, n397, n398,
         n399, n400, n401, n402, n403, n404, n405, n406, n407, n408, n409,
         n410, n411, n412, n413, n414, n415, n416, n417, n418, n419, n420,
         n421, n422, n423, n424, n425, n426, n427, n428, n429, n430, n431,
         n432, n433, n434, n435, n436, n437, n438, n439, n440, n441, n442,
         n443, n444, n445, n446, n447, n448, n449, n450, n451, n452, n453,
         n454, n455, n456, n457, n458, n459, n460, n461, n462, n463, n464,
         n465, n466, n467, n1052, n1053, n1054, n1055, n1056, n1057, n1058,
         n1059, n1060, n1061, n1062, n1063, n1064, n1065, n1066, n1067, n1068,
         n1069, n1070, n1071, n1072, n1073, n1074, n1075, n1076, n1077, n1078,
         n1079, n1080, n1081, n1082, n1083, n1084, n1085, n1086, n1087, n1088,
         n1089, n1090, n1091, n1092, n1093, n1094, n1095, n1096, n1097, n1098,
         n1099, n1100, n1101, n1102, n1103, n1104, n1105, n1106, n1107, n1108,
         n1109, n1110, n1111, n1112, n1113, n1114, n1115, n1116, n1117, n1118,
         n1119, n1120, n1121, n1122, n1123, n1124, n1125, n1126, n1127, n1128,
         n1129, n1130, n1131, n1132, n1133, n1134, n1135, n1136, n1137, n1138,
         n1139, n1140, n1141, n1142, n1143, n1144, n1145, n1146, n1147, n1148,
         n1149, n1150, n1151, n1152, n1153, n1154, n1155, n1156, n1157, n1158,
         n1159, n1160, n1161, n1162, n1163, n1164, n1165, n1166, n1167, n1168,
         n1169, n1170, n1171, n1172, n1173, n1174, n1175, n1176, n1177, n1178,
         n1179, n1180, n1181, n1182, n1183, n1184, n1185, n1186, n1187, n1188,
         n1189, n1190, n1191, n1192;
  wire   [31:0] adder_out;
  wire   [31:0] shifter_out;

  ripple_carry_adder adder_i ( .sub(subtract), .a({\_0_net_[31] , 
        \_0_net_[30] , \_0_net_[29] , \_0_net_[28] , \_0_net_[27] , 
        \_0_net_[26] , \_0_net_[25] , \_0_net_[24] , \_0_net_[23] , 
        \_0_net_[22] , \_0_net_[21] , \_0_net_[20] , \_0_net_[19] , 
        \_0_net_[18] , \_0_net_[17] , \_0_net_[16] , \_0_net_[15] , 
        \_0_net_[14] , \_0_net_[13] , \_0_net_[12] , \_0_net_[11] , 
        \_0_net_[10] , \_0_net_[9] , \_0_net_[8] , \_0_net_[7] , \_0_net_[6] , 
        \_0_net_[5] , \_0_net_[4] , \_0_net_[3] , \_0_net_[2] , \_0_net_[1] , 
        \_0_net_[0] }), .b({\_1_net_[31] , \_1_net_[30] , \_1_net_[29] , 
        \_1_net_[28] , \_1_net_[27] , \_1_net_[26] , \_1_net_[25] , 
        \_1_net_[24] , \_1_net_[23] , \_1_net_[22] , \_1_net_[21] , 
        \_1_net_[20] , \_1_net_[19] , \_1_net_[18] , \_1_net_[17] , 
        \_1_net_[16] , \_1_net_[15] , \_1_net_[14] , \_1_net_[13] , 
        \_1_net_[12] , \_1_net_[11] , \_1_net_[10] , \_1_net_[9] , 
        \_1_net_[8] , \_1_net_[7] , \_1_net_[6] , \_1_net_[5] , \_1_net_[4] , 
        \_1_net_[3] , \_1_net_[2] , \_1_net_[1] , \_1_net_[0] }), .sum(
        adder_out), .n(n), .z(z), .c(c), .v(v) );
  shifter shifter_i ( .sr(shift_right), .arith(shift_arith), .shamt(
        rs2_data[4:0]), .data_in(rs1_data), .data_out(shifter_out) );
  NAND3X1 U152 ( .A(n110), .B(n1087), .C(n1119), .Y(rd_data[9]) );
  AOI22X1 U153 ( .A(imm_u[9]), .B(n5), .C(adder_out[9]), .D(n1178), .Y(n112)
         );
  AOI22X1 U155 ( .A(n1134), .B(rs1_data[9]), .C(n9), .D(n115), .Y(n110) );
  OAI21X1 U156 ( .A(rs1_data[9]), .B(n1173), .C(n117), .Y(n115) );
  AOI21X1 U157 ( .A(n3), .B(rs1_data[9]), .C(n118), .Y(n117) );
  NAND3X1 U159 ( .A(n119), .B(n1086), .C(n1118), .Y(rd_data[8]) );
  AOI22X1 U160 ( .A(imm_u[8]), .B(n5), .C(adder_out[8]), .D(n1178), .Y(n121)
         );
  AOI22X1 U162 ( .A(n1139), .B(rs1_data[8]), .C(n10), .D(n123), .Y(n119) );
  OAI21X1 U163 ( .A(rs1_data[8]), .B(n1172), .C(n124), .Y(n123) );
  AOI21X1 U164 ( .A(rs1_data[8]), .B(n3), .C(n118), .Y(n124) );
  NAND3X1 U166 ( .A(n125), .B(n1085), .C(n1117), .Y(rd_data[7]) );
  AOI22X1 U167 ( .A(imm_u[7]), .B(n5), .C(adder_out[7]), .D(n1178), .Y(n127)
         );
  AOI22X1 U169 ( .A(n1151), .B(rs1_data[7]), .C(n11), .D(n129), .Y(n125) );
  OAI21X1 U170 ( .A(rs1_data[7]), .B(n1172), .C(n130), .Y(n129) );
  AOI21X1 U171 ( .A(rs1_data[7]), .B(n3), .C(n118), .Y(n130) );
  NAND3X1 U173 ( .A(n131), .B(n1084), .C(n1116), .Y(rd_data[6]) );
  AOI22X1 U174 ( .A(imm_u[6]), .B(n5), .C(adder_out[6]), .D(n1178), .Y(n133)
         );
  AOI22X1 U176 ( .A(n1158), .B(rs1_data[6]), .C(n12), .D(n135), .Y(n131) );
  OAI21X1 U177 ( .A(rs1_data[6]), .B(n1172), .C(n136), .Y(n135) );
  AOI21X1 U178 ( .A(rs1_data[6]), .B(n3), .C(n118), .Y(n136) );
  NAND3X1 U180 ( .A(n137), .B(n1083), .C(n1115), .Y(rd_data[5]) );
  AOI22X1 U181 ( .A(imm_u[5]), .B(n5), .C(adder_out[5]), .D(n1178), .Y(n139)
         );
  AOI22X1 U183 ( .A(n1164), .B(rs1_data[5]), .C(n13), .D(n141), .Y(n137) );
  OAI21X1 U184 ( .A(rs1_data[5]), .B(n1172), .C(n142), .Y(n141) );
  AOI21X1 U185 ( .A(rs1_data[5]), .B(n3), .C(n118), .Y(n142) );
  NAND3X1 U187 ( .A(n143), .B(n1082), .C(n1114), .Y(rd_data[4]) );
  AOI22X1 U188 ( .A(imm_u[4]), .B(n5), .C(adder_out[4]), .D(n1178), .Y(n145)
         );
  AOI22X1 U190 ( .A(n1167), .B(rs1_data[4]), .C(n14), .D(n147), .Y(n143) );
  OAI21X1 U191 ( .A(rs1_data[4]), .B(n1172), .C(n148), .Y(n147) );
  AOI21X1 U192 ( .A(rs1_data[4]), .B(n3), .C(n118), .Y(n148) );
  NAND3X1 U194 ( .A(n149), .B(n1081), .C(n1113), .Y(rd_data[3]) );
  AOI22X1 U195 ( .A(imm_u[3]), .B(n5), .C(adder_out[3]), .D(n1178), .Y(n151)
         );
  AOI22X1 U197 ( .A(n1165), .B(rs1_data[3]), .C(n15), .D(n153), .Y(n149) );
  OAI21X1 U198 ( .A(rs1_data[3]), .B(n1172), .C(n154), .Y(n153) );
  AOI21X1 U199 ( .A(rs1_data[3]), .B(n3), .C(n118), .Y(n154) );
  NAND3X1 U201 ( .A(n155), .B(n1080), .C(n1112), .Y(rd_data[31]) );
  AOI22X1 U202 ( .A(imm_u[31]), .B(n5), .C(adder_out[31]), .D(n1178), .Y(n157)
         );
  AOI22X1 U204 ( .A(n1054), .B(rs1_data[31]), .C(n16), .D(n159), .Y(n155) );
  OAI21X1 U205 ( .A(rs1_data[31]), .B(n1172), .C(n160), .Y(n159) );
  AOI21X1 U206 ( .A(rs1_data[31]), .B(n3), .C(n118), .Y(n160) );
  NAND3X1 U208 ( .A(n161), .B(n1079), .C(n1111), .Y(rd_data[30]) );
  AOI22X1 U209 ( .A(imm_u[30]), .B(n5), .C(adder_out[30]), .D(n1178), .Y(n163)
         );
  AOI22X1 U211 ( .A(n1053), .B(rs1_data[30]), .C(n17), .D(n165), .Y(n161) );
  OAI21X1 U212 ( .A(rs1_data[30]), .B(n1172), .C(n166), .Y(n165) );
  AOI21X1 U213 ( .A(rs1_data[30]), .B(n3), .C(n118), .Y(n166) );
  NAND3X1 U215 ( .A(n167), .B(n1078), .C(n1110), .Y(rd_data[2]) );
  AOI22X1 U216 ( .A(imm_u[2]), .B(n5), .C(adder_out[2]), .D(n1178), .Y(n169)
         );
  AOI22X1 U218 ( .A(n1168), .B(rs1_data[2]), .C(n18), .D(n171), .Y(n167) );
  OAI21X1 U219 ( .A(rs1_data[2]), .B(n1172), .C(n172), .Y(n171) );
  AOI21X1 U220 ( .A(rs1_data[2]), .B(n3), .C(n118), .Y(n172) );
  NAND3X1 U222 ( .A(n173), .B(n1077), .C(n1109), .Y(rd_data[29]) );
  AOI22X1 U223 ( .A(imm_u[29]), .B(n5), .C(adder_out[29]), .D(n1178), .Y(n175)
         );
  AOI22X1 U225 ( .A(n1052), .B(rs1_data[29]), .C(n19), .D(n177), .Y(n173) );
  OAI21X1 U226 ( .A(rs1_data[29]), .B(n1172), .C(n178), .Y(n177) );
  AOI21X1 U227 ( .A(rs1_data[29]), .B(n3), .C(n118), .Y(n178) );
  NAND3X1 U229 ( .A(n179), .B(n1076), .C(n1108), .Y(rd_data[28]) );
  AOI22X1 U230 ( .A(imm_u[28]), .B(n5), .C(adder_out[28]), .D(n1178), .Y(n181)
         );
  AOI22X1 U232 ( .A(n182), .B(rs1_data[28]), .C(n20), .D(n183), .Y(n179) );
  OAI21X1 U233 ( .A(rs1_data[28]), .B(n1172), .C(n184), .Y(n183) );
  AOI21X1 U234 ( .A(rs1_data[28]), .B(n3), .C(n118), .Y(n184) );
  NOR2X1 U235 ( .A(n1175), .B(n20), .Y(n182) );
  NAND3X1 U236 ( .A(n185), .B(n1075), .C(n1107), .Y(rd_data[27]) );
  AOI22X1 U237 ( .A(imm_u[27]), .B(n5), .C(adder_out[27]), .D(n1178), .Y(n187)
         );
  AOI22X1 U239 ( .A(n188), .B(rs1_data[27]), .C(n21), .D(n189), .Y(n185) );
  OAI21X1 U240 ( .A(rs1_data[27]), .B(n1172), .C(n190), .Y(n189) );
  AOI21X1 U241 ( .A(rs1_data[27]), .B(n3), .C(n118), .Y(n190) );
  NOR2X1 U242 ( .A(n1175), .B(n21), .Y(n188) );
  NAND3X1 U243 ( .A(n191), .B(n1074), .C(n1106), .Y(rd_data[26]) );
  AOI22X1 U244 ( .A(imm_u[26]), .B(n5), .C(adder_out[26]), .D(n1178), .Y(n193)
         );
  AOI22X1 U246 ( .A(n194), .B(rs1_data[26]), .C(n22), .D(n195), .Y(n191) );
  OAI21X1 U247 ( .A(rs1_data[26]), .B(n1173), .C(n196), .Y(n195) );
  AOI21X1 U248 ( .A(rs1_data[26]), .B(n3), .C(n118), .Y(n196) );
  NOR2X1 U249 ( .A(n1175), .B(n22), .Y(n194) );
  NAND3X1 U250 ( .A(n197), .B(n1073), .C(n1105), .Y(rd_data[25]) );
  AOI22X1 U251 ( .A(imm_u[25]), .B(n5), .C(adder_out[25]), .D(n1178), .Y(n199)
         );
  AOI22X1 U253 ( .A(n200), .B(rs1_data[25]), .C(n23), .D(n201), .Y(n197) );
  OAI21X1 U254 ( .A(rs1_data[25]), .B(n1173), .C(n202), .Y(n201) );
  AOI21X1 U255 ( .A(rs1_data[25]), .B(n3), .C(n118), .Y(n202) );
  NOR2X1 U256 ( .A(n1175), .B(n23), .Y(n200) );
  NAND3X1 U257 ( .A(n203), .B(n1072), .C(n1104), .Y(rd_data[24]) );
  AOI22X1 U258 ( .A(imm_u[24]), .B(n5), .C(adder_out[24]), .D(n1178), .Y(n205)
         );
  AOI22X1 U260 ( .A(n1137), .B(rs1_data[24]), .C(n24), .D(n207), .Y(n203) );
  OAI21X1 U261 ( .A(rs1_data[24]), .B(n1173), .C(n208), .Y(n207) );
  AOI21X1 U262 ( .A(rs1_data[24]), .B(n3), .C(n118), .Y(n208) );
  NAND3X1 U264 ( .A(n209), .B(n1071), .C(n1103), .Y(rd_data[23]) );
  AOI22X1 U265 ( .A(imm_u[23]), .B(n5), .C(adder_out[23]), .D(n1178), .Y(n211)
         );
  AOI22X1 U267 ( .A(n1125), .B(rs1_data[23]), .C(n25), .D(n213), .Y(n209) );
  OAI21X1 U268 ( .A(rs1_data[23]), .B(n1173), .C(n214), .Y(n213) );
  AOI21X1 U269 ( .A(rs1_data[23]), .B(n3), .C(n118), .Y(n214) );
  NAND3X1 U271 ( .A(n215), .B(n1070), .C(n1102), .Y(rd_data[22]) );
  AOI22X1 U272 ( .A(imm_u[22]), .B(n5), .C(adder_out[22]), .D(n1178), .Y(n217)
         );
  AOI22X1 U274 ( .A(n1143), .B(rs1_data[22]), .C(n26), .D(n219), .Y(n215) );
  OAI21X1 U275 ( .A(rs1_data[22]), .B(n1173), .C(n220), .Y(n219) );
  AOI21X1 U276 ( .A(rs1_data[22]), .B(n3), .C(n118), .Y(n220) );
  NAND3X1 U278 ( .A(n221), .B(n1069), .C(n1101), .Y(rd_data[21]) );
  AOI22X1 U279 ( .A(imm_u[21]), .B(n5), .C(adder_out[21]), .D(n1178), .Y(n223)
         );
  AOI22X1 U281 ( .A(n1149), .B(rs1_data[21]), .C(n27), .D(n225), .Y(n221) );
  OAI21X1 U282 ( .A(rs1_data[21]), .B(n1173), .C(n226), .Y(n225) );
  AOI21X1 U283 ( .A(rs1_data[21]), .B(n3), .C(n118), .Y(n226) );
  NAND3X1 U285 ( .A(n227), .B(n1068), .C(n1100), .Y(rd_data[20]) );
  AOI22X1 U286 ( .A(imm_u[20]), .B(n5), .C(adder_out[20]), .D(n1178), .Y(n229)
         );
  AOI22X1 U288 ( .A(n1129), .B(rs1_data[20]), .C(n28), .D(n231), .Y(n227) );
  OAI21X1 U289 ( .A(rs1_data[20]), .B(n1173), .C(n232), .Y(n231) );
  AOI21X1 U290 ( .A(rs1_data[20]), .B(n3), .C(n118), .Y(n232) );
  NAND3X1 U292 ( .A(n233), .B(n1067), .C(n1099), .Y(rd_data[1]) );
  AOI22X1 U293 ( .A(imm_u[1]), .B(n5), .C(adder_out[1]), .D(n1178), .Y(n235)
         );
  AOI22X1 U295 ( .A(n1166), .B(rs1_data[1]), .C(n29), .D(n237), .Y(n233) );
  OAI21X1 U296 ( .A(rs1_data[1]), .B(n1173), .C(n238), .Y(n237) );
  AOI21X1 U297 ( .A(rs1_data[1]), .B(n3), .C(n118), .Y(n238) );
  NAND3X1 U299 ( .A(n239), .B(n1066), .C(n1098), .Y(rd_data[19]) );
  AOI22X1 U300 ( .A(imm_u[19]), .B(n5), .C(adder_out[19]), .D(n1178), .Y(n241)
         );
  AOI22X1 U302 ( .A(n1156), .B(rs1_data[19]), .C(n30), .D(n243), .Y(n239) );
  OAI21X1 U303 ( .A(rs1_data[19]), .B(n1173), .C(n244), .Y(n243) );
  AOI21X1 U304 ( .A(rs1_data[19]), .B(n3), .C(n118), .Y(n244) );
  NAND3X1 U306 ( .A(n245), .B(n1065), .C(n1097), .Y(rd_data[18]) );
  AOI22X1 U307 ( .A(imm_u[18]), .B(n5), .C(adder_out[18]), .D(n1178), .Y(n247)
         );
  AOI22X1 U309 ( .A(n1133), .B(rs1_data[18]), .C(n31), .D(n249), .Y(n245) );
  OAI21X1 U310 ( .A(rs1_data[18]), .B(n1173), .C(n250), .Y(n249) );
  AOI21X1 U311 ( .A(rs1_data[18]), .B(n3), .C(n118), .Y(n250) );
  NAND3X1 U313 ( .A(n251), .B(n1064), .C(n1096), .Y(rd_data[17]) );
  AOI22X1 U314 ( .A(imm_u[17]), .B(n5), .C(adder_out[17]), .D(n1178), .Y(n253)
         );
  AOI22X1 U316 ( .A(n1163), .B(rs1_data[17]), .C(n32), .D(n255), .Y(n251) );
  OAI21X1 U317 ( .A(rs1_data[17]), .B(n1174), .C(n256), .Y(n255) );
  AOI21X1 U318 ( .A(rs1_data[17]), .B(n3), .C(n118), .Y(n256) );
  NAND3X1 U320 ( .A(n257), .B(n1063), .C(n1095), .Y(rd_data[16]) );
  AOI22X1 U321 ( .A(imm_u[16]), .B(n5), .C(adder_out[16]), .D(n1178), .Y(n259)
         );
  AOI22X1 U323 ( .A(n1138), .B(rs1_data[16]), .C(n33), .D(n261), .Y(n257) );
  OAI21X1 U324 ( .A(rs1_data[16]), .B(n1173), .C(n262), .Y(n261) );
  AOI21X1 U325 ( .A(rs1_data[16]), .B(n3), .C(n118), .Y(n262) );
  NAND3X1 U327 ( .A(n263), .B(n1062), .C(n1094), .Y(rd_data[15]) );
  AOI22X1 U328 ( .A(imm_u[15]), .B(n5), .C(adder_out[15]), .D(n1178), .Y(n265)
         );
  AOI22X1 U330 ( .A(n1157), .B(rs1_data[15]), .C(n34), .D(n267), .Y(n263) );
  OAI21X1 U331 ( .A(rs1_data[15]), .B(n1174), .C(n268), .Y(n267) );
  AOI21X1 U332 ( .A(rs1_data[15]), .B(n3), .C(n118), .Y(n268) );
  NAND3X1 U334 ( .A(n269), .B(n1061), .C(n1093), .Y(rd_data[14]) );
  AOI22X1 U335 ( .A(imm_u[14]), .B(n5), .C(adder_out[14]), .D(n1178), .Y(n271)
         );
  AOI22X1 U337 ( .A(n1144), .B(rs1_data[14]), .C(n35), .D(n273), .Y(n269) );
  OAI21X1 U338 ( .A(rs1_data[14]), .B(n1174), .C(n274), .Y(n273) );
  AOI21X1 U339 ( .A(rs1_data[14]), .B(n3), .C(n118), .Y(n274) );
  NAND3X1 U341 ( .A(n275), .B(n1060), .C(n1092), .Y(rd_data[13]) );
  AOI22X1 U342 ( .A(imm_u[13]), .B(n5), .C(adder_out[13]), .D(n1178), .Y(n277)
         );
  AOI22X1 U344 ( .A(n1150), .B(rs1_data[13]), .C(n36), .D(n279), .Y(n275) );
  OAI21X1 U345 ( .A(rs1_data[13]), .B(n1174), .C(n280), .Y(n279) );
  AOI21X1 U346 ( .A(rs1_data[13]), .B(n3), .C(n118), .Y(n280) );
  NAND3X1 U348 ( .A(n281), .B(n1059), .C(n1091), .Y(rd_data[12]) );
  AOI22X1 U349 ( .A(imm_u[12]), .B(n5), .C(adder_out[12]), .D(n1178), .Y(n283)
         );
  AOI22X1 U351 ( .A(n284), .B(rs1_data[12]), .C(n37), .D(n285), .Y(n281) );
  OAI21X1 U352 ( .A(rs1_data[12]), .B(n1174), .C(n286), .Y(n285) );
  AOI21X1 U353 ( .A(rs1_data[12]), .B(n3), .C(n118), .Y(n286) );
  NOR2X1 U354 ( .A(n1176), .B(n37), .Y(n284) );
  NAND3X1 U355 ( .A(n287), .B(n1058), .C(n1090), .Y(rd_data[11]) );
  AOI22X1 U356 ( .A(imm_u[11]), .B(n5), .C(adder_out[11]), .D(n1178), .Y(n289)
         );
  AOI22X1 U358 ( .A(n1126), .B(rs1_data[11]), .C(n38), .D(n291), .Y(n287) );
  OAI21X1 U359 ( .A(rs1_data[11]), .B(n1174), .C(n292), .Y(n291) );
  AOI21X1 U360 ( .A(rs1_data[11]), .B(n3), .C(n118), .Y(n292) );
  NAND3X1 U362 ( .A(n293), .B(n1057), .C(n1089), .Y(rd_data[10]) );
  AOI22X1 U363 ( .A(imm_u[10]), .B(n5), .C(adder_out[10]), .D(n1178), .Y(n295)
         );
  AOI22X1 U365 ( .A(n1130), .B(rs1_data[10]), .C(n39), .D(n297), .Y(n293) );
  OAI21X1 U366 ( .A(rs1_data[10]), .B(n1174), .C(n298), .Y(n297) );
  AOI21X1 U367 ( .A(rs1_data[10]), .B(n3), .C(n118), .Y(n298) );
  NAND3X1 U369 ( .A(n299), .B(n1056), .C(n1088), .Y(rd_data[0]) );
  AOI22X1 U370 ( .A(imm_u[0]), .B(n5), .C(adder_out[0]), .D(n1178), .Y(n301)
         );
  NAND3X1 U371 ( .A(n302), .B(n1055), .C(n1121), .Y(n113) );
  NAND3X1 U372 ( .A(alu_op[0]), .B(alu_op[1]), .C(alu_op[2]), .Y(n303) );
  NAND2X1 U373 ( .A(n7), .B(n6), .Y(n302) );
  NAND3X1 U374 ( .A(alu_op[1]), .B(n8), .C(n306), .Y(n305) );
  NAND3X1 U376 ( .A(alu_op[0]), .B(n7), .C(n306), .Y(n307) );
  AOI22X1 U377 ( .A(n1145), .B(rs1_data[0]), .C(n40), .D(n309), .Y(n299) );
  OAI21X1 U378 ( .A(rs1_data[0]), .B(n1174), .C(n310), .Y(n309) );
  AOI21X1 U379 ( .A(rs1_data[0]), .B(n3), .C(n118), .Y(n310) );
  NAND3X1 U380 ( .A(n8), .B(n7), .C(n306), .Y(n311) );
  NAND3X1 U382 ( .A(n1121), .B(n6), .C(alu_op[1]), .Y(n116) );
  NAND3X1 U384 ( .A(n314), .B(n315), .C(n316), .Y(n313) );
  NOR3X1 U385 ( .A(n319), .B(alu_op[21]), .C(alu_op[20]), .Y(n318) );
  NOR3X1 U386 ( .A(alu_op[17]), .B(alu_op[19]), .C(alu_op[18]), .Y(n317) );
  NOR3X1 U387 ( .A(n320), .B(alu_op[14]), .C(alu_op[13]), .Y(n315) );
  NOR3X1 U388 ( .A(alu_op[10]), .B(alu_op[12]), .C(alu_op[11]), .Y(n314) );
  NAND3X1 U389 ( .A(n321), .B(n322), .C(n323), .Y(n312) );
  NOR3X1 U390 ( .A(n326), .B(alu_op[7]), .C(alu_op[6]), .Y(n325) );
  NOR3X1 U391 ( .A(n327), .B(alu_op[3]), .C(alu_op[31]), .Y(n324) );
  NOR3X1 U392 ( .A(n328), .B(alu_op[28]), .C(alu_op[27]), .Y(n322) );
  NOR3X1 U393 ( .A(alu_op[24]), .B(alu_op[26]), .C(alu_op[25]), .Y(n321) );
  OAI21X1 U394 ( .A(n329), .B(n1192), .C(n1152), .Y(branch) );
  OAI21X1 U396 ( .A(n1162), .B(n44), .C(n1161), .Y(n331) );
  XNOR2X1 U398 ( .A(z), .B(n45), .Y(n334) );
  AOI22X1 U399 ( .A(n335), .B(n45), .C(comp_op[0]), .D(n1), .Y(n332) );
  AOI22X1 U400 ( .A(n336), .B(n44), .C(n337), .D(comp_op[1]), .Y(n329) );
  XNOR2X1 U401 ( .A(c), .B(comp_op[0]), .Y(n337) );
  XNOR2X1 U402 ( .A(n45), .B(n335), .Y(n336) );
  XOR2X1 U403 ( .A(v), .B(n), .Y(n335) );
  OAI21X1 U404 ( .A(n100), .B(n1190), .C(n338), .Y(\_1_net_[9] ) );
  AOI22X1 U405 ( .A(n1171), .B(n9), .C(imm_s[9]), .D(n340), .Y(n338) );
  OAI21X1 U406 ( .A(imm_i[9]), .B(n1182), .C(n342), .Y(n341) );
  OAI21X1 U407 ( .A(n101), .B(n1190), .C(n343), .Y(\_1_net_[8] ) );
  AOI22X1 U408 ( .A(n1171), .B(n10), .C(imm_s[8]), .D(n340), .Y(n343) );
  OAI21X1 U409 ( .A(imm_i[8]), .B(n1182), .C(n345), .Y(n344) );
  OAI21X1 U410 ( .A(n102), .B(n1190), .C(n346), .Y(\_1_net_[7] ) );
  AOI22X1 U411 ( .A(n1171), .B(n11), .C(imm_s[7]), .D(n340), .Y(n346) );
  OAI21X1 U412 ( .A(imm_i[7]), .B(n1182), .C(n348), .Y(n347) );
  OAI21X1 U413 ( .A(n103), .B(n1190), .C(n349), .Y(\_1_net_[6] ) );
  AOI22X1 U414 ( .A(n1171), .B(n12), .C(imm_s[6]), .D(n340), .Y(n349) );
  OAI21X1 U415 ( .A(imm_i[6]), .B(n1182), .C(n351), .Y(n350) );
  OAI21X1 U416 ( .A(n104), .B(n1190), .C(n1148), .Y(\_1_net_[5] ) );
  AOI22X1 U417 ( .A(n1171), .B(n13), .C(imm_s[5]), .D(n340), .Y(n352) );
  OAI21X1 U418 ( .A(imm_i[5]), .B(n1182), .C(n354), .Y(n353) );
  OAI21X1 U419 ( .A(n105), .B(n1189), .C(n355), .Y(\_1_net_[4] ) );
  AOI22X1 U420 ( .A(n1171), .B(n14), .C(imm_s[4]), .D(n340), .Y(n355) );
  OAI21X1 U421 ( .A(imm_i[4]), .B(n1182), .C(n357), .Y(n356) );
  OAI21X1 U422 ( .A(n106), .B(n1189), .C(n1155), .Y(\_1_net_[3] ) );
  AOI22X1 U423 ( .A(n1171), .B(n15), .C(imm_s[3]), .D(n340), .Y(n358) );
  OAI21X1 U424 ( .A(imm_i[3]), .B(n1182), .C(n360), .Y(n359) );
  OAI21X1 U425 ( .A(n1170), .B(n1189), .C(n1142), .Y(\_1_net_[31] ) );
  AOI22X1 U426 ( .A(n1171), .B(n16), .C(imm_s[31]), .D(n340), .Y(n361) );
  OAI21X1 U427 ( .A(imm_i[31]), .B(n1182), .C(n363), .Y(n362) );
  OAI21X1 U428 ( .A(n79), .B(n1189), .C(n364), .Y(\_1_net_[30] ) );
  AOI22X1 U429 ( .A(n1171), .B(n17), .C(imm_s[30]), .D(n340), .Y(n364) );
  OAI21X1 U430 ( .A(imm_i[30]), .B(n1182), .C(n366), .Y(n365) );
  OAI21X1 U431 ( .A(n107), .B(n1189), .C(n367), .Y(\_1_net_[2] ) );
  AOI22X1 U432 ( .A(n1171), .B(n18), .C(imm_s[2]), .D(n340), .Y(n367) );
  OAI21X1 U433 ( .A(imm_i[2]), .B(n1182), .C(n369), .Y(n368) );
  OAI21X1 U434 ( .A(n80), .B(n1189), .C(n370), .Y(\_1_net_[29] ) );
  AOI22X1 U435 ( .A(n1171), .B(n19), .C(imm_s[29]), .D(n340), .Y(n370) );
  OAI21X1 U436 ( .A(imm_i[29]), .B(n1182), .C(n372), .Y(n371) );
  OAI21X1 U437 ( .A(n81), .B(n1189), .C(n373), .Y(\_1_net_[28] ) );
  AOI22X1 U438 ( .A(n1171), .B(n20), .C(imm_s[28]), .D(n340), .Y(n373) );
  OAI21X1 U439 ( .A(imm_i[28]), .B(n1182), .C(n375), .Y(n374) );
  OAI21X1 U440 ( .A(n82), .B(n1189), .C(n376), .Y(\_1_net_[27] ) );
  AOI22X1 U441 ( .A(n1171), .B(n21), .C(imm_s[27]), .D(n340), .Y(n376) );
  OAI21X1 U442 ( .A(imm_i[27]), .B(n1183), .C(n378), .Y(n377) );
  OAI21X1 U443 ( .A(n83), .B(n1189), .C(n379), .Y(\_1_net_[26] ) );
  AOI22X1 U444 ( .A(n1171), .B(n22), .C(imm_s[26]), .D(n340), .Y(n379) );
  OAI21X1 U445 ( .A(imm_i[26]), .B(n1183), .C(n381), .Y(n380) );
  OAI21X1 U446 ( .A(n84), .B(n1189), .C(n382), .Y(\_1_net_[25] ) );
  AOI22X1 U447 ( .A(n1171), .B(n23), .C(imm_s[25]), .D(n340), .Y(n382) );
  OAI21X1 U448 ( .A(imm_i[25]), .B(n1183), .C(n384), .Y(n383) );
  OAI21X1 U449 ( .A(n85), .B(n1188), .C(n385), .Y(\_1_net_[24] ) );
  AOI22X1 U450 ( .A(n1171), .B(n24), .C(imm_s[24]), .D(n340), .Y(n385) );
  OAI21X1 U451 ( .A(imm_i[24]), .B(n1183), .C(n387), .Y(n386) );
  OAI21X1 U452 ( .A(n86), .B(n1188), .C(n388), .Y(\_1_net_[23] ) );
  AOI22X1 U453 ( .A(n1171), .B(n25), .C(imm_s[23]), .D(n340), .Y(n388) );
  OAI21X1 U454 ( .A(imm_i[23]), .B(n1183), .C(n390), .Y(n389) );
  OAI21X1 U455 ( .A(n87), .B(n1188), .C(n391), .Y(\_1_net_[22] ) );
  AOI22X1 U456 ( .A(n1171), .B(n26), .C(imm_s[22]), .D(n340), .Y(n391) );
  OAI21X1 U457 ( .A(imm_i[22]), .B(n1183), .C(n393), .Y(n392) );
  OAI21X1 U458 ( .A(n88), .B(n1188), .C(n394), .Y(\_1_net_[21] ) );
  AOI22X1 U459 ( .A(n1171), .B(n27), .C(imm_s[21]), .D(n340), .Y(n394) );
  OAI21X1 U460 ( .A(imm_i[21]), .B(n1183), .C(n396), .Y(n395) );
  OAI21X1 U461 ( .A(n89), .B(n1188), .C(n397), .Y(\_1_net_[20] ) );
  AOI22X1 U462 ( .A(n1171), .B(n28), .C(imm_s[20]), .D(n340), .Y(n397) );
  OAI21X1 U463 ( .A(imm_i[20]), .B(n1183), .C(n399), .Y(n398) );
  OAI21X1 U464 ( .A(n108), .B(n1188), .C(n400), .Y(\_1_net_[1] ) );
  AOI22X1 U465 ( .A(n1171), .B(n29), .C(imm_s[1]), .D(n340), .Y(n400) );
  OAI21X1 U466 ( .A(imm_i[1]), .B(n1183), .C(n402), .Y(n401) );
  OAI21X1 U467 ( .A(n90), .B(n1188), .C(n403), .Y(\_1_net_[19] ) );
  AOI22X1 U468 ( .A(n1171), .B(n30), .C(imm_s[19]), .D(n340), .Y(n403) );
  OAI21X1 U469 ( .A(imm_i[19]), .B(n1183), .C(n405), .Y(n404) );
  OAI21X1 U470 ( .A(n91), .B(n1188), .C(n406), .Y(\_1_net_[18] ) );
  AOI22X1 U471 ( .A(n1171), .B(n31), .C(imm_s[18]), .D(n340), .Y(n406) );
  OAI21X1 U472 ( .A(imm_i[18]), .B(n1183), .C(n408), .Y(n407) );
  OAI21X1 U473 ( .A(n92), .B(n1188), .C(n409), .Y(\_1_net_[17] ) );
  AOI22X1 U474 ( .A(n1171), .B(n32), .C(imm_s[17]), .D(n340), .Y(n409) );
  OAI21X1 U475 ( .A(imm_i[17]), .B(n1183), .C(n411), .Y(n410) );
  OAI21X1 U476 ( .A(n93), .B(n1188), .C(n412), .Y(\_1_net_[16] ) );
  AOI22X1 U477 ( .A(n1171), .B(n33), .C(imm_s[16]), .D(n340), .Y(n412) );
  OAI21X1 U478 ( .A(imm_i[16]), .B(n1181), .C(n414), .Y(n413) );
  OAI21X1 U479 ( .A(n94), .B(n1188), .C(n415), .Y(\_1_net_[15] ) );
  AOI22X1 U480 ( .A(n1171), .B(n34), .C(imm_s[15]), .D(n340), .Y(n415) );
  OAI21X1 U481 ( .A(imm_i[15]), .B(n1181), .C(n417), .Y(n416) );
  OAI21X1 U482 ( .A(n1191), .B(n1190), .C(n418), .Y(\_1_net_[14] ) );
  AOI22X1 U483 ( .A(n1171), .B(n35), .C(imm_s[14]), .D(n340), .Y(n418) );
  OAI21X1 U484 ( .A(imm_i[14]), .B(n1181), .C(n420), .Y(n419) );
  OAI21X1 U485 ( .A(n96), .B(n1190), .C(n421), .Y(\_1_net_[13] ) );
  AOI22X1 U486 ( .A(n1171), .B(n36), .C(imm_s[13]), .D(n340), .Y(n421) );
  OAI21X1 U487 ( .A(imm_i[13]), .B(n1181), .C(n423), .Y(n422) );
  OAI21X1 U488 ( .A(n97), .B(n1190), .C(n424), .Y(\_1_net_[12] ) );
  AOI22X1 U489 ( .A(n1171), .B(n37), .C(imm_s[12]), .D(n340), .Y(n424) );
  OAI21X1 U490 ( .A(imm_i[12]), .B(n1181), .C(n426), .Y(n425) );
  OAI21X1 U491 ( .A(n98), .B(n1190), .C(n427), .Y(\_1_net_[11] ) );
  AOI22X1 U492 ( .A(n1171), .B(n38), .C(imm_s[11]), .D(n340), .Y(n427) );
  OAI21X1 U493 ( .A(imm_i[11]), .B(n1181), .C(n429), .Y(n428) );
  OAI21X1 U494 ( .A(n99), .B(n1190), .C(n430), .Y(\_1_net_[10] ) );
  AOI22X1 U495 ( .A(n1171), .B(n39), .C(imm_s[10]), .D(n340), .Y(n430) );
  OAI21X1 U496 ( .A(imm_i[10]), .B(n1181), .C(n432), .Y(n431) );
  OAI21X1 U497 ( .A(n109), .B(n1189), .C(n433), .Y(\_1_net_[0] ) );
  AOI22X1 U498 ( .A(imm_s[0]), .B(n340), .C(n1171), .D(n40), .Y(n433) );
  OAI21X1 U499 ( .A(imm_i[0]), .B(n1181), .C(n435), .Y(n434) );
  OAI21X1 U501 ( .A(n1184), .B(n68), .C(n436), .Y(\_0_net_[9] ) );
  NAND2X1 U502 ( .A(PC[9]), .B(n1186), .Y(n436) );
  OAI21X1 U503 ( .A(n1184), .B(n69), .C(n1124), .Y(\_0_net_[8] ) );
  OAI21X1 U505 ( .A(n1184), .B(n70), .C(n1128), .Y(\_0_net_[7] ) );
  OAI21X1 U507 ( .A(n1184), .B(n71), .C(n1132), .Y(\_0_net_[6] ) );
  OAI21X1 U509 ( .A(n1184), .B(n72), .C(n1136), .Y(\_0_net_[5] ) );
  OAI21X1 U511 ( .A(n1184), .B(n73), .C(n1141), .Y(\_0_net_[4] ) );
  OAI21X1 U513 ( .A(n1184), .B(n74), .C(n1146), .Y(\_0_net_[3] ) );
  OAI21X1 U515 ( .A(n1184), .B(n46), .C(n1160), .Y(\_0_net_[31] ) );
  OAI21X1 U517 ( .A(n1185), .B(n47), .C(n444), .Y(\_0_net_[30] ) );
  NAND2X1 U518 ( .A(PC[30]), .B(is_auipc), .Y(n444) );
  OAI21X1 U519 ( .A(n1185), .B(n75), .C(n1153), .Y(\_0_net_[2] ) );
  OAI21X1 U521 ( .A(n1185), .B(n48), .C(n446), .Y(\_0_net_[29] ) );
  NAND2X1 U522 ( .A(PC[29]), .B(is_auipc), .Y(n446) );
  OAI21X1 U523 ( .A(n1185), .B(n49), .C(n447), .Y(\_0_net_[28] ) );
  NAND2X1 U524 ( .A(PC[28]), .B(n1187), .Y(n447) );
  OAI21X1 U525 ( .A(n1185), .B(n50), .C(n448), .Y(\_0_net_[27] ) );
  NAND2X1 U526 ( .A(PC[27]), .B(n1187), .Y(n448) );
  OAI21X1 U527 ( .A(n1185), .B(n51), .C(n449), .Y(\_0_net_[26] ) );
  NAND2X1 U528 ( .A(PC[26]), .B(n1187), .Y(n449) );
  OAI21X1 U529 ( .A(n1185), .B(n52), .C(n450), .Y(\_0_net_[25] ) );
  NAND2X1 U530 ( .A(PC[25]), .B(n1187), .Y(n450) );
  OAI21X1 U531 ( .A(n1185), .B(n53), .C(n451), .Y(\_0_net_[24] ) );
  NAND2X1 U532 ( .A(PC[24]), .B(n1187), .Y(n451) );
  OAI21X1 U533 ( .A(n1186), .B(n54), .C(n452), .Y(\_0_net_[23] ) );
  NAND2X1 U534 ( .A(PC[23]), .B(n1187), .Y(n452) );
  OAI21X1 U535 ( .A(n1186), .B(n55), .C(n453), .Y(\_0_net_[22] ) );
  NAND2X1 U536 ( .A(PC[22]), .B(n1187), .Y(n453) );
  OAI21X1 U537 ( .A(n1185), .B(n56), .C(n454), .Y(\_0_net_[21] ) );
  NAND2X1 U538 ( .A(PC[21]), .B(n1187), .Y(n454) );
  OAI21X1 U539 ( .A(n1186), .B(n57), .C(n455), .Y(\_0_net_[20] ) );
  NAND2X1 U540 ( .A(PC[20]), .B(n1187), .Y(n455) );
  OAI21X1 U541 ( .A(n1186), .B(n76), .C(n1147), .Y(\_0_net_[1] ) );
  OAI21X1 U543 ( .A(n1186), .B(n58), .C(n457), .Y(\_0_net_[19] ) );
  NAND2X1 U544 ( .A(PC[19]), .B(n1187), .Y(n457) );
  OAI21X1 U545 ( .A(n1186), .B(n59), .C(n1123), .Y(\_0_net_[18] ) );
  OAI21X1 U547 ( .A(n1186), .B(n60), .C(n1127), .Y(\_0_net_[17] ) );
  OAI21X1 U549 ( .A(n1186), .B(n61), .C(n1131), .Y(\_0_net_[16] ) );
  OAI21X1 U551 ( .A(n1185), .B(n62), .C(n1135), .Y(\_0_net_[15] ) );
  OAI21X1 U553 ( .A(n1185), .B(n63), .C(n1159), .Y(\_0_net_[14] ) );
  OAI21X1 U555 ( .A(n1185), .B(n64), .C(n1140), .Y(\_0_net_[13] ) );
  OAI21X1 U557 ( .A(n1184), .B(n65), .C(n464), .Y(\_0_net_[12] ) );
  NAND2X1 U558 ( .A(PC[12]), .B(n1186), .Y(n464) );
  OAI21X1 U559 ( .A(n1184), .B(n66), .C(n465), .Y(\_0_net_[11] ) );
  NAND2X1 U560 ( .A(PC[11]), .B(n1187), .Y(n465) );
  OAI21X1 U561 ( .A(n1184), .B(n67), .C(n466), .Y(\_0_net_[10] ) );
  NAND2X1 U562 ( .A(PC[10]), .B(n1186), .Y(n466) );
  OAI21X1 U563 ( .A(n1184), .B(n77), .C(n1154), .Y(\_0_net_[0] ) );
  AND2X1 U1 ( .A(alu_op[2]), .B(n1121), .Y(n306) );
  AND2X1 U2 ( .A(alu_op[0]), .B(n1177), .Y(n118) );
  OR2X1 U3 ( .A(n1175), .B(n19), .Y(n176) );
  INVX1 U4 ( .A(n176), .Y(n1052) );
  OR2X1 U5 ( .A(n1175), .B(n17), .Y(n164) );
  INVX1 U6 ( .A(n164), .Y(n1053) );
  OR2X1 U7 ( .A(n1175), .B(n16), .Y(n158) );
  INVX1 U8 ( .A(n158), .Y(n1054) );
  BUFX2 U9 ( .A(n303), .Y(n1055) );
  AND2X2 U10 ( .A(shifter_out[0]), .B(n4), .Y(n300) );
  INVX1 U11 ( .A(n300), .Y(n1056) );
  AND2X2 U12 ( .A(shifter_out[10]), .B(n4), .Y(n294) );
  INVX1 U13 ( .A(n294), .Y(n1057) );
  AND2X1 U14 ( .A(shifter_out[11]), .B(n4), .Y(n288) );
  INVX1 U15 ( .A(n288), .Y(n1058) );
  AND2X2 U16 ( .A(shifter_out[12]), .B(n4), .Y(n282) );
  INVX1 U17 ( .A(n282), .Y(n1059) );
  AND2X2 U18 ( .A(shifter_out[13]), .B(n4), .Y(n276) );
  INVX1 U19 ( .A(n276), .Y(n1060) );
  AND2X2 U20 ( .A(shifter_out[14]), .B(n4), .Y(n270) );
  INVX1 U21 ( .A(n270), .Y(n1061) );
  AND2X2 U22 ( .A(shifter_out[15]), .B(n4), .Y(n264) );
  INVX1 U23 ( .A(n264), .Y(n1062) );
  AND2X2 U24 ( .A(shifter_out[16]), .B(n4), .Y(n258) );
  INVX1 U25 ( .A(n258), .Y(n1063) );
  AND2X2 U26 ( .A(shifter_out[17]), .B(n4), .Y(n252) );
  INVX1 U27 ( .A(n252), .Y(n1064) );
  AND2X2 U28 ( .A(shifter_out[18]), .B(n4), .Y(n246) );
  INVX1 U29 ( .A(n246), .Y(n1065) );
  AND2X2 U30 ( .A(shifter_out[19]), .B(n4), .Y(n240) );
  INVX1 U31 ( .A(n240), .Y(n1066) );
  AND2X2 U32 ( .A(shifter_out[1]), .B(n4), .Y(n234) );
  INVX1 U33 ( .A(n234), .Y(n1067) );
  AND2X1 U34 ( .A(shifter_out[20]), .B(n4), .Y(n228) );
  INVX1 U35 ( .A(n228), .Y(n1068) );
  AND2X2 U36 ( .A(shifter_out[21]), .B(n4), .Y(n222) );
  INVX1 U37 ( .A(n222), .Y(n1069) );
  AND2X1 U38 ( .A(shifter_out[22]), .B(n4), .Y(n216) );
  INVX1 U39 ( .A(n216), .Y(n1070) );
  AND2X2 U40 ( .A(shifter_out[23]), .B(n4), .Y(n210) );
  INVX1 U41 ( .A(n210), .Y(n1071) );
  AND2X2 U42 ( .A(shifter_out[24]), .B(n4), .Y(n204) );
  INVX1 U43 ( .A(n204), .Y(n1072) );
  AND2X2 U44 ( .A(shifter_out[25]), .B(n4), .Y(n198) );
  INVX1 U45 ( .A(n198), .Y(n1073) );
  AND2X2 U46 ( .A(shifter_out[26]), .B(n4), .Y(n192) );
  INVX1 U47 ( .A(n192), .Y(n1074) );
  AND2X2 U48 ( .A(shifter_out[27]), .B(n4), .Y(n186) );
  INVX1 U49 ( .A(n186), .Y(n1075) );
  AND2X2 U50 ( .A(shifter_out[28]), .B(n4), .Y(n180) );
  INVX1 U51 ( .A(n180), .Y(n1076) );
  AND2X2 U52 ( .A(shifter_out[29]), .B(n4), .Y(n174) );
  INVX1 U53 ( .A(n174), .Y(n1077) );
  AND2X2 U54 ( .A(shifter_out[2]), .B(n4), .Y(n168) );
  INVX1 U55 ( .A(n168), .Y(n1078) );
  AND2X2 U56 ( .A(shifter_out[30]), .B(n4), .Y(n162) );
  INVX1 U57 ( .A(n162), .Y(n1079) );
  AND2X2 U58 ( .A(shifter_out[31]), .B(n4), .Y(n156) );
  INVX1 U59 ( .A(n156), .Y(n1080) );
  AND2X2 U60 ( .A(shifter_out[3]), .B(n4), .Y(n150) );
  INVX1 U61 ( .A(n150), .Y(n1081) );
  AND2X2 U62 ( .A(shifter_out[4]), .B(n4), .Y(n144) );
  INVX1 U63 ( .A(n144), .Y(n1082) );
  AND2X2 U64 ( .A(shifter_out[5]), .B(n4), .Y(n138) );
  INVX1 U65 ( .A(n138), .Y(n1083) );
  AND2X2 U66 ( .A(shifter_out[6]), .B(n4), .Y(n132) );
  INVX1 U67 ( .A(n132), .Y(n1084) );
  AND2X2 U68 ( .A(shifter_out[7]), .B(n4), .Y(n126) );
  INVX1 U69 ( .A(n126), .Y(n1085) );
  AND2X2 U70 ( .A(shifter_out[8]), .B(n4), .Y(n120) );
  INVX1 U71 ( .A(n120), .Y(n1086) );
  AND2X1 U72 ( .A(shifter_out[9]), .B(n4), .Y(n111) );
  INVX1 U73 ( .A(n111), .Y(n1087) );
  BUFX2 U74 ( .A(n301), .Y(n1088) );
  BUFX2 U75 ( .A(n295), .Y(n1089) );
  BUFX2 U76 ( .A(n289), .Y(n1090) );
  BUFX2 U77 ( .A(n283), .Y(n1091) );
  BUFX2 U78 ( .A(n277), .Y(n1092) );
  BUFX2 U79 ( .A(n271), .Y(n1093) );
  BUFX2 U80 ( .A(n265), .Y(n1094) );
  BUFX2 U81 ( .A(n259), .Y(n1095) );
  BUFX2 U82 ( .A(n253), .Y(n1096) );
  BUFX2 U83 ( .A(n247), .Y(n1097) );
  BUFX2 U84 ( .A(n241), .Y(n1098) );
  BUFX2 U85 ( .A(n235), .Y(n1099) );
  BUFX2 U86 ( .A(n229), .Y(n1100) );
  BUFX2 U87 ( .A(n223), .Y(n1101) );
  BUFX2 U88 ( .A(n217), .Y(n1102) );
  BUFX2 U89 ( .A(n211), .Y(n1103) );
  BUFX2 U90 ( .A(n205), .Y(n1104) );
  BUFX2 U91 ( .A(n199), .Y(n1105) );
  BUFX2 U92 ( .A(n193), .Y(n1106) );
  BUFX2 U93 ( .A(n187), .Y(n1107) );
  BUFX2 U94 ( .A(n181), .Y(n1108) );
  BUFX2 U95 ( .A(n175), .Y(n1109) );
  BUFX2 U96 ( .A(n169), .Y(n1110) );
  BUFX2 U97 ( .A(n163), .Y(n1111) );
  BUFX2 U98 ( .A(n157), .Y(n1112) );
  BUFX2 U99 ( .A(n151), .Y(n1113) );
  BUFX2 U100 ( .A(n145), .Y(n1114) );
  BUFX2 U101 ( .A(n139), .Y(n1115) );
  BUFX2 U102 ( .A(n133), .Y(n1116) );
  BUFX2 U103 ( .A(n127), .Y(n1117) );
  BUFX2 U104 ( .A(n121), .Y(n1118) );
  BUFX2 U105 ( .A(n112), .Y(n1119) );
  INVX1 U106 ( .A(n1122), .Y(n1120) );
  INVX1 U107 ( .A(n1120), .Y(n1121) );
  OR2X2 U108 ( .A(n312), .B(n313), .Y(n304) );
  INVX1 U109 ( .A(n304), .Y(n1122) );
  AND2X1 U110 ( .A(PC[18]), .B(n1187), .Y(n458) );
  INVX1 U111 ( .A(n458), .Y(n1123) );
  AND2X1 U112 ( .A(PC[8]), .B(is_auipc), .Y(n437) );
  INVX1 U113 ( .A(n437), .Y(n1124) );
  OR2X1 U114 ( .A(n1175), .B(n25), .Y(n212) );
  INVX1 U115 ( .A(n212), .Y(n1125) );
  OR2X1 U116 ( .A(n1176), .B(n38), .Y(n290) );
  INVX1 U117 ( .A(n290), .Y(n1126) );
  AND2X1 U118 ( .A(PC[17]), .B(n1187), .Y(n459) );
  INVX1 U119 ( .A(n459), .Y(n1127) );
  AND2X1 U120 ( .A(PC[7]), .B(is_auipc), .Y(n438) );
  INVX1 U121 ( .A(n438), .Y(n1128) );
  OR2X1 U122 ( .A(n1175), .B(n28), .Y(n230) );
  INVX1 U123 ( .A(n230), .Y(n1129) );
  OR2X1 U124 ( .A(n1176), .B(n39), .Y(n296) );
  INVX1 U125 ( .A(n296), .Y(n1130) );
  AND2X1 U126 ( .A(PC[16]), .B(n1187), .Y(n460) );
  INVX1 U127 ( .A(n460), .Y(n1131) );
  AND2X1 U128 ( .A(PC[6]), .B(is_auipc), .Y(n439) );
  INVX1 U129 ( .A(n439), .Y(n1132) );
  OR2X1 U130 ( .A(n1175), .B(n31), .Y(n248) );
  INVX1 U131 ( .A(n248), .Y(n1133) );
  OR2X1 U132 ( .A(n1176), .B(n9), .Y(n114) );
  INVX1 U133 ( .A(n114), .Y(n1134) );
  AND2X1 U134 ( .A(PC[15]), .B(n1186), .Y(n461) );
  INVX1 U135 ( .A(n461), .Y(n1135) );
  AND2X1 U136 ( .A(PC[5]), .B(is_auipc), .Y(n440) );
  INVX1 U137 ( .A(n440), .Y(n1136) );
  OR2X1 U138 ( .A(n1174), .B(n24), .Y(n206) );
  INVX1 U139 ( .A(n206), .Y(n1137) );
  OR2X1 U140 ( .A(n1175), .B(n33), .Y(n260) );
  INVX1 U141 ( .A(n260), .Y(n1138) );
  OR2X1 U142 ( .A(n1176), .B(n10), .Y(n122) );
  INVX1 U143 ( .A(n122), .Y(n1139) );
  AND2X1 U144 ( .A(PC[13]), .B(n1186), .Y(n463) );
  INVX1 U145 ( .A(n463), .Y(n1140) );
  AND2X1 U146 ( .A(PC[4]), .B(is_auipc), .Y(n441) );
  INVX1 U147 ( .A(n441), .Y(n1141) );
  BUFX2 U148 ( .A(n361), .Y(n1142) );
  OR2X1 U149 ( .A(n1174), .B(n26), .Y(n218) );
  INVX1 U150 ( .A(n218), .Y(n1143) );
  OR2X1 U151 ( .A(n1175), .B(n35), .Y(n272) );
  INVX1 U154 ( .A(n272), .Y(n1144) );
  OR2X1 U158 ( .A(n1176), .B(n40), .Y(n308) );
  INVX1 U161 ( .A(n308), .Y(n1145) );
  AND2X1 U165 ( .A(PC[3]), .B(is_auipc), .Y(n442) );
  INVX1 U168 ( .A(n442), .Y(n1146) );
  AND2X1 U172 ( .A(PC[1]), .B(n1187), .Y(n456) );
  INVX1 U175 ( .A(n456), .Y(n1147) );
  BUFX2 U179 ( .A(n352), .Y(n1148) );
  OR2X1 U182 ( .A(n1174), .B(n27), .Y(n224) );
  INVX1 U186 ( .A(n224), .Y(n1149) );
  OR2X1 U189 ( .A(n1175), .B(n36), .Y(n278) );
  INVX1 U193 ( .A(n278), .Y(n1150) );
  OR2X1 U196 ( .A(n1176), .B(n11), .Y(n128) );
  INVX1 U200 ( .A(n128), .Y(n1151) );
  AND2X1 U203 ( .A(n331), .B(n1192), .Y(n330) );
  INVX1 U207 ( .A(n330), .Y(n1152) );
  AND2X1 U210 ( .A(PC[2]), .B(is_auipc), .Y(n445) );
  INVX1 U214 ( .A(n445), .Y(n1153) );
  AND2X1 U217 ( .A(PC[0]), .B(n1187), .Y(n467) );
  INVX1 U221 ( .A(n467), .Y(n1154) );
  BUFX2 U224 ( .A(n358), .Y(n1155) );
  OR2X1 U228 ( .A(n1174), .B(n30), .Y(n242) );
  INVX1 U231 ( .A(n242), .Y(n1156) );
  OR2X1 U238 ( .A(n1175), .B(n34), .Y(n266) );
  INVX1 U245 ( .A(n266), .Y(n1157) );
  OR2X1 U252 ( .A(n1176), .B(n12), .Y(n134) );
  INVX1 U259 ( .A(n134), .Y(n1158) );
  AND2X1 U263 ( .A(PC[14]), .B(n1187), .Y(n462) );
  INVX1 U266 ( .A(n462), .Y(n1159) );
  AND2X1 U270 ( .A(PC[31]), .B(is_auipc), .Y(n443) );
  INVX1 U273 ( .A(n443), .Y(n1160) );
  AND2X1 U277 ( .A(n334), .B(n44), .Y(n333) );
  INVX1 U280 ( .A(n333), .Y(n1161) );
  BUFX2 U284 ( .A(n332), .Y(n1162) );
  OR2X1 U287 ( .A(n1174), .B(n32), .Y(n254) );
  INVX1 U291 ( .A(n254), .Y(n1163) );
  OR2X1 U294 ( .A(n1176), .B(n13), .Y(n140) );
  INVX1 U298 ( .A(n140), .Y(n1164) );
  OR2X1 U301 ( .A(n1175), .B(n15), .Y(n152) );
  INVX1 U305 ( .A(n152), .Y(n1165) );
  OR2X1 U308 ( .A(n1174), .B(n29), .Y(n236) );
  INVX1 U312 ( .A(n236), .Y(n1166) );
  OR2X1 U315 ( .A(n1176), .B(n14), .Y(n146) );
  INVX1 U319 ( .A(n146), .Y(n1167) );
  OR2X1 U322 ( .A(n1175), .B(n18), .Y(n170) );
  INVX1 U326 ( .A(n170), .Y(n1168) );
  INVX1 U329 ( .A(n1190), .Y(n1187) );
  INVX1 U333 ( .A(n1188), .Y(n1186) );
  INVX1 U336 ( .A(n1189), .Y(n1184) );
  INVX1 U340 ( .A(n1188), .Y(n1185) );
  INVX1 U343 ( .A(n1177), .Y(n1176) );
  INVX1 U347 ( .A(c), .Y(n1) );
  INVX1 U350 ( .A(imm_u[31]), .Y(n1170) );
  INVX1 U357 ( .A(n1179), .Y(n1178) );
  INVX1 U361 ( .A(n1169), .Y(n1171) );
  INVX1 U364 ( .A(n1181), .Y(n1180) );
  INVX1 U368 ( .A(n311), .Y(n3) );
  INVX1 U375 ( .A(is_auipc), .Y(n1188) );
  INVX1 U381 ( .A(n1177), .Y(n1174) );
  INVX1 U383 ( .A(n1177), .Y(n1175) );
  INVX1 U395 ( .A(is_imm), .Y(n1183) );
  INVX1 U397 ( .A(is_imm), .Y(n1182) );
  INVX1 U500 ( .A(is_auipc), .Y(n1189) );
  INVX1 U504 ( .A(n1177), .Y(n1173) );
  INVX1 U506 ( .A(n1177), .Y(n1172) );
  INVX1 U508 ( .A(is_auipc), .Y(n1190) );
  INVX1 U510 ( .A(n113), .Y(n1179) );
  INVX1 U512 ( .A(alu_op[1]), .Y(n7) );
  OR2X1 U514 ( .A(is_store_op), .B(n1186), .Y(n1169) );
  INVX1 U516 ( .A(alu_op[0]), .Y(n8) );
  INVX1 U520 ( .A(alu_op[2]), .Y(n6) );
  INVX1 U542 ( .A(is_imm), .Y(n1181) );
  AND2X1 U546 ( .A(is_store_op), .B(n1190), .Y(n340) );
  INVX1 U548 ( .A(n116), .Y(n1177) );
  INVX1 U550 ( .A(n305), .Y(n5) );
  INVX1 U552 ( .A(n307), .Y(n4) );
  INVX1 U554 ( .A(imm_u[14]), .Y(n1191) );
  INVX1 U556 ( .A(comp_op[2]), .Y(n1192) );
  INVX1 U564 ( .A(rs1_data[0]), .Y(n77) );
  INVX1 U565 ( .A(rs1_data[1]), .Y(n76) );
  INVX1 U566 ( .A(rs1_data[2]), .Y(n75) );
  INVX1 U567 ( .A(rs1_data[3]), .Y(n74) );
  INVX1 U568 ( .A(rs1_data[4]), .Y(n73) );
  INVX1 U569 ( .A(rs1_data[5]), .Y(n72) );
  INVX1 U570 ( .A(rs1_data[6]), .Y(n71) );
  INVX1 U571 ( .A(rs1_data[7]), .Y(n70) );
  INVX1 U572 ( .A(rs1_data[8]), .Y(n69) );
  INVX1 U573 ( .A(rs1_data[9]), .Y(n68) );
  INVX1 U574 ( .A(rs1_data[10]), .Y(n67) );
  INVX1 U575 ( .A(rs1_data[11]), .Y(n66) );
  INVX1 U576 ( .A(rs1_data[12]), .Y(n65) );
  INVX1 U577 ( .A(rs1_data[13]), .Y(n64) );
  INVX1 U578 ( .A(rs1_data[14]), .Y(n63) );
  INVX1 U579 ( .A(rs1_data[15]), .Y(n62) );
  INVX1 U580 ( .A(rs1_data[16]), .Y(n61) );
  INVX1 U581 ( .A(rs1_data[17]), .Y(n60) );
  INVX1 U582 ( .A(rs1_data[18]), .Y(n59) );
  INVX1 U583 ( .A(rs1_data[19]), .Y(n58) );
  INVX1 U584 ( .A(rs1_data[20]), .Y(n57) );
  INVX1 U585 ( .A(rs1_data[21]), .Y(n56) );
  INVX1 U586 ( .A(rs1_data[22]), .Y(n55) );
  INVX1 U587 ( .A(rs1_data[23]), .Y(n54) );
  INVX1 U588 ( .A(rs1_data[24]), .Y(n53) );
  INVX1 U589 ( .A(rs1_data[25]), .Y(n52) );
  INVX1 U590 ( .A(rs1_data[26]), .Y(n51) );
  INVX1 U591 ( .A(rs1_data[27]), .Y(n50) );
  INVX1 U592 ( .A(rs1_data[28]), .Y(n49) );
  INVX1 U593 ( .A(rs1_data[29]), .Y(n48) );
  INVX1 U594 ( .A(rs1_data[30]), .Y(n47) );
  INVX1 U595 ( .A(rs1_data[31]), .Y(n46) );
  INVX1 U596 ( .A(imm_u[0]), .Y(n109) );
  INVX1 U597 ( .A(imm_u[10]), .Y(n99) );
  INVX1 U598 ( .A(imm_u[11]), .Y(n98) );
  INVX1 U599 ( .A(imm_u[12]), .Y(n97) );
  INVX1 U600 ( .A(imm_u[13]), .Y(n96) );
  INVX1 U601 ( .A(imm_u[15]), .Y(n94) );
  INVX1 U602 ( .A(imm_u[16]), .Y(n93) );
  INVX1 U603 ( .A(imm_u[17]), .Y(n92) );
  INVX1 U604 ( .A(imm_u[18]), .Y(n91) );
  INVX1 U605 ( .A(imm_u[19]), .Y(n90) );
  INVX1 U606 ( .A(imm_u[1]), .Y(n108) );
  INVX1 U607 ( .A(imm_u[2]), .Y(n107) );
  INVX1 U608 ( .A(imm_u[3]), .Y(n106) );
  INVX1 U609 ( .A(imm_u[4]), .Y(n105) );
  INVX1 U610 ( .A(imm_u[5]), .Y(n104) );
  INVX1 U611 ( .A(imm_u[6]), .Y(n103) );
  INVX1 U612 ( .A(imm_u[7]), .Y(n102) );
  INVX1 U613 ( .A(imm_u[8]), .Y(n101) );
  INVX1 U614 ( .A(imm_u[9]), .Y(n100) );
  INVX1 U615 ( .A(imm_u[20]), .Y(n89) );
  INVX1 U616 ( .A(imm_u[21]), .Y(n88) );
  INVX1 U617 ( .A(imm_u[22]), .Y(n87) );
  INVX1 U618 ( .A(imm_u[23]), .Y(n86) );
  INVX1 U619 ( .A(imm_u[24]), .Y(n85) );
  INVX1 U620 ( .A(imm_u[25]), .Y(n84) );
  INVX1 U621 ( .A(imm_u[26]), .Y(n83) );
  INVX1 U622 ( .A(imm_u[27]), .Y(n82) );
  INVX1 U623 ( .A(imm_u[28]), .Y(n81) );
  INVX1 U624 ( .A(imm_u[29]), .Y(n80) );
  INVX1 U625 ( .A(imm_u[30]), .Y(n79) );
  OR2X1 U626 ( .A(alu_op[16]), .B(alu_op[15]), .Y(n320) );
  OR2X1 U627 ( .A(alu_op[30]), .B(alu_op[29]), .Y(n328) );
  INVX1 U628 ( .A(n434), .Y(n40) );
  OR2X1 U629 ( .A(rs2_data[0]), .B(is_imm), .Y(n435) );
  INVX1 U630 ( .A(n401), .Y(n29) );
  OR2X1 U631 ( .A(rs2_data[1]), .B(n1180), .Y(n402) );
  INVX1 U632 ( .A(n368), .Y(n18) );
  OR2X1 U633 ( .A(rs2_data[2]), .B(is_imm), .Y(n369) );
  INVX1 U634 ( .A(n359), .Y(n15) );
  OR2X1 U635 ( .A(rs2_data[3]), .B(is_imm), .Y(n360) );
  INVX1 U636 ( .A(n356), .Y(n14) );
  OR2X1 U637 ( .A(rs2_data[4]), .B(n1180), .Y(n357) );
  INVX1 U638 ( .A(n353), .Y(n13) );
  OR2X1 U639 ( .A(rs2_data[5]), .B(is_imm), .Y(n354) );
  INVX1 U640 ( .A(n350), .Y(n12) );
  OR2X1 U641 ( .A(rs2_data[6]), .B(is_imm), .Y(n351) );
  INVX1 U642 ( .A(n347), .Y(n11) );
  OR2X1 U643 ( .A(rs2_data[7]), .B(is_imm), .Y(n348) );
  INVX1 U644 ( .A(n344), .Y(n10) );
  OR2X1 U645 ( .A(rs2_data[8]), .B(is_imm), .Y(n345) );
  INVX1 U646 ( .A(n341), .Y(n9) );
  OR2X1 U647 ( .A(rs2_data[9]), .B(is_imm), .Y(n342) );
  INVX1 U648 ( .A(n431), .Y(n39) );
  OR2X1 U649 ( .A(rs2_data[10]), .B(n1180), .Y(n432) );
  INVX1 U650 ( .A(n428), .Y(n38) );
  OR2X1 U651 ( .A(rs2_data[11]), .B(n1180), .Y(n429) );
  INVX1 U652 ( .A(n425), .Y(n37) );
  OR2X1 U653 ( .A(rs2_data[12]), .B(n1180), .Y(n426) );
  INVX1 U654 ( .A(n422), .Y(n36) );
  OR2X1 U655 ( .A(rs2_data[13]), .B(n1180), .Y(n423) );
  INVX1 U656 ( .A(n419), .Y(n35) );
  OR2X1 U657 ( .A(rs2_data[14]), .B(n1180), .Y(n420) );
  INVX1 U658 ( .A(n416), .Y(n34) );
  OR2X1 U659 ( .A(rs2_data[15]), .B(n1180), .Y(n417) );
  INVX1 U660 ( .A(n413), .Y(n33) );
  OR2X1 U661 ( .A(rs2_data[16]), .B(n1180), .Y(n414) );
  INVX1 U662 ( .A(n410), .Y(n32) );
  OR2X1 U663 ( .A(rs2_data[17]), .B(n1180), .Y(n411) );
  INVX1 U664 ( .A(n407), .Y(n31) );
  OR2X1 U665 ( .A(rs2_data[18]), .B(n1180), .Y(n408) );
  INVX1 U666 ( .A(n404), .Y(n30) );
  OR2X1 U667 ( .A(rs2_data[19]), .B(n1180), .Y(n405) );
  INVX1 U668 ( .A(n398), .Y(n28) );
  OR2X1 U669 ( .A(rs2_data[20]), .B(n1180), .Y(n399) );
  INVX1 U670 ( .A(n395), .Y(n27) );
  OR2X1 U671 ( .A(rs2_data[21]), .B(n1180), .Y(n396) );
  INVX1 U672 ( .A(n392), .Y(n26) );
  OR2X1 U673 ( .A(rs2_data[22]), .B(is_imm), .Y(n393) );
  INVX1 U674 ( .A(n389), .Y(n25) );
  OR2X1 U675 ( .A(rs2_data[23]), .B(n1180), .Y(n390) );
  INVX1 U676 ( .A(n386), .Y(n24) );
  OR2X1 U677 ( .A(rs2_data[24]), .B(is_imm), .Y(n387) );
  INVX1 U678 ( .A(n383), .Y(n23) );
  OR2X1 U679 ( .A(rs2_data[25]), .B(n1180), .Y(n384) );
  INVX1 U680 ( .A(n380), .Y(n22) );
  OR2X1 U681 ( .A(rs2_data[26]), .B(is_imm), .Y(n381) );
  INVX1 U682 ( .A(n377), .Y(n21) );
  OR2X1 U683 ( .A(rs2_data[27]), .B(n1180), .Y(n378) );
  INVX1 U684 ( .A(n374), .Y(n20) );
  OR2X1 U685 ( .A(rs2_data[28]), .B(is_imm), .Y(n375) );
  INVX1 U686 ( .A(n371), .Y(n19) );
  OR2X1 U687 ( .A(rs2_data[29]), .B(n1180), .Y(n372) );
  INVX1 U688 ( .A(n365), .Y(n17) );
  OR2X1 U689 ( .A(rs2_data[30]), .B(is_imm), .Y(n366) );
  INVX1 U690 ( .A(n362), .Y(n16) );
  OR2X1 U691 ( .A(rs2_data[31]), .B(n1180), .Y(n363) );
  INVX1 U692 ( .A(comp_op[0]), .Y(n45) );
  AND2X1 U693 ( .A(n317), .B(n318), .Y(n316) );
  OR2X1 U694 ( .A(alu_op[23]), .B(alu_op[22]), .Y(n319) );
  AND2X1 U695 ( .A(n324), .B(n325), .Y(n323) );
  OR2X1 U696 ( .A(alu_op[5]), .B(alu_op[4]), .Y(n327) );
  INVX1 U697 ( .A(comp_op[1]), .Y(n44) );
  OR2X1 U698 ( .A(alu_op[9]), .B(alu_op[8]), .Y(n326) );
endmodule


module LSU ( clk, rst, st_en, ld_en, rd, addr, is_load_op, is_store_op, 
        load_op, store_op, write_data, ld_valid, ld_rd, ld_rd_data, d_addr, 
        d_we, d_wr_data, d_rd_data );
  input [4:0] rd;
  input [31:0] addr;
  input [2:0] load_op;
  input [2:0] store_op;
  input [31:0] write_data;
  output [4:0] ld_rd;
  output [31:0] ld_rd_data;
  output [31:0] d_addr;
  output [3:0] d_we;
  output [31:0] d_wr_data;
  input [31:0] d_rd_data;
  input clk, rst, st_en, ld_en, is_load_op, is_store_op;
  output ld_valid;
  wire   n72, \d_rd_data[7] , \d_rd_data[6] , \d_rd_data[5] , \d_rd_data[4] ,
         \d_rd_data[3] , \d_rd_data[2] , \d_rd_data[1] , \d_rd_data[0] , we,
         N23, n1, n4, n5, n6, \d_we[3] , n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n135;
  wire   [2:0] load_op_v;
  assign ld_rd_data[7] = \d_rd_data[7] ;
  assign \d_rd_data[7]  = d_rd_data[7];
  assign ld_rd_data[6] = \d_rd_data[6] ;
  assign \d_rd_data[6]  = d_rd_data[6];
  assign ld_rd_data[5] = \d_rd_data[5] ;
  assign \d_rd_data[5]  = d_rd_data[5];
  assign ld_rd_data[4] = \d_rd_data[4] ;
  assign \d_rd_data[4]  = d_rd_data[4];
  assign ld_rd_data[3] = \d_rd_data[3] ;
  assign \d_rd_data[3]  = d_rd_data[3];
  assign ld_rd_data[2] = \d_rd_data[2] ;
  assign \d_rd_data[2]  = d_rd_data[2];
  assign ld_rd_data[1] = \d_rd_data[1] ;
  assign \d_rd_data[1]  = d_rd_data[1];
  assign ld_rd_data[0] = \d_rd_data[0] ;
  assign \d_rd_data[0]  = d_rd_data[0];
  assign d_addr[31] = addr[31];
  assign d_addr[30] = addr[30];
  assign d_addr[29] = addr[29];
  assign d_addr[28] = addr[28];
  assign d_addr[27] = addr[27];
  assign d_addr[26] = addr[26];
  assign d_addr[25] = addr[25];
  assign d_addr[24] = addr[24];
  assign d_addr[23] = addr[23];
  assign d_addr[22] = addr[22];
  assign d_addr[21] = addr[21];
  assign d_addr[20] = addr[20];
  assign d_addr[19] = addr[19];
  assign d_addr[18] = addr[18];
  assign d_addr[17] = addr[17];
  assign d_addr[16] = addr[16];
  assign d_addr[15] = addr[15];
  assign d_addr[14] = addr[14];
  assign d_addr[13] = addr[13];
  assign d_addr[12] = addr[12];
  assign d_addr[11] = addr[11];
  assign d_addr[10] = addr[10];
  assign d_addr[9] = addr[9];
  assign d_addr[8] = addr[8];
  assign d_addr[7] = addr[7];
  assign d_addr[6] = addr[6];
  assign d_addr[5] = addr[5];
  assign d_addr[4] = addr[4];
  assign d_addr[3] = addr[3];
  assign d_addr[2] = addr[2];
  assign d_addr[1] = addr[1];
  assign d_addr[0] = addr[0];
  assign d_wr_data[31] = write_data[31];
  assign d_wr_data[30] = write_data[30];
  assign d_wr_data[29] = write_data[29];
  assign d_wr_data[28] = write_data[28];
  assign d_wr_data[27] = write_data[27];
  assign d_wr_data[26] = write_data[26];
  assign d_wr_data[25] = write_data[25];
  assign d_wr_data[24] = write_data[24];
  assign d_wr_data[23] = write_data[23];
  assign d_wr_data[22] = write_data[22];
  assign d_wr_data[21] = write_data[21];
  assign d_wr_data[20] = write_data[20];
  assign d_wr_data[19] = write_data[19];
  assign d_wr_data[18] = write_data[18];
  assign d_wr_data[17] = write_data[17];
  assign d_wr_data[16] = write_data[16];
  assign d_wr_data[15] = write_data[15];
  assign d_wr_data[14] = write_data[14];
  assign d_wr_data[13] = write_data[13];
  assign d_wr_data[12] = write_data[12];
  assign d_wr_data[11] = write_data[11];
  assign d_wr_data[10] = write_data[10];
  assign d_wr_data[9] = write_data[9];
  assign d_wr_data[8] = write_data[8];
  assign d_wr_data[7] = write_data[7];
  assign d_wr_data[6] = write_data[6];
  assign d_wr_data[5] = write_data[5];
  assign d_wr_data[4] = write_data[4];
  assign d_wr_data[3] = write_data[3];
  assign d_wr_data[2] = write_data[2];
  assign d_wr_data[1] = write_data[1];
  assign d_wr_data[0] = write_data[0];
  assign d_we[0] = we;
  assign d_we[2] = \d_we[3] ;
  assign d_we[3] = \d_we[3] ;

  DFFSR ld_valid_reg ( .D(N23), .CLK(clk), .R(n6), .S(1'b1), .Q(n72) );
  DFFPOSX1 \ld_rd_reg[4]  ( .D(rd[4]), .CLK(clk), .Q(ld_rd[4]) );
  DFFPOSX1 \ld_rd_reg[3]  ( .D(rd[3]), .CLK(clk), .Q(ld_rd[3]) );
  DFFPOSX1 \ld_rd_reg[2]  ( .D(rd[2]), .CLK(clk), .Q(ld_rd[2]) );
  DFFPOSX1 \ld_rd_reg[1]  ( .D(rd[1]), .CLK(clk), .Q(ld_rd[1]) );
  DFFPOSX1 \ld_rd_reg[0]  ( .D(rd[0]), .CLK(clk), .Q(ld_rd[0]) );
  DFFPOSX1 \load_op_v_reg[2]  ( .D(load_op[2]), .CLK(clk), .Q(load_op_v[2]) );
  DFFPOSX1 \load_op_v_reg[1]  ( .D(load_op[1]), .CLK(clk), .Q(load_op_v[1]) );
  DFFPOSX1 \load_op_v_reg[0]  ( .D(load_op[0]), .CLK(clk), .Q(load_op_v[0]) );
  NAND2X1 U14 ( .A(n132), .B(n12), .Y(ld_rd_data[9]) );
  NAND2X1 U15 ( .A(d_rd_data[9]), .B(n130), .Y(n12) );
  NAND2X1 U16 ( .A(n132), .B(n14), .Y(ld_rd_data[8]) );
  NAND2X1 U17 ( .A(d_rd_data[8]), .B(n130), .Y(n14) );
  NAND2X1 U18 ( .A(n133), .B(n16), .Y(ld_rd_data[31]) );
  NAND2X1 U19 ( .A(load_op_v[1]), .B(d_rd_data[31]), .Y(n16) );
  NAND2X1 U20 ( .A(n133), .B(n17), .Y(ld_rd_data[30]) );
  NAND2X1 U21 ( .A(d_rd_data[30]), .B(load_op_v[1]), .Y(n17) );
  NAND2X1 U22 ( .A(n133), .B(n18), .Y(ld_rd_data[29]) );
  NAND2X1 U23 ( .A(d_rd_data[29]), .B(load_op_v[1]), .Y(n18) );
  NAND2X1 U24 ( .A(n133), .B(n19), .Y(ld_rd_data[28]) );
  NAND2X1 U25 ( .A(d_rd_data[28]), .B(load_op_v[1]), .Y(n19) );
  NAND2X1 U26 ( .A(n133), .B(n20), .Y(ld_rd_data[27]) );
  NAND2X1 U27 ( .A(d_rd_data[27]), .B(load_op_v[1]), .Y(n20) );
  NAND2X1 U28 ( .A(n133), .B(n21), .Y(ld_rd_data[26]) );
  NAND2X1 U29 ( .A(d_rd_data[26]), .B(load_op_v[1]), .Y(n21) );
  NAND2X1 U30 ( .A(n133), .B(n22), .Y(ld_rd_data[25]) );
  NAND2X1 U31 ( .A(d_rd_data[25]), .B(load_op_v[1]), .Y(n22) );
  NAND2X1 U32 ( .A(n133), .B(n23), .Y(ld_rd_data[24]) );
  NAND2X1 U33 ( .A(d_rd_data[24]), .B(load_op_v[1]), .Y(n23) );
  NAND2X1 U34 ( .A(n133), .B(n122), .Y(ld_rd_data[23]) );
  NAND2X1 U36 ( .A(n133), .B(n123), .Y(ld_rd_data[22]) );
  NAND2X1 U38 ( .A(n133), .B(n124), .Y(ld_rd_data[21]) );
  NAND2X1 U40 ( .A(n133), .B(n125), .Y(ld_rd_data[20]) );
  NAND2X1 U42 ( .A(n133), .B(n126), .Y(ld_rd_data[19]) );
  NAND2X1 U44 ( .A(n133), .B(n127), .Y(ld_rd_data[18]) );
  NAND2X1 U46 ( .A(n133), .B(n128), .Y(ld_rd_data[17]) );
  NAND2X1 U48 ( .A(n133), .B(n129), .Y(ld_rd_data[16]) );
  NAND3X1 U50 ( .A(n4), .B(n1), .C(n121), .Y(n15) );
  AOI22X1 U51 ( .A(load_op_v[0]), .B(n8), .C(n9), .D(n5), .Y(n32) );
  OAI21X1 U52 ( .A(n13), .B(n8), .C(n132), .Y(ld_rd_data[15]) );
  NAND2X1 U53 ( .A(n132), .B(n33), .Y(ld_rd_data[14]) );
  NAND2X1 U54 ( .A(d_rd_data[14]), .B(n130), .Y(n33) );
  NAND2X1 U55 ( .A(n132), .B(n34), .Y(ld_rd_data[13]) );
  NAND2X1 U56 ( .A(d_rd_data[13]), .B(n130), .Y(n34) );
  NAND2X1 U57 ( .A(n132), .B(n35), .Y(ld_rd_data[12]) );
  NAND2X1 U58 ( .A(d_rd_data[12]), .B(n130), .Y(n35) );
  NAND2X1 U59 ( .A(n132), .B(n36), .Y(ld_rd_data[11]) );
  NAND2X1 U60 ( .A(d_rd_data[11]), .B(n130), .Y(n36) );
  NAND2X1 U61 ( .A(n132), .B(n37), .Y(ld_rd_data[10]) );
  NAND2X1 U62 ( .A(d_rd_data[10]), .B(n130), .Y(n37) );
  NAND3X1 U63 ( .A(n13), .B(n1), .C(\d_rd_data[7] ), .Y(n11) );
  NAND2X1 U65 ( .A(n10), .B(n131), .Y(d_we[1]) );
  OAI21X1 U67 ( .A(store_op[2]), .B(store_op[1]), .C(we), .Y(n10) );
  BUFX2 U3 ( .A(n32), .Y(n121) );
  AND2X1 U4 ( .A(d_rd_data[23]), .B(load_op_v[1]), .Y(n24) );
  INVX1 U6 ( .A(n24), .Y(n122) );
  AND2X1 U7 ( .A(d_rd_data[22]), .B(load_op_v[1]), .Y(n25) );
  INVX1 U8 ( .A(n25), .Y(n123) );
  AND2X1 U9 ( .A(d_rd_data[21]), .B(load_op_v[1]), .Y(n26) );
  INVX1 U10 ( .A(n26), .Y(n124) );
  AND2X1 U11 ( .A(d_rd_data[20]), .B(load_op_v[1]), .Y(n27) );
  INVX1 U12 ( .A(n27), .Y(n125) );
  AND2X1 U13 ( .A(d_rd_data[19]), .B(load_op_v[1]), .Y(n28) );
  INVX1 U35 ( .A(n28), .Y(n126) );
  AND2X1 U37 ( .A(d_rd_data[18]), .B(load_op_v[1]), .Y(n29) );
  INVX1 U39 ( .A(n29), .Y(n127) );
  AND2X1 U41 ( .A(d_rd_data[17]), .B(load_op_v[1]), .Y(n30) );
  INVX1 U43 ( .A(n30), .Y(n128) );
  AND2X1 U45 ( .A(d_rd_data[16]), .B(load_op_v[1]), .Y(n31) );
  INVX1 U47 ( .A(n31), .Y(n129) );
  AND2X1 U49 ( .A(n5), .B(n4), .Y(n13) );
  INVX1 U64 ( .A(n13), .Y(n130) );
  AND2X1 U66 ( .A(store_op[0]), .B(we), .Y(n38) );
  INVX1 U68 ( .A(n38), .Y(n131) );
  BUFX2 U69 ( .A(n11), .Y(n132) );
  AND2X1 U70 ( .A(ld_en), .B(is_load_op), .Y(N23) );
  INVX1 U71 ( .A(n10), .Y(\d_we[3] ) );
  AND2X1 U72 ( .A(st_en), .B(is_store_op), .Y(we) );
  INVX1 U73 ( .A(n135), .Y(ld_valid) );
  INVX1 U74 ( .A(n72), .Y(n135) );
  BUFX2 U75 ( .A(n15), .Y(n133) );
  INVX1 U76 ( .A(\d_rd_data[7] ), .Y(n9) );
  INVX1 U77 ( .A(load_op_v[1]), .Y(n4) );
  INVX1 U78 ( .A(load_op_v[0]), .Y(n5) );
  INVX1 U79 ( .A(load_op_v[2]), .Y(n1) );
  INVX1 U80 ( .A(d_rd_data[15]), .Y(n8) );
  INVX1 U81 ( .A(rst), .Y(n6) );
endmodule


module core ( clk, rst, i_addr, i_rd_data, d_addr, d_we, d_wr_data, d_rd_data, 
        we, rd, rd_data, rs1, rs2, rs1_data, rs2_data );
  output [31:0] i_addr;
  input [31:0] i_rd_data;
  output [31:0] d_addr;
  output [3:0] d_we;
  output [31:0] d_wr_data;
  input [31:0] d_rd_data;
  output [4:0] rd;
  output [31:0] rd_data;
  output [4:0] rs1;
  output [4:0] rs2;
  input [31:0] rs1_data;
  input [31:0] rs2_data;
  input clk, rst;
  output we;
  wire   flush, is_writeback, ld_valid, fetch_stall, st_en, ld_en, is_br_type,
         take_branch, subtract, shift_right, shift_arith, is_auipc, is_load_op,
         is_store_op, is_jump_op, is_imm, n306, n307, n308, n310, n311, n312,
         n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323,
         n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334,
         n335, n336, n337, n338, n339, n340, n341, n342, n343, n344, n345,
         n346, n347, n348, n349, n350, n351, n352, n353, n354, n355, n356,
         n357, n358, n359, n360, n361, n362, n363, n364, n365, n366, n367,
         n368, n369, n370, n371, n372, n373, n374, n375, n376, n377, n378,
         n379, n380, n381, n382, n383, n384, n385, n386, n387, n388, n389,
         n390, n391, n392, n393, n394, n395, n396, n397, n398, n399, n400,
         n401, n402, n403, n404, n405, n406, n407, n408, n409, n410, n411;
  wire   [4:0] ld_rd;
  wire   [0:1] br_type;
  wire   [31:0] imm_b;
  wire   [31:0] imm_i;
  wire   [31:0] imm_j;
  wire   [31:0] PC_p4;
  wire   [31:0] PC;
  wire   [4:0] dec_rd;
  wire   [0:31] alu_op;
  wire   [0:2] comp_op;
  wire   [0:2] load_op;
  wire   [0:2] store_op;
  wire   [31:0] imm_s;
  wire   [31:0] imm_u;
  wire   [31:0] alu_rd_data;
  wire   [31:0] ld_rd_data;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39, 
        SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41, 
        SYNOPSYS_UNCONNECTED__42;

  control control_i ( .flush(flush), .is_writeback(is_writeback), .ld_valid(
        ld_valid), .rs1(rs1), .rs2(rs2), .ld_rd(ld_rd), .fetch_stall(
        fetch_stall), .reg_we(we), .st_en(st_en), .ld_en(ld_en) );
  fetch fetch_i ( .clk(clk), .rst(rst), .fetch_stall(fetch_stall), 
        .is_br_type(is_br_type), .br_type(br_type), .take_branch(take_branch), 
        .rs1_data(rs1_data), .imm_b({imm_b[31:1], 1'b0}), .imm_i(imm_i), 
        .imm_j({imm_j[31:1], 1'b0}), .i_addr(i_addr), .PC_f(PC_p4), .PC_e(PC), 
        .flush(flush) );
  decode decode_i ( .instr(i_rd_data), .rd(dec_rd), .rs1(rs1), .rs2(rs2), 
        .is_writeback(is_writeback), .alu_op({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, SYNOPSYS_UNCONNECTED__16, 
        SYNOPSYS_UNCONNECTED__17, SYNOPSYS_UNCONNECTED__18, 
        SYNOPSYS_UNCONNECTED__19, SYNOPSYS_UNCONNECTED__20, 
        SYNOPSYS_UNCONNECTED__21, SYNOPSYS_UNCONNECTED__22, 
        SYNOPSYS_UNCONNECTED__23, SYNOPSYS_UNCONNECTED__24, 
        SYNOPSYS_UNCONNECTED__25, SYNOPSYS_UNCONNECTED__26, 
        SYNOPSYS_UNCONNECTED__27, SYNOPSYS_UNCONNECTED__28, alu_op[29:31]}), 
        .comp_op(comp_op), .subtract(subtract), .shift_right(shift_right), 
        .shift_arith(shift_arith), .is_auipc(is_auipc), .is_load_op(is_load_op), .load_op(load_op), .is_store_op(is_store_op), .store_op(store_op), 
        .is_br_type(is_br_type), .br_type(br_type), .is_jump_op(is_jump_op), 
        .is_imm(is_imm), .imm_b({imm_b[31:1], SYNOPSYS_UNCONNECTED__29}), 
        .imm_i(imm_i), .imm_s(imm_s), .imm_u({imm_u[31:12], 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39, 
        SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41}), .imm_j({
        imm_j[31:1], SYNOPSYS_UNCONNECTED__42}) );
  ALU ALU_i ( .alu_op({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, alu_op[29:31]}), 
        .is_imm(is_imm), .is_store_op(is_store_op), .is_auipc(is_auipc), 
        .comp_op(comp_op), .subtract(subtract), .shift_right(shift_right), 
        .shift_arith(shift_arith), .rs1_data(rs1_data), .rs2_data(rs2_data), 
        .imm_i(imm_i), .imm_u({imm_u[31:12], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .imm_s(imm_s), .PC(PC), 
        .rd_data(alu_rd_data), .branch(take_branch) );
  LSU LSU_i ( .clk(clk), .rst(rst), .st_en(st_en), .ld_en(ld_en), .rd(dec_rd), 
        .addr({n408, n407, n406, n405, n404, n403, n402, n401, n400, n399, 
        n398, n397, n396, n395, n394, n393, n392, n391, n390, n389, n388, n387, 
        n386, n385, n384, n383, n382, n381, n380, n379, n378, n377}), 
        .is_load_op(is_load_op), .is_store_op(is_store_op), .load_op(load_op), 
        .store_op(store_op), .write_data(rs2_data), .ld_valid(ld_valid), 
        .ld_rd(ld_rd), .ld_rd_data(ld_rd_data), .d_addr(d_addr), .d_we(d_we), 
        .d_wr_data(d_wr_data), .d_rd_data(d_rd_data) );
  NAND2X1 U378 ( .A(n306), .B(n307), .Y(rd_data[9]) );
  NAND2X1 U379 ( .A(ld_valid), .B(ld_rd_data[9]), .Y(n307) );
  AOI22X1 U380 ( .A(PC_p4[9]), .B(n308), .C(n386), .D(n410), .Y(n306) );
  NAND2X1 U381 ( .A(n310), .B(n311), .Y(rd_data[8]) );
  NAND2X1 U382 ( .A(ld_rd_data[8]), .B(ld_valid), .Y(n311) );
  AOI22X1 U383 ( .A(PC_p4[8]), .B(n308), .C(n385), .D(n410), .Y(n310) );
  NAND2X1 U384 ( .A(n312), .B(n313), .Y(rd_data[7]) );
  NAND2X1 U385 ( .A(ld_rd_data[7]), .B(ld_valid), .Y(n313) );
  AOI22X1 U386 ( .A(PC_p4[7]), .B(n308), .C(n384), .D(n410), .Y(n312) );
  NAND2X1 U387 ( .A(n314), .B(n315), .Y(rd_data[6]) );
  NAND2X1 U388 ( .A(ld_rd_data[6]), .B(ld_valid), .Y(n315) );
  AOI22X1 U389 ( .A(PC_p4[6]), .B(n308), .C(n383), .D(n410), .Y(n314) );
  NAND2X1 U390 ( .A(n316), .B(n317), .Y(rd_data[5]) );
  NAND2X1 U391 ( .A(ld_rd_data[5]), .B(ld_valid), .Y(n317) );
  AOI22X1 U392 ( .A(PC_p4[5]), .B(n308), .C(n382), .D(n410), .Y(n316) );
  NAND2X1 U393 ( .A(n318), .B(n319), .Y(rd_data[4]) );
  NAND2X1 U394 ( .A(ld_rd_data[4]), .B(ld_valid), .Y(n319) );
  AOI22X1 U395 ( .A(PC_p4[4]), .B(n308), .C(n381), .D(n410), .Y(n318) );
  NAND2X1 U396 ( .A(n320), .B(n321), .Y(rd_data[3]) );
  NAND2X1 U397 ( .A(ld_rd_data[3]), .B(ld_valid), .Y(n321) );
  AOI22X1 U398 ( .A(PC_p4[3]), .B(n308), .C(n380), .D(n410), .Y(n320) );
  NAND2X1 U399 ( .A(n322), .B(n323), .Y(rd_data[31]) );
  NAND2X1 U400 ( .A(ld_rd_data[31]), .B(ld_valid), .Y(n323) );
  AOI22X1 U401 ( .A(PC_p4[31]), .B(n308), .C(n408), .D(n410), .Y(n322) );
  NAND2X1 U402 ( .A(n324), .B(n325), .Y(rd_data[30]) );
  NAND2X1 U403 ( .A(ld_rd_data[30]), .B(ld_valid), .Y(n325) );
  AOI22X1 U404 ( .A(PC_p4[30]), .B(n308), .C(n407), .D(n410), .Y(n324) );
  NAND2X1 U405 ( .A(n326), .B(n327), .Y(rd_data[2]) );
  NAND2X1 U406 ( .A(ld_rd_data[2]), .B(ld_valid), .Y(n327) );
  AOI22X1 U407 ( .A(PC_p4[2]), .B(n308), .C(n379), .D(n410), .Y(n326) );
  NAND2X1 U408 ( .A(n328), .B(n329), .Y(rd_data[29]) );
  NAND2X1 U409 ( .A(ld_rd_data[29]), .B(ld_valid), .Y(n329) );
  AOI22X1 U410 ( .A(PC_p4[29]), .B(n308), .C(n406), .D(n410), .Y(n328) );
  NAND2X1 U411 ( .A(n330), .B(n331), .Y(rd_data[28]) );
  NAND2X1 U412 ( .A(ld_rd_data[28]), .B(ld_valid), .Y(n331) );
  AOI22X1 U413 ( .A(PC_p4[28]), .B(n308), .C(n405), .D(n410), .Y(n330) );
  NAND2X1 U414 ( .A(n332), .B(n333), .Y(rd_data[27]) );
  NAND2X1 U415 ( .A(ld_rd_data[27]), .B(ld_valid), .Y(n333) );
  AOI22X1 U416 ( .A(PC_p4[27]), .B(n308), .C(n404), .D(n410), .Y(n332) );
  NAND2X1 U417 ( .A(n334), .B(n335), .Y(rd_data[26]) );
  NAND2X1 U418 ( .A(ld_rd_data[26]), .B(ld_valid), .Y(n335) );
  AOI22X1 U419 ( .A(PC_p4[26]), .B(n308), .C(n403), .D(n410), .Y(n334) );
  NAND2X1 U420 ( .A(n336), .B(n337), .Y(rd_data[25]) );
  NAND2X1 U421 ( .A(ld_rd_data[25]), .B(ld_valid), .Y(n337) );
  AOI22X1 U422 ( .A(PC_p4[25]), .B(n308), .C(n402), .D(n410), .Y(n336) );
  NAND2X1 U423 ( .A(n338), .B(n339), .Y(rd_data[24]) );
  NAND2X1 U424 ( .A(ld_rd_data[24]), .B(ld_valid), .Y(n339) );
  AOI22X1 U425 ( .A(PC_p4[24]), .B(n308), .C(n401), .D(n410), .Y(n338) );
  NAND2X1 U426 ( .A(n340), .B(n341), .Y(rd_data[23]) );
  NAND2X1 U427 ( .A(ld_rd_data[23]), .B(ld_valid), .Y(n341) );
  AOI22X1 U428 ( .A(PC_p4[23]), .B(n308), .C(n400), .D(n410), .Y(n340) );
  NAND2X1 U429 ( .A(n342), .B(n343), .Y(rd_data[22]) );
  NAND2X1 U430 ( .A(ld_rd_data[22]), .B(ld_valid), .Y(n343) );
  AOI22X1 U431 ( .A(PC_p4[22]), .B(n308), .C(n399), .D(n410), .Y(n342) );
  NAND2X1 U432 ( .A(n344), .B(n345), .Y(rd_data[21]) );
  NAND2X1 U433 ( .A(ld_rd_data[21]), .B(ld_valid), .Y(n345) );
  AOI22X1 U434 ( .A(PC_p4[21]), .B(n308), .C(n398), .D(n410), .Y(n344) );
  NAND2X1 U435 ( .A(n346), .B(n347), .Y(rd_data[20]) );
  NAND2X1 U436 ( .A(ld_rd_data[20]), .B(ld_valid), .Y(n347) );
  AOI22X1 U437 ( .A(PC_p4[20]), .B(n308), .C(n397), .D(n410), .Y(n346) );
  NAND2X1 U438 ( .A(n348), .B(n349), .Y(rd_data[1]) );
  NAND2X1 U439 ( .A(ld_rd_data[1]), .B(ld_valid), .Y(n349) );
  AOI22X1 U440 ( .A(PC_p4[1]), .B(n308), .C(n378), .D(n410), .Y(n348) );
  NAND2X1 U441 ( .A(n350), .B(n351), .Y(rd_data[19]) );
  NAND2X1 U442 ( .A(ld_rd_data[19]), .B(ld_valid), .Y(n351) );
  AOI22X1 U443 ( .A(PC_p4[19]), .B(n308), .C(n396), .D(n410), .Y(n350) );
  NAND2X1 U444 ( .A(n352), .B(n353), .Y(rd_data[18]) );
  NAND2X1 U445 ( .A(ld_rd_data[18]), .B(ld_valid), .Y(n353) );
  AOI22X1 U446 ( .A(PC_p4[18]), .B(n308), .C(n395), .D(n410), .Y(n352) );
  NAND2X1 U447 ( .A(n354), .B(n355), .Y(rd_data[17]) );
  NAND2X1 U448 ( .A(ld_rd_data[17]), .B(ld_valid), .Y(n355) );
  AOI22X1 U449 ( .A(PC_p4[17]), .B(n308), .C(n394), .D(n410), .Y(n354) );
  NAND2X1 U450 ( .A(n356), .B(n357), .Y(rd_data[16]) );
  NAND2X1 U451 ( .A(ld_rd_data[16]), .B(ld_valid), .Y(n357) );
  AOI22X1 U452 ( .A(PC_p4[16]), .B(n308), .C(n393), .D(n410), .Y(n356) );
  NAND2X1 U453 ( .A(n358), .B(n359), .Y(rd_data[15]) );
  NAND2X1 U454 ( .A(ld_rd_data[15]), .B(ld_valid), .Y(n359) );
  AOI22X1 U455 ( .A(PC_p4[15]), .B(n308), .C(n392), .D(n410), .Y(n358) );
  NAND2X1 U456 ( .A(n360), .B(n361), .Y(rd_data[14]) );
  NAND2X1 U457 ( .A(ld_rd_data[14]), .B(ld_valid), .Y(n361) );
  AOI22X1 U458 ( .A(PC_p4[14]), .B(n308), .C(n391), .D(n410), .Y(n360) );
  NAND2X1 U459 ( .A(n362), .B(n363), .Y(rd_data[13]) );
  NAND2X1 U460 ( .A(ld_rd_data[13]), .B(ld_valid), .Y(n363) );
  AOI22X1 U461 ( .A(PC_p4[13]), .B(n308), .C(n390), .D(n410), .Y(n362) );
  NAND2X1 U462 ( .A(n364), .B(n365), .Y(rd_data[12]) );
  NAND2X1 U463 ( .A(ld_rd_data[12]), .B(ld_valid), .Y(n365) );
  AOI22X1 U464 ( .A(PC_p4[12]), .B(n308), .C(n389), .D(n410), .Y(n364) );
  NAND2X1 U465 ( .A(n366), .B(n367), .Y(rd_data[11]) );
  NAND2X1 U466 ( .A(ld_rd_data[11]), .B(ld_valid), .Y(n367) );
  AOI22X1 U467 ( .A(PC_p4[11]), .B(n308), .C(n388), .D(n410), .Y(n366) );
  NAND2X1 U468 ( .A(n368), .B(n369), .Y(rd_data[10]) );
  NAND2X1 U469 ( .A(ld_rd_data[10]), .B(ld_valid), .Y(n369) );
  AOI22X1 U470 ( .A(PC_p4[10]), .B(n308), .C(n387), .D(n410), .Y(n368) );
  NAND2X1 U471 ( .A(n370), .B(n371), .Y(rd_data[0]) );
  NAND2X1 U472 ( .A(ld_rd_data[0]), .B(ld_valid), .Y(n371) );
  AOI22X1 U473 ( .A(PC_p4[0]), .B(n308), .C(n377), .D(n410), .Y(n370) );
  AOI22X1 U475 ( .A(dec_rd[0]), .B(n411), .C(ld_rd[0]), .D(ld_valid), .Y(n372)
         );
  AOI22X1 U476 ( .A(dec_rd[1]), .B(n411), .C(ld_rd[1]), .D(ld_valid), .Y(n373)
         );
  AOI22X1 U477 ( .A(dec_rd[2]), .B(n411), .C(ld_rd[2]), .D(ld_valid), .Y(n374)
         );
  AOI22X1 U478 ( .A(dec_rd[3]), .B(n411), .C(ld_rd[3]), .D(ld_valid), .Y(n375)
         );
  AOI22X1 U479 ( .A(dec_rd[4]), .B(n411), .C(ld_rd[4]), .D(ld_valid), .Y(n376)
         );
  BUFX2 U480 ( .A(alu_rd_data[0]), .Y(n377) );
  BUFX2 U481 ( .A(alu_rd_data[1]), .Y(n378) );
  BUFX2 U482 ( .A(alu_rd_data[2]), .Y(n379) );
  BUFX2 U483 ( .A(alu_rd_data[3]), .Y(n380) );
  BUFX2 U484 ( .A(alu_rd_data[4]), .Y(n381) );
  BUFX2 U485 ( .A(alu_rd_data[5]), .Y(n382) );
  BUFX2 U486 ( .A(alu_rd_data[6]), .Y(n383) );
  BUFX2 U487 ( .A(alu_rd_data[7]), .Y(n384) );
  BUFX2 U488 ( .A(alu_rd_data[8]), .Y(n385) );
  BUFX2 U489 ( .A(alu_rd_data[9]), .Y(n386) );
  BUFX2 U490 ( .A(alu_rd_data[10]), .Y(n387) );
  BUFX2 U491 ( .A(alu_rd_data[11]), .Y(n388) );
  BUFX2 U492 ( .A(alu_rd_data[12]), .Y(n389) );
  BUFX2 U493 ( .A(alu_rd_data[13]), .Y(n390) );
  BUFX2 U494 ( .A(alu_rd_data[14]), .Y(n391) );
  BUFX2 U495 ( .A(alu_rd_data[15]), .Y(n392) );
  BUFX2 U496 ( .A(alu_rd_data[16]), .Y(n393) );
  BUFX2 U497 ( .A(alu_rd_data[17]), .Y(n394) );
  BUFX2 U498 ( .A(alu_rd_data[18]), .Y(n395) );
  BUFX2 U499 ( .A(alu_rd_data[19]), .Y(n396) );
  BUFX2 U500 ( .A(alu_rd_data[20]), .Y(n397) );
  BUFX2 U501 ( .A(alu_rd_data[21]), .Y(n398) );
  BUFX2 U502 ( .A(alu_rd_data[22]), .Y(n399) );
  BUFX2 U503 ( .A(alu_rd_data[23]), .Y(n400) );
  BUFX2 U504 ( .A(alu_rd_data[24]), .Y(n401) );
  BUFX2 U505 ( .A(alu_rd_data[25]), .Y(n402) );
  BUFX2 U506 ( .A(alu_rd_data[26]), .Y(n403) );
  BUFX2 U507 ( .A(alu_rd_data[27]), .Y(n404) );
  BUFX2 U508 ( .A(alu_rd_data[28]), .Y(n405) );
  BUFX2 U509 ( .A(alu_rd_data[29]), .Y(n406) );
  BUFX2 U510 ( .A(alu_rd_data[30]), .Y(n407) );
  BUFX2 U511 ( .A(alu_rd_data[31]), .Y(n408) );
  INVX1 U512 ( .A(n409), .Y(n410) );
  OR2X1 U513 ( .A(ld_valid), .B(is_jump_op), .Y(n409) );
  AND2X1 U514 ( .A(is_jump_op), .B(n411), .Y(n308) );
  INVX1 U515 ( .A(ld_valid), .Y(n411) );
  INVX1 U516 ( .A(n372), .Y(rd[0]) );
  INVX1 U517 ( .A(n373), .Y(rd[1]) );
  INVX1 U518 ( .A(n374), .Y(rd[2]) );
  INVX1 U519 ( .A(n375), .Y(rd[3]) );
  INVX1 U520 ( .A(n376), .Y(rd[4]) );
endmodule

