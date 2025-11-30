/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : T-2022.03-SP2
// Date      : Sat Nov 29 13:05:06 2025
/////////////////////////////////////////////////////////////


module control ( flush, is_writeback, ld_valid, rs1, rs2, ld_rd, fetch_stall, 
        reg_we, st_en, ld_en );
  input [4:0] rs1;
  input [4:0] rs2;
  input [4:0] ld_rd;
  input flush, is_writeback, ld_valid;
  output fetch_stall, reg_we, st_en, ld_en;
  wire   st_en, n1, n2, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n23, n24, n25, n26;
  assign ld_en = st_en;

  OAI21X1 U5 ( .A(flush), .B(n26), .C(n23), .Y(reg_we) );
  OAI21X1 U7 ( .A(n26), .B(n2), .C(n5), .Y(fetch_stall) );
  OAI21X1 U8 ( .A(n6), .B(n7), .C(ld_valid), .Y(n5) );
  NOR3X1 U9 ( .A(n24), .B(n9), .C(n10), .Y(n7) );
  XOR2X1 U10 ( .A(rs2[4]), .B(ld_rd[4]), .Y(n10) );
  XOR2X1 U11 ( .A(rs2[2]), .B(ld_rd[2]), .Y(n9) );
  NAND3X1 U12 ( .A(n11), .B(n12), .C(n13), .Y(n8) );
  XNOR2X1 U13 ( .A(ld_rd[1]), .B(rs2[1]), .Y(n13) );
  XNOR2X1 U14 ( .A(ld_rd[0]), .B(rs2[0]), .Y(n12) );
  XNOR2X1 U15 ( .A(ld_rd[3]), .B(rs2[3]), .Y(n11) );
  NOR3X1 U16 ( .A(n25), .B(n15), .C(n16), .Y(n6) );
  XOR2X1 U17 ( .A(rs1[4]), .B(ld_rd[4]), .Y(n16) );
  XOR2X1 U18 ( .A(rs1[3]), .B(ld_rd[3]), .Y(n15) );
  NAND3X1 U19 ( .A(n17), .B(n18), .C(n19), .Y(n14) );
  XNOR2X1 U20 ( .A(ld_rd[2]), .B(rs1[2]), .Y(n19) );
  XNOR2X1 U21 ( .A(ld_rd[1]), .B(rs1[1]), .Y(n18) );
  XNOR2X1 U22 ( .A(ld_rd[0]), .B(rs1[0]), .Y(n17) );
  AND2X1 U1 ( .A(is_writeback), .B(st_en), .Y(n4) );
  INVX1 U2 ( .A(n4), .Y(n23) );
  BUFX2 U3 ( .A(n8), .Y(n24) );
  BUFX2 U4 ( .A(n14), .Y(n25) );
  INVX1 U6 ( .A(ld_valid), .Y(n26) );
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
  wire   n1, n2, n3, n6;

  XOR2X1 U2 ( .A(n1), .B(n2), .Y(sum) );
  OAI21X1 U3 ( .A(n2), .B(n1), .C(n6), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n2) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n3) );
  INVX1 U4 ( .A(n3), .Y(n6) );
  INVX1 U6 ( .A(cin), .Y(n1) );
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


module full_adder_33 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n7, n8, n9, n10;

  XOR2X1 U2 ( .A(n10), .B(n9), .Y(sum) );
  OAI21X1 U3 ( .A(n9), .B(n10), .C(n7), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n9) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n8) );
  INVX1 U4 ( .A(n8), .Y(n7) );
  INVX1 U6 ( .A(cin), .Y(n10) );
endmodule


module full_adder_34 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n7, n8, n9, n10;

  XOR2X1 U2 ( .A(n10), .B(n9), .Y(sum) );
  OAI21X1 U3 ( .A(n9), .B(n10), .C(n7), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n9) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n8) );
  INVX1 U4 ( .A(n8), .Y(n7) );
  INVX1 U6 ( .A(cin), .Y(n10) );
endmodule


module full_adder_35 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n7, n8, n9, n10;

  XOR2X1 U2 ( .A(n10), .B(n9), .Y(sum) );
  OAI21X1 U3 ( .A(n9), .B(n10), .C(n7), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n9) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n8) );
  INVX1 U4 ( .A(n8), .Y(n7) );
  INVX1 U6 ( .A(cin), .Y(n10) );
endmodule


module full_adder_36 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n7, n8, n9;

  XOR2X1 U2 ( .A(n9), .B(n8), .Y(sum) );
  OAI21X1 U3 ( .A(n8), .B(n9), .C(n7), .Y(cout) );
  NAND2X1 U4 ( .A(a), .B(b), .Y(n7) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n8) );
  INVX1 U1 ( .A(cin), .Y(n9) );
endmodule


module full_adder_51 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n7, n8, n9, n10;

  XOR2X1 U2 ( .A(n10), .B(n9), .Y(sum) );
  OAI21X1 U3 ( .A(n9), .B(n10), .C(n7), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n9) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n8) );
  INVX1 U4 ( .A(n8), .Y(n7) );
  INVX1 U6 ( .A(cin), .Y(n10) );
endmodule


module full_adder_52 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n7, n8, n9, n10;

  XOR2X1 U2 ( .A(n10), .B(n9), .Y(sum) );
  OAI21X1 U3 ( .A(n9), .B(n10), .C(n7), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n9) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n8) );
  INVX1 U4 ( .A(n8), .Y(n7) );
  INVX1 U6 ( .A(cin), .Y(n10) );
endmodule


module full_adder_53 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n7, n8, n9;

  XOR2X1 U2 ( .A(n9), .B(n8), .Y(sum) );
  OAI21X1 U3 ( .A(n8), .B(n9), .C(n7), .Y(cout) );
  NAND2X1 U4 ( .A(a), .B(b), .Y(n7) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n8) );
  INVX1 U1 ( .A(cin), .Y(n9) );
endmodule


module full_adder_37 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n6, n7, n8;

  XOR2X1 U2 ( .A(n8), .B(n7), .Y(sum) );
  OAI21X1 U3 ( .A(n7), .B(n8), .C(n6), .Y(cout) );
  NAND2X1 U4 ( .A(a), .B(b), .Y(n6) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n7) );
  INVX1 U1 ( .A(cin), .Y(n8) );
endmodule


module full_adder_38 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n6, n7, n8;

  XOR2X1 U2 ( .A(n8), .B(n7), .Y(sum) );
  OAI21X1 U3 ( .A(n7), .B(n8), .C(n6), .Y(cout) );
  NAND2X1 U4 ( .A(a), .B(b), .Y(n6) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n7) );
  INVX1 U1 ( .A(cin), .Y(n8) );
endmodule


module full_adder_39 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n6, n7, n8;

  XOR2X1 U2 ( .A(n8), .B(n7), .Y(sum) );
  OAI21X1 U3 ( .A(n7), .B(n8), .C(n6), .Y(cout) );
  NAND2X1 U4 ( .A(a), .B(b), .Y(n6) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n7) );
  INVX1 U1 ( .A(cin), .Y(n8) );
endmodule


module full_adder_40 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n6, n7, n8;

  XOR2X1 U2 ( .A(n8), .B(n7), .Y(sum) );
  OAI21X1 U3 ( .A(n7), .B(n8), .C(n6), .Y(cout) );
  NAND2X1 U4 ( .A(a), .B(b), .Y(n6) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n7) );
  INVX1 U1 ( .A(cin), .Y(n8) );
endmodule


module full_adder_41 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n6, n7, n8;

  XOR2X1 U2 ( .A(n8), .B(n7), .Y(sum) );
  OAI21X1 U3 ( .A(n7), .B(n8), .C(n6), .Y(cout) );
  NAND2X1 U4 ( .A(a), .B(b), .Y(n6) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n7) );
  INVX1 U1 ( .A(cin), .Y(n8) );
endmodule


module full_adder_42 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n6, n7, n8;

  XOR2X1 U2 ( .A(n8), .B(n7), .Y(sum) );
  OAI21X1 U3 ( .A(n7), .B(n8), .C(n6), .Y(cout) );
  NAND2X1 U4 ( .A(a), .B(b), .Y(n6) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n7) );
  INVX1 U1 ( .A(cin), .Y(n8) );
endmodule


module full_adder_43 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n6, n7, n8;

  XOR2X1 U2 ( .A(n8), .B(n7), .Y(sum) );
  OAI21X1 U3 ( .A(n7), .B(n8), .C(n6), .Y(cout) );
  NAND2X1 U4 ( .A(a), .B(b), .Y(n6) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n7) );
  INVX1 U1 ( .A(cin), .Y(n8) );
endmodule


module full_adder_44 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n6, n7, n8;

  XOR2X1 U2 ( .A(n8), .B(n7), .Y(sum) );
  OAI21X1 U3 ( .A(n7), .B(n8), .C(n6), .Y(cout) );
  NAND2X1 U4 ( .A(a), .B(b), .Y(n6) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n7) );
  INVX1 U1 ( .A(cin), .Y(n8) );
endmodule


module full_adder_45 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n6, n7, n8;

  XOR2X1 U2 ( .A(n8), .B(n7), .Y(sum) );
  OAI21X1 U3 ( .A(n7), .B(n8), .C(n6), .Y(cout) );
  NAND2X1 U4 ( .A(a), .B(b), .Y(n6) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n7) );
  INVX1 U1 ( .A(cin), .Y(n8) );
endmodule


module full_adder_46 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n6, n7, n8;

  XOR2X1 U2 ( .A(n8), .B(n7), .Y(sum) );
  OAI21X1 U3 ( .A(n7), .B(n8), .C(n6), .Y(cout) );
  NAND2X1 U4 ( .A(a), .B(b), .Y(n6) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n7) );
  INVX1 U1 ( .A(cin), .Y(n8) );
endmodule


module full_adder_47 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n6, n7, n8;

  XOR2X1 U2 ( .A(n8), .B(n7), .Y(sum) );
  OAI21X1 U3 ( .A(n7), .B(n8), .C(n6), .Y(cout) );
  NAND2X1 U4 ( .A(a), .B(b), .Y(n6) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n7) );
  INVX1 U1 ( .A(cin), .Y(n8) );
endmodule


module full_adder_48 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n6, n7, n8;

  XOR2X1 U2 ( .A(n8), .B(n7), .Y(sum) );
  OAI21X1 U3 ( .A(n7), .B(n8), .C(n6), .Y(cout) );
  NAND2X1 U4 ( .A(a), .B(b), .Y(n6) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n7) );
  INVX1 U1 ( .A(cin), .Y(n8) );
endmodule


module full_adder_49 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n6, n7, n8;

  XOR2X1 U2 ( .A(n8), .B(n7), .Y(sum) );
  OAI21X1 U3 ( .A(n7), .B(n8), .C(n6), .Y(cout) );
  NAND2X1 U4 ( .A(a), .B(b), .Y(n6) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n7) );
  INVX1 U1 ( .A(cin), .Y(n8) );
endmodule


module full_adder_50 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n6, n7, n8, n9;

  XOR2X1 U2 ( .A(n9), .B(n8), .Y(sum) );
  OAI21X1 U3 ( .A(n8), .B(n9), .C(n6), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n8) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n7) );
  INVX1 U4 ( .A(n7), .Y(n6) );
  INVX1 U6 ( .A(cin), .Y(n9) );
endmodule


module full_adder_55 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n6, n7, n8;

  XOR2X1 U2 ( .A(n8), .B(n7), .Y(sum) );
  OAI21X1 U3 ( .A(n7), .B(n8), .C(n6), .Y(cout) );
  NAND2X1 U4 ( .A(a), .B(b), .Y(n6) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n7) );
  INVX1 U1 ( .A(cin), .Y(n8) );
endmodule


module full_adder_56 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n6, n7, n8;

  XOR2X1 U2 ( .A(n8), .B(n7), .Y(sum) );
  OAI21X1 U3 ( .A(n7), .B(n8), .C(n6), .Y(cout) );
  NAND2X1 U4 ( .A(a), .B(b), .Y(n6) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n7) );
  INVX1 U1 ( .A(cin), .Y(n8) );
endmodule


module full_adder_57 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n6, n7, n8;

  XOR2X1 U2 ( .A(n8), .B(n7), .Y(sum) );
  OAI21X1 U3 ( .A(n7), .B(n8), .C(n6), .Y(cout) );
  NAND2X1 U4 ( .A(a), .B(b), .Y(n6) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n7) );
  INVX1 U1 ( .A(cin), .Y(n8) );
endmodule


module full_adder_58 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n6, n7, n8;

  XOR2X1 U2 ( .A(n8), .B(n7), .Y(sum) );
  OAI21X1 U3 ( .A(n7), .B(n8), .C(n6), .Y(cout) );
  NAND2X1 U4 ( .A(a), .B(b), .Y(n6) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n7) );
  INVX1 U1 ( .A(cin), .Y(n8) );
endmodule


module full_adder_59 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n6, n7, n8;

  XOR2X1 U2 ( .A(n8), .B(n7), .Y(sum) );
  OAI21X1 U3 ( .A(n7), .B(n8), .C(n6), .Y(cout) );
  NAND2X1 U4 ( .A(a), .B(b), .Y(n6) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n7) );
  INVX1 U1 ( .A(cin), .Y(n8) );
endmodule


module full_adder_60 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n6, n7, n8;

  XOR2X1 U2 ( .A(n8), .B(n7), .Y(sum) );
  OAI21X1 U3 ( .A(n7), .B(n8), .C(n6), .Y(cout) );
  NAND2X1 U4 ( .A(a), .B(b), .Y(n6) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n7) );
  INVX1 U1 ( .A(cin), .Y(n8) );
endmodule


module full_adder_61 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n6, n7, n8;

  XOR2X1 U2 ( .A(n8), .B(n7), .Y(sum) );
  OAI21X1 U3 ( .A(n7), .B(n8), .C(n6), .Y(cout) );
  NAND2X1 U4 ( .A(a), .B(b), .Y(n6) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n7) );
  INVX1 U1 ( .A(cin), .Y(n8) );
endmodule


module full_adder_62 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n6, n7, n8;

  XOR2X1 U2 ( .A(n8), .B(n7), .Y(sum) );
  OAI21X1 U3 ( .A(n7), .B(n8), .C(n6), .Y(cout) );
  NAND2X1 U4 ( .A(a), .B(b), .Y(n6) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n7) );
  INVX1 U1 ( .A(cin), .Y(n8) );
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
  wire   n495, n496, n497, n498, n499, n500, n501, n502, n503, n504, n505,
         n506, n507, n508, n509, n510, n511, n512, n513, n514, n515, n516,
         n517, n518, n519, n520, n521, n522, n523, n524, n525, n526, n527,
         n528, n529, n530, n531, n532, n533, n534, n535, n536, n537, n538,
         n539, n540, n541, n542, n543, n544, n545, n546, n547, n548, n549,
         n550, n551, n552, n553, n554, n555, n556, n557, n558, n559, n211,
         n214, n217, n220, n223, n226, n229, n232, n235, n238, n241, n244,
         n247, n250, n253, n256, n259, n262, n265, n268, n271, n274, n277,
         n280, n283, n286, n289, n292, n295, n298, n301, n304, n307, n1, n3,
         n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n144, n145, n146, n147, n148,
         n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n305, n308, n309, n310, n311, n312, n313,
         n314, n315, n316, n317, n318, n319, n320, n321, n322, n323, n324,
         n325, n326, n327, n328, n329, n330, n331, n332, n333, n334, n335,
         n336, n337, n338, n339, n560, n561, n562, n563, n564, n565, n566,
         n567, n568, n569, n570, n571, n572, n573, n574, n575, n576, n577,
         n578, n579, n580, n581, n582, n583, n584, n585, n586, n587, n588,
         n589, n590, n591, n592, n593, n594, n595, n596, n597, n598, n599,
         n600, n601, n602, n603, n604, n605, n606, n607, n608, n609, n610,
         n611, n612, n613, n614, n615, n616, n617, n618, n619, n620, n621,
         n622, n623, n624, n625, n626, n627, n628, n629, n630, n631, n632,
         n633, n634, n635, n636, n637, n638, n639, n640, n641, n642, n643,
         n644, n645, n646, n647, n648, n649, n650, n651, n660, n661, n662,
         n663, n664, n665, n666, n692, n693, n694, n695, n696, n697, n730,
         n731, n732, n733, n734, n735, n736, n737, n738, n739, n740, n741,
         n742, n743, n744, n745, n746, n747;
  wire   [31:0] next_PC;
  wire   [31:0] PC_addend1;
  wire   [32:1] carry;

  DFFSR flush_reg ( .D(n307), .CLK(clk), .R(1'b1), .S(n737), .Q(n559) );
  DFFSR \PC_f_reg[31]  ( .D(n304), .CLK(clk), .R(1'b1), .S(n737), .Q(n495) );
  DFFSR \PC_e_reg[31]  ( .D(i_addr[31]), .CLK(clk), .R(n735), .S(1'b1), .Q(
        n527) );
  DFFSR \PC_f_reg[30]  ( .D(n301), .CLK(clk), .R(n735), .S(1'b1), .Q(n496) );
  DFFSR \PC_e_reg[30]  ( .D(i_addr[30]), .CLK(clk), .R(n737), .S(1'b1), .Q(
        n528) );
  DFFSR \PC_f_reg[29]  ( .D(n298), .CLK(clk), .R(n737), .S(1'b1), .Q(n497) );
  DFFSR \PC_e_reg[29]  ( .D(i_addr[29]), .CLK(clk), .R(n735), .S(1'b1), .Q(
        n529) );
  DFFSR \PC_f_reg[28]  ( .D(n295), .CLK(clk), .R(n735), .S(1'b1), .Q(n498) );
  DFFSR \PC_e_reg[28]  ( .D(i_addr[28]), .CLK(clk), .R(n736), .S(1'b1), .Q(
        n530) );
  DFFSR \PC_f_reg[27]  ( .D(n292), .CLK(clk), .R(n735), .S(1'b1), .Q(n499) );
  DFFSR \PC_e_reg[27]  ( .D(i_addr[27]), .CLK(clk), .R(n737), .S(1'b1), .Q(
        n531) );
  DFFSR \PC_f_reg[26]  ( .D(n289), .CLK(clk), .R(n737), .S(1'b1), .Q(n500) );
  DFFSR \PC_e_reg[26]  ( .D(i_addr[26]), .CLK(clk), .R(n735), .S(1'b1), .Q(
        n532) );
  DFFSR \PC_f_reg[25]  ( .D(n286), .CLK(clk), .R(n735), .S(1'b1), .Q(n501) );
  DFFSR \PC_e_reg[25]  ( .D(i_addr[25]), .CLK(clk), .R(n736), .S(1'b1), .Q(
        n533) );
  DFFSR \PC_f_reg[24]  ( .D(n283), .CLK(clk), .R(n736), .S(1'b1), .Q(n502) );
  DFFSR \PC_e_reg[24]  ( .D(i_addr[24]), .CLK(clk), .R(n737), .S(1'b1), .Q(
        n534) );
  DFFSR \PC_f_reg[23]  ( .D(n280), .CLK(clk), .R(n737), .S(1'b1), .Q(n503) );
  DFFSR \PC_e_reg[23]  ( .D(i_addr[23]), .CLK(clk), .R(n735), .S(1'b1), .Q(
        n535) );
  DFFSR \PC_f_reg[22]  ( .D(n277), .CLK(clk), .R(n736), .S(1'b1), .Q(n504) );
  DFFSR \PC_e_reg[22]  ( .D(i_addr[22]), .CLK(clk), .R(n737), .S(1'b1), .Q(
        n536) );
  DFFSR \PC_f_reg[21]  ( .D(n274), .CLK(clk), .R(n736), .S(1'b1), .Q(n505) );
  DFFSR \PC_e_reg[21]  ( .D(i_addr[21]), .CLK(clk), .R(n735), .S(1'b1), .Q(
        n537) );
  DFFSR \PC_f_reg[20]  ( .D(n271), .CLK(clk), .R(n736), .S(1'b1), .Q(n506) );
  DFFSR \PC_e_reg[20]  ( .D(i_addr[20]), .CLK(clk), .R(n736), .S(1'b1), .Q(
        n538) );
  DFFSR \PC_f_reg[19]  ( .D(n268), .CLK(clk), .R(n737), .S(1'b1), .Q(n507) );
  DFFSR \PC_e_reg[19]  ( .D(i_addr[19]), .CLK(clk), .R(n735), .S(1'b1), .Q(
        n539) );
  DFFSR \PC_f_reg[18]  ( .D(n265), .CLK(clk), .R(n737), .S(1'b1), .Q(n508) );
  DFFSR \PC_e_reg[18]  ( .D(i_addr[18]), .CLK(clk), .R(n737), .S(1'b1), .Q(
        n540) );
  DFFSR \PC_f_reg[17]  ( .D(n262), .CLK(clk), .R(n736), .S(1'b1), .Q(n509) );
  DFFSR \PC_e_reg[17]  ( .D(i_addr[17]), .CLK(clk), .R(n736), .S(1'b1), .Q(
        n541) );
  DFFSR \PC_f_reg[16]  ( .D(n259), .CLK(clk), .R(n736), .S(1'b1), .Q(n510) );
  DFFSR \PC_e_reg[16]  ( .D(i_addr[16]), .CLK(clk), .R(n736), .S(1'b1), .Q(
        n542) );
  DFFSR \PC_f_reg[15]  ( .D(n256), .CLK(clk), .R(n736), .S(1'b1), .Q(n511) );
  DFFSR \PC_e_reg[15]  ( .D(i_addr[15]), .CLK(clk), .R(n736), .S(1'b1), .Q(
        n543) );
  DFFSR \PC_f_reg[14]  ( .D(n253), .CLK(clk), .R(n735), .S(1'b1), .Q(n512) );
  DFFSR \PC_e_reg[14]  ( .D(i_addr[14]), .CLK(clk), .R(n735), .S(1'b1), .Q(
        n544) );
  DFFSR \PC_f_reg[13]  ( .D(n250), .CLK(clk), .R(n735), .S(1'b1), .Q(n513) );
  DFFSR \PC_e_reg[13]  ( .D(i_addr[13]), .CLK(clk), .R(n735), .S(1'b1), .Q(
        n545) );
  DFFSR \PC_f_reg[12]  ( .D(n247), .CLK(clk), .R(n736), .S(1'b1), .Q(n514) );
  DFFSR \PC_e_reg[12]  ( .D(i_addr[12]), .CLK(clk), .R(n736), .S(1'b1), .Q(
        n546) );
  DFFSR \PC_f_reg[11]  ( .D(n244), .CLK(clk), .R(n736), .S(1'b1), .Q(n515) );
  DFFSR \PC_e_reg[11]  ( .D(i_addr[11]), .CLK(clk), .R(n737), .S(1'b1), .Q(
        n547) );
  DFFSR \PC_f_reg[10]  ( .D(n241), .CLK(clk), .R(n735), .S(1'b1), .Q(n516) );
  DFFSR \PC_e_reg[10]  ( .D(i_addr[10]), .CLK(clk), .R(n736), .S(1'b1), .Q(
        n548) );
  DFFSR \PC_f_reg[9]  ( .D(n238), .CLK(clk), .R(n735), .S(1'b1), .Q(n517) );
  DFFSR \PC_e_reg[9]  ( .D(i_addr[9]), .CLK(clk), .R(n737), .S(1'b1), .Q(n549)
         );
  DFFSR \PC_f_reg[8]  ( .D(n235), .CLK(clk), .R(n737), .S(1'b1), .Q(n518) );
  DFFSR \PC_e_reg[8]  ( .D(i_addr[8]), .CLK(clk), .R(n737), .S(1'b1), .Q(n550)
         );
  DFFSR \PC_f_reg[7]  ( .D(n232), .CLK(clk), .R(n737), .S(1'b1), .Q(n519) );
  DFFSR \PC_e_reg[7]  ( .D(i_addr[7]), .CLK(clk), .R(n737), .S(1'b1), .Q(n551)
         );
  DFFSR \PC_f_reg[6]  ( .D(n229), .CLK(clk), .R(n737), .S(1'b1), .Q(n520) );
  DFFSR \PC_e_reg[6]  ( .D(i_addr[6]), .CLK(clk), .R(n737), .S(1'b1), .Q(n552)
         );
  DFFSR \PC_f_reg[5]  ( .D(n226), .CLK(clk), .R(n735), .S(1'b1), .Q(n521) );
  DFFSR \PC_e_reg[5]  ( .D(i_addr[5]), .CLK(clk), .R(n736), .S(1'b1), .Q(n553)
         );
  DFFSR \PC_f_reg[4]  ( .D(n223), .CLK(clk), .R(n737), .S(1'b1), .Q(n522) );
  DFFSR \PC_e_reg[4]  ( .D(i_addr[4]), .CLK(clk), .R(n735), .S(1'b1), .Q(n554)
         );
  DFFSR \PC_f_reg[3]  ( .D(n220), .CLK(clk), .R(n736), .S(1'b1), .Q(n523) );
  DFFSR \PC_e_reg[3]  ( .D(i_addr[3]), .CLK(clk), .R(n737), .S(1'b1), .Q(n555)
         );
  DFFSR \PC_f_reg[2]  ( .D(n217), .CLK(clk), .R(n735), .S(1'b1), .Q(n524) );
  DFFSR \PC_e_reg[2]  ( .D(i_addr[2]), .CLK(clk), .R(n736), .S(1'b1), .Q(n556)
         );
  DFFSR \PC_f_reg[1]  ( .D(n214), .CLK(clk), .R(n735), .S(1'b1), .Q(n525) );
  DFFSR \PC_e_reg[1]  ( .D(i_addr[1]), .CLK(clk), .R(n736), .S(1'b1), .Q(n557)
         );
  DFFSR \PC_f_reg[0]  ( .D(n211), .CLK(clk), .R(n735), .S(1'b1), .Q(n526) );
  DFFSR \PC_e_reg[0]  ( .D(i_addr[0]), .CLK(clk), .R(n736), .S(1'b1), .Q(n558)
         );
  full_adder_0 \rca[0].full_adder_i  ( .a(PC_addend1[0]), .b(n638), .cin(1'b0), 
        .sum(next_PC[0]), .cout(carry[1]) );
  full_adder_63 \rca[1].full_adder_i  ( .a(PC_addend1[1]), .b(n692), .cin(
        carry[1]), .sum(next_PC[1]), .cout(carry[2]) );
  full_adder_62 \rca[2].full_adder_i  ( .a(PC_addend1[2]), .b(n561), .cin(
        carry[2]), .sum(next_PC[2]), .cout(carry[3]) );
  full_adder_61 \rca[3].full_adder_i  ( .a(PC_addend1[3]), .b(n627), .cin(
        carry[3]), .sum(next_PC[3]), .cout(carry[4]) );
  full_adder_60 \rca[4].full_adder_i  ( .a(PC_addend1[4]), .b(n614), .cin(
        carry[4]), .sum(next_PC[4]), .cout(carry[5]) );
  full_adder_59 \rca[5].full_adder_i  ( .a(PC_addend1[5]), .b(n600), .cin(
        carry[5]), .sum(next_PC[5]), .cout(carry[6]) );
  full_adder_58 \rca[6].full_adder_i  ( .a(PC_addend1[6]), .b(n587), .cin(
        carry[6]), .sum(next_PC[6]), .cout(carry[7]) );
  full_adder_57 \rca[7].full_adder_i  ( .a(PC_addend1[7]), .b(n579), .cin(
        carry[7]), .sum(next_PC[7]), .cout(carry[8]) );
  full_adder_56 \rca[8].full_adder_i  ( .a(PC_addend1[8]), .b(n570), .cin(
        carry[8]), .sum(next_PC[8]), .cout(carry[9]) );
  full_adder_55 \rca[9].full_adder_i  ( .a(PC_addend1[9]), .b(n569), .cin(
        carry[9]), .sum(next_PC[9]), .cout(carry[10]) );
  full_adder_54 \rca[10].full_adder_i  ( .a(PC_addend1[10]), .b(n571), .cin(
        carry[10]), .sum(next_PC[10]), .cout(carry[11]) );
  full_adder_53 \rca[11].full_adder_i  ( .a(PC_addend1[11]), .b(n572), .cin(
        carry[11]), .sum(next_PC[11]), .cout(carry[12]) );
  full_adder_52 \rca[12].full_adder_i  ( .a(PC_addend1[12]), .b(n660), .cin(
        carry[12]), .sum(next_PC[12]), .cout(carry[13]) );
  full_adder_51 \rca[13].full_adder_i  ( .a(PC_addend1[13]), .b(n644), .cin(
        carry[13]), .sum(next_PC[13]), .cout(carry[14]) );
  full_adder_50 \rca[14].full_adder_i  ( .a(PC_addend1[14]), .b(n635), .cin(
        carry[14]), .sum(next_PC[14]), .cout(carry[15]) );
  full_adder_49 \rca[15].full_adder_i  ( .a(PC_addend1[15]), .b(n624), .cin(
        carry[15]), .sum(next_PC[15]), .cout(carry[16]) );
  full_adder_48 \rca[16].full_adder_i  ( .a(PC_addend1[16]), .b(n611), .cin(
        carry[16]), .sum(next_PC[16]), .cout(carry[17]) );
  full_adder_47 \rca[17].full_adder_i  ( .a(PC_addend1[17]), .b(n597), .cin(
        carry[17]), .sum(next_PC[17]), .cout(carry[18]) );
  full_adder_46 \rca[18].full_adder_i  ( .a(PC_addend1[18]), .b(n568), .cin(
        carry[18]), .sum(next_PC[18]), .cout(carry[19]) );
  full_adder_45 \rca[19].full_adder_i  ( .a(PC_addend1[19]), .b(n632), .cin(
        carry[19]), .sum(next_PC[19]), .cout(carry[20]) );
  full_adder_44 \rca[20].full_adder_i  ( .a(PC_addend1[20]), .b(n621), .cin(
        carry[20]), .sum(next_PC[20]), .cout(carry[21]) );
  full_adder_43 \rca[21].full_adder_i  ( .a(PC_addend1[21]), .b(n608), .cin(
        carry[21]), .sum(next_PC[21]), .cout(carry[22]) );
  full_adder_42 \rca[22].full_adder_i  ( .a(PC_addend1[22]), .b(n594), .cin(
        carry[22]), .sum(next_PC[22]), .cout(carry[23]) );
  full_adder_41 \rca[23].full_adder_i  ( .a(PC_addend1[23]), .b(n584), .cin(
        carry[23]), .sum(next_PC[23]), .cout(carry[24]) );
  full_adder_40 \rca[24].full_adder_i  ( .a(PC_addend1[24]), .b(n576), .cin(
        carry[24]), .sum(next_PC[24]), .cout(carry[25]) );
  full_adder_39 \rca[25].full_adder_i  ( .a(PC_addend1[25]), .b(n564), .cin(
        carry[25]), .sum(next_PC[25]), .cout(carry[26]) );
  full_adder_38 \rca[26].full_adder_i  ( .a(PC_addend1[26]), .b(n565), .cin(
        carry[26]), .sum(next_PC[26]), .cout(carry[27]) );
  full_adder_37 \rca[27].full_adder_i  ( .a(PC_addend1[27]), .b(n566), .cin(
        carry[27]), .sum(next_PC[27]), .cout(carry[28]) );
  full_adder_36 \rca[28].full_adder_i  ( .a(PC_addend1[28]), .b(n567), .cin(
        carry[28]), .sum(next_PC[28]), .cout(carry[29]) );
  full_adder_35 \rca[29].full_adder_i  ( .a(PC_addend1[29]), .b(n647), .cin(
        carry[29]), .sum(next_PC[29]), .cout(carry[30]) );
  full_adder_34 \rca[30].full_adder_i  ( .a(PC_addend1[30]), .b(n695), .cin(
        carry[30]), .sum(next_PC[30]), .cout(carry[31]) );
  full_adder_33 \rca[31].full_adder_i  ( .a(PC_addend1[31]), .b(n663), .cin(
        carry[31]), .sum(next_PC[31]) );
  AOI22X1 U47 ( .A(imm_j[1]), .B(n3), .C(imm_b[1]), .D(n4), .Y(n42) );
  AOI22X1 U50 ( .A(imm_j[17]), .B(n3), .C(imm_b[17]), .D(n4), .Y(n45) );
  AOI22X1 U53 ( .A(imm_j[16]), .B(n3), .C(imm_b[16]), .D(n4), .Y(n47) );
  AOI22X1 U56 ( .A(imm_j[15]), .B(n3), .C(imm_b[15]), .D(n4), .Y(n49) );
  AOI22X1 U59 ( .A(imm_j[14]), .B(n3), .C(imm_b[14]), .D(n4), .Y(n51) );
  AOI22X1 U62 ( .A(imm_j[13]), .B(n3), .C(imm_b[13]), .D(n4), .Y(n53) );
  AOI22X1 U65 ( .A(imm_j[12]), .B(n3), .C(imm_b[12]), .D(n4), .Y(n55) );
  NAND2X1 U67 ( .A(imm_i[11]), .B(n44), .Y(n58) );
  AOI22X1 U68 ( .A(imm_j[11]), .B(n3), .C(imm_b[11]), .D(n4), .Y(n57) );
  NAND2X1 U70 ( .A(imm_i[10]), .B(n44), .Y(n60) );
  AOI22X1 U71 ( .A(imm_j[10]), .B(n3), .C(imm_b[10]), .D(n4), .Y(n59) );
  AOI22X1 U74 ( .A(imm_j[0]), .B(n3), .C(imm_b[0]), .D(n4), .Y(n61) );
  NAND2X1 U76 ( .A(imm_i[8]), .B(n44), .Y(n64) );
  AOI22X1 U77 ( .A(imm_j[8]), .B(n3), .C(imm_b[8]), .D(n4), .Y(n63) );
  AOI22X1 U80 ( .A(imm_j[7]), .B(n3), .C(imm_b[7]), .D(n4), .Y(n65) );
  AOI22X1 U83 ( .A(imm_j[6]), .B(n3), .C(imm_b[6]), .D(n4), .Y(n67) );
  AOI22X1 U86 ( .A(imm_j[5]), .B(n3), .C(imm_b[5]), .D(n4), .Y(n69) );
  NAND2X1 U88 ( .A(imm_i[9]), .B(n44), .Y(n72) );
  AOI22X1 U89 ( .A(imm_j[9]), .B(n3), .C(imm_b[9]), .D(n4), .Y(n71) );
  NAND2X1 U91 ( .A(imm_i[18]), .B(n44), .Y(n74) );
  AOI22X1 U92 ( .A(imm_j[18]), .B(n3), .C(imm_b[18]), .D(n4), .Y(n73) );
  AOI22X1 U95 ( .A(imm_j[4]), .B(n3), .C(imm_b[4]), .D(n4), .Y(n75) );
  AOI22X1 U98 ( .A(imm_j[3]), .B(n3), .C(imm_b[3]), .D(n4), .Y(n77) );
  NAND2X1 U100 ( .A(imm_i[28]), .B(n44), .Y(n80) );
  AOI22X1 U101 ( .A(imm_j[28]), .B(n3), .C(imm_b[28]), .D(n4), .Y(n79) );
  AOI22X1 U104 ( .A(imm_j[29]), .B(n3), .C(imm_b[29]), .D(n4), .Y(n81) );
  AOI22X1 U107 ( .A(imm_j[31]), .B(n3), .C(imm_b[31]), .D(n4), .Y(n83) );
  AOI22X1 U110 ( .A(imm_j[30]), .B(n3), .C(imm_b[30]), .D(n4), .Y(n85) );
  NAND2X1 U112 ( .A(imm_i[27]), .B(n44), .Y(n88) );
  AOI22X1 U113 ( .A(imm_j[27]), .B(n3), .C(imm_b[27]), .D(n4), .Y(n87) );
  NAND2X1 U115 ( .A(imm_i[26]), .B(n44), .Y(n90) );
  AOI22X1 U116 ( .A(imm_j[26]), .B(n3), .C(imm_b[26]), .D(n4), .Y(n89) );
  NAND2X1 U118 ( .A(imm_i[25]), .B(n44), .Y(n92) );
  AOI22X1 U119 ( .A(imm_j[25]), .B(n3), .C(imm_b[25]), .D(n4), .Y(n91) );
  AOI22X1 U122 ( .A(imm_j[24]), .B(n3), .C(imm_b[24]), .D(n4), .Y(n93) );
  AOI22X1 U125 ( .A(imm_j[23]), .B(n3), .C(imm_b[23]), .D(n4), .Y(n95) );
  AOI22X1 U128 ( .A(imm_j[22]), .B(n3), .C(imm_b[22]), .D(n4), .Y(n97) );
  AOI22X1 U131 ( .A(imm_j[21]), .B(n3), .C(imm_b[21]), .D(n4), .Y(n99) );
  AOI22X1 U134 ( .A(imm_j[20]), .B(n3), .C(imm_b[20]), .D(n4), .Y(n101) );
  AOI22X1 U137 ( .A(imm_j[19]), .B(n3), .C(imm_b[19]), .D(n4), .Y(n103) );
  NAND3X1 U138 ( .A(n730), .B(n41), .C(n107), .Y(n105) );
  NAND3X1 U139 ( .A(br_type[0]), .B(n730), .C(br_type[1]), .Y(n108) );
  OAI21X1 U140 ( .A(n741), .B(n109), .C(n110), .Y(n307) );
  NAND2X1 U141 ( .A(flush), .B(fetch_stall), .Y(n110) );
  OAI21X1 U142 ( .A(n744), .B(n5), .C(n617), .Y(n304) );
  OAI21X1 U144 ( .A(n745), .B(n6), .C(n590), .Y(n301) );
  OAI21X1 U146 ( .A(n745), .B(n7), .C(n603), .Y(n298) );
  OAI21X1 U148 ( .A(n745), .B(n8), .C(n114), .Y(n295) );
  NAND2X1 U149 ( .A(next_PC[28]), .B(n747), .Y(n114) );
  OAI21X1 U150 ( .A(n746), .B(n9), .C(n115), .Y(n292) );
  NAND2X1 U151 ( .A(next_PC[27]), .B(n747), .Y(n115) );
  OAI21X1 U152 ( .A(n747), .B(n10), .C(n116), .Y(n289) );
  NAND2X1 U153 ( .A(next_PC[26]), .B(n746), .Y(n116) );
  OAI21X1 U154 ( .A(n746), .B(n11), .C(n117), .Y(n286) );
  NAND2X1 U155 ( .A(next_PC[25]), .B(n747), .Y(n117) );
  OAI21X1 U156 ( .A(n747), .B(n12), .C(n118), .Y(n283) );
  NAND2X1 U157 ( .A(next_PC[24]), .B(n747), .Y(n118) );
  OAI21X1 U158 ( .A(n746), .B(n13), .C(n119), .Y(n280) );
  NAND2X1 U159 ( .A(next_PC[23]), .B(n745), .Y(n119) );
  OAI21X1 U160 ( .A(n747), .B(n14), .C(n120), .Y(n277) );
  NAND2X1 U161 ( .A(next_PC[22]), .B(n746), .Y(n120) );
  OAI21X1 U162 ( .A(n746), .B(n15), .C(n121), .Y(n274) );
  NAND2X1 U163 ( .A(next_PC[21]), .B(n747), .Y(n121) );
  OAI21X1 U164 ( .A(n746), .B(n16), .C(n122), .Y(n271) );
  NAND2X1 U165 ( .A(next_PC[20]), .B(n747), .Y(n122) );
  OAI21X1 U166 ( .A(n746), .B(n17), .C(n123), .Y(n268) );
  NAND2X1 U167 ( .A(next_PC[19]), .B(n745), .Y(n123) );
  OAI21X1 U168 ( .A(n746), .B(n18), .C(n124), .Y(n265) );
  NAND2X1 U169 ( .A(next_PC[18]), .B(n746), .Y(n124) );
  OAI21X1 U170 ( .A(n746), .B(n19), .C(n125), .Y(n262) );
  NAND2X1 U171 ( .A(next_PC[17]), .B(n747), .Y(n125) );
  OAI21X1 U172 ( .A(n746), .B(n20), .C(n126), .Y(n259) );
  NAND2X1 U173 ( .A(next_PC[16]), .B(n746), .Y(n126) );
  OAI21X1 U174 ( .A(n746), .B(n21), .C(n127), .Y(n256) );
  NAND2X1 U175 ( .A(next_PC[15]), .B(n745), .Y(n127) );
  OAI21X1 U176 ( .A(n746), .B(n22), .C(n574), .Y(n253) );
  OAI21X1 U178 ( .A(n746), .B(n23), .C(n604), .Y(n250) );
  OAI21X1 U180 ( .A(n747), .B(n24), .C(n592), .Y(n247) );
  OAI21X1 U182 ( .A(n747), .B(n25), .C(n131), .Y(n244) );
  NAND2X1 U183 ( .A(next_PC[11]), .B(n746), .Y(n131) );
  OAI21X1 U184 ( .A(n745), .B(n26), .C(n132), .Y(n241) );
  NAND2X1 U185 ( .A(next_PC[10]), .B(n747), .Y(n132) );
  OAI21X1 U186 ( .A(n747), .B(n27), .C(n133), .Y(n238) );
  NAND2X1 U187 ( .A(next_PC[9]), .B(n747), .Y(n133) );
  OAI21X1 U188 ( .A(n746), .B(n28), .C(n134), .Y(n235) );
  NAND2X1 U189 ( .A(next_PC[8]), .B(n747), .Y(n134) );
  OAI21X1 U190 ( .A(n746), .B(n29), .C(n135), .Y(n232) );
  NAND2X1 U191 ( .A(next_PC[7]), .B(n747), .Y(n135) );
  OAI21X1 U192 ( .A(n746), .B(n30), .C(n136), .Y(n229) );
  NAND2X1 U193 ( .A(next_PC[6]), .B(n747), .Y(n136) );
  OAI21X1 U194 ( .A(n746), .B(n31), .C(n137), .Y(n226) );
  NAND2X1 U195 ( .A(next_PC[5]), .B(n747), .Y(n137) );
  OAI21X1 U196 ( .A(n745), .B(n32), .C(n138), .Y(n223) );
  NAND2X1 U197 ( .A(next_PC[4]), .B(n747), .Y(n138) );
  OAI21X1 U198 ( .A(n745), .B(n33), .C(n607), .Y(n220) );
  OAI21X1 U200 ( .A(n745), .B(n34), .C(n140), .Y(n217) );
  NAND2X1 U201 ( .A(next_PC[2]), .B(n747), .Y(n140) );
  OAI21X1 U202 ( .A(n745), .B(n35), .C(n643), .Y(n214) );
  OAI21X1 U204 ( .A(n745), .B(n36), .C(n620), .Y(n211) );
  AOI22X1 U207 ( .A(imm_i[2]), .B(n666), .C(imm_b[2]), .D(n41), .Y(n144) );
  OAI21X1 U209 ( .A(n742), .B(n27), .C(n575), .Y(i_addr[9]) );
  OAI21X1 U211 ( .A(n742), .B(n28), .C(n630), .Y(i_addr[8]) );
  OAI21X1 U213 ( .A(n742), .B(n29), .C(n583), .Y(i_addr[7]) );
  OAI21X1 U215 ( .A(n742), .B(n30), .C(n593), .Y(i_addr[6]) );
  OAI21X1 U217 ( .A(n742), .B(n31), .C(n606), .Y(i_addr[5]) );
  OAI21X1 U219 ( .A(n742), .B(n32), .C(n619), .Y(i_addr[4]) );
  OAI21X1 U221 ( .A(n742), .B(n33), .C(n642), .Y(i_addr[3]) );
  OAI21X1 U223 ( .A(n742), .B(n5), .C(n153), .Y(i_addr[31]) );
  NAND2X1 U224 ( .A(PC_e[31]), .B(n743), .Y(n153) );
  OAI21X1 U225 ( .A(n742), .B(n6), .C(n154), .Y(i_addr[30]) );
  NAND2X1 U226 ( .A(PC_e[30]), .B(n742), .Y(n154) );
  OAI21X1 U227 ( .A(n743), .B(n34), .C(n650), .Y(i_addr[2]) );
  OAI21X1 U229 ( .A(n738), .B(n7), .C(n156), .Y(i_addr[29]) );
  NAND2X1 U230 ( .A(PC_e[29]), .B(n743), .Y(n156) );
  OAI21X1 U231 ( .A(n739), .B(n8), .C(n157), .Y(i_addr[28]) );
  NAND2X1 U232 ( .A(PC_e[28]), .B(n742), .Y(n157) );
  OAI21X1 U233 ( .A(fetch_stall), .B(n9), .C(n158), .Y(i_addr[27]) );
  NAND2X1 U234 ( .A(PC_e[27]), .B(n743), .Y(n158) );
  OAI21X1 U235 ( .A(fetch_stall), .B(n10), .C(n159), .Y(i_addr[26]) );
  NAND2X1 U236 ( .A(PC_e[26]), .B(n743), .Y(n159) );
  OAI21X1 U237 ( .A(fetch_stall), .B(n11), .C(n160), .Y(i_addr[25]) );
  NAND2X1 U238 ( .A(PC_e[25]), .B(n742), .Y(n160) );
  OAI21X1 U239 ( .A(fetch_stall), .B(n12), .C(n161), .Y(i_addr[24]) );
  NAND2X1 U240 ( .A(PC_e[24]), .B(n742), .Y(n161) );
  OAI21X1 U241 ( .A(fetch_stall), .B(n13), .C(n162), .Y(i_addr[23]) );
  NAND2X1 U242 ( .A(PC_e[23]), .B(n743), .Y(n162) );
  OAI21X1 U243 ( .A(fetch_stall), .B(n14), .C(n163), .Y(i_addr[22]) );
  NAND2X1 U244 ( .A(PC_e[22]), .B(n743), .Y(n163) );
  OAI21X1 U245 ( .A(fetch_stall), .B(n15), .C(n164), .Y(i_addr[21]) );
  NAND2X1 U246 ( .A(PC_e[21]), .B(n743), .Y(n164) );
  OAI21X1 U247 ( .A(fetch_stall), .B(n16), .C(n165), .Y(i_addr[20]) );
  NAND2X1 U248 ( .A(PC_e[20]), .B(n743), .Y(n165) );
  OAI21X1 U249 ( .A(n741), .B(n35), .C(n631), .Y(i_addr[1]) );
  OAI21X1 U251 ( .A(n741), .B(n17), .C(n167), .Y(i_addr[19]) );
  NAND2X1 U252 ( .A(PC_e[19]), .B(n743), .Y(n167) );
  OAI21X1 U253 ( .A(n741), .B(n18), .C(n168), .Y(i_addr[18]) );
  NAND2X1 U254 ( .A(PC_e[18]), .B(fetch_stall), .Y(n168) );
  OAI21X1 U255 ( .A(n741), .B(n19), .C(n169), .Y(i_addr[17]) );
  NAND2X1 U256 ( .A(PC_e[17]), .B(n743), .Y(n169) );
  OAI21X1 U257 ( .A(n741), .B(n20), .C(n573), .Y(i_addr[16]) );
  OAI21X1 U259 ( .A(n741), .B(n21), .C(n171), .Y(i_addr[15]) );
  NAND2X1 U260 ( .A(PC_e[15]), .B(fetch_stall), .Y(n171) );
  OAI21X1 U261 ( .A(n741), .B(n22), .C(n582), .Y(i_addr[14]) );
  OAI21X1 U263 ( .A(n741), .B(n23), .C(n591), .Y(i_addr[13]) );
  OAI21X1 U265 ( .A(n741), .B(n24), .C(n605), .Y(i_addr[12]) );
  OAI21X1 U267 ( .A(n741), .B(n25), .C(n618), .Y(i_addr[11]) );
  OAI21X1 U269 ( .A(n741), .B(n26), .C(n641), .Y(i_addr[10]) );
  OAI21X1 U271 ( .A(n741), .B(n36), .C(n651), .Y(i_addr[0]) );
  OAI21X1 U273 ( .A(n1), .B(n27), .C(n178), .Y(PC_addend1[9]) );
  AOI22X1 U274 ( .A(n732), .B(PC_e[9]), .C(rs1_data[9]), .D(n44), .Y(n178) );
  OAI21X1 U275 ( .A(n1), .B(n28), .C(n180), .Y(PC_addend1[8]) );
  AOI22X1 U276 ( .A(n732), .B(PC_e[8]), .C(rs1_data[8]), .D(n44), .Y(n180) );
  OAI21X1 U277 ( .A(n1), .B(n29), .C(n181), .Y(PC_addend1[7]) );
  AOI22X1 U278 ( .A(n732), .B(PC_e[7]), .C(rs1_data[7]), .D(n44), .Y(n181) );
  OAI21X1 U279 ( .A(n1), .B(n30), .C(n182), .Y(PC_addend1[6]) );
  AOI22X1 U280 ( .A(n732), .B(PC_e[6]), .C(rs1_data[6]), .D(n44), .Y(n182) );
  OAI21X1 U281 ( .A(n1), .B(n31), .C(n183), .Y(PC_addend1[5]) );
  AOI22X1 U282 ( .A(n732), .B(PC_e[5]), .C(rs1_data[5]), .D(n44), .Y(n183) );
  OAI21X1 U283 ( .A(n1), .B(n32), .C(n184), .Y(PC_addend1[4]) );
  AOI22X1 U284 ( .A(n732), .B(PC_e[4]), .C(rs1_data[4]), .D(n44), .Y(n184) );
  OAI21X1 U285 ( .A(n1), .B(n33), .C(n185), .Y(PC_addend1[3]) );
  AOI22X1 U286 ( .A(n732), .B(PC_e[3]), .C(rs1_data[3]), .D(n44), .Y(n185) );
  OAI21X1 U287 ( .A(n1), .B(n5), .C(n186), .Y(PC_addend1[31]) );
  AOI22X1 U288 ( .A(n732), .B(PC_e[31]), .C(rs1_data[31]), .D(n44), .Y(n186)
         );
  OAI21X1 U289 ( .A(n1), .B(n6), .C(n187), .Y(PC_addend1[30]) );
  AOI22X1 U290 ( .A(n732), .B(PC_e[30]), .C(rs1_data[30]), .D(n44), .Y(n187)
         );
  OAI21X1 U291 ( .A(n1), .B(n34), .C(n188), .Y(PC_addend1[2]) );
  AOI22X1 U292 ( .A(n732), .B(PC_e[2]), .C(rs1_data[2]), .D(n44), .Y(n188) );
  OAI21X1 U293 ( .A(n1), .B(n7), .C(n189), .Y(PC_addend1[29]) );
  AOI22X1 U294 ( .A(n732), .B(PC_e[29]), .C(rs1_data[29]), .D(n44), .Y(n189)
         );
  OAI21X1 U295 ( .A(n1), .B(n8), .C(n190), .Y(PC_addend1[28]) );
  AOI22X1 U296 ( .A(n732), .B(PC_e[28]), .C(rs1_data[28]), .D(n44), .Y(n190)
         );
  OAI21X1 U297 ( .A(n1), .B(n9), .C(n191), .Y(PC_addend1[27]) );
  AOI22X1 U298 ( .A(n732), .B(PC_e[27]), .C(rs1_data[27]), .D(n44), .Y(n191)
         );
  OAI21X1 U299 ( .A(n1), .B(n10), .C(n192), .Y(PC_addend1[26]) );
  AOI22X1 U300 ( .A(n732), .B(PC_e[26]), .C(rs1_data[26]), .D(n44), .Y(n192)
         );
  OAI21X1 U301 ( .A(n1), .B(n11), .C(n193), .Y(PC_addend1[25]) );
  AOI22X1 U302 ( .A(n732), .B(PC_e[25]), .C(rs1_data[25]), .D(n44), .Y(n193)
         );
  OAI21X1 U303 ( .A(n1), .B(n12), .C(n194), .Y(PC_addend1[24]) );
  AOI22X1 U304 ( .A(n732), .B(PC_e[24]), .C(rs1_data[24]), .D(n44), .Y(n194)
         );
  OAI21X1 U305 ( .A(n1), .B(n13), .C(n195), .Y(PC_addend1[23]) );
  AOI22X1 U306 ( .A(n732), .B(PC_e[23]), .C(rs1_data[23]), .D(n44), .Y(n195)
         );
  OAI21X1 U307 ( .A(n1), .B(n14), .C(n196), .Y(PC_addend1[22]) );
  AOI22X1 U308 ( .A(n732), .B(PC_e[22]), .C(rs1_data[22]), .D(n44), .Y(n196)
         );
  OAI21X1 U309 ( .A(n1), .B(n15), .C(n197), .Y(PC_addend1[21]) );
  AOI22X1 U310 ( .A(n732), .B(PC_e[21]), .C(rs1_data[21]), .D(n44), .Y(n197)
         );
  OAI21X1 U311 ( .A(n1), .B(n16), .C(n198), .Y(PC_addend1[20]) );
  AOI22X1 U312 ( .A(n732), .B(PC_e[20]), .C(rs1_data[20]), .D(n44), .Y(n198)
         );
  OAI21X1 U313 ( .A(n1), .B(n35), .C(n199), .Y(PC_addend1[1]) );
  AOI22X1 U314 ( .A(n732), .B(PC_e[1]), .C(rs1_data[1]), .D(n733), .Y(n199) );
  OAI21X1 U315 ( .A(n1), .B(n17), .C(n200), .Y(PC_addend1[19]) );
  AOI22X1 U316 ( .A(n732), .B(PC_e[19]), .C(rs1_data[19]), .D(n733), .Y(n200)
         );
  OAI21X1 U317 ( .A(n1), .B(n18), .C(n201), .Y(PC_addend1[18]) );
  AOI22X1 U318 ( .A(n732), .B(PC_e[18]), .C(rs1_data[18]), .D(n733), .Y(n201)
         );
  OAI21X1 U319 ( .A(n1), .B(n19), .C(n202), .Y(PC_addend1[17]) );
  AOI22X1 U320 ( .A(n732), .B(PC_e[17]), .C(rs1_data[17]), .D(n733), .Y(n202)
         );
  OAI21X1 U321 ( .A(n1), .B(n20), .C(n203), .Y(PC_addend1[16]) );
  AOI22X1 U322 ( .A(n732), .B(PC_e[16]), .C(rs1_data[16]), .D(n733), .Y(n203)
         );
  OAI21X1 U323 ( .A(n1), .B(n21), .C(n204), .Y(PC_addend1[15]) );
  AOI22X1 U324 ( .A(n732), .B(PC_e[15]), .C(rs1_data[15]), .D(n733), .Y(n204)
         );
  OAI21X1 U325 ( .A(n1), .B(n22), .C(n205), .Y(PC_addend1[14]) );
  AOI22X1 U326 ( .A(n732), .B(PC_e[14]), .C(rs1_data[14]), .D(n733), .Y(n205)
         );
  OAI21X1 U327 ( .A(n1), .B(n23), .C(n206), .Y(PC_addend1[13]) );
  AOI22X1 U328 ( .A(n732), .B(PC_e[13]), .C(rs1_data[13]), .D(n733), .Y(n206)
         );
  OAI21X1 U329 ( .A(n1), .B(n24), .C(n207), .Y(PC_addend1[12]) );
  AOI22X1 U330 ( .A(n732), .B(PC_e[12]), .C(rs1_data[12]), .D(n733), .Y(n207)
         );
  OAI21X1 U331 ( .A(n1), .B(n25), .C(n208), .Y(PC_addend1[11]) );
  AOI22X1 U332 ( .A(n732), .B(PC_e[11]), .C(rs1_data[11]), .D(n733), .Y(n208)
         );
  OAI21X1 U333 ( .A(n1), .B(n26), .C(n305), .Y(PC_addend1[10]) );
  AOI22X1 U334 ( .A(n732), .B(PC_e[10]), .C(rs1_data[10]), .D(n733), .Y(n305)
         );
  OAI21X1 U335 ( .A(n1), .B(n36), .C(n308), .Y(PC_addend1[0]) );
  AOI22X1 U336 ( .A(n732), .B(PC_e[0]), .C(rs1_data[0]), .D(n733), .Y(n308) );
  OAI21X1 U339 ( .A(br_type[0]), .B(n107), .C(n730), .Y(n109) );
  AND2X1 U3 ( .A(n639), .B(n640), .Y(n318) );
  AND2X1 U4 ( .A(n694), .B(n693), .Y(n309) );
  AND2X1 U5 ( .A(n629), .B(n628), .Y(n326) );
  AND2X1 U6 ( .A(n616), .B(n615), .Y(n325) );
  AND2X1 U7 ( .A(n602), .B(n601), .Y(n322) );
  AND2X1 U8 ( .A(n589), .B(n588), .Y(n321) );
  AND2X1 U9 ( .A(n581), .B(n580), .Y(n320) );
  AND2X1 U10 ( .A(n662), .B(n661), .Y(n315) );
  AND2X1 U11 ( .A(n646), .B(n645), .Y(n314) );
  AND2X1 U12 ( .A(n637), .B(n636), .Y(n313) );
  AND2X1 U13 ( .A(n626), .B(n625), .Y(n312) );
  AND2X1 U14 ( .A(n613), .B(n612), .Y(n311) );
  AND2X1 U15 ( .A(n599), .B(n598), .Y(n310) );
  AND2X1 U16 ( .A(n634), .B(n633), .Y(n339) );
  AND2X1 U17 ( .A(n623), .B(n622), .Y(n338) );
  AND2X1 U18 ( .A(n610), .B(n609), .Y(n337) );
  AND2X1 U19 ( .A(n596), .B(n595), .Y(n336) );
  AND2X1 U20 ( .A(n586), .B(n585), .Y(n335) );
  AND2X1 U21 ( .A(n578), .B(n577), .Y(n334) );
  AND2X1 U22 ( .A(n649), .B(n648), .Y(n328) );
  OR2X1 U23 ( .A(n39), .B(flush), .Y(n106) );
  AND2X1 U24 ( .A(n697), .B(n696), .Y(n330) );
  AND2X1 U25 ( .A(n665), .B(n664), .Y(n329) );
  AND2X1 U26 ( .A(n666), .B(n730), .Y(n44) );
  OR2X1 U27 ( .A(n563), .B(n562), .Y(n560) );
  OR2X1 U28 ( .A(n109), .B(n666), .Y(n731) );
  OR2X1 U29 ( .A(n109), .B(n560), .Y(n561) );
  AND2X1 U30 ( .A(imm_j[2]), .B(br_type[1]), .Y(n562) );
  INVX1 U31 ( .A(n144), .Y(n563) );
  AND2X2 U32 ( .A(n91), .B(n92), .Y(n333) );
  INVX1 U33 ( .A(n333), .Y(n564) );
  AND2X2 U34 ( .A(n89), .B(n90), .Y(n332) );
  INVX1 U35 ( .A(n332), .Y(n565) );
  AND2X2 U36 ( .A(n87), .B(n88), .Y(n331) );
  INVX1 U37 ( .A(n331), .Y(n566) );
  AND2X2 U38 ( .A(n79), .B(n80), .Y(n327) );
  INVX1 U39 ( .A(n327), .Y(n567) );
  AND2X2 U40 ( .A(n73), .B(n74), .Y(n324) );
  INVX1 U41 ( .A(n324), .Y(n568) );
  AND2X2 U42 ( .A(n71), .B(n72), .Y(n323) );
  INVX1 U43 ( .A(n323), .Y(n569) );
  AND2X2 U44 ( .A(n63), .B(n64), .Y(n319) );
  INVX1 U45 ( .A(n319), .Y(n570) );
  AND2X2 U46 ( .A(n59), .B(n60), .Y(n317) );
  INVX1 U48 ( .A(n317), .Y(n571) );
  AND2X2 U49 ( .A(n57), .B(n58), .Y(n316) );
  INVX1 U51 ( .A(n316), .Y(n572) );
  AND2X1 U52 ( .A(PC_e[16]), .B(n743), .Y(n170) );
  INVX1 U54 ( .A(n170), .Y(n573) );
  AND2X1 U55 ( .A(next_PC[14]), .B(n746), .Y(n128) );
  INVX1 U57 ( .A(n128), .Y(n574) );
  AND2X1 U58 ( .A(PC_e[9]), .B(fetch_stall), .Y(n146) );
  INVX1 U60 ( .A(n146), .Y(n575) );
  INVX1 U61 ( .A(n334), .Y(n576) );
  AND2X1 U63 ( .A(imm_i[24]), .B(n44), .Y(n94) );
  INVX1 U64 ( .A(n94), .Y(n577) );
  BUFX2 U66 ( .A(n93), .Y(n578) );
  INVX1 U69 ( .A(n320), .Y(n579) );
  AND2X1 U72 ( .A(imm_i[7]), .B(n44), .Y(n66) );
  INVX1 U73 ( .A(n66), .Y(n580) );
  BUFX2 U75 ( .A(n65), .Y(n581) );
  AND2X1 U78 ( .A(PC_e[14]), .B(n742), .Y(n172) );
  INVX1 U79 ( .A(n172), .Y(n582) );
  AND2X1 U81 ( .A(PC_e[7]), .B(n743), .Y(n148) );
  INVX1 U82 ( .A(n148), .Y(n583) );
  INVX1 U84 ( .A(n335), .Y(n584) );
  AND2X1 U85 ( .A(imm_i[23]), .B(n44), .Y(n96) );
  INVX1 U87 ( .A(n96), .Y(n585) );
  BUFX2 U90 ( .A(n95), .Y(n586) );
  INVX1 U93 ( .A(n321), .Y(n587) );
  AND2X1 U94 ( .A(imm_i[6]), .B(n44), .Y(n68) );
  INVX1 U96 ( .A(n68), .Y(n588) );
  BUFX2 U97 ( .A(n67), .Y(n589) );
  AND2X1 U99 ( .A(next_PC[30]), .B(n747), .Y(n112) );
  INVX1 U102 ( .A(n112), .Y(n590) );
  AND2X1 U103 ( .A(PC_e[13]), .B(n739), .Y(n173) );
  INVX1 U105 ( .A(n173), .Y(n591) );
  AND2X1 U106 ( .A(next_PC[12]), .B(n745), .Y(n130) );
  INVX1 U108 ( .A(n130), .Y(n592) );
  AND2X1 U109 ( .A(PC_e[6]), .B(n743), .Y(n149) );
  INVX1 U111 ( .A(n149), .Y(n593) );
  INVX1 U114 ( .A(n336), .Y(n594) );
  AND2X1 U117 ( .A(imm_i[22]), .B(n44), .Y(n98) );
  INVX1 U120 ( .A(n98), .Y(n595) );
  BUFX2 U121 ( .A(n97), .Y(n596) );
  INVX1 U123 ( .A(n310), .Y(n597) );
  AND2X1 U124 ( .A(imm_i[17]), .B(n44), .Y(n46) );
  INVX1 U126 ( .A(n46), .Y(n598) );
  BUFX2 U127 ( .A(n45), .Y(n599) );
  INVX1 U129 ( .A(n322), .Y(n600) );
  AND2X1 U130 ( .A(imm_i[5]), .B(n44), .Y(n70) );
  INVX1 U132 ( .A(n70), .Y(n601) );
  BUFX2 U133 ( .A(n69), .Y(n602) );
  AND2X1 U135 ( .A(next_PC[29]), .B(n745), .Y(n113) );
  INVX1 U136 ( .A(n113), .Y(n603) );
  AND2X1 U143 ( .A(next_PC[13]), .B(n747), .Y(n129) );
  INVX1 U145 ( .A(n129), .Y(n604) );
  AND2X1 U147 ( .A(PC_e[12]), .B(n743), .Y(n174) );
  INVX1 U177 ( .A(n174), .Y(n605) );
  AND2X1 U179 ( .A(PC_e[5]), .B(n743), .Y(n150) );
  INVX1 U181 ( .A(n150), .Y(n606) );
  AND2X1 U199 ( .A(next_PC[3]), .B(n747), .Y(n139) );
  INVX1 U203 ( .A(n139), .Y(n607) );
  INVX1 U205 ( .A(n337), .Y(n608) );
  AND2X1 U206 ( .A(imm_i[21]), .B(n44), .Y(n100) );
  INVX1 U208 ( .A(n100), .Y(n609) );
  BUFX2 U210 ( .A(n99), .Y(n610) );
  INVX1 U212 ( .A(n311), .Y(n611) );
  AND2X1 U214 ( .A(imm_i[16]), .B(n44), .Y(n48) );
  INVX1 U216 ( .A(n48), .Y(n612) );
  BUFX2 U218 ( .A(n47), .Y(n613) );
  INVX1 U220 ( .A(n325), .Y(n614) );
  AND2X1 U222 ( .A(imm_i[4]), .B(n44), .Y(n76) );
  INVX1 U228 ( .A(n76), .Y(n615) );
  BUFX2 U250 ( .A(n75), .Y(n616) );
  AND2X1 U258 ( .A(next_PC[31]), .B(n747), .Y(n111) );
  INVX1 U262 ( .A(n111), .Y(n617) );
  AND2X1 U264 ( .A(PC_e[11]), .B(n742), .Y(n175) );
  INVX1 U266 ( .A(n175), .Y(n618) );
  AND2X1 U268 ( .A(PC_e[4]), .B(n743), .Y(n151) );
  INVX1 U270 ( .A(n151), .Y(n619) );
  AND2X1 U272 ( .A(next_PC[0]), .B(n746), .Y(n142) );
  INVX1 U337 ( .A(n142), .Y(n620) );
  INVX1 U338 ( .A(n338), .Y(n621) );
  AND2X1 U340 ( .A(imm_i[20]), .B(n44), .Y(n102) );
  INVX1 U406 ( .A(n102), .Y(n622) );
  BUFX2 U407 ( .A(n101), .Y(n623) );
  INVX1 U408 ( .A(n312), .Y(n624) );
  AND2X1 U409 ( .A(imm_i[15]), .B(n44), .Y(n50) );
  INVX1 U410 ( .A(n50), .Y(n625) );
  BUFX2 U411 ( .A(n49), .Y(n626) );
  INVX1 U412 ( .A(n326), .Y(n627) );
  AND2X1 U413 ( .A(imm_i[3]), .B(n44), .Y(n78) );
  INVX1 U414 ( .A(n78), .Y(n628) );
  BUFX2 U415 ( .A(n77), .Y(n629) );
  AND2X1 U416 ( .A(PC_e[8]), .B(fetch_stall), .Y(n147) );
  INVX1 U417 ( .A(n147), .Y(n630) );
  AND2X1 U418 ( .A(PC_e[1]), .B(n743), .Y(n166) );
  INVX1 U419 ( .A(n166), .Y(n631) );
  INVX1 U420 ( .A(n339), .Y(n632) );
  AND2X1 U421 ( .A(imm_i[19]), .B(n44), .Y(n104) );
  INVX1 U422 ( .A(n104), .Y(n633) );
  BUFX2 U423 ( .A(n103), .Y(n634) );
  INVX1 U424 ( .A(n313), .Y(n635) );
  AND2X1 U425 ( .A(imm_i[14]), .B(n44), .Y(n52) );
  INVX1 U426 ( .A(n52), .Y(n636) );
  BUFX2 U427 ( .A(n51), .Y(n637) );
  INVX1 U428 ( .A(n318), .Y(n638) );
  BUFX2 U429 ( .A(n61), .Y(n639) );
  AND2X1 U430 ( .A(imm_i[0]), .B(n44), .Y(n62) );
  INVX1 U431 ( .A(n62), .Y(n640) );
  AND2X1 U432 ( .A(PC_e[10]), .B(n739), .Y(n176) );
  INVX1 U433 ( .A(n176), .Y(n641) );
  AND2X1 U434 ( .A(PC_e[3]), .B(n743), .Y(n152) );
  INVX1 U435 ( .A(n152), .Y(n642) );
  AND2X1 U436 ( .A(next_PC[1]), .B(n747), .Y(n141) );
  INVX1 U437 ( .A(n141), .Y(n643) );
  INVX1 U438 ( .A(n314), .Y(n644) );
  AND2X1 U439 ( .A(imm_i[13]), .B(n44), .Y(n54) );
  INVX1 U440 ( .A(n54), .Y(n645) );
  BUFX2 U441 ( .A(n53), .Y(n646) );
  INVX1 U442 ( .A(n328), .Y(n647) );
  AND2X1 U443 ( .A(imm_i[29]), .B(n44), .Y(n82) );
  INVX1 U444 ( .A(n82), .Y(n648) );
  BUFX2 U445 ( .A(n81), .Y(n649) );
  AND2X1 U446 ( .A(PC_e[2]), .B(n742), .Y(n155) );
  INVX1 U447 ( .A(n155), .Y(n650) );
  AND2X1 U448 ( .A(PC_e[0]), .B(fetch_stall), .Y(n177) );
  INVX1 U449 ( .A(n177), .Y(n651) );
  BUFX2 U450 ( .A(n512), .Y(PC_f[14]) );
  BUFX2 U451 ( .A(n513), .Y(PC_f[13]) );
  BUFX2 U452 ( .A(n514), .Y(PC_f[12]) );
  BUFX2 U453 ( .A(n515), .Y(PC_f[11]) );
  BUFX2 U454 ( .A(n516), .Y(PC_f[10]) );
  BUFX2 U455 ( .A(n517), .Y(PC_f[9]) );
  BUFX2 U456 ( .A(n518), .Y(PC_f[8]) );
  BUFX2 U457 ( .A(n511), .Y(PC_f[15]) );
  INVX1 U458 ( .A(n315), .Y(n660) );
  AND2X1 U459 ( .A(imm_i[12]), .B(n44), .Y(n56) );
  INVX1 U460 ( .A(n56), .Y(n661) );
  BUFX2 U461 ( .A(n55), .Y(n662) );
  INVX1 U462 ( .A(n329), .Y(n663) );
  AND2X1 U463 ( .A(imm_i[31]), .B(n44), .Y(n84) );
  INVX1 U464 ( .A(n84), .Y(n664) );
  BUFX2 U465 ( .A(n83), .Y(n665) );
  OR2X1 U466 ( .A(n41), .B(br_type[1]), .Y(n145) );
  INVX1 U467 ( .A(n145), .Y(n666) );
  BUFX2 U468 ( .A(n559), .Y(flush) );
  BUFX2 U469 ( .A(n519), .Y(PC_f[7]) );
  BUFX2 U470 ( .A(n520), .Y(PC_f[6]) );
  BUFX2 U471 ( .A(n521), .Y(PC_f[5]) );
  BUFX2 U472 ( .A(n522), .Y(PC_f[4]) );
  BUFX2 U473 ( .A(n523), .Y(PC_f[3]) );
  BUFX2 U474 ( .A(n524), .Y(PC_f[2]) );
  BUFX2 U475 ( .A(n525), .Y(PC_f[1]) );
  BUFX2 U476 ( .A(n526), .Y(PC_f[0]) );
  BUFX2 U477 ( .A(n495), .Y(PC_f[31]) );
  BUFX2 U478 ( .A(n496), .Y(PC_f[30]) );
  BUFX2 U479 ( .A(n497), .Y(PC_f[29]) );
  BUFX2 U480 ( .A(n498), .Y(PC_f[28]) );
  BUFX2 U481 ( .A(n499), .Y(PC_f[27]) );
  BUFX2 U482 ( .A(n500), .Y(PC_f[26]) );
  BUFX2 U483 ( .A(n501), .Y(PC_f[25]) );
  BUFX2 U484 ( .A(n502), .Y(PC_f[24]) );
  BUFX2 U485 ( .A(n503), .Y(PC_f[23]) );
  BUFX2 U486 ( .A(n504), .Y(PC_f[22]) );
  BUFX2 U487 ( .A(n505), .Y(PC_f[21]) );
  BUFX2 U488 ( .A(n506), .Y(PC_f[20]) );
  BUFX2 U489 ( .A(n507), .Y(PC_f[19]) );
  BUFX2 U490 ( .A(n508), .Y(PC_f[18]) );
  BUFX2 U491 ( .A(n509), .Y(PC_f[17]) );
  BUFX2 U492 ( .A(n510), .Y(PC_f[16]) );
  INVX1 U493 ( .A(n309), .Y(n692) );
  AND2X1 U494 ( .A(imm_i[1]), .B(n733), .Y(n43) );
  INVX1 U495 ( .A(n43), .Y(n693) );
  BUFX2 U496 ( .A(n42), .Y(n694) );
  INVX1 U497 ( .A(n330), .Y(n695) );
  AND2X1 U498 ( .A(imm_i[30]), .B(n44), .Y(n86) );
  INVX1 U499 ( .A(n86), .Y(n696) );
  BUFX2 U500 ( .A(n85), .Y(n697) );
  BUFX2 U501 ( .A(n527), .Y(PC_e[31]) );
  BUFX2 U502 ( .A(n528), .Y(PC_e[30]) );
  BUFX2 U503 ( .A(n529), .Y(PC_e[29]) );
  BUFX2 U504 ( .A(n530), .Y(PC_e[28]) );
  BUFX2 U505 ( .A(n531), .Y(PC_e[27]) );
  BUFX2 U506 ( .A(n532), .Y(PC_e[26]) );
  BUFX2 U507 ( .A(n533), .Y(PC_e[25]) );
  BUFX2 U508 ( .A(n534), .Y(PC_e[24]) );
  BUFX2 U509 ( .A(n535), .Y(PC_e[23]) );
  BUFX2 U510 ( .A(n536), .Y(PC_e[22]) );
  BUFX2 U511 ( .A(n537), .Y(PC_e[21]) );
  BUFX2 U512 ( .A(n538), .Y(PC_e[20]) );
  BUFX2 U513 ( .A(n539), .Y(PC_e[19]) );
  BUFX2 U514 ( .A(n540), .Y(PC_e[18]) );
  BUFX2 U515 ( .A(n541), .Y(PC_e[17]) );
  BUFX2 U516 ( .A(n542), .Y(PC_e[16]) );
  BUFX2 U517 ( .A(n543), .Y(PC_e[15]) );
  BUFX2 U518 ( .A(n544), .Y(PC_e[14]) );
  BUFX2 U519 ( .A(n545), .Y(PC_e[13]) );
  BUFX2 U520 ( .A(n546), .Y(PC_e[12]) );
  BUFX2 U521 ( .A(n547), .Y(PC_e[11]) );
  BUFX2 U522 ( .A(n548), .Y(PC_e[10]) );
  BUFX2 U523 ( .A(n549), .Y(PC_e[9]) );
  BUFX2 U524 ( .A(n550), .Y(PC_e[8]) );
  BUFX2 U525 ( .A(n551), .Y(PC_e[7]) );
  BUFX2 U526 ( .A(n552), .Y(PC_e[6]) );
  BUFX2 U527 ( .A(n553), .Y(PC_e[5]) );
  BUFX2 U528 ( .A(n554), .Y(PC_e[4]) );
  BUFX2 U529 ( .A(n555), .Y(PC_e[3]) );
  BUFX2 U530 ( .A(n556), .Y(PC_e[2]) );
  BUFX2 U531 ( .A(n557), .Y(PC_e[1]) );
  BUFX2 U532 ( .A(n558), .Y(PC_e[0]) );
  INVX1 U533 ( .A(n106), .Y(n730) );
  INVX1 U534 ( .A(n744), .Y(n742) );
  INVX1 U535 ( .A(n744), .Y(n743) );
  INVX1 U536 ( .A(n745), .Y(n741) );
  INVX1 U537 ( .A(n734), .Y(n733) );
  INVX1 U538 ( .A(n738), .Y(n744) );
  INVX1 U539 ( .A(n739), .Y(n746) );
  INVX1 U540 ( .A(n738), .Y(n745) );
  INVX1 U541 ( .A(n739), .Y(n747) );
  INVX1 U542 ( .A(n731), .Y(n732) );
  INVX1 U543 ( .A(n44), .Y(n734) );
  INVX1 U544 ( .A(n740), .Y(n738) );
  INVX1 U545 ( .A(n740), .Y(n739) );
  INVX1 U546 ( .A(rst), .Y(n736) );
  INVX1 U547 ( .A(rst), .Y(n735) );
  INVX1 U548 ( .A(rst), .Y(n737) );
  INVX1 U549 ( .A(n109), .Y(n1) );
  INVX1 U550 ( .A(n105), .Y(n4) );
  INVX1 U551 ( .A(fetch_stall), .Y(n740) );
  AND2X1 U552 ( .A(take_branch), .B(n40), .Y(n107) );
  INVX1 U553 ( .A(br_type[1]), .Y(n40) );
  INVX1 U554 ( .A(is_br_type), .Y(n39) );
  INVX1 U555 ( .A(n108), .Y(n3) );
  INVX1 U556 ( .A(PC_f[0]), .Y(n36) );
  INVX1 U557 ( .A(PC_f[1]), .Y(n35) );
  INVX1 U558 ( .A(PC_f[2]), .Y(n34) );
  INVX1 U559 ( .A(PC_f[3]), .Y(n33) );
  INVX1 U560 ( .A(PC_f[4]), .Y(n32) );
  INVX1 U561 ( .A(PC_f[5]), .Y(n31) );
  INVX1 U562 ( .A(PC_f[6]), .Y(n30) );
  INVX1 U563 ( .A(PC_f[7]), .Y(n29) );
  INVX1 U564 ( .A(PC_f[8]), .Y(n28) );
  INVX1 U565 ( .A(PC_f[9]), .Y(n27) );
  INVX1 U566 ( .A(PC_f[10]), .Y(n26) );
  INVX1 U567 ( .A(PC_f[11]), .Y(n25) );
  INVX1 U568 ( .A(PC_f[12]), .Y(n24) );
  INVX1 U569 ( .A(PC_f[13]), .Y(n23) );
  INVX1 U570 ( .A(PC_f[14]), .Y(n22) );
  INVX1 U571 ( .A(PC_f[15]), .Y(n21) );
  INVX1 U572 ( .A(PC_f[16]), .Y(n20) );
  INVX1 U573 ( .A(PC_f[17]), .Y(n19) );
  INVX1 U574 ( .A(PC_f[18]), .Y(n18) );
  INVX1 U575 ( .A(PC_f[19]), .Y(n17) );
  INVX1 U576 ( .A(PC_f[20]), .Y(n16) );
  INVX1 U577 ( .A(PC_f[21]), .Y(n15) );
  INVX1 U578 ( .A(PC_f[22]), .Y(n14) );
  INVX1 U579 ( .A(PC_f[23]), .Y(n13) );
  INVX1 U580 ( .A(PC_f[24]), .Y(n12) );
  INVX1 U581 ( .A(PC_f[25]), .Y(n11) );
  INVX1 U582 ( .A(PC_f[26]), .Y(n10) );
  INVX1 U583 ( .A(PC_f[27]), .Y(n9) );
  INVX1 U584 ( .A(PC_f[28]), .Y(n8) );
  INVX1 U585 ( .A(PC_f[29]), .Y(n7) );
  INVX1 U586 ( .A(PC_f[30]), .Y(n6) );
  INVX1 U587 ( .A(PC_f[31]), .Y(n5) );
  INVX1 U588 ( .A(br_type[0]), .Y(n41) );
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
         \instr[24] , \instr[23] , \instr[22] , \instr[21] , \instr[20] , n46,
         n47, n48, \instr[13] , \instr[12] , n49, \instr[3] , \instr[2] ,
         \instr[31] , \instr[30] , \instr[29] , \instr[28] , \instr[27] ,
         \instr[26] , \instr[25] , n1, n4, n6, n7, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n67, n50, n51, n52, n53,
         n55, n57, n61, n62, n63, n64, shift_right, n66;
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
  assign load_op[2] = shift_right;
  assign store_op[2] = shift_right;
  assign imm_j[14] = shift_right;
  assign comp_op[2] = shift_right;
  assign imm_u[14] = shift_right;

  AOI21X1 U14 ( .A(n57), .B(n50), .C(n64), .Y(n49) );
  NAND3X1 U15 ( .A(\instr[30] ), .B(n13), .C(n14), .Y(n11) );
  NOR3X1 U16 ( .A(is_imm), .B(shift_right), .C(\instr[12] ), .Y(n14) );
  AOI21X1 U17 ( .A(n57), .B(n51), .C(n64), .Y(n48) );
  XNOR2X1 U19 ( .A(n1), .B(\instr[12] ), .Y(n16) );
  AOI21X1 U20 ( .A(n13), .B(n63), .C(is_br_type), .Y(n10) );
  NAND3X1 U22 ( .A(shift_right), .B(n9), .C(n53), .Y(n19) );
  NAND3X1 U25 ( .A(n9), .B(\instr[12] ), .C(n52), .Y(n21) );
  NAND3X1 U28 ( .A(\instr[2] ), .B(instr[5]), .C(n9), .Y(n18) );
  NOR3X1 U29 ( .A(instr[4]), .B(instr[6]), .C(n64), .Y(n23) );
  NOR3X1 U32 ( .A(is_imm), .B(instr[4]), .C(n4), .Y(is_br_type) );
  NOR3X1 U33 ( .A(n62), .B(instr[5]), .C(n7), .Y(is_auipc) );
  BUFX2 U3 ( .A(n11), .Y(n50) );
  AND2X1 U4 ( .A(n13), .B(n16), .Y(n15) );
  INVX1 U5 ( .A(n15), .Y(n51) );
  OR2X1 U6 ( .A(n63), .B(\instr[2] ), .Y(n22) );
  INVX1 U7 ( .A(n22), .Y(n52) );
  OR2X1 U8 ( .A(\instr[2] ), .B(\instr[12] ), .Y(n20) );
  INVX1 U9 ( .A(n20), .Y(n53) );
  BUFX2 U10 ( .A(n49), .Y(subtract) );
  BUFX2 U11 ( .A(n18), .Y(n55) );
  BUFX2 U12 ( .A(n48), .Y(alu_op[0]) );
  BUFX2 U13 ( .A(n10), .Y(n57) );
  AND2X2 U18 ( .A(n55), .B(n21), .Y(n46) );
  INVX1 U21 ( .A(n46), .Y(alu_op[2]) );
  AND2X2 U23 ( .A(n55), .B(n19), .Y(n47) );
  INVX1 U24 ( .A(n47), .Y(alu_op[1]) );
  AND2X1 U26 ( .A(n61), .B(n62), .Y(n67) );
  INVX1 U27 ( .A(n67), .Y(is_writeback) );
  AND2X1 U30 ( .A(\instr[2] ), .B(is_br_type), .Y(is_jump_op) );
  INVX1 U31 ( .A(is_jump_op), .Y(n61) );
  AND2X1 U34 ( .A(n13), .B(n6), .Y(n9) );
  INVX1 U35 ( .A(n9), .Y(n62) );
  OR2X1 U36 ( .A(n1), .B(shift_right), .Y(n17) );
  INVX1 U37 ( .A(n17), .Y(n63) );
  AND2X1 U38 ( .A(n7), .B(n6), .Y(n12) );
  INVX1 U39 ( .A(n12), .Y(n64) );
  AND2X1 U40 ( .A(is_imm), .B(n23), .Y(is_load_op) );
  INVX1 U41 ( .A(instr[5]), .Y(is_imm) );
  AND2X1 U42 ( .A(instr[4]), .B(n4), .Y(n13) );
  INVX1 U43 ( .A(n66), .Y(shift_right) );
  INVX1 U44 ( .A(instr[14]), .Y(n66) );
  AND2X1 U45 ( .A(instr[5]), .B(n23), .Y(is_store_op) );
  INVX1 U46 ( .A(\instr[13] ), .Y(n1) );
  INVX1 U47 ( .A(\instr[2] ), .Y(n7) );
  INVX1 U48 ( .A(instr[6]), .Y(n4) );
  INVX1 U49 ( .A(\instr[3] ), .Y(n6) );
endmodule


module full_adder_29 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n7, n8, n9, n10;

  XOR2X1 U2 ( .A(n10), .B(n9), .Y(sum) );
  OAI21X1 U3 ( .A(n9), .B(n10), .C(n7), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n9) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n8) );
  INVX1 U4 ( .A(n8), .Y(n7) );
  INVX1 U6 ( .A(cin), .Y(n10) );
endmodule


module full_adder_30 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n7, n8, n9, n10;

  XOR2X1 U2 ( .A(n10), .B(n9), .Y(sum) );
  OAI21X1 U3 ( .A(n9), .B(n10), .C(n7), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n9) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n8) );
  INVX1 U4 ( .A(n8), .Y(n7) );
  INVX1 U6 ( .A(cin), .Y(n10) );
endmodule


module full_adder_31 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n7, n8, n9, n10;

  XOR2X1 U2 ( .A(n10), .B(n9), .Y(sum) );
  OAI21X1 U3 ( .A(n9), .B(n10), .C(n7), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n9) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n8) );
  INVX1 U4 ( .A(n8), .Y(n7) );
  INVX1 U6 ( .A(cin), .Y(n10) );
endmodule


module full_adder_32 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n7, n8, n9, n10;

  XOR2X1 U2 ( .A(n10), .B(n9), .Y(sum) );
  OAI21X1 U3 ( .A(n9), .B(n10), .C(n7), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n9) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n8) );
  INVX1 U4 ( .A(n8), .Y(n7) );
  INVX1 U6 ( .A(cin), .Y(n10) );
endmodule


module csa_ripple_carry_adder_0 ( a, b, cin, s, cout );
  input [3:0] a;
  input [3:0] b;
  output [3:0] s;
  input cin;
  output cout;

  wire   [3:1] carries;

  full_adder_32 \RCA_BLOCK[0].fa  ( .a(a[0]), .b(b[0]), .cin(cin), .sum(s[0]), 
        .cout(carries[1]) );
  full_adder_31 \RCA_BLOCK[1].fa  ( .a(a[1]), .b(b[1]), .cin(carries[1]), 
        .sum(s[1]), .cout(carries[2]) );
  full_adder_30 \RCA_BLOCK[2].fa  ( .a(a[2]), .b(b[2]), .cin(carries[2]), 
        .sum(s[2]), .cout(carries[3]) );
  full_adder_29 \RCA_BLOCK[3].fa  ( .a(a[3]), .b(b[3]), .cin(carries[3]), 
        .sum(s[3]), .cout(cout) );
endmodule


module full_adder_18 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n7, n8, n9, n10;

  XOR2X1 U2 ( .A(n10), .B(n9), .Y(sum) );
  OAI21X1 U3 ( .A(n9), .B(n10), .C(n7), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n9) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n8) );
  INVX1 U4 ( .A(n8), .Y(n7) );
  INVX1 U6 ( .A(cin), .Y(n10) );
endmodule


module full_adder_19 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n7, n8, n9, n10;

  XOR2X1 U2 ( .A(n10), .B(n9), .Y(sum) );
  OAI21X1 U3 ( .A(n9), .B(n10), .C(n7), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n9) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n8) );
  INVX1 U4 ( .A(n8), .Y(n7) );
  INVX1 U6 ( .A(cin), .Y(n10) );
endmodule


module full_adder_20 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n7, n8, n9, n10;

  XOR2X1 U2 ( .A(n10), .B(n9), .Y(sum) );
  OAI21X1 U3 ( .A(n9), .B(n10), .C(n7), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n9) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n8) );
  INVX1 U4 ( .A(n8), .Y(n7) );
  INVX1 U6 ( .A(cin), .Y(n10) );
endmodule


module full_adder_17 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n6, n7, n8, n9;

  XOR2X1 U2 ( .A(n9), .B(n8), .Y(sum) );
  OAI21X1 U3 ( .A(n8), .B(n9), .C(n6), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n8) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n7) );
  INVX1 U4 ( .A(n7), .Y(n6) );
  INVX1 U6 ( .A(cin), .Y(n9) );
endmodule


module csa_ripple_carry_adder_5 ( a, b, cin, s, cout );
  input [3:0] a;
  input [3:0] b;
  output [3:0] s;
  input cin;
  output cout;

  wire   [3:1] carries;

  full_adder_20 \RCA_BLOCK[0].fa  ( .a(a[0]), .b(b[0]), .cin(cin), .sum(s[0]), 
        .cout(carries[1]) );
  full_adder_19 \RCA_BLOCK[1].fa  ( .a(a[1]), .b(b[1]), .cin(carries[1]), 
        .sum(s[1]), .cout(carries[2]) );
  full_adder_18 \RCA_BLOCK[2].fa  ( .a(a[2]), .b(b[2]), .cin(carries[2]), 
        .sum(s[2]), .cout(carries[3]) );
  full_adder_17 \RCA_BLOCK[3].fa  ( .a(a[3]), .b(b[3]), .cin(carries[3]), 
        .sum(s[3]), .cout(cout) );
endmodule


module full_adder_1 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n7, n8, n9, n10;

  XOR2X1 U2 ( .A(n10), .B(n9), .Y(sum) );
  OAI21X1 U3 ( .A(n9), .B(n10), .C(n7), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n9) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n8) );
  INVX1 U4 ( .A(n8), .Y(n7) );
  INVX1 U6 ( .A(cin), .Y(n10) );
endmodule


module full_adder_2 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n7, n8, n9, n10;

  XOR2X1 U2 ( .A(n10), .B(n9), .Y(sum) );
  OAI21X1 U3 ( .A(n9), .B(n10), .C(n7), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n9) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n8) );
  INVX1 U4 ( .A(n8), .Y(n7) );
  INVX1 U6 ( .A(cin), .Y(n10) );
endmodule


module full_adder_3 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n7, n8, n9, n10;

  XOR2X1 U2 ( .A(n10), .B(n9), .Y(sum) );
  OAI21X1 U3 ( .A(n9), .B(n10), .C(n7), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n9) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n8) );
  INVX1 U4 ( .A(n8), .Y(n7) );
  INVX1 U6 ( .A(cin), .Y(n10) );
endmodule


module full_adder_4 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n7, n8, n9, n10;

  XOR2X1 U2 ( .A(n10), .B(n9), .Y(sum) );
  OAI21X1 U3 ( .A(n9), .B(n10), .C(n7), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n9) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n8) );
  INVX1 U4 ( .A(n8), .Y(n7) );
  INVX1 U6 ( .A(cin), .Y(n10) );
endmodule


module csa_ripple_carry_adder_1 ( a, b, cin, s, cout );
  input [3:0] a;
  input [3:0] b;
  output [3:0] s;
  input cin;
  output cout;

  wire   [3:1] carries;

  full_adder_4 \RCA_BLOCK[0].fa  ( .a(a[0]), .b(b[0]), .cin(cin), .sum(s[0]), 
        .cout(carries[1]) );
  full_adder_3 \RCA_BLOCK[1].fa  ( .a(a[1]), .b(b[1]), .cin(carries[1]), .sum(
        s[1]), .cout(carries[2]) );
  full_adder_2 \RCA_BLOCK[2].fa  ( .a(a[2]), .b(b[2]), .cin(carries[2]), .sum(
        s[2]), .cout(carries[3]) );
  full_adder_1 \RCA_BLOCK[3].fa  ( .a(a[3]), .b(b[3]), .cin(carries[3]), .sum(
        s[3]), .cout(cout) );
endmodule


module full_adder_5 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n7, n8, n9, n10;

  XOR2X1 U2 ( .A(n10), .B(n9), .Y(sum) );
  OAI21X1 U3 ( .A(n9), .B(n10), .C(n7), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n9) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n8) );
  INVX1 U4 ( .A(n8), .Y(n7) );
  INVX1 U6 ( .A(cin), .Y(n10) );
endmodule


module full_adder_6 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n7, n8, n9, n10;

  XOR2X1 U2 ( .A(n10), .B(n9), .Y(sum) );
  OAI21X1 U3 ( .A(n9), .B(n10), .C(n7), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n9) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n8) );
  INVX1 U4 ( .A(n8), .Y(n7) );
  INVX1 U6 ( .A(cin), .Y(n10) );
endmodule


module full_adder_7 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n7, n8, n9, n10;

  XOR2X1 U2 ( .A(n10), .B(n9), .Y(sum) );
  OAI21X1 U3 ( .A(n9), .B(n10), .C(n7), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n9) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n8) );
  INVX1 U4 ( .A(n8), .Y(n7) );
  INVX1 U6 ( .A(cin), .Y(n10) );
endmodule


module full_adder_8 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n7, n8, n9, n10;

  XOR2X1 U2 ( .A(n10), .B(n9), .Y(sum) );
  OAI21X1 U3 ( .A(n9), .B(n10), .C(n7), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n9) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n8) );
  INVX1 U4 ( .A(n8), .Y(n7) );
  INVX1 U6 ( .A(cin), .Y(n10) );
endmodule


module csa_ripple_carry_adder_2 ( a, b, cin, s, cout );
  input [3:0] a;
  input [3:0] b;
  output [3:0] s;
  input cin;
  output cout;

  wire   [3:1] carries;

  full_adder_8 \RCA_BLOCK[0].fa  ( .a(a[0]), .b(b[0]), .cin(cin), .sum(s[0]), 
        .cout(carries[1]) );
  full_adder_7 \RCA_BLOCK[1].fa  ( .a(a[1]), .b(b[1]), .cin(carries[1]), .sum(
        s[1]), .cout(carries[2]) );
  full_adder_6 \RCA_BLOCK[2].fa  ( .a(a[2]), .b(b[2]), .cin(carries[2]), .sum(
        s[2]), .cout(carries[3]) );
  full_adder_5 \RCA_BLOCK[3].fa  ( .a(a[3]), .b(b[3]), .cin(carries[3]), .sum(
        s[3]), .cout(cout) );
endmodule


module full_adder_9 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n7, n8, n9, n10;

  XOR2X1 U2 ( .A(n10), .B(n9), .Y(sum) );
  OAI21X1 U3 ( .A(n9), .B(n10), .C(n7), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n9) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n8) );
  INVX1 U4 ( .A(n8), .Y(n7) );
  INVX1 U6 ( .A(cin), .Y(n10) );
endmodule


module full_adder_10 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n7, n8, n9, n10;

  XOR2X1 U2 ( .A(n10), .B(n9), .Y(sum) );
  OAI21X1 U3 ( .A(n9), .B(n10), .C(n7), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n9) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n8) );
  INVX1 U4 ( .A(n8), .Y(n7) );
  INVX1 U6 ( .A(cin), .Y(n10) );
endmodule


module full_adder_11 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n7, n8, n9, n10;

  XOR2X1 U2 ( .A(n10), .B(n9), .Y(sum) );
  OAI21X1 U3 ( .A(n9), .B(n10), .C(n7), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n9) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n8) );
  INVX1 U4 ( .A(n8), .Y(n7) );
  INVX1 U6 ( .A(cin), .Y(n10) );
endmodule


module full_adder_12 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n7, n8, n9, n10;

  XOR2X1 U2 ( .A(n10), .B(n9), .Y(sum) );
  OAI21X1 U3 ( .A(n9), .B(n10), .C(n7), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n9) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n8) );
  INVX1 U4 ( .A(n8), .Y(n7) );
  INVX1 U6 ( .A(cin), .Y(n10) );
endmodule


module csa_ripple_carry_adder_3 ( a, b, cin, s, cout );
  input [3:0] a;
  input [3:0] b;
  output [3:0] s;
  input cin;
  output cout;

  wire   [3:1] carries;

  full_adder_12 \RCA_BLOCK[0].fa  ( .a(a[0]), .b(b[0]), .cin(cin), .sum(s[0]), 
        .cout(carries[1]) );
  full_adder_11 \RCA_BLOCK[1].fa  ( .a(a[1]), .b(b[1]), .cin(carries[1]), 
        .sum(s[1]), .cout(carries[2]) );
  full_adder_10 \RCA_BLOCK[2].fa  ( .a(a[2]), .b(b[2]), .cin(carries[2]), 
        .sum(s[2]), .cout(carries[3]) );
  full_adder_9 \RCA_BLOCK[3].fa  ( .a(a[3]), .b(b[3]), .cin(carries[3]), .sum(
        s[3]), .cout(cout) );
endmodule


module full_adder_13 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n7, n8, n9, n10;

  XOR2X1 U2 ( .A(n10), .B(n9), .Y(sum) );
  OAI21X1 U3 ( .A(n9), .B(n10), .C(n7), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n9) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n8) );
  INVX1 U4 ( .A(n8), .Y(n7) );
  INVX1 U6 ( .A(cin), .Y(n10) );
endmodule


module full_adder_14 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n7, n8, n9, n10;

  XOR2X1 U2 ( .A(n10), .B(n9), .Y(sum) );
  OAI21X1 U3 ( .A(n9), .B(n10), .C(n7), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n9) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n8) );
  INVX1 U4 ( .A(n8), .Y(n7) );
  INVX1 U6 ( .A(cin), .Y(n10) );
endmodule


module full_adder_15 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n7, n8, n9, n10;

  XOR2X1 U2 ( .A(n10), .B(n9), .Y(sum) );
  OAI21X1 U3 ( .A(n9), .B(n10), .C(n7), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n9) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n8) );
  INVX1 U4 ( .A(n8), .Y(n7) );
  INVX1 U6 ( .A(cin), .Y(n10) );
endmodule


module full_adder_16 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n7, n8, n9, n10;

  XOR2X1 U2 ( .A(n10), .B(n9), .Y(sum) );
  OAI21X1 U3 ( .A(n9), .B(n10), .C(n7), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n9) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n8) );
  INVX1 U4 ( .A(n8), .Y(n7) );
  INVX1 U6 ( .A(cin), .Y(n10) );
endmodule


module csa_ripple_carry_adder_4 ( a, b, cin, s, cout );
  input [3:0] a;
  input [3:0] b;
  output [3:0] s;
  input cin;
  output cout;

  wire   [3:1] carries;

  full_adder_16 \RCA_BLOCK[0].fa  ( .a(a[0]), .b(b[0]), .cin(cin), .sum(s[0]), 
        .cout(carries[1]) );
  full_adder_15 \RCA_BLOCK[1].fa  ( .a(a[1]), .b(b[1]), .cin(carries[1]), 
        .sum(s[1]), .cout(carries[2]) );
  full_adder_14 \RCA_BLOCK[2].fa  ( .a(a[2]), .b(b[2]), .cin(carries[2]), 
        .sum(s[2]), .cout(carries[3]) );
  full_adder_13 \RCA_BLOCK[3].fa  ( .a(a[3]), .b(b[3]), .cin(carries[3]), 
        .sum(s[3]), .cout(cout) );
endmodule


module full_adder_21 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n7, n8, n9, n10;

  XOR2X1 U2 ( .A(n10), .B(n9), .Y(sum) );
  OAI21X1 U3 ( .A(n9), .B(n10), .C(n7), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n9) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n8) );
  INVX1 U4 ( .A(n8), .Y(n7) );
  INVX1 U6 ( .A(cin), .Y(n10) );
endmodule


module full_adder_22 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n7, n8, n9, n10;

  XOR2X1 U2 ( .A(n10), .B(n9), .Y(sum) );
  OAI21X1 U3 ( .A(n9), .B(n10), .C(n7), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n9) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n8) );
  INVX1 U4 ( .A(n8), .Y(n7) );
  INVX1 U6 ( .A(cin), .Y(n10) );
endmodule


module full_adder_23 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n7, n8, n9, n10;

  XOR2X1 U2 ( .A(n10), .B(n9), .Y(sum) );
  OAI21X1 U3 ( .A(n9), .B(n10), .C(n7), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n9) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n8) );
  INVX1 U4 ( .A(n8), .Y(n7) );
  INVX1 U6 ( .A(cin), .Y(n10) );
endmodule


module full_adder_24 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n7, n8, n9, n10;

  XOR2X1 U2 ( .A(n10), .B(n9), .Y(sum) );
  OAI21X1 U3 ( .A(n9), .B(n10), .C(n7), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n9) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n8) );
  INVX1 U4 ( .A(n8), .Y(n7) );
  INVX1 U6 ( .A(cin), .Y(n10) );
endmodule


module csa_ripple_carry_adder_6 ( a, b, cin, s, cout );
  input [3:0] a;
  input [3:0] b;
  output [3:0] s;
  input cin;
  output cout;

  wire   [3:1] carries;

  full_adder_24 \RCA_BLOCK[0].fa  ( .a(a[0]), .b(b[0]), .cin(cin), .sum(s[0]), 
        .cout(carries[1]) );
  full_adder_23 \RCA_BLOCK[1].fa  ( .a(a[1]), .b(b[1]), .cin(carries[1]), 
        .sum(s[1]), .cout(carries[2]) );
  full_adder_22 \RCA_BLOCK[2].fa  ( .a(a[2]), .b(b[2]), .cin(carries[2]), 
        .sum(s[2]), .cout(carries[3]) );
  full_adder_21 \RCA_BLOCK[3].fa  ( .a(a[3]), .b(b[3]), .cin(carries[3]), 
        .sum(s[3]), .cout(cout) );
endmodule


module full_adder_25 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n7, n8, n9, n10;

  XOR2X1 U2 ( .A(n10), .B(n9), .Y(sum) );
  OAI21X1 U3 ( .A(n9), .B(n10), .C(n7), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n9) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n8) );
  INVX1 U4 ( .A(n8), .Y(n7) );
  INVX1 U6 ( .A(cin), .Y(n10) );
endmodule


module full_adder_26 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n7, n8, n9, n10;

  XOR2X1 U2 ( .A(n10), .B(n9), .Y(sum) );
  OAI21X1 U3 ( .A(n9), .B(n10), .C(n7), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n9) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n8) );
  INVX1 U4 ( .A(n8), .Y(n7) );
  INVX1 U6 ( .A(cin), .Y(n10) );
endmodule


module full_adder_27 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n7, n8, n9, n10;

  XOR2X1 U2 ( .A(n10), .B(n9), .Y(sum) );
  OAI21X1 U3 ( .A(n9), .B(n10), .C(n7), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n9) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n8) );
  INVX1 U4 ( .A(n8), .Y(n7) );
  INVX1 U6 ( .A(cin), .Y(n10) );
endmodule


module full_adder_28 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n7, n8, n9, n10;

  XOR2X1 U2 ( .A(n10), .B(n9), .Y(sum) );
  OAI21X1 U3 ( .A(n9), .B(n10), .C(n7), .Y(cout) );
  XNOR2X1 U5 ( .A(a), .B(b), .Y(n9) );
  AND2X1 U1 ( .A(a), .B(b), .Y(n8) );
  INVX1 U4 ( .A(n8), .Y(n7) );
  INVX1 U6 ( .A(cin), .Y(n10) );
endmodule


module csa_ripple_carry_adder_7 ( a, b, cin, s, cout );
  input [3:0] a;
  input [3:0] b;
  output [3:0] s;
  input cin;
  output cout;

  wire   [3:1] carries;

  full_adder_28 \RCA_BLOCK[0].fa  ( .a(a[0]), .b(b[0]), .cin(cin), .sum(s[0]), 
        .cout(carries[1]) );
  full_adder_27 \RCA_BLOCK[1].fa  ( .a(a[1]), .b(b[1]), .cin(carries[1]), 
        .sum(s[1]), .cout(carries[2]) );
  full_adder_26 \RCA_BLOCK[2].fa  ( .a(a[2]), .b(b[2]), .cin(carries[2]), 
        .sum(s[2]), .cout(carries[3]) );
  full_adder_25 \RCA_BLOCK[3].fa  ( .a(a[3]), .b(b[3]), .cin(carries[3]), 
        .sum(s[3]), .cout(cout) );
endmodule


module carry_skip_adder ( a, b, sub, s, n, z, c, v );
  input [31:0] a;
  input [31:0] b;
  output [31:0] s;
  input sub;
  output n, z, c, v;
  wire   \CSKA_BLOCK[0].block_cout , \CSKA_BLOCK[1].block_cout ,
         \CSKA_BLOCK[2].block_cout , \CSKA_BLOCK[3].block_cout ,
         \CSKA_BLOCK[4].block_cout , \CSKA_BLOCK[5].block_cout ,
         \CSKA_BLOCK[6].block_cout , \CSKA_BLOCK[7].block_cout , n1, n2, n3,
         n4, n5, n6, n7, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n126, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125;
  wire   [7:1] carries;
  wire   [31:0] b_mod;
  assign n = s[31];

  csa_ripple_carry_adder_0 \CSKA_BLOCK[0].rca  ( .a(a[3:0]), .b(b_mod[3:0]), 
        .cin(sub), .s(s[3:0]), .cout(\CSKA_BLOCK[0].block_cout ) );
  csa_ripple_carry_adder_7 \CSKA_BLOCK[1].rca  ( .a(a[7:4]), .b(b_mod[7:4]), 
        .cin(carries[1]), .s(s[7:4]), .cout(\CSKA_BLOCK[1].block_cout ) );
  csa_ripple_carry_adder_6 \CSKA_BLOCK[2].rca  ( .a(a[11:8]), .b(b_mod[11:8]), 
        .cin(n6), .s(s[11:8]), .cout(\CSKA_BLOCK[2].block_cout ) );
  csa_ripple_carry_adder_5 \CSKA_BLOCK[3].rca  ( .a(a[15:12]), .b(b_mod[15:12]), .cin(carries[3]), .s(s[15:12]), .cout(\CSKA_BLOCK[3].block_cout ) );
  csa_ripple_carry_adder_4 \CSKA_BLOCK[4].rca  ( .a(a[19:16]), .b(b_mod[19:16]), .cin(carries[4]), .s(s[19:16]), .cout(\CSKA_BLOCK[4].block_cout ) );
  csa_ripple_carry_adder_3 \CSKA_BLOCK[5].rca  ( .a(a[23:20]), .b(b_mod[23:20]), .cin(carries[5]), .s(s[23:20]), .cout(\CSKA_BLOCK[5].block_cout ) );
  csa_ripple_carry_adder_2 \CSKA_BLOCK[6].rca  ( .a(a[27:24]), .b(b_mod[27:24]), .cin(carries[6]), .s(s[27:24]), .cout(\CSKA_BLOCK[6].block_cout ) );
  csa_ripple_carry_adder_1 \CSKA_BLOCK[7].rca  ( .a(a[31:28]), .b(b_mod[31:28]), .cin(carries[7]), .s(s[31:28]), .cout(\CSKA_BLOCK[7].block_cout ) );
  NOR3X1 U27 ( .A(n106), .B(n110), .C(n109), .Y(z) );
  NOR3X1 U29 ( .A(n14), .B(s[14]), .C(s[13]), .Y(n13) );
  NOR3X1 U30 ( .A(n15), .B(s[10]), .C(s[0]), .Y(n12) );
  NOR3X1 U32 ( .A(n18), .B(s[21]), .C(s[20]), .Y(n17) );
  NOR3X1 U33 ( .A(n19), .B(s[18]), .C(s[17]), .Y(n16) );
  NAND3X1 U34 ( .A(n20), .B(n21), .C(n22), .Y(n9) );
  NOR3X1 U35 ( .A(n25), .B(s[7]), .C(s[6]), .Y(n24) );
  NOR3X1 U36 ( .A(n26), .B(s[3]), .C(s[31]), .Y(n23) );
  NOR3X1 U37 ( .A(n27), .B(s[29]), .C(s[28]), .Y(n21) );
  NOR3X1 U38 ( .A(n28), .B(s[25]), .C(s[24]), .Y(n20) );
  XNOR2X1 U40 ( .A(a[31]), .B(s[31]), .Y(n30) );
  OAI21X1 U41 ( .A(n1), .B(n124), .C(n123), .Y(c) );
  NAND3X1 U43 ( .A(n34), .B(n31), .C(n35), .Y(n32) );
  XOR2X1 U44 ( .A(a[30]), .B(b_mod[30]), .Y(n37) );
  XOR2X1 U45 ( .A(a[28]), .B(b_mod[28]), .Y(n36) );
  XOR2X1 U46 ( .A(a[31]), .B(b_mod[31]), .Y(n31) );
  XOR2X1 U47 ( .A(a[29]), .B(b_mod[29]), .Y(n34) );
  OAI21X1 U48 ( .A(n2), .B(n114), .C(n113), .Y(carries[7]) );
  NAND3X1 U50 ( .A(n40), .B(n41), .C(n42), .Y(n38) );
  XOR2X1 U51 ( .A(a[24]), .B(b_mod[24]), .Y(n44) );
  XOR2X1 U52 ( .A(a[25]), .B(b_mod[25]), .Y(n43) );
  XOR2X1 U53 ( .A(a[26]), .B(b_mod[26]), .Y(n41) );
  XOR2X1 U54 ( .A(a[27]), .B(b_mod[27]), .Y(n40) );
  OAI21X1 U55 ( .A(n3), .B(n108), .C(n107), .Y(carries[6]) );
  NAND3X1 U57 ( .A(n47), .B(n48), .C(n49), .Y(n45) );
  XOR2X1 U58 ( .A(a[20]), .B(b_mod[20]), .Y(n51) );
  XOR2X1 U59 ( .A(a[21]), .B(b_mod[21]), .Y(n50) );
  XOR2X1 U60 ( .A(a[22]), .B(b_mod[22]), .Y(n48) );
  XOR2X1 U61 ( .A(a[23]), .B(b_mod[23]), .Y(n47) );
  OAI21X1 U62 ( .A(n4), .B(n118), .C(n117), .Y(carries[5]) );
  NAND3X1 U64 ( .A(n54), .B(n55), .C(n56), .Y(n52) );
  XOR2X1 U65 ( .A(a[16]), .B(b_mod[16]), .Y(n58) );
  XOR2X1 U66 ( .A(a[17]), .B(b_mod[17]), .Y(n57) );
  XOR2X1 U67 ( .A(a[18]), .B(b_mod[18]), .Y(n55) );
  XOR2X1 U68 ( .A(a[19]), .B(b_mod[19]), .Y(n54) );
  OAI21X1 U69 ( .A(n5), .B(n122), .C(n121), .Y(carries[4]) );
  NAND3X1 U71 ( .A(n61), .B(n62), .C(n63), .Y(n59) );
  XOR2X1 U72 ( .A(a[12]), .B(b_mod[12]), .Y(n65) );
  XOR2X1 U73 ( .A(a[13]), .B(b_mod[13]), .Y(n64) );
  XOR2X1 U74 ( .A(a[14]), .B(b_mod[14]), .Y(n62) );
  XOR2X1 U75 ( .A(a[15]), .B(b_mod[15]), .Y(n61) );
  OAI21X1 U76 ( .A(n112), .B(n29), .C(n111), .Y(carries[3]) );
  OAI21X1 U78 ( .A(\CSKA_BLOCK[1].block_cout ), .B(n7), .C(n68), .Y(n29) );
  OAI21X1 U79 ( .A(n125), .B(n120), .C(n119), .Y(carries[1]) );
  NAND3X1 U81 ( .A(n72), .B(n73), .C(n74), .Y(n70) );
  XOR2X1 U82 ( .A(a[0]), .B(b_mod[0]), .Y(n76) );
  XOR2X1 U83 ( .A(a[1]), .B(b_mod[1]), .Y(n75) );
  XOR2X1 U84 ( .A(a[2]), .B(b_mod[2]), .Y(n73) );
  XOR2X1 U85 ( .A(a[3]), .B(b_mod[3]), .Y(n72) );
  NAND3X1 U86 ( .A(n77), .B(n78), .C(n79), .Y(n69) );
  XOR2X1 U87 ( .A(a[4]), .B(b_mod[4]), .Y(n81) );
  XOR2X1 U88 ( .A(a[5]), .B(b_mod[5]), .Y(n80) );
  XOR2X1 U89 ( .A(a[6]), .B(b_mod[6]), .Y(n78) );
  XOR2X1 U90 ( .A(a[7]), .B(b_mod[7]), .Y(n77) );
  NAND3X1 U91 ( .A(n82), .B(n83), .C(n84), .Y(n66) );
  XOR2X1 U92 ( .A(a[8]), .B(b_mod[8]), .Y(n86) );
  XOR2X1 U93 ( .A(a[9]), .B(b_mod[9]), .Y(n85) );
  XOR2X1 U94 ( .A(a[10]), .B(b_mod[10]), .Y(n83) );
  XOR2X1 U95 ( .A(a[11]), .B(b_mod[11]), .Y(n82) );
  XNOR2X1 U96 ( .A(n125), .B(b[9]), .Y(b_mod[9]) );
  XNOR2X1 U97 ( .A(n125), .B(b[8]), .Y(b_mod[8]) );
  XNOR2X1 U98 ( .A(n125), .B(b[7]), .Y(b_mod[7]) );
  XNOR2X1 U99 ( .A(n125), .B(b[6]), .Y(b_mod[6]) );
  XNOR2X1 U100 ( .A(n125), .B(b[5]), .Y(b_mod[5]) );
  XNOR2X1 U101 ( .A(n125), .B(b[4]), .Y(b_mod[4]) );
  XNOR2X1 U102 ( .A(n125), .B(b[3]), .Y(b_mod[3]) );
  XNOR2X1 U103 ( .A(n125), .B(b[31]), .Y(b_mod[31]) );
  XNOR2X1 U104 ( .A(n125), .B(b[30]), .Y(b_mod[30]) );
  XNOR2X1 U105 ( .A(n125), .B(b[2]), .Y(b_mod[2]) );
  XNOR2X1 U106 ( .A(n125), .B(b[29]), .Y(b_mod[29]) );
  XNOR2X1 U107 ( .A(n125), .B(b[28]), .Y(b_mod[28]) );
  XNOR2X1 U108 ( .A(n125), .B(b[27]), .Y(b_mod[27]) );
  XNOR2X1 U109 ( .A(n125), .B(b[26]), .Y(b_mod[26]) );
  XNOR2X1 U110 ( .A(n125), .B(b[25]), .Y(b_mod[25]) );
  XNOR2X1 U111 ( .A(n125), .B(b[24]), .Y(b_mod[24]) );
  XNOR2X1 U112 ( .A(n125), .B(b[23]), .Y(b_mod[23]) );
  XNOR2X1 U113 ( .A(n125), .B(b[22]), .Y(b_mod[22]) );
  XNOR2X1 U114 ( .A(n125), .B(b[21]), .Y(b_mod[21]) );
  XNOR2X1 U115 ( .A(n125), .B(b[20]), .Y(b_mod[20]) );
  XNOR2X1 U116 ( .A(n125), .B(b[1]), .Y(b_mod[1]) );
  XNOR2X1 U117 ( .A(n125), .B(b[19]), .Y(b_mod[19]) );
  XNOR2X1 U118 ( .A(n125), .B(b[18]), .Y(b_mod[18]) );
  XNOR2X1 U119 ( .A(n125), .B(b[17]), .Y(b_mod[17]) );
  XNOR2X1 U120 ( .A(n125), .B(b[16]), .Y(b_mod[16]) );
  XNOR2X1 U121 ( .A(n125), .B(b[15]), .Y(b_mod[15]) );
  XNOR2X1 U122 ( .A(n125), .B(b[14]), .Y(b_mod[14]) );
  XNOR2X1 U123 ( .A(n125), .B(b[13]), .Y(b_mod[13]) );
  XNOR2X1 U124 ( .A(n125), .B(b[12]), .Y(b_mod[12]) );
  XNOR2X1 U125 ( .A(n125), .B(b[11]), .Y(b_mod[11]) );
  XNOR2X1 U126 ( .A(n125), .B(b[10]), .Y(b_mod[10]) );
  XNOR2X1 U127 ( .A(n125), .B(b[0]), .Y(b_mod[0]) );
  AND2X1 U1 ( .A(\CSKA_BLOCK[0].block_cout ), .B(n120), .Y(n71) );
  OR2X1 U2 ( .A(n116), .B(carries[1]), .Y(n68) );
  AND2X1 U3 ( .A(\CSKA_BLOCK[2].block_cout ), .B(n112), .Y(n67) );
  AND2X1 U4 ( .A(\CSKA_BLOCK[3].block_cout ), .B(n122), .Y(n60) );
  AND2X1 U5 ( .A(\CSKA_BLOCK[4].block_cout ), .B(n118), .Y(n53) );
  AND2X1 U6 ( .A(\CSKA_BLOCK[5].block_cout ), .B(n108), .Y(n46) );
  AND2X1 U7 ( .A(\CSKA_BLOCK[6].block_cout ), .B(n114), .Y(n39) );
  AND2X1 U8 ( .A(\CSKA_BLOCK[7].block_cout ), .B(n124), .Y(n33) );
  BUFX2 U9 ( .A(n9), .Y(n106) );
  INVX1 U10 ( .A(n46), .Y(n107) );
  BUFX2 U11 ( .A(n45), .Y(n108) );
  AND2X1 U12 ( .A(n12), .B(n13), .Y(n11) );
  INVX1 U13 ( .A(n11), .Y(n109) );
  AND2X1 U14 ( .A(n16), .B(n17), .Y(n10) );
  INVX1 U15 ( .A(n10), .Y(n110) );
  INVX1 U16 ( .A(n67), .Y(n111) );
  BUFX2 U17 ( .A(n66), .Y(n112) );
  INVX1 U18 ( .A(n39), .Y(n113) );
  BUFX2 U19 ( .A(n38), .Y(n114) );
  OR2X1 U20 ( .A(n30), .B(n31), .Y(n126) );
  INVX1 U21 ( .A(n126), .Y(v) );
  BUFX2 U22 ( .A(n69), .Y(n116) );
  INVX1 U23 ( .A(n53), .Y(n117) );
  BUFX2 U24 ( .A(n52), .Y(n118) );
  INVX1 U25 ( .A(n71), .Y(n119) );
  BUFX2 U26 ( .A(n70), .Y(n120) );
  INVX1 U28 ( .A(n60), .Y(n121) );
  BUFX2 U31 ( .A(n59), .Y(n122) );
  INVX1 U39 ( .A(n33), .Y(n123) );
  BUFX2 U42 ( .A(n32), .Y(n124) );
  INVX1 U49 ( .A(n29), .Y(n6) );
  OR2X1 U56 ( .A(s[5]), .B(s[4]), .Y(n26) );
  AND2X1 U63 ( .A(n23), .B(n24), .Y(n22) );
  OR2X1 U70 ( .A(s[30]), .B(s[2]), .Y(n27) );
  OR2X1 U77 ( .A(s[27]), .B(s[26]), .Y(n28) );
  OR2X1 U80 ( .A(s[23]), .B(s[22]), .Y(n18) );
  OR2X1 U128 ( .A(s[1]), .B(s[19]), .Y(n19) );
  OR2X1 U129 ( .A(s[16]), .B(s[15]), .Y(n14) );
  OR2X1 U130 ( .A(s[12]), .B(s[11]), .Y(n15) );
  OR2X1 U131 ( .A(s[9]), .B(s[8]), .Y(n25) );
  INVX1 U132 ( .A(n116), .Y(n7) );
  INVX1 U133 ( .A(carries[3]), .Y(n5) );
  INVX1 U134 ( .A(carries[4]), .Y(n4) );
  INVX1 U135 ( .A(carries[5]), .Y(n3) );
  INVX1 U136 ( .A(carries[6]), .Y(n2) );
  INVX1 U137 ( .A(carries[7]), .Y(n1) );
  INVX1 U138 ( .A(sub), .Y(n125) );
  AND2X1 U139 ( .A(n75), .B(n76), .Y(n74) );
  AND2X1 U140 ( .A(n80), .B(n81), .Y(n79) );
  AND2X1 U141 ( .A(n85), .B(n86), .Y(n84) );
  AND2X1 U142 ( .A(n64), .B(n65), .Y(n63) );
  AND2X1 U143 ( .A(n57), .B(n58), .Y(n56) );
  AND2X1 U144 ( .A(n50), .B(n51), .Y(n49) );
  AND2X1 U145 ( .A(n43), .B(n44), .Y(n42) );
  AND2X1 U146 ( .A(n36), .B(n37), .Y(n35) );
endmodule


module shifter ( sr, arith, shamt, data_in, data_out );
  input [4:0] shamt;
  input [31:0] data_in;
  output [31:0] data_out;
  input sr, arith;
  wire   n7, n8, n9, n11, n12, n17, n19, n24, n27, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n61, n62, n63,
         n64, n65, n66, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n100, n101, n102, n104, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n244,
         n245, n246, n247, n248, n249, n250, n251, n252, n253, n254, n255,
         n256, n257, n258, n259, n260, n261, n262, n263, n264, n265, n266,
         n267, n268, n269, n270, n272, n273, n274, n275, n276, n277, n278,
         n279, n280, n281, n282, n283, n284, n285, n286, n287, n288, n290,
         n292, n293, n294, n295, n296, n297, n298, n299, n300, n301, n302,
         n303, n304, n305, n306, n307, n308, n309, n310, n311, n312, n313,
         n314, n315, n316, n317, n318, n319, n320, n321, n322, n323, n324,
         n325, n326, n327, n328, n329, n330, n331, n332, n333, n334, n335,
         n336, n337, n338, n339, n340, n341, n342, n343, n344, n345, n346,
         n347, n348, n349, n350, n351, n352, n353, n354, n355, n356, n357,
         n358, n359, n360, n442, n443, n444, n445, n446, n447, n448, n449,
         n450, n451, n452, n453, n454, n455, n456, n457, n458, n459, n460,
         n461, n462, n463, n464, n465, n466, n467, n468, n469, n470, n471,
         n472, n473, n474, n475, n476, n477, n478, n479, n480, n481, n482,
         n483, n484, n485, n486, n487, n488, n489, n490, n491, n492, n493,
         n494, n495, n496, n497, n498, n499, n500, n501, n502, n503, n504,
         n505, n506, n507, n508, n509, n510, n511, n512, n513, n514, n515,
         n516, n517, n518, n519, n520, n521, n522, n523, n524, n525, n526,
         n527, n528, n529, n530, n531, n532, n533, n534, n535, n536, n537,
         n538, n539, n540, n541, n542, n543, n544, n545, n546, n547, n548,
         n549, n550, n551, n552, n553, n554, n555, n556, n557, n558, n559,
         n560, n561, n562, n563, n564, n565, n566, n567, n568, n569, n570,
         n571, n572, n573, n574, n575, n576, n577, n578, n579, n580, n581,
         n582, n583, n584, n585, n586, n587, n588, n589, n590, n591, n592,
         n593, n594, n595, n596, n597, n598;

  OAI21X1 U38 ( .A(n12), .B(n597), .C(n34), .Y(data_out[9]) );
  NAND2X1 U39 ( .A(n35), .B(n598), .Y(n34) );
  OAI21X1 U40 ( .A(n594), .B(n562), .C(n37), .Y(data_out[8]) );
  NAND2X1 U41 ( .A(sr), .B(n445), .Y(n37) );
  NAND3X1 U42 ( .A(n454), .B(n476), .C(n496), .Y(data_out[7]) );
  AOI22X1 U43 ( .A(n42), .B(n510), .C(n44), .D(n554), .Y(n41) );
  AOI21X1 U45 ( .A(n595), .B(n48), .C(n93), .Y(n39) );
  NAND3X1 U46 ( .A(n49), .B(n475), .C(n495), .Y(data_out[6]) );
  AOI22X1 U47 ( .A(n42), .B(n511), .C(n44), .D(n553), .Y(n51) );
  AOI21X1 U49 ( .A(n595), .B(n55), .C(n93), .Y(n49) );
  NAND3X1 U50 ( .A(n56), .B(n474), .C(n494), .Y(data_out[5]) );
  AOI22X1 U51 ( .A(n42), .B(n512), .C(n44), .D(n443), .Y(n58) );
  AOI21X1 U53 ( .A(n595), .B(n62), .C(n93), .Y(n56) );
  NAND3X1 U54 ( .A(n63), .B(n473), .C(n493), .Y(data_out[4]) );
  AOI22X1 U55 ( .A(n42), .B(n513), .C(n44), .D(n442), .Y(n65) );
  AOI21X1 U57 ( .A(n595), .B(n69), .C(n93), .Y(n63) );
  NAND3X1 U58 ( .A(n70), .B(n472), .C(n492), .Y(data_out[3]) );
  AOI22X1 U59 ( .A(n42), .B(n514), .C(n44), .D(n7), .Y(n72) );
  AOI21X1 U61 ( .A(n595), .B(n75), .C(n93), .Y(n70) );
  NAND3X1 U62 ( .A(n460), .B(n561), .C(n491), .Y(data_out[31]) );
  AOI22X1 U63 ( .A(n583), .B(n557), .C(n42), .D(n19), .Y(n78) );
  NAND3X1 U65 ( .A(n459), .B(n561), .C(n490), .Y(data_out[30]) );
  AOI22X1 U66 ( .A(n582), .B(n558), .C(n42), .D(n9), .Y(n83) );
  NAND3X1 U68 ( .A(n86), .B(n471), .C(n489), .Y(data_out[2]) );
  AOI22X1 U69 ( .A(n42), .B(n515), .C(n44), .D(n90), .Y(n88) );
  AOI21X1 U71 ( .A(n595), .B(n92), .C(n93), .Y(n86) );
  NAND3X1 U72 ( .A(n94), .B(n470), .C(n488), .Y(data_out[29]) );
  AOI22X1 U73 ( .A(n44), .B(n515), .C(n42), .D(n90), .Y(n96) );
  AOI22X1 U75 ( .A(n593), .B(n521), .C(n590), .D(n517), .Y(n98) );
  AOI22X1 U76 ( .A(n589), .B(n535), .C(n587), .D(n531), .Y(n97) );
  AOI21X1 U78 ( .A(n92), .B(n597), .C(n77), .Y(n94) );
  OAI21X1 U79 ( .A(n525), .B(n569), .C(n108), .Y(n92) );
  NAND2X1 U80 ( .A(n576), .B(n497), .Y(n108) );
  NAND3X1 U81 ( .A(n110), .B(n469), .C(n487), .Y(data_out[28]) );
  AOI22X1 U82 ( .A(n44), .B(n514), .C(n42), .D(n7), .Y(n112) );
  AOI22X1 U84 ( .A(n592), .B(n522), .C(n590), .D(n518), .Y(n114) );
  AOI22X1 U85 ( .A(n589), .B(n547), .C(n587), .D(n548), .Y(n113) );
  AOI21X1 U87 ( .A(n75), .B(n598), .C(n77), .Y(n110) );
  OAI21X1 U88 ( .A(n527), .B(n569), .C(n119), .Y(n75) );
  NAND2X1 U89 ( .A(n576), .B(n498), .Y(n119) );
  NAND3X1 U90 ( .A(n121), .B(n468), .C(n486), .Y(data_out[27]) );
  AOI22X1 U91 ( .A(n44), .B(n513), .C(n42), .D(n442), .Y(n123) );
  AOI22X1 U93 ( .A(n590), .B(n521), .C(n592), .D(n535), .Y(n125) );
  AOI22X1 U94 ( .A(n589), .B(n531), .C(n587), .D(n549), .Y(n124) );
  AOI21X1 U96 ( .A(n69), .B(n598), .C(n77), .Y(n121) );
  OAI21X1 U97 ( .A(n503), .B(n569), .C(n128), .Y(n69) );
  NAND2X1 U98 ( .A(n576), .B(n505), .Y(n128) );
  NAND3X1 U99 ( .A(n130), .B(n467), .C(n485), .Y(data_out[26]) );
  AOI22X1 U100 ( .A(n44), .B(n512), .C(n42), .D(n443), .Y(n132) );
  AOI22X1 U102 ( .A(n590), .B(n522), .C(n592), .D(n547), .Y(n134) );
  AOI22X1 U103 ( .A(n589), .B(n548), .C(n587), .D(n533), .Y(n133) );
  AOI21X1 U105 ( .A(n62), .B(n598), .C(n77), .Y(n130) );
  OAI21X1 U106 ( .A(n17), .B(n569), .C(n136), .Y(n62) );
  NAND2X1 U107 ( .A(n576), .B(n506), .Y(n136) );
  NAND3X1 U108 ( .A(n138), .B(n466), .C(n484), .Y(data_out[25]) );
  AOI22X1 U109 ( .A(n44), .B(n511), .C(n42), .D(n553), .Y(n140) );
  AOI22X1 U111 ( .A(n590), .B(n535), .C(n587), .D(n550), .Y(n142) );
  AOI22X1 U112 ( .A(n593), .B(n531), .C(n589), .D(n549), .Y(n141) );
  AOI21X1 U114 ( .A(n55), .B(n598), .C(n77), .Y(n138) );
  OAI21X1 U115 ( .A(n146), .B(n144), .C(n145), .Y(n55) );
  NAND2X1 U116 ( .A(n107), .B(n9), .Y(n145) );
  NAND3X1 U117 ( .A(n147), .B(n465), .C(n483), .Y(data_out[24]) );
  AOI22X1 U118 ( .A(n44), .B(n510), .C(n42), .D(n554), .Y(n149) );
  AOI22X1 U120 ( .A(n101), .B(n547), .C(n592), .D(n548), .Y(n151) );
  AOI22X1 U121 ( .A(n589), .B(n533), .C(n587), .D(n552), .Y(n150) );
  AOI21X1 U123 ( .A(n48), .B(n598), .C(n77), .Y(n147) );
  OAI21X1 U125 ( .A(n155), .B(n144), .C(n154), .Y(n48) );
  NAND2X1 U126 ( .A(n107), .B(n19), .Y(n154) );
  OAI21X1 U127 ( .A(n562), .B(n597), .C(n156), .Y(data_out[23]) );
  NAND2X1 U128 ( .A(n445), .B(n598), .Y(n156) );
  AOI22X1 U130 ( .A(n576), .B(n557), .C(n559), .D(n554), .Y(n159) );
  AOI21X1 U132 ( .A(n19), .B(n576), .C(n162), .Y(n36) );
  OAI21X1 U133 ( .A(n566), .B(n47), .C(n570), .Y(n162) );
  OAI21X1 U134 ( .A(n594), .B(n12), .C(n165), .Y(data_out[22]) );
  NAND2X1 U135 ( .A(n595), .B(n35), .Y(n165) );
  OAI21X1 U136 ( .A(n504), .B(n144), .C(n167), .Y(n35) );
  AOI21X1 U137 ( .A(n163), .B(n523), .C(n164), .Y(n167) );
  NAND3X1 U138 ( .A(n458), .B(n567), .C(n482), .Y(n168) );
  AOI22X1 U139 ( .A(n559), .B(n553), .C(n576), .D(n558), .Y(n170) );
  OAI21X1 U141 ( .A(n516), .B(n597), .C(n173), .Y(data_out[21]) );
  NAND2X1 U142 ( .A(n444), .B(n598), .Y(n173) );
  OAI21X1 U143 ( .A(n594), .B(n11), .C(n175), .Y(data_out[20]) );
  NAND2X1 U144 ( .A(n595), .B(n176), .Y(n175) );
  NAND3X1 U145 ( .A(n457), .B(n563), .C(n481), .Y(data_out[1]) );
  AOI22X1 U146 ( .A(n581), .B(n558), .C(n44), .D(n9), .Y(n178) );
  OAI21X1 U148 ( .A(shamt[4]), .B(n478), .C(n180), .Y(n85) );
  NAND2X1 U149 ( .A(n107), .B(n553), .Y(n180) );
  AOI22X1 U150 ( .A(n464), .B(n29), .C(shamt[3]), .D(n509), .Y(n179) );
  AOI22X1 U152 ( .A(n101), .B(n548), .C(n587), .D(n568), .Y(n183) );
  AOI22X1 U154 ( .A(data_in[10]), .B(n586), .C(data_in[9]), .D(n585), .Y(n186)
         );
  AOI22X1 U155 ( .A(data_in[22]), .B(n315), .C(data_in[21]), .D(n584), .Y(n185) );
  AOI22X1 U156 ( .A(n593), .B(n533), .C(n589), .D(n552), .Y(n182) );
  AOI22X1 U158 ( .A(n101), .B(n462), .C(n589), .D(n522), .Y(n191) );
  AOI22X1 U160 ( .A(data_in[25]), .B(n584), .C(data_in[5]), .D(n585), .Y(n194)
         );
  AOI22X1 U161 ( .A(data_in[26]), .B(n315), .C(data_in[6]), .D(n586), .Y(n193)
         );
  AOI22X1 U163 ( .A(data_in[2]), .B(n586), .C(n584), .D(data_in[29]), .Y(n196)
         );
  AOI22X1 U164 ( .A(data_in[1]), .B(n585), .C(data_in[30]), .D(n315), .Y(n195)
         );
  AOI22X1 U165 ( .A(n593), .B(n518), .C(n587), .D(n547), .Y(n190) );
  AOI22X1 U167 ( .A(data_in[23]), .B(n584), .C(data_in[7]), .D(n585), .Y(n198)
         );
  AOI22X1 U168 ( .A(data_in[24]), .B(n315), .C(data_in[8]), .D(n586), .Y(n197)
         );
  AOI22X1 U170 ( .A(data_in[27]), .B(n584), .C(n585), .D(data_in[3]), .Y(n200)
         );
  AOI22X1 U171 ( .A(data_in[28]), .B(n315), .C(data_in[4]), .D(n586), .Y(n199)
         );
  NAND2X1 U172 ( .A(n201), .B(n202), .Y(data_out[19]) );
  AOI22X1 U173 ( .A(n594), .B(n203), .C(n582), .D(n7), .Y(n202) );
  AOI22X1 U174 ( .A(n42), .B(n556), .C(n204), .D(n597), .Y(n201) );
  NAND2X1 U175 ( .A(n205), .B(n206), .Y(data_out[18]) );
  AOI22X1 U176 ( .A(n594), .B(n207), .C(n582), .D(n90), .Y(n206) );
  AOI22X1 U177 ( .A(n42), .B(n555), .C(n208), .D(n597), .Y(n205) );
  NAND2X1 U178 ( .A(n209), .B(n210), .Y(data_out[17]) );
  AOI22X1 U179 ( .A(n594), .B(n211), .C(n582), .D(n9), .Y(n210) );
  AOI22X1 U180 ( .A(n42), .B(n558), .C(n212), .D(n597), .Y(n209) );
  NAND2X1 U181 ( .A(n213), .B(n214), .Y(data_out[16]) );
  AOI22X1 U182 ( .A(n594), .B(n215), .C(n582), .D(n19), .Y(n214) );
  AOI22X1 U183 ( .A(n42), .B(n557), .C(n216), .D(n597), .Y(n213) );
  NAND2X1 U185 ( .A(n217), .B(n218), .Y(data_out[15]) );
  AOI22X1 U186 ( .A(n215), .B(n597), .C(n580), .D(n19), .Y(n218) );
  OAI21X1 U187 ( .A(n45), .B(n144), .C(n570), .Y(n215) );
  AOI22X1 U188 ( .A(n44), .B(n557), .C(n594), .D(n216), .Y(n217) );
  OAI21X1 U189 ( .A(n47), .B(n144), .C(n219), .Y(n216) );
  AOI21X1 U190 ( .A(n163), .B(n502), .C(n158), .Y(n219) );
  AOI22X1 U192 ( .A(n587), .B(n541), .C(n592), .D(n545), .Y(n221) );
  AOI22X1 U193 ( .A(n101), .B(n568), .C(n589), .D(n546), .Y(n220) );
  AOI22X1 U195 ( .A(n588), .B(n530), .C(n592), .D(n542), .Y(n226) );
  AOI22X1 U196 ( .A(n101), .B(n544), .C(n589), .D(n543), .Y(n225) );
  NAND2X1 U197 ( .A(n231), .B(n232), .Y(data_out[14]) );
  AOI22X1 U198 ( .A(n211), .B(n597), .C(n580), .D(n9), .Y(n232) );
  AOI21X1 U199 ( .A(n534), .B(n101), .C(n507), .Y(n166) );
  OAI21X1 U200 ( .A(n53), .B(n144), .C(n570), .Y(n211) );
  AOI22X1 U202 ( .A(n588), .B(n237), .C(n592), .D(n543), .Y(n236) );
  AOI22X1 U203 ( .A(n101), .B(n542), .C(n589), .D(n530), .Y(n235) );
  AOI22X1 U204 ( .A(n44), .B(n558), .C(n594), .D(n212), .Y(n231) );
  OAI21X1 U205 ( .A(n54), .B(n144), .C(n238), .Y(n212) );
  AOI21X1 U206 ( .A(n163), .B(n501), .C(n158), .Y(n238) );
  AOI22X1 U208 ( .A(n588), .B(n539), .C(n592), .D(n538), .Y(n240) );
  AOI22X1 U209 ( .A(n101), .B(n532), .C(n589), .D(n551), .Y(n239) );
  AOI22X1 U211 ( .A(n588), .B(n529), .C(n592), .D(n536), .Y(n246) );
  AOI22X1 U212 ( .A(n101), .B(n540), .C(n589), .D(n537), .Y(n245) );
  AOI22X1 U214 ( .A(n588), .B(n544), .C(n592), .D(n546), .Y(n252) );
  AOI22X1 U215 ( .A(n101), .B(n545), .C(n589), .D(n541), .Y(n251) );
  NAND2X1 U216 ( .A(n253), .B(n254), .Y(data_out[13]) );
  AOI22X1 U217 ( .A(n207), .B(n597), .C(n580), .D(n90), .Y(n254) );
  OAI21X1 U218 ( .A(n525), .B(n144), .C(n570), .Y(n207) );
  AOI22X1 U219 ( .A(n44), .B(n555), .C(n594), .D(n208), .Y(n253) );
  OAI21X1 U220 ( .A(n61), .B(n144), .C(n255), .Y(n208) );
  AOI21X1 U221 ( .A(n163), .B(n506), .C(n158), .Y(n255) );
  AOI22X1 U223 ( .A(n588), .B(n546), .C(n592), .D(n568), .Y(n257) );
  AOI22X1 U224 ( .A(n101), .B(n552), .C(n589), .D(n545), .Y(n256) );
  NAND2X1 U225 ( .A(n258), .B(n259), .Y(data_out[12]) );
  AOI22X1 U226 ( .A(n203), .B(n597), .C(n580), .D(n7), .Y(n259) );
  OAI21X1 U227 ( .A(n527), .B(n144), .C(n570), .Y(n203) );
  AOI22X1 U228 ( .A(n44), .B(n556), .C(sr), .D(n204), .Y(n258) );
  OAI21X1 U229 ( .A(n68), .B(n144), .C(n260), .Y(n204) );
  AOI21X1 U230 ( .A(n163), .B(n505), .C(n158), .Y(n260) );
  AOI22X1 U232 ( .A(n589), .B(n538), .C(n592), .D(n532), .Y(n262) );
  AOI22X1 U233 ( .A(n101), .B(n550), .C(n587), .D(n551), .Y(n261) );
  OAI21X1 U234 ( .A(n11), .B(n597), .C(n263), .Y(data_out[11]) );
  NAND2X1 U235 ( .A(n176), .B(n598), .Y(n263) );
  OAI21X1 U236 ( .A(n68), .B(n566), .C(n264), .Y(n176) );
  AOI21X1 U237 ( .A(n576), .B(n7), .C(n164), .Y(n264) );
  AOI21X1 U238 ( .A(n529), .B(n590), .C(n8), .Y(n127) );
  AOI22X1 U239 ( .A(shamt[2]), .B(n24), .C(n592), .D(n534), .Y(n265) );
  AOI22X1 U241 ( .A(n588), .B(n537), .C(n593), .D(n540), .Y(n267) );
  AOI22X1 U242 ( .A(n101), .B(n539), .C(n589), .D(n536), .Y(n266) );
  NAND3X1 U243 ( .A(n456), .B(n567), .C(n480), .Y(n268) );
  AOI22X1 U244 ( .A(n576), .B(n556), .C(n559), .D(n442), .Y(n270) );
  AOI22X1 U246 ( .A(n101), .B(n543), .C(n589), .D(n237), .Y(n273) );
  AOI22X1 U249 ( .A(n588), .B(n542), .C(n593), .D(n541), .Y(n275) );
  AOI22X1 U250 ( .A(n590), .B(n546), .C(n589), .D(n544), .Y(n274) );
  AOI22X1 U252 ( .A(data_in[11]), .B(n584), .C(data_in[19]), .D(n585), .Y(n277) );
  AOI22X1 U253 ( .A(data_in[12]), .B(n315), .C(data_in[20]), .D(n586), .Y(n276) );
  AOI22X1 U256 ( .A(n588), .B(n545), .C(n593), .D(n552), .Y(n279) );
  AOI22X1 U258 ( .A(data_in[14]), .B(n586), .C(data_in[18]), .D(n315), .Y(n281) );
  AOI22X1 U259 ( .A(data_in[13]), .B(n585), .C(data_in[17]), .D(n584), .Y(n280) );
  AOI22X1 U261 ( .A(data_in[13]), .B(n584), .C(data_in[17]), .D(n585), .Y(n283) );
  AOI22X1 U262 ( .A(data_in[14]), .B(n315), .C(data_in[18]), .D(n586), .Y(n282) );
  AOI22X1 U263 ( .A(n590), .B(n533), .C(n589), .D(n568), .Y(n278) );
  OAI21X1 U265 ( .A(n585), .B(n584), .C(data_in[15]), .Y(n285) );
  OAI21X1 U266 ( .A(n315), .B(n586), .C(data_in[16]), .Y(n284) );
  AOI22X1 U268 ( .A(data_in[12]), .B(n586), .C(data_in[20]), .D(n315), .Y(n287) );
  AOI22X1 U269 ( .A(data_in[11]), .B(n585), .C(data_in[19]), .D(n584), .Y(n286) );
  OAI21X1 U270 ( .A(n594), .B(n516), .C(n288), .Y(data_out[10]) );
  NAND2X1 U271 ( .A(n595), .B(n444), .Y(n288) );
  AOI22X1 U273 ( .A(n576), .B(n555), .C(n559), .D(n443), .Y(n290) );
  AOI22X1 U275 ( .A(n590), .B(n537), .C(n589), .D(n534), .Y(n292) );
  AOI22X1 U279 ( .A(n588), .B(n536), .C(n593), .D(n539), .Y(n294) );
  AOI22X1 U280 ( .A(n590), .B(n551), .C(n589), .D(n540), .Y(n293) );
  AOI22X1 U284 ( .A(n589), .B(n532), .C(n593), .D(n550), .Y(n296) );
  AOI22X1 U285 ( .A(n590), .B(n549), .C(n587), .D(n538), .Y(n295) );
  AOI21X1 U286 ( .A(n524), .B(n163), .C(n297), .Y(n172) );
  OAI21X1 U287 ( .A(n144), .B(n17), .C(n570), .Y(n297) );
  OAI21X1 U289 ( .A(n565), .B(n30), .C(n299), .Y(n90) );
  AOI22X1 U290 ( .A(n590), .B(n530), .C(n593), .D(n237), .Y(n299) );
  AOI22X1 U292 ( .A(data_in[1]), .B(n584), .C(data_in[2]), .D(n315), .Y(n301)
         );
  AOI22X1 U293 ( .A(n585), .B(data_in[29]), .C(data_in[30]), .D(n586), .Y(n300) );
  AOI22X1 U296 ( .A(n588), .B(n543), .C(n593), .D(n544), .Y(n303) );
  AOI22X1 U298 ( .A(data_in[24]), .B(n586), .C(data_in[8]), .D(n315), .Y(n305)
         );
  AOI22X1 U299 ( .A(data_in[23]), .B(n585), .C(data_in[7]), .D(n584), .Y(n304)
         );
  AOI22X1 U301 ( .A(data_in[28]), .B(n586), .C(data_in[4]), .D(n315), .Y(n307)
         );
  AOI22X1 U302 ( .A(data_in[27]), .B(n585), .C(n584), .D(data_in[3]), .Y(n306)
         );
  AOI22X1 U303 ( .A(n590), .B(n541), .C(n589), .D(n542), .Y(n302) );
  AOI22X1 U305 ( .A(data_in[26]), .B(n586), .C(data_in[6]), .D(n315), .Y(n309)
         );
  AOI22X1 U306 ( .A(data_in[25]), .B(n585), .C(data_in[5]), .D(n584), .Y(n308)
         );
  AOI22X1 U308 ( .A(data_in[22]), .B(n586), .C(data_in[21]), .D(n585), .Y(n311) );
  AOI22X1 U309 ( .A(data_in[10]), .B(n315), .C(data_in[9]), .D(n584), .Y(n310)
         );
  NAND3X1 U310 ( .A(n455), .B(n563), .C(n479), .Y(data_out[0]) );
  AOI22X1 U311 ( .A(n580), .B(n557), .C(n44), .D(n19), .Y(n313) );
  AOI21X1 U312 ( .A(n237), .B(n101), .C(n507), .Y(n314) );
  OAI21X1 U314 ( .A(n564), .B(n33), .C(n316), .Y(n237) );
  AOI22X1 U315 ( .A(shamt[0]), .B(n24), .C(n585), .D(data_in[31]), .Y(n316) );
  AOI22X1 U318 ( .A(n588), .B(n540), .C(n593), .D(n551), .Y(n318) );
  AOI22X1 U320 ( .A(data_in[12]), .B(n584), .C(data_in[18]), .D(n585), .Y(n320) );
  AOI22X1 U321 ( .A(data_in[13]), .B(n315), .C(data_in[19]), .D(n586), .Y(n319) );
  AOI22X1 U323 ( .A(data_in[23]), .B(n586), .C(data_in[9]), .D(n315), .Y(n322)
         );
  AOI22X1 U324 ( .A(data_in[22]), .B(n585), .C(data_in[8]), .D(n584), .Y(n321)
         );
  AOI22X1 U325 ( .A(n590), .B(n538), .C(n589), .D(n539), .Y(n317) );
  AOI22X1 U327 ( .A(data_in[10]), .B(n584), .C(data_in[20]), .D(n585), .Y(n324) );
  AOI22X1 U328 ( .A(data_in[11]), .B(n315), .C(data_in[21]), .D(n586), .Y(n323) );
  AOI22X1 U330 ( .A(data_in[14]), .B(n584), .C(data_in[16]), .D(n585), .Y(n326) );
  AOI22X1 U331 ( .A(data_in[15]), .B(n315), .C(data_in[17]), .D(n586), .Y(n325) );
  OAI21X1 U338 ( .A(shamt[4]), .B(n477), .C(n328), .Y(n81) );
  NAND2X1 U339 ( .A(n107), .B(n554), .Y(n328) );
  AOI22X1 U341 ( .A(n588), .B(n534), .C(n593), .D(n537), .Y(n330) );
  AOI22X1 U343 ( .A(data_in[27]), .B(n586), .C(data_in[5]), .D(n315), .Y(n332)
         );
  AOI22X1 U344 ( .A(data_in[26]), .B(n585), .C(data_in[4]), .D(n584), .Y(n331)
         );
  AOI22X1 U346 ( .A(data_in[0]), .B(n584), .C(data_in[30]), .D(n585), .Y(n334)
         );
  AOI22X1 U347 ( .A(data_in[1]), .B(n315), .C(n586), .D(data_in[31]), .Y(n333)
         );
  AOI22X1 U348 ( .A(n590), .B(n536), .C(n589), .D(n529), .Y(n329) );
  AOI22X1 U350 ( .A(data_in[29]), .B(n586), .C(data_in[3]), .D(n315), .Y(n336)
         );
  AOI22X1 U351 ( .A(data_in[28]), .B(n585), .C(data_in[2]), .D(n584), .Y(n335)
         );
  AOI22X1 U353 ( .A(data_in[25]), .B(n586), .C(data_in[7]), .D(n315), .Y(n338)
         );
  AOI22X1 U354 ( .A(data_in[24]), .B(n585), .C(data_in[6]), .D(n584), .Y(n337)
         );
  AOI22X1 U356 ( .A(n463), .B(n29), .C(shamt[3]), .D(n508), .Y(n327) );
  AOI22X1 U358 ( .A(n587), .B(n532), .C(n589), .D(n550), .Y(n341) );
  AOI22X1 U360 ( .A(data_in[13]), .B(n586), .C(data_in[19]), .D(n315), .Y(n343) );
  AOI22X1 U361 ( .A(data_in[12]), .B(n585), .C(data_in[18]), .D(n584), .Y(n342) );
  AOI22X1 U363 ( .A(data_in[15]), .B(n586), .C(data_in[17]), .D(n315), .Y(n345) );
  AOI22X1 U364 ( .A(data_in[14]), .B(n585), .C(data_in[16]), .D(n584), .Y(n344) );
  AOI22X1 U365 ( .A(n590), .B(n531), .C(n593), .D(n549), .Y(n340) );
  AOI22X1 U367 ( .A(data_in[11]), .B(n586), .C(data_in[21]), .D(n315), .Y(n347) );
  AOI22X1 U368 ( .A(data_in[10]), .B(n585), .C(data_in[20]), .D(n584), .Y(n346) );
  AOI22X1 U370 ( .A(data_in[22]), .B(n584), .C(data_in[8]), .D(n585), .Y(n349)
         );
  AOI22X1 U371 ( .A(data_in[23]), .B(n315), .C(data_in[9]), .D(n586), .Y(n348)
         );
  AOI22X1 U373 ( .A(n101), .B(n461), .C(n589), .D(n521), .Y(n351) );
  AOI22X1 U375 ( .A(data_in[26]), .B(n584), .C(data_in[4]), .D(n585), .Y(n354)
         );
  AOI22X1 U376 ( .A(data_in[27]), .B(n315), .C(data_in[5]), .D(n586), .Y(n353)
         );
  AOI22X1 U379 ( .A(data_in[1]), .B(n586), .C(data_in[30]), .D(n584), .Y(n356)
         );
  AOI22X1 U380 ( .A(data_in[0]), .B(n585), .C(n315), .D(data_in[31]), .Y(n355)
         );
  AOI22X1 U381 ( .A(n592), .B(n517), .C(n587), .D(n535), .Y(n350) );
  AOI22X1 U383 ( .A(data_in[24]), .B(n584), .C(data_in[6]), .D(n585), .Y(n358)
         );
  AOI22X1 U384 ( .A(data_in[25]), .B(n315), .C(data_in[7]), .D(n586), .Y(n357)
         );
  AOI22X1 U387 ( .A(n584), .B(data_in[28]), .C(data_in[2]), .D(n585), .Y(n360)
         );
  AOI22X1 U390 ( .A(n315), .B(data_in[29]), .C(data_in[3]), .D(n586), .Y(n359)
         );
  AND2X1 U2 ( .A(n559), .B(sr), .Y(n46) );
  AND2X1 U3 ( .A(n559), .B(n596), .Y(n79) );
  OR2X1 U4 ( .A(n566), .B(n595), .Y(n571) );
  OR2X1 U5 ( .A(n566), .B(n598), .Y(n572) );
  OR2X1 U6 ( .A(n451), .B(n448), .Y(n442) );
  OR2X1 U7 ( .A(n450), .B(n447), .Y(n443) );
  OR2X1 U8 ( .A(n453), .B(n449), .Y(n444) );
  OR2X1 U9 ( .A(n452), .B(n446), .Y(n445) );
  OR2X1 U10 ( .A(n500), .B(n158), .Y(n446) );
  OR2X1 U11 ( .A(n526), .B(n272), .Y(n447) );
  OR2X1 U12 ( .A(n528), .B(n272), .Y(n448) );
  OR2X1 U13 ( .A(n499), .B(n158), .Y(n449) );
  AND2X1 U14 ( .A(n560), .B(sr), .Y(n77) );
  AND2X1 U15 ( .A(n560), .B(n598), .Y(n93) );
  AND2X1 U16 ( .A(n593), .B(n529), .Y(n450) );
  AND2X1 U17 ( .A(n592), .B(n530), .Y(n451) );
  AND2X1 U18 ( .A(n163), .B(n508), .Y(n452) );
  AND2X1 U19 ( .A(n163), .B(n497), .Y(n453) );
  BUFX2 U20 ( .A(n39), .Y(n454) );
  AND2X1 U21 ( .A(n595), .B(n81), .Y(n312) );
  INVX1 U22 ( .A(n312), .Y(n455) );
  AND2X1 U23 ( .A(n163), .B(n498), .Y(n269) );
  INVX1 U24 ( .A(n269), .Y(n456) );
  AND2X1 U25 ( .A(n595), .B(n85), .Y(n177) );
  INVX1 U26 ( .A(n177), .Y(n457) );
  AND2X1 U27 ( .A(n163), .B(n509), .Y(n169) );
  INVX1 U28 ( .A(n169), .Y(n458) );
  AND2X1 U29 ( .A(n85), .B(n598), .Y(n82) );
  INVX1 U30 ( .A(n82), .Y(n459) );
  AND2X1 U31 ( .A(n81), .B(n598), .Y(n76) );
  INVX1 U32 ( .A(n76), .Y(n460) );
  AND2X2 U33 ( .A(n355), .B(n356), .Y(n352) );
  INVX1 U34 ( .A(n352), .Y(n461) );
  AND2X2 U35 ( .A(n195), .B(n196), .Y(n192) );
  INVX1 U36 ( .A(n192), .Y(n462) );
  AND2X2 U37 ( .A(n350), .B(n351), .Y(n339) );
  INVX1 U44 ( .A(n339), .Y(n463) );
  AND2X2 U48 ( .A(n190), .B(n191), .Y(n181) );
  INVX1 U52 ( .A(n181), .Y(n464) );
  AND2X1 U56 ( .A(n583), .B(n520), .Y(n148) );
  INVX1 U60 ( .A(n148), .Y(n465) );
  AND2X1 U64 ( .A(n583), .B(n523), .Y(n139) );
  INVX1 U67 ( .A(n139), .Y(n466) );
  AND2X1 U70 ( .A(n583), .B(n524), .Y(n131) );
  INVX1 U74 ( .A(n131), .Y(n467) );
  AND2X1 U77 ( .A(n583), .B(n519), .Y(n122) );
  INVX1 U83 ( .A(n122), .Y(n468) );
  AND2X1 U86 ( .A(n583), .B(n556), .Y(n111) );
  INVX1 U92 ( .A(n111), .Y(n469) );
  AND2X1 U95 ( .A(n583), .B(n555), .Y(n95) );
  INVX1 U101 ( .A(n95), .Y(n470) );
  AND2X1 U104 ( .A(n581), .B(n555), .Y(n87) );
  INVX1 U110 ( .A(n87), .Y(n471) );
  AND2X1 U113 ( .A(n581), .B(n556), .Y(n71) );
  INVX1 U119 ( .A(n71), .Y(n472) );
  AND2X1 U122 ( .A(n581), .B(n519), .Y(n64) );
  INVX1 U124 ( .A(n64), .Y(n473) );
  AND2X1 U129 ( .A(n581), .B(n524), .Y(n57) );
  INVX1 U131 ( .A(n57), .Y(n474) );
  AND2X1 U140 ( .A(n581), .B(n523), .Y(n50) );
  INVX1 U147 ( .A(n50), .Y(n475) );
  AND2X1 U151 ( .A(n581), .B(n520), .Y(n40) );
  INVX1 U153 ( .A(n40), .Y(n476) );
  BUFX2 U157 ( .A(n327), .Y(n477) );
  BUFX2 U159 ( .A(n179), .Y(n478) );
  BUFX2 U162 ( .A(n313), .Y(n479) );
  BUFX2 U166 ( .A(n270), .Y(n480) );
  BUFX2 U169 ( .A(n178), .Y(n481) );
  BUFX2 U184 ( .A(n170), .Y(n482) );
  BUFX2 U191 ( .A(n149), .Y(n483) );
  BUFX2 U194 ( .A(n140), .Y(n484) );
  BUFX2 U201 ( .A(n132), .Y(n485) );
  BUFX2 U207 ( .A(n123), .Y(n486) );
  BUFX2 U210 ( .A(n112), .Y(n487) );
  BUFX2 U213 ( .A(n96), .Y(n488) );
  BUFX2 U222 ( .A(n88), .Y(n489) );
  BUFX2 U231 ( .A(n83), .Y(n490) );
  BUFX2 U240 ( .A(n78), .Y(n491) );
  BUFX2 U245 ( .A(n72), .Y(n492) );
  BUFX2 U247 ( .A(n65), .Y(n493) );
  BUFX2 U248 ( .A(n58), .Y(n494) );
  BUFX2 U251 ( .A(n51), .Y(n495) );
  BUFX2 U254 ( .A(n41), .Y(n496) );
  AND2X1 U255 ( .A(n588), .B(n24), .Y(n272) );
  AND2X2 U257 ( .A(n295), .B(n296), .Y(n109) );
  INVX1 U260 ( .A(n109), .Y(n497) );
  AND2X2 U264 ( .A(n278), .B(n279), .Y(n120) );
  INVX1 U267 ( .A(n120), .Y(n498) );
  INVX1 U272 ( .A(n290), .Y(n499) );
  INVX1 U274 ( .A(n159), .Y(n500) );
  AND2X2 U276 ( .A(n239), .B(n240), .Y(n146) );
  INVX1 U277 ( .A(n146), .Y(n501) );
  AND2X2 U278 ( .A(n220), .B(n221), .Y(n155) );
  INVX1 U281 ( .A(n155), .Y(n502) );
  BUFX2 U282 ( .A(n127), .Y(n503) );
  BUFX2 U283 ( .A(n166), .Y(n504) );
  AND2X2 U288 ( .A(n261), .B(n262), .Y(n129) );
  INVX1 U291 ( .A(n129), .Y(n505) );
  AND2X2 U294 ( .A(n256), .B(n257), .Y(n137) );
  INVX1 U295 ( .A(n137), .Y(n506) );
  OR2X1 U297 ( .A(n565), .B(n590), .Y(n234) );
  INVX1 U300 ( .A(n234), .Y(n507) );
  AND2X2 U304 ( .A(n340), .B(n341), .Y(n161) );
  INVX1 U307 ( .A(n161), .Y(n508) );
  AND2X2 U313 ( .A(n182), .B(n183), .Y(n171) );
  INVX1 U316 ( .A(n171), .Y(n509) );
  AND2X2 U317 ( .A(n150), .B(n151), .Y(n43) );
  INVX1 U319 ( .A(n43), .Y(n510) );
  AND2X2 U322 ( .A(n141), .B(n142), .Y(n52) );
  INVX1 U326 ( .A(n52), .Y(n511) );
  AND2X2 U329 ( .A(n133), .B(n134), .Y(n59) );
  INVX1 U332 ( .A(n59), .Y(n512) );
  AND2X2 U333 ( .A(n124), .B(n125), .Y(n66) );
  INVX1 U334 ( .A(n66), .Y(n513) );
  AND2X2 U335 ( .A(n113), .B(n114), .Y(n73) );
  INVX1 U336 ( .A(n73), .Y(n514) );
  AND2X2 U337 ( .A(n97), .B(n98), .Y(n89) );
  INVX1 U340 ( .A(n89), .Y(n515) );
  BUFX2 U342 ( .A(n172), .Y(n516) );
  AND2X2 U345 ( .A(n359), .B(n360), .Y(n102) );
  INVX1 U349 ( .A(n102), .Y(n517) );
  AND2X2 U352 ( .A(n199), .B(n200), .Y(n116) );
  INVX1 U355 ( .A(n116), .Y(n518) );
  AND2X2 U357 ( .A(n266), .B(n267), .Y(n68) );
  INVX1 U359 ( .A(n68), .Y(n519) );
  AND2X2 U362 ( .A(n225), .B(n226), .Y(n47) );
  INVX1 U366 ( .A(n47), .Y(n520) );
  AND2X2 U369 ( .A(n353), .B(n354), .Y(n100) );
  INVX1 U372 ( .A(n100), .Y(n521) );
  AND2X2 U374 ( .A(n193), .B(n194), .Y(n115) );
  INVX1 U377 ( .A(n115), .Y(n522) );
  INVX1 U378 ( .A(n54), .Y(n523) );
  AND2X2 U382 ( .A(n245), .B(n246), .Y(n54) );
  INVX1 U385 ( .A(n61), .Y(n524) );
  AND2X2 U386 ( .A(n302), .B(n303), .Y(n61) );
  INVX1 U388 ( .A(n443), .Y(n525) );
  INVX1 U389 ( .A(n292), .Y(n526) );
  INVX1 U391 ( .A(n442), .Y(n527) );
  INVX1 U392 ( .A(n273), .Y(n528) );
  AND2X2 U393 ( .A(n335), .B(n336), .Y(n247) );
  INVX1 U394 ( .A(n247), .Y(n529) );
  AND2X2 U395 ( .A(n300), .B(n301), .Y(n227) );
  INVX1 U396 ( .A(n227), .Y(n530) );
  AND2X2 U397 ( .A(n348), .B(n349), .Y(n106) );
  INVX1 U398 ( .A(n106), .Y(n531) );
  AND2X2 U399 ( .A(n344), .B(n345), .Y(n243) );
  INVX1 U400 ( .A(n243), .Y(n532) );
  AND2X2 U401 ( .A(n286), .B(n287), .Y(n135) );
  INVX1 U402 ( .A(n135), .Y(n533) );
  AND2X2 U403 ( .A(n333), .B(n334), .Y(n233) );
  INVX1 U404 ( .A(n233), .Y(n534) );
  AND2X2 U405 ( .A(n357), .B(n358), .Y(n104) );
  INVX1 U406 ( .A(n104), .Y(n535) );
  AND2X2 U407 ( .A(n337), .B(n338), .Y(n248) );
  INVX1 U408 ( .A(n248), .Y(n536) );
  AND2X2 U409 ( .A(n331), .B(n332), .Y(n250) );
  INVX1 U410 ( .A(n250), .Y(n537) );
  AND2X2 U411 ( .A(n325), .B(n326), .Y(n242) );
  INVX1 U412 ( .A(n242), .Y(n538) );
  AND2X2 U413 ( .A(n323), .B(n324), .Y(n241) );
  INVX1 U414 ( .A(n241), .Y(n539) );
  AND2X2 U415 ( .A(n321), .B(n322), .Y(n249) );
  INVX1 U416 ( .A(n249), .Y(n540) );
  AND2X2 U417 ( .A(n310), .B(n311), .Y(n222) );
  INVX1 U418 ( .A(n222), .Y(n541) );
  AND2X2 U419 ( .A(n308), .B(n309), .Y(n228) );
  INVX1 U420 ( .A(n228), .Y(n542) );
  AND2X2 U421 ( .A(n306), .B(n307), .Y(n230) );
  INVX1 U422 ( .A(n230), .Y(n543) );
  AND2X2 U423 ( .A(n304), .B(n305), .Y(n229) );
  INVX1 U424 ( .A(n229), .Y(n544) );
  AND2X2 U425 ( .A(n282), .B(n283), .Y(n223) );
  INVX1 U426 ( .A(n223), .Y(n545) );
  AND2X2 U427 ( .A(n276), .B(n277), .Y(n224) );
  INVX1 U428 ( .A(n224), .Y(n546) );
  AND2X2 U429 ( .A(n197), .B(n198), .Y(n117) );
  INVX1 U430 ( .A(n117), .Y(n547) );
  AND2X2 U431 ( .A(n185), .B(n186), .Y(n118) );
  INVX1 U432 ( .A(n118), .Y(n548) );
  AND2X2 U433 ( .A(n346), .B(n347), .Y(n126) );
  INVX1 U434 ( .A(n126), .Y(n549) );
  AND2X2 U435 ( .A(n342), .B(n343), .Y(n143) );
  INVX1 U436 ( .A(n143), .Y(n550) );
  AND2X2 U437 ( .A(n319), .B(n320), .Y(n244) );
  INVX1 U438 ( .A(n244), .Y(n551) );
  AND2X2 U439 ( .A(n280), .B(n281), .Y(n152) );
  INVX1 U440 ( .A(n152), .Y(n552) );
  INVX1 U441 ( .A(n53), .Y(n553) );
  AND2X2 U442 ( .A(n235), .B(n236), .Y(n53) );
  INVX1 U443 ( .A(n45), .Y(n554) );
  AND2X2 U444 ( .A(n329), .B(n330), .Y(n45) );
  AND2X2 U445 ( .A(n293), .B(n294), .Y(n91) );
  INVX1 U446 ( .A(n91), .Y(n555) );
  AND2X2 U447 ( .A(n274), .B(n275), .Y(n74) );
  INVX1 U448 ( .A(n74), .Y(n556) );
  AND2X2 U449 ( .A(n317), .B(n318), .Y(n80) );
  INVX1 U450 ( .A(n80), .Y(n557) );
  AND2X2 U451 ( .A(n251), .B(n252), .Y(n84) );
  INVX1 U452 ( .A(n84), .Y(n558) );
  OR2X1 U453 ( .A(n27), .B(shamt[3]), .Y(n160) );
  INVX1 U454 ( .A(n160), .Y(n559) );
  OR2X1 U455 ( .A(n565), .B(n163), .Y(n153) );
  INVX1 U456 ( .A(n153), .Y(n560) );
  INVX1 U457 ( .A(n77), .Y(n561) );
  BUFX2 U458 ( .A(n36), .Y(n562) );
  INVX1 U459 ( .A(n93), .Y(n563) );
  AND2X1 U460 ( .A(n32), .B(n598), .Y(n315) );
  INVX1 U461 ( .A(n315), .Y(n564) );
  AND2X1 U462 ( .A(data_in[31]), .B(arith), .Y(n298) );
  INVX1 U463 ( .A(n298), .Y(n565) );
  AND2X1 U464 ( .A(n29), .B(n27), .Y(n163) );
  INVX1 U465 ( .A(n163), .Y(n566) );
  AND2X1 U466 ( .A(n164), .B(shamt[3]), .Y(n158) );
  INVX1 U467 ( .A(n158), .Y(n567) );
  AND2X1 U468 ( .A(n284), .B(n285), .Y(n184) );
  INVX1 U469 ( .A(n184), .Y(n568) );
  AND2X1 U470 ( .A(shamt[3]), .B(shamt[4]), .Y(n107) );
  INVX1 U471 ( .A(n107), .Y(n569) );
  AND2X1 U472 ( .A(shamt[4]), .B(n24), .Y(n164) );
  INVX1 U473 ( .A(n164), .Y(n570) );
  INVX1 U474 ( .A(n571), .Y(n44) );
  INVX1 U475 ( .A(n572), .Y(n42) );
  INVX1 U476 ( .A(n90), .Y(n17) );
  INVX1 U477 ( .A(n504), .Y(n9) );
  INVX1 U478 ( .A(n574), .Y(n587) );
  BUFX2 U479 ( .A(n46), .Y(n581) );
  BUFX2 U480 ( .A(n79), .Y(n583) );
  INVX1 U481 ( .A(n574), .Y(n588) );
  INVX1 U482 ( .A(n575), .Y(n584) );
  INVX1 U483 ( .A(n573), .Y(n586) );
  BUFX2 U484 ( .A(n46), .Y(n580) );
  BUFX2 U485 ( .A(n79), .Y(n582) );
  INVX1 U486 ( .A(n591), .Y(n590) );
  INVX1 U487 ( .A(n596), .Y(n595) );
  INVX1 U488 ( .A(n594), .Y(n597) );
  INVX1 U489 ( .A(sr), .Y(n598) );
  INVX1 U490 ( .A(n596), .Y(n594) );
  INVX1 U491 ( .A(n565), .Y(n24) );
  INVX1 U492 ( .A(n314), .Y(n19) );
  OR2X1 U493 ( .A(n598), .B(n32), .Y(n573) );
  OR2X1 U494 ( .A(n30), .B(n31), .Y(n574) );
  OR2X1 U495 ( .A(n32), .B(n595), .Y(n575) );
  INVX1 U496 ( .A(n503), .Y(n7) );
  INVX1 U497 ( .A(n578), .Y(n593) );
  INVX1 U498 ( .A(n577), .Y(n585) );
  INVX1 U499 ( .A(n578), .Y(n592) );
  INVX1 U500 ( .A(n579), .Y(n589) );
  INVX1 U501 ( .A(n268), .Y(n11) );
  INVX1 U502 ( .A(n168), .Y(n12) );
  INVX1 U503 ( .A(n101), .Y(n591) );
  AND2X1 U504 ( .A(n30), .B(n31), .Y(n101) );
  INVX1 U505 ( .A(sr), .Y(n596) );
  INVX1 U506 ( .A(data_in[0]), .Y(n33) );
  AND2X1 U507 ( .A(shamt[3]), .B(n27), .Y(n576) );
  INVX1 U508 ( .A(n576), .Y(n144) );
  INVX1 U509 ( .A(n265), .Y(n8) );
  OR2X1 U510 ( .A(n598), .B(shamt[0]), .Y(n577) );
  OR2X1 U511 ( .A(n31), .B(shamt[2]), .Y(n578) );
  OR2X1 U512 ( .A(n30), .B(shamt[1]), .Y(n579) );
  INVX1 U513 ( .A(shamt[2]), .Y(n30) );
  INVX1 U514 ( .A(shamt[3]), .Y(n29) );
  INVX1 U515 ( .A(shamt[0]), .Y(n32) );
  INVX1 U516 ( .A(shamt[1]), .Y(n31) );
  INVX1 U517 ( .A(shamt[4]), .Y(n27) );
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
         \_1_net_[0] , n, z, c, v, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n112, n113, n114, n115, n116, n117, n118, n120, n121, n122, n123,
         n124, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201,
         n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, n212,
         n213, n214, n215, n216, n217, n218, n219, n220, n221, n222, n223,
         n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, n234,
         n235, n236, n237, n238, n239, n240, n241, n242, n243, n244, n245,
         n246, n247, n248, n249, n250, n251, n252, n253, n254, n255, n256,
         n257, n258, n259, n260, n261, n262, n263, n264, n265, n266, n267,
         n268, n269, n270, n271, n272, n273, n274, n275, n276, n277, n278,
         n279, n280, n281, n282, n283, n284, n285, n286, n287, n288, n289,
         n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, n300,
         n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311,
         n312, n313, n314, n315, n316, n317, n318, n319, n320, n321, n322,
         n323, n324, n325, n326, n327, n328, n329, n330, n331, n332, n333,
         n334, n335, n336, n337, n338, n339, n340, n341, n343, n344, n345,
         n346, n347, n348, n349, n350, n351, n352, n353, n354, n355, n356,
         n357, n358, n359, n360, n361, n362, n363, n364, n365, n366, n367,
         n368, n369, n370, n371, n372, n373, n374, n375, n376, n377, n378,
         n379, n380, n381, n382, n383, n384, n385, n386, n387, n388, n389,
         n390, n391, n392, n393, n394, n395, n396, n397, n398, n399, n400,
         n401, n402, n403, n404, n405, n406, n407, n408, n409, n410, n411,
         n412, n413, n414, n415, n416, n417, n418, n419, n420, n421, n422,
         n423, n424, n425, n426, n427, n428, n429, n430, n431, n432, n433,
         n434, n435, n436, n437, n438, n439, n440, n441, n442, n443, n444,
         n445, n446, n447, n448, n449, n450, n451, n452, n453, n454, n455,
         n456, n457, n458, n459, n460, n461, n462, n463, n464, n465, n466,
         n467, n468, n469, n470, n707, n708, n709, n713, n714, n715, n716,
         n717, n718, n719, n720, n721, n722, n723, n724, n725, n726, n727,
         n728, n729, n730, n731, n732, n733, n734, n735, n736, n737, n738,
         n739, n740, n741, n742, n743, n744, n745, n746, n747, n748, n749,
         n750, n751, n752, n753, n754, n755, n756, n757, n758, n759, n760,
         n761, n762, n763, n764, n765, n766, n767, n768, n769, n770, n771,
         n772, n773, n774, n775, n776, n777, n778, n779, n780, n781, n782,
         n783, n784, n785, n786, n787, n788, n789, n790, n791, n792, n793,
         n794, n795, n796, n797, n798, n799, n800, n801, n802, n803, n804,
         n805, n806, n807, n808, n809, n810, n811, n812, n813, n814, n815,
         n816, n817, n818, n819, n820, n821, n822, n823, n824, n825, n826,
         n827, n828, n829, n830, n831, n832, n833, n834, n835, n836, n837,
         n838, n839, n840, n841, n842, n843, n844, n845, n846, n847, n848,
         n849, n850, n851, n852, n853, n854, n855, n856, n857, n858, n859,
         n860, n861, n862, n863, n864, n865, n866, n867, n868, n869, n870,
         n871, n872, n873, n874, n875, n876, n877, n878;
  wire   [31:0] adder_out;
  wire   [31:0] shifter_out;

  carry_skip_adder adder_i ( .a({\_0_net_[31] , \_0_net_[30] , \_0_net_[29] , 
        \_0_net_[28] , \_0_net_[27] , \_0_net_[26] , \_0_net_[25] , 
        \_0_net_[24] , \_0_net_[23] , \_0_net_[22] , \_0_net_[21] , 
        \_0_net_[20] , \_0_net_[19] , \_0_net_[18] , \_0_net_[17] , 
        \_0_net_[16] , \_0_net_[15] , \_0_net_[14] , \_0_net_[13] , 
        \_0_net_[12] , \_0_net_[11] , \_0_net_[10] , \_0_net_[9] , 
        \_0_net_[8] , \_0_net_[7] , \_0_net_[6] , \_0_net_[5] , \_0_net_[4] , 
        \_0_net_[3] , \_0_net_[2] , \_0_net_[1] , \_0_net_[0] }), .b({
        \_1_net_[31] , \_1_net_[30] , \_1_net_[29] , \_1_net_[28] , 
        \_1_net_[27] , \_1_net_[26] , \_1_net_[25] , \_1_net_[24] , 
        \_1_net_[23] , \_1_net_[22] , \_1_net_[21] , \_1_net_[20] , 
        \_1_net_[19] , \_1_net_[18] , \_1_net_[17] , \_1_net_[16] , 
        \_1_net_[15] , \_1_net_[14] , \_1_net_[13] , \_1_net_[12] , 
        \_1_net_[11] , \_1_net_[10] , \_1_net_[9] , \_1_net_[8] , \_1_net_[7] , 
        \_1_net_[6] , \_1_net_[5] , \_1_net_[4] , \_1_net_[3] , \_1_net_[2] , 
        \_1_net_[1] , \_1_net_[0] }), .sub(subtract), .s(adder_out), .n(n), 
        .z(z), .c(c), .v(v) );
  shifter shifter_i ( .sr(shift_right), .arith(shift_arith), .shamt(
        rs2_data[4:0]), .data_in(rs1_data), .data_out(shifter_out) );
  AOI22X1 U152 ( .A(imm_u[9]), .B(n5), .C(adder_out[9]), .D(n864), .Y(n112) );
  AOI22X1 U154 ( .A(n812), .B(rs1_data[9]), .C(n9), .D(n115), .Y(n110) );
  OAI21X1 U155 ( .A(rs1_data[9]), .B(n860), .C(n117), .Y(n115) );
  AOI21X1 U156 ( .A(n2), .B(rs1_data[9]), .C(n3), .Y(n117) );
  AOI22X1 U159 ( .A(imm_u[8]), .B(n5), .C(adder_out[8]), .D(n864), .Y(n120) );
  AOI22X1 U161 ( .A(n820), .B(rs1_data[8]), .C(n10), .D(n122), .Y(n118) );
  OAI21X1 U162 ( .A(rs1_data[8]), .B(n859), .C(n123), .Y(n122) );
  AOI21X1 U163 ( .A(rs1_data[8]), .B(n2), .C(n3), .Y(n123) );
  AOI22X1 U166 ( .A(imm_u[7]), .B(n5), .C(adder_out[7]), .D(n864), .Y(n126) );
  AOI22X1 U168 ( .A(n837), .B(rs1_data[7]), .C(n11), .D(n128), .Y(n124) );
  OAI21X1 U169 ( .A(rs1_data[7]), .B(n859), .C(n129), .Y(n128) );
  AOI21X1 U170 ( .A(rs1_data[7]), .B(n2), .C(n3), .Y(n129) );
  NAND3X1 U172 ( .A(n130), .B(n754), .C(n789), .Y(rd_data[6]) );
  AOI22X1 U173 ( .A(imm_u[6]), .B(n5), .C(adder_out[6]), .D(n864), .Y(n132) );
  AOI22X1 U175 ( .A(n844), .B(rs1_data[6]), .C(n12), .D(n134), .Y(n130) );
  OAI21X1 U176 ( .A(rs1_data[6]), .B(n859), .C(n135), .Y(n134) );
  AOI21X1 U177 ( .A(rs1_data[6]), .B(n2), .C(n3), .Y(n135) );
  NAND3X1 U179 ( .A(n136), .B(n753), .C(n788), .Y(rd_data[5]) );
  AOI22X1 U180 ( .A(imm_u[5]), .B(n5), .C(adder_out[5]), .D(n864), .Y(n138) );
  AOI22X1 U182 ( .A(n848), .B(rs1_data[5]), .C(n13), .D(n140), .Y(n136) );
  OAI21X1 U183 ( .A(rs1_data[5]), .B(n859), .C(n141), .Y(n140) );
  AOI21X1 U184 ( .A(rs1_data[5]), .B(n2), .C(n3), .Y(n141) );
  NAND3X1 U186 ( .A(n142), .B(n752), .C(n787), .Y(rd_data[4]) );
  AOI22X1 U187 ( .A(imm_u[4]), .B(n5), .C(adder_out[4]), .D(n864), .Y(n144) );
  AOI22X1 U189 ( .A(n851), .B(rs1_data[4]), .C(n14), .D(n146), .Y(n142) );
  OAI21X1 U190 ( .A(rs1_data[4]), .B(n859), .C(n147), .Y(n146) );
  AOI21X1 U191 ( .A(rs1_data[4]), .B(n2), .C(n3), .Y(n147) );
  NAND3X1 U193 ( .A(n148), .B(n751), .C(n786), .Y(rd_data[3]) );
  AOI22X1 U194 ( .A(imm_u[3]), .B(n5), .C(adder_out[3]), .D(n864), .Y(n150) );
  AOI22X1 U196 ( .A(n849), .B(rs1_data[3]), .C(n15), .D(n152), .Y(n148) );
  OAI21X1 U197 ( .A(rs1_data[3]), .B(n859), .C(n153), .Y(n152) );
  AOI21X1 U198 ( .A(rs1_data[3]), .B(n2), .C(n3), .Y(n153) );
  NAND3X1 U200 ( .A(n154), .B(n750), .C(n785), .Y(rd_data[31]) );
  AOI22X1 U201 ( .A(imm_u[31]), .B(n5), .C(adder_out[31]), .D(n864), .Y(n156)
         );
  AOI22X1 U203 ( .A(n724), .B(rs1_data[31]), .C(n16), .D(n158), .Y(n154) );
  OAI21X1 U204 ( .A(rs1_data[31]), .B(n859), .C(n159), .Y(n158) );
  AOI21X1 U205 ( .A(rs1_data[31]), .B(n2), .C(n3), .Y(n159) );
  NAND3X1 U207 ( .A(n160), .B(n749), .C(n784), .Y(rd_data[30]) );
  AOI22X1 U208 ( .A(imm_u[30]), .B(n5), .C(adder_out[30]), .D(n864), .Y(n162)
         );
  AOI22X1 U210 ( .A(n723), .B(rs1_data[30]), .C(n17), .D(n164), .Y(n160) );
  OAI21X1 U211 ( .A(rs1_data[30]), .B(n859), .C(n165), .Y(n164) );
  AOI21X1 U212 ( .A(rs1_data[30]), .B(n2), .C(n3), .Y(n165) );
  NAND3X1 U214 ( .A(n166), .B(n748), .C(n783), .Y(rd_data[2]) );
  AOI22X1 U215 ( .A(imm_u[2]), .B(n5), .C(adder_out[2]), .D(n864), .Y(n168) );
  AOI22X1 U217 ( .A(n852), .B(rs1_data[2]), .C(n18), .D(n170), .Y(n166) );
  OAI21X1 U218 ( .A(rs1_data[2]), .B(n859), .C(n171), .Y(n170) );
  AOI21X1 U219 ( .A(rs1_data[2]), .B(n2), .C(n3), .Y(n171) );
  NAND3X1 U221 ( .A(n172), .B(n747), .C(n782), .Y(rd_data[29]) );
  AOI22X1 U222 ( .A(imm_u[29]), .B(n5), .C(adder_out[29]), .D(n864), .Y(n174)
         );
  AOI22X1 U224 ( .A(n722), .B(rs1_data[29]), .C(n19), .D(n176), .Y(n172) );
  OAI21X1 U225 ( .A(rs1_data[29]), .B(n859), .C(n177), .Y(n176) );
  AOI21X1 U226 ( .A(rs1_data[29]), .B(n2), .C(n3), .Y(n177) );
  NAND3X1 U228 ( .A(n178), .B(n746), .C(n781), .Y(rd_data[28]) );
  AOI22X1 U229 ( .A(imm_u[28]), .B(n5), .C(adder_out[28]), .D(n864), .Y(n180)
         );
  AOI22X1 U231 ( .A(n721), .B(rs1_data[28]), .C(n20), .D(n182), .Y(n178) );
  OAI21X1 U232 ( .A(rs1_data[28]), .B(n859), .C(n183), .Y(n182) );
  AOI21X1 U233 ( .A(rs1_data[28]), .B(n2), .C(n3), .Y(n183) );
  NAND3X1 U235 ( .A(n184), .B(n745), .C(n780), .Y(rd_data[27]) );
  AOI22X1 U236 ( .A(imm_u[27]), .B(n5), .C(adder_out[27]), .D(n864), .Y(n186)
         );
  AOI22X1 U238 ( .A(n720), .B(rs1_data[27]), .C(n21), .D(n188), .Y(n184) );
  OAI21X1 U239 ( .A(rs1_data[27]), .B(n859), .C(n189), .Y(n188) );
  AOI21X1 U240 ( .A(rs1_data[27]), .B(n2), .C(n3), .Y(n189) );
  NAND3X1 U242 ( .A(n190), .B(n744), .C(n779), .Y(rd_data[26]) );
  AOI22X1 U243 ( .A(imm_u[26]), .B(n5), .C(adder_out[26]), .D(n864), .Y(n192)
         );
  AOI22X1 U245 ( .A(n719), .B(rs1_data[26]), .C(n22), .D(n194), .Y(n190) );
  OAI21X1 U246 ( .A(rs1_data[26]), .B(n860), .C(n195), .Y(n194) );
  AOI21X1 U247 ( .A(rs1_data[26]), .B(n2), .C(n3), .Y(n195) );
  NAND3X1 U249 ( .A(n196), .B(n743), .C(n778), .Y(rd_data[25]) );
  AOI22X1 U250 ( .A(imm_u[25]), .B(n5), .C(adder_out[25]), .D(n864), .Y(n198)
         );
  AOI22X1 U252 ( .A(n718), .B(rs1_data[25]), .C(n23), .D(n200), .Y(n196) );
  OAI21X1 U253 ( .A(rs1_data[25]), .B(n860), .C(n201), .Y(n200) );
  AOI21X1 U254 ( .A(rs1_data[25]), .B(n2), .C(n3), .Y(n201) );
  NAND3X1 U256 ( .A(n202), .B(n742), .C(n777), .Y(rd_data[24]) );
  AOI22X1 U257 ( .A(imm_u[24]), .B(n5), .C(adder_out[24]), .D(n864), .Y(n204)
         );
  AOI22X1 U259 ( .A(n818), .B(rs1_data[24]), .C(n24), .D(n206), .Y(n202) );
  OAI21X1 U260 ( .A(rs1_data[24]), .B(n860), .C(n207), .Y(n206) );
  AOI21X1 U261 ( .A(rs1_data[24]), .B(n2), .C(n3), .Y(n207) );
  NAND3X1 U263 ( .A(n208), .B(n741), .C(n776), .Y(rd_data[23]) );
  AOI22X1 U264 ( .A(imm_u[23]), .B(n5), .C(adder_out[23]), .D(n864), .Y(n210)
         );
  AOI22X1 U266 ( .A(n799), .B(rs1_data[23]), .C(n25), .D(n212), .Y(n208) );
  OAI21X1 U267 ( .A(rs1_data[23]), .B(n860), .C(n213), .Y(n212) );
  AOI21X1 U268 ( .A(rs1_data[23]), .B(n2), .C(n3), .Y(n213) );
  NAND3X1 U270 ( .A(n214), .B(n740), .C(n775), .Y(rd_data[22]) );
  AOI22X1 U271 ( .A(imm_u[22]), .B(n5), .C(adder_out[22]), .D(n864), .Y(n216)
         );
  AOI22X1 U273 ( .A(n826), .B(rs1_data[22]), .C(n26), .D(n218), .Y(n214) );
  OAI21X1 U274 ( .A(rs1_data[22]), .B(n860), .C(n219), .Y(n218) );
  AOI21X1 U275 ( .A(rs1_data[22]), .B(n2), .C(n3), .Y(n219) );
  NAND3X1 U277 ( .A(n220), .B(n739), .C(n774), .Y(rd_data[21]) );
  AOI22X1 U278 ( .A(imm_u[21]), .B(n5), .C(adder_out[21]), .D(n864), .Y(n222)
         );
  AOI22X1 U280 ( .A(n835), .B(rs1_data[21]), .C(n27), .D(n224), .Y(n220) );
  OAI21X1 U281 ( .A(rs1_data[21]), .B(n860), .C(n225), .Y(n224) );
  AOI21X1 U282 ( .A(rs1_data[21]), .B(n2), .C(n3), .Y(n225) );
  NAND3X1 U284 ( .A(n226), .B(n738), .C(n773), .Y(rd_data[20]) );
  AOI22X1 U285 ( .A(imm_u[20]), .B(n5), .C(adder_out[20]), .D(n864), .Y(n228)
         );
  AOI22X1 U287 ( .A(n805), .B(rs1_data[20]), .C(n28), .D(n230), .Y(n226) );
  OAI21X1 U288 ( .A(rs1_data[20]), .B(n860), .C(n231), .Y(n230) );
  AOI21X1 U289 ( .A(rs1_data[20]), .B(n2), .C(n3), .Y(n231) );
  NAND3X1 U291 ( .A(n232), .B(n737), .C(n772), .Y(rd_data[1]) );
  AOI22X1 U292 ( .A(imm_u[1]), .B(n5), .C(adder_out[1]), .D(n864), .Y(n234) );
  AOI22X1 U294 ( .A(n850), .B(rs1_data[1]), .C(n29), .D(n236), .Y(n232) );
  OAI21X1 U295 ( .A(rs1_data[1]), .B(n860), .C(n237), .Y(n236) );
  AOI21X1 U296 ( .A(rs1_data[1]), .B(n2), .C(n3), .Y(n237) );
  NAND3X1 U298 ( .A(n238), .B(n736), .C(n771), .Y(rd_data[19]) );
  AOI22X1 U299 ( .A(imm_u[19]), .B(n5), .C(adder_out[19]), .D(n864), .Y(n240)
         );
  AOI22X1 U301 ( .A(n842), .B(rs1_data[19]), .C(n30), .D(n242), .Y(n238) );
  OAI21X1 U302 ( .A(rs1_data[19]), .B(n860), .C(n243), .Y(n242) );
  AOI21X1 U303 ( .A(rs1_data[19]), .B(n2), .C(n3), .Y(n243) );
  NAND3X1 U305 ( .A(n244), .B(n735), .C(n770), .Y(rd_data[18]) );
  AOI22X1 U306 ( .A(imm_u[18]), .B(n5), .C(adder_out[18]), .D(n864), .Y(n246)
         );
  AOI22X1 U308 ( .A(n811), .B(rs1_data[18]), .C(n31), .D(n248), .Y(n244) );
  OAI21X1 U309 ( .A(rs1_data[18]), .B(n860), .C(n249), .Y(n248) );
  AOI21X1 U310 ( .A(rs1_data[18]), .B(n2), .C(n3), .Y(n249) );
  NAND3X1 U312 ( .A(n250), .B(n734), .C(n769), .Y(rd_data[17]) );
  AOI22X1 U313 ( .A(imm_u[17]), .B(n5), .C(adder_out[17]), .D(n864), .Y(n252)
         );
  AOI22X1 U315 ( .A(n847), .B(rs1_data[17]), .C(n32), .D(n254), .Y(n250) );
  OAI21X1 U316 ( .A(rs1_data[17]), .B(n861), .C(n255), .Y(n254) );
  AOI21X1 U317 ( .A(rs1_data[17]), .B(n2), .C(n3), .Y(n255) );
  NAND3X1 U319 ( .A(n256), .B(n733), .C(n768), .Y(rd_data[16]) );
  AOI22X1 U320 ( .A(imm_u[16]), .B(n5), .C(adder_out[16]), .D(n864), .Y(n258)
         );
  AOI22X1 U322 ( .A(n819), .B(rs1_data[16]), .C(n33), .D(n260), .Y(n256) );
  OAI21X1 U323 ( .A(rs1_data[16]), .B(n860), .C(n261), .Y(n260) );
  AOI21X1 U324 ( .A(rs1_data[16]), .B(n2), .C(n3), .Y(n261) );
  NAND3X1 U326 ( .A(n262), .B(n732), .C(n767), .Y(rd_data[15]) );
  AOI22X1 U327 ( .A(imm_u[15]), .B(n5), .C(adder_out[15]), .D(n864), .Y(n264)
         );
  AOI22X1 U329 ( .A(n827), .B(rs1_data[15]), .C(n34), .D(n266), .Y(n262) );
  OAI21X1 U330 ( .A(rs1_data[15]), .B(n861), .C(n267), .Y(n266) );
  AOI21X1 U331 ( .A(rs1_data[15]), .B(n2), .C(n3), .Y(n267) );
  NAND3X1 U333 ( .A(n268), .B(n731), .C(n766), .Y(rd_data[14]) );
  AOI22X1 U334 ( .A(imm_u[14]), .B(n5), .C(adder_out[14]), .D(n864), .Y(n270)
         );
  AOI22X1 U336 ( .A(n836), .B(rs1_data[14]), .C(n35), .D(n272), .Y(n268) );
  OAI21X1 U337 ( .A(rs1_data[14]), .B(n861), .C(n273), .Y(n272) );
  AOI21X1 U338 ( .A(rs1_data[14]), .B(n2), .C(n3), .Y(n273) );
  NAND3X1 U340 ( .A(n274), .B(n730), .C(n765), .Y(rd_data[13]) );
  AOI22X1 U341 ( .A(imm_u[13]), .B(n5), .C(adder_out[13]), .D(n864), .Y(n276)
         );
  AOI22X1 U343 ( .A(n843), .B(rs1_data[13]), .C(n36), .D(n278), .Y(n274) );
  OAI21X1 U344 ( .A(rs1_data[13]), .B(n861), .C(n279), .Y(n278) );
  AOI21X1 U345 ( .A(rs1_data[13]), .B(n2), .C(n3), .Y(n279) );
  NAND3X1 U347 ( .A(n280), .B(n729), .C(n764), .Y(rd_data[12]) );
  AOI22X1 U348 ( .A(imm_u[12]), .B(n5), .C(adder_out[12]), .D(n864), .Y(n282)
         );
  AOI22X1 U350 ( .A(n717), .B(rs1_data[12]), .C(n37), .D(n284), .Y(n280) );
  OAI21X1 U351 ( .A(rs1_data[12]), .B(n861), .C(n285), .Y(n284) );
  AOI21X1 U352 ( .A(rs1_data[12]), .B(n2), .C(n3), .Y(n285) );
  NAND3X1 U354 ( .A(n286), .B(n728), .C(n763), .Y(rd_data[11]) );
  AOI22X1 U355 ( .A(imm_u[11]), .B(n5), .C(adder_out[11]), .D(n864), .Y(n288)
         );
  AOI22X1 U357 ( .A(n800), .B(rs1_data[11]), .C(n38), .D(n290), .Y(n286) );
  OAI21X1 U358 ( .A(rs1_data[11]), .B(n861), .C(n291), .Y(n290) );
  AOI21X1 U359 ( .A(rs1_data[11]), .B(n2), .C(n3), .Y(n291) );
  NAND3X1 U361 ( .A(n292), .B(n727), .C(n762), .Y(rd_data[10]) );
  AOI22X1 U362 ( .A(imm_u[10]), .B(n5), .C(adder_out[10]), .D(n864), .Y(n294)
         );
  AOI22X1 U364 ( .A(n806), .B(rs1_data[10]), .C(n39), .D(n296), .Y(n292) );
  OAI21X1 U365 ( .A(rs1_data[10]), .B(n861), .C(n297), .Y(n296) );
  AOI21X1 U366 ( .A(rs1_data[10]), .B(n2), .C(n3), .Y(n297) );
  NAND3X1 U368 ( .A(n298), .B(n726), .C(n761), .Y(rd_data[0]) );
  AOI22X1 U369 ( .A(imm_u[0]), .B(n5), .C(adder_out[0]), .D(n864), .Y(n300) );
  NAND3X1 U370 ( .A(n716), .B(n725), .C(n853), .Y(n113) );
  NAND3X1 U371 ( .A(alu_op[0]), .B(alu_op[1]), .C(alu_op[2]), .Y(n302) );
  NAND3X1 U373 ( .A(n853), .B(n8), .C(n795), .Y(n304) );
  NAND3X1 U376 ( .A(n853), .B(n7), .C(n794), .Y(n306) );
  AOI22X1 U378 ( .A(n828), .B(rs1_data[0]), .C(n40), .D(n309), .Y(n298) );
  OAI21X1 U379 ( .A(rs1_data[0]), .B(n861), .C(n310), .Y(n309) );
  AOI21X1 U380 ( .A(rs1_data[0]), .B(n2), .C(n3), .Y(n310) );
  NAND3X1 U381 ( .A(n853), .B(n6), .C(n793), .Y(n311) );
  NAND3X1 U383 ( .A(alu_op[2]), .B(n853), .C(n314), .Y(n313) );
  NAND3X1 U385 ( .A(n853), .B(n6), .C(alu_op[1]), .Y(n116) );
  NAND3X1 U387 ( .A(n317), .B(n318), .C(n319), .Y(n316) );
  NOR3X1 U388 ( .A(n322), .B(alu_op[21]), .C(alu_op[20]), .Y(n321) );
  NOR3X1 U389 ( .A(alu_op[17]), .B(alu_op[19]), .C(alu_op[18]), .Y(n320) );
  NOR3X1 U390 ( .A(n323), .B(alu_op[14]), .C(alu_op[13]), .Y(n318) );
  NOR3X1 U391 ( .A(alu_op[10]), .B(alu_op[12]), .C(alu_op[11]), .Y(n317) );
  NAND3X1 U392 ( .A(n324), .B(n325), .C(n326), .Y(n315) );
  NOR3X1 U393 ( .A(n329), .B(alu_op[7]), .C(alu_op[6]), .Y(n328) );
  NOR3X1 U394 ( .A(n330), .B(alu_op[3]), .C(alu_op[31]), .Y(n327) );
  NOR3X1 U395 ( .A(n331), .B(alu_op[28]), .C(alu_op[27]), .Y(n325) );
  NOR3X1 U396 ( .A(alu_op[24]), .B(alu_op[26]), .C(alu_op[25]), .Y(n324) );
  OAI21X1 U397 ( .A(n825), .B(n878), .C(n813), .Y(branch) );
  OAI21X1 U399 ( .A(n833), .B(n44), .C(n834), .Y(n334) );
  XNOR2X1 U401 ( .A(z), .B(n45), .Y(n337) );
  AOI22X1 U402 ( .A(n338), .B(n45), .C(comp_op[0]), .D(n1), .Y(n335) );
  AOI22X1 U403 ( .A(n339), .B(n44), .C(n340), .D(comp_op[1]), .Y(n332) );
  XNOR2X1 U404 ( .A(c), .B(comp_op[0]), .Y(n340) );
  XNOR2X1 U405 ( .A(n45), .B(n338), .Y(n339) );
  XOR2X1 U406 ( .A(v), .B(n), .Y(n338) );
  OAI21X1 U407 ( .A(n100), .B(n876), .C(n798), .Y(\_1_net_[9] ) );
  AOI22X1 U408 ( .A(n858), .B(n9), .C(imm_s[9]), .D(n343), .Y(n341) );
  OAI21X1 U409 ( .A(imm_i[9]), .B(n868), .C(n345), .Y(n344) );
  OAI21X1 U410 ( .A(n101), .B(n876), .C(n804), .Y(\_1_net_[8] ) );
  AOI22X1 U411 ( .A(n858), .B(n10), .C(imm_s[8]), .D(n343), .Y(n346) );
  OAI21X1 U412 ( .A(imm_i[8]), .B(n868), .C(n348), .Y(n347) );
  OAI21X1 U413 ( .A(n102), .B(n876), .C(n810), .Y(\_1_net_[7] ) );
  AOI22X1 U414 ( .A(n858), .B(n11), .C(imm_s[7]), .D(n343), .Y(n349) );
  OAI21X1 U415 ( .A(imm_i[7]), .B(n868), .C(n351), .Y(n350) );
  OAI21X1 U416 ( .A(n103), .B(n876), .C(n352), .Y(\_1_net_[6] ) );
  AOI22X1 U417 ( .A(n858), .B(n12), .C(imm_s[6]), .D(n343), .Y(n352) );
  OAI21X1 U418 ( .A(imm_i[6]), .B(n868), .C(n354), .Y(n353) );
  OAI21X1 U419 ( .A(n104), .B(n876), .C(n824), .Y(\_1_net_[5] ) );
  AOI22X1 U420 ( .A(n858), .B(n13), .C(imm_s[5]), .D(n343), .Y(n355) );
  OAI21X1 U421 ( .A(imm_i[5]), .B(n868), .C(n357), .Y(n356) );
  OAI21X1 U422 ( .A(n105), .B(n875), .C(n841), .Y(\_1_net_[4] ) );
  AOI22X1 U423 ( .A(n858), .B(n14), .C(imm_s[4]), .D(n343), .Y(n358) );
  OAI21X1 U424 ( .A(imm_i[4]), .B(n868), .C(n360), .Y(n359) );
  OAI21X1 U425 ( .A(n106), .B(n875), .C(n817), .Y(\_1_net_[3] ) );
  AOI22X1 U426 ( .A(n858), .B(n15), .C(imm_s[3]), .D(n343), .Y(n361) );
  OAI21X1 U427 ( .A(imm_i[3]), .B(n868), .C(n363), .Y(n362) );
  OAI21X1 U428 ( .A(n857), .B(n875), .C(n364), .Y(\_1_net_[31] ) );
  AOI22X1 U429 ( .A(n858), .B(n16), .C(imm_s[31]), .D(n343), .Y(n364) );
  OAI21X1 U430 ( .A(imm_i[31]), .B(n868), .C(n366), .Y(n365) );
  OAI21X1 U431 ( .A(n79), .B(n875), .C(n367), .Y(\_1_net_[30] ) );
  AOI22X1 U432 ( .A(n858), .B(n17), .C(imm_s[30]), .D(n343), .Y(n367) );
  OAI21X1 U433 ( .A(imm_i[30]), .B(n868), .C(n369), .Y(n368) );
  OAI21X1 U434 ( .A(n107), .B(n875), .C(n370), .Y(\_1_net_[2] ) );
  AOI22X1 U435 ( .A(n858), .B(n18), .C(imm_s[2]), .D(n343), .Y(n370) );
  OAI21X1 U436 ( .A(imm_i[2]), .B(n868), .C(n372), .Y(n371) );
  OAI21X1 U437 ( .A(n80), .B(n875), .C(n831), .Y(\_1_net_[29] ) );
  AOI22X1 U438 ( .A(n858), .B(n19), .C(imm_s[29]), .D(n343), .Y(n373) );
  OAI21X1 U439 ( .A(imm_i[29]), .B(n868), .C(n375), .Y(n374) );
  OAI21X1 U440 ( .A(n81), .B(n875), .C(n376), .Y(\_1_net_[28] ) );
  AOI22X1 U441 ( .A(n858), .B(n20), .C(imm_s[28]), .D(n343), .Y(n376) );
  OAI21X1 U442 ( .A(imm_i[28]), .B(n868), .C(n378), .Y(n377) );
  OAI21X1 U443 ( .A(n82), .B(n875), .C(n379), .Y(\_1_net_[27] ) );
  AOI22X1 U444 ( .A(n858), .B(n21), .C(imm_s[27]), .D(n343), .Y(n379) );
  OAI21X1 U445 ( .A(imm_i[27]), .B(n869), .C(n381), .Y(n380) );
  OAI21X1 U446 ( .A(n83), .B(n875), .C(n382), .Y(\_1_net_[26] ) );
  AOI22X1 U447 ( .A(n858), .B(n22), .C(imm_s[26]), .D(n343), .Y(n382) );
  OAI21X1 U448 ( .A(imm_i[26]), .B(n869), .C(n384), .Y(n383) );
  OAI21X1 U449 ( .A(n84), .B(n875), .C(n385), .Y(\_1_net_[25] ) );
  AOI22X1 U450 ( .A(n858), .B(n23), .C(imm_s[25]), .D(n343), .Y(n385) );
  OAI21X1 U451 ( .A(imm_i[25]), .B(n869), .C(n387), .Y(n386) );
  OAI21X1 U452 ( .A(n85), .B(n874), .C(n388), .Y(\_1_net_[24] ) );
  AOI22X1 U453 ( .A(n858), .B(n24), .C(imm_s[24]), .D(n343), .Y(n388) );
  OAI21X1 U454 ( .A(imm_i[24]), .B(n869), .C(n390), .Y(n389) );
  OAI21X1 U455 ( .A(n86), .B(n874), .C(n391), .Y(\_1_net_[23] ) );
  AOI22X1 U456 ( .A(n858), .B(n25), .C(imm_s[23]), .D(n343), .Y(n391) );
  OAI21X1 U457 ( .A(imm_i[23]), .B(n869), .C(n393), .Y(n392) );
  OAI21X1 U458 ( .A(n87), .B(n874), .C(n394), .Y(\_1_net_[22] ) );
  AOI22X1 U459 ( .A(n858), .B(n26), .C(imm_s[22]), .D(n343), .Y(n394) );
  OAI21X1 U460 ( .A(imm_i[22]), .B(n869), .C(n396), .Y(n395) );
  OAI21X1 U461 ( .A(n88), .B(n874), .C(n397), .Y(\_1_net_[21] ) );
  AOI22X1 U462 ( .A(n858), .B(n27), .C(imm_s[21]), .D(n343), .Y(n397) );
  OAI21X1 U463 ( .A(imm_i[21]), .B(n869), .C(n399), .Y(n398) );
  OAI21X1 U464 ( .A(n89), .B(n874), .C(n400), .Y(\_1_net_[20] ) );
  AOI22X1 U465 ( .A(n858), .B(n28), .C(imm_s[20]), .D(n343), .Y(n400) );
  OAI21X1 U466 ( .A(imm_i[20]), .B(n869), .C(n402), .Y(n401) );
  OAI21X1 U467 ( .A(n108), .B(n874), .C(n403), .Y(\_1_net_[1] ) );
  AOI22X1 U468 ( .A(n858), .B(n29), .C(imm_s[1]), .D(n343), .Y(n403) );
  OAI21X1 U469 ( .A(imm_i[1]), .B(n869), .C(n405), .Y(n404) );
  OAI21X1 U470 ( .A(n90), .B(n874), .C(n832), .Y(\_1_net_[19] ) );
  AOI22X1 U471 ( .A(n858), .B(n30), .C(imm_s[19]), .D(n343), .Y(n406) );
  OAI21X1 U472 ( .A(imm_i[19]), .B(n869), .C(n408), .Y(n407) );
  OAI21X1 U473 ( .A(n91), .B(n874), .C(n409), .Y(\_1_net_[18] ) );
  AOI22X1 U474 ( .A(n858), .B(n31), .C(imm_s[18]), .D(n343), .Y(n409) );
  OAI21X1 U475 ( .A(imm_i[18]), .B(n869), .C(n411), .Y(n410) );
  OAI21X1 U476 ( .A(n92), .B(n874), .C(n816), .Y(\_1_net_[17] ) );
  AOI22X1 U477 ( .A(n858), .B(n32), .C(imm_s[17]), .D(n343), .Y(n412) );
  OAI21X1 U478 ( .A(imm_i[17]), .B(n869), .C(n414), .Y(n413) );
  OAI21X1 U479 ( .A(n93), .B(n874), .C(n823), .Y(\_1_net_[16] ) );
  AOI22X1 U480 ( .A(n858), .B(n33), .C(imm_s[16]), .D(n343), .Y(n415) );
  OAI21X1 U481 ( .A(imm_i[16]), .B(n867), .C(n417), .Y(n416) );
  OAI21X1 U482 ( .A(n94), .B(n874), .C(n418), .Y(\_1_net_[15] ) );
  AOI22X1 U483 ( .A(n858), .B(n34), .C(imm_s[15]), .D(n343), .Y(n418) );
  OAI21X1 U484 ( .A(imm_i[15]), .B(n867), .C(n420), .Y(n419) );
  OAI21X1 U485 ( .A(n877), .B(n876), .C(n803), .Y(\_1_net_[14] ) );
  AOI22X1 U486 ( .A(n858), .B(n35), .C(imm_s[14]), .D(n343), .Y(n421) );
  OAI21X1 U487 ( .A(imm_i[14]), .B(n867), .C(n423), .Y(n422) );
  OAI21X1 U488 ( .A(n96), .B(n876), .C(n424), .Y(\_1_net_[13] ) );
  AOI22X1 U489 ( .A(n858), .B(n36), .C(imm_s[13]), .D(n343), .Y(n424) );
  OAI21X1 U490 ( .A(imm_i[13]), .B(n867), .C(n426), .Y(n425) );
  OAI21X1 U491 ( .A(n97), .B(n876), .C(n840), .Y(\_1_net_[12] ) );
  AOI22X1 U492 ( .A(n858), .B(n37), .C(imm_s[12]), .D(n343), .Y(n427) );
  OAI21X1 U493 ( .A(imm_i[12]), .B(n867), .C(n429), .Y(n428) );
  OAI21X1 U494 ( .A(n98), .B(n876), .C(n430), .Y(\_1_net_[11] ) );
  AOI22X1 U495 ( .A(n858), .B(n38), .C(imm_s[11]), .D(n343), .Y(n430) );
  OAI21X1 U496 ( .A(imm_i[11]), .B(n867), .C(n432), .Y(n431) );
  OAI21X1 U497 ( .A(n99), .B(n876), .C(n433), .Y(\_1_net_[10] ) );
  AOI22X1 U498 ( .A(n858), .B(n39), .C(imm_s[10]), .D(n343), .Y(n433) );
  OAI21X1 U499 ( .A(imm_i[10]), .B(n867), .C(n435), .Y(n434) );
  OAI21X1 U500 ( .A(n109), .B(n875), .C(n809), .Y(\_1_net_[0] ) );
  AOI22X1 U501 ( .A(imm_s[0]), .B(n343), .C(n858), .D(n40), .Y(n436) );
  OAI21X1 U502 ( .A(imm_i[0]), .B(n867), .C(n438), .Y(n437) );
  OAI21X1 U504 ( .A(n870), .B(n68), .C(n439), .Y(\_0_net_[9] ) );
  NAND2X1 U505 ( .A(PC[9]), .B(n872), .Y(n439) );
  OAI21X1 U506 ( .A(n870), .B(n69), .C(n845), .Y(\_0_net_[8] ) );
  OAI21X1 U508 ( .A(n870), .B(n70), .C(n830), .Y(\_0_net_[7] ) );
  OAI21X1 U510 ( .A(n870), .B(n71), .C(n442), .Y(\_0_net_[6] ) );
  NAND2X1 U511 ( .A(PC[6]), .B(is_auipc), .Y(n442) );
  OAI21X1 U512 ( .A(n870), .B(n72), .C(n797), .Y(\_0_net_[5] ) );
  OAI21X1 U514 ( .A(n870), .B(n73), .C(n808), .Y(\_0_net_[4] ) );
  OAI21X1 U516 ( .A(n870), .B(n74), .C(n822), .Y(\_0_net_[3] ) );
  OAI21X1 U518 ( .A(n870), .B(n46), .C(n839), .Y(\_0_net_[31] ) );
  OAI21X1 U520 ( .A(n871), .B(n47), .C(n447), .Y(\_0_net_[30] ) );
  NAND2X1 U521 ( .A(PC[30]), .B(is_auipc), .Y(n447) );
  OAI21X1 U522 ( .A(n871), .B(n75), .C(n814), .Y(\_0_net_[2] ) );
  OAI21X1 U524 ( .A(n871), .B(n48), .C(n801), .Y(\_0_net_[29] ) );
  OAI21X1 U526 ( .A(n871), .B(n49), .C(n450), .Y(\_0_net_[28] ) );
  NAND2X1 U527 ( .A(PC[28]), .B(n873), .Y(n450) );
  OAI21X1 U528 ( .A(n871), .B(n50), .C(n451), .Y(\_0_net_[27] ) );
  NAND2X1 U529 ( .A(PC[27]), .B(n873), .Y(n451) );
  OAI21X1 U530 ( .A(n871), .B(n51), .C(n452), .Y(\_0_net_[26] ) );
  NAND2X1 U531 ( .A(PC[26]), .B(n873), .Y(n452) );
  OAI21X1 U532 ( .A(n871), .B(n52), .C(n453), .Y(\_0_net_[25] ) );
  NAND2X1 U533 ( .A(PC[25]), .B(n873), .Y(n453) );
  OAI21X1 U534 ( .A(n871), .B(n53), .C(n454), .Y(\_0_net_[24] ) );
  NAND2X1 U535 ( .A(PC[24]), .B(n873), .Y(n454) );
  OAI21X1 U536 ( .A(n872), .B(n54), .C(n455), .Y(\_0_net_[23] ) );
  NAND2X1 U537 ( .A(PC[23]), .B(n873), .Y(n455) );
  OAI21X1 U538 ( .A(n872), .B(n55), .C(n456), .Y(\_0_net_[22] ) );
  NAND2X1 U539 ( .A(PC[22]), .B(n873), .Y(n456) );
  OAI21X1 U540 ( .A(n871), .B(n56), .C(n457), .Y(\_0_net_[21] ) );
  NAND2X1 U541 ( .A(PC[21]), .B(n873), .Y(n457) );
  OAI21X1 U542 ( .A(n872), .B(n57), .C(n458), .Y(\_0_net_[20] ) );
  NAND2X1 U543 ( .A(PC[20]), .B(n873), .Y(n458) );
  OAI21X1 U544 ( .A(n872), .B(n76), .C(n838), .Y(\_0_net_[1] ) );
  OAI21X1 U546 ( .A(n872), .B(n58), .C(n460), .Y(\_0_net_[19] ) );
  NAND2X1 U547 ( .A(PC[19]), .B(n873), .Y(n460) );
  OAI21X1 U548 ( .A(n872), .B(n59), .C(n461), .Y(\_0_net_[18] ) );
  NAND2X1 U549 ( .A(PC[18]), .B(n873), .Y(n461) );
  OAI21X1 U550 ( .A(n872), .B(n60), .C(n796), .Y(\_0_net_[17] ) );
  OAI21X1 U552 ( .A(n872), .B(n61), .C(n807), .Y(\_0_net_[16] ) );
  OAI21X1 U554 ( .A(n871), .B(n62), .C(n821), .Y(\_0_net_[15] ) );
  OAI21X1 U556 ( .A(n871), .B(n63), .C(n846), .Y(\_0_net_[14] ) );
  OAI21X1 U558 ( .A(n871), .B(n64), .C(n829), .Y(\_0_net_[13] ) );
  OAI21X1 U560 ( .A(n870), .B(n65), .C(n467), .Y(\_0_net_[12] ) );
  NAND2X1 U561 ( .A(PC[12]), .B(n872), .Y(n467) );
  OAI21X1 U562 ( .A(n870), .B(n66), .C(n815), .Y(\_0_net_[11] ) );
  OAI21X1 U564 ( .A(n870), .B(n67), .C(n469), .Y(\_0_net_[10] ) );
  NAND2X1 U565 ( .A(PC[10]), .B(n872), .Y(n469) );
  OAI21X1 U566 ( .A(n870), .B(n77), .C(n802), .Y(\_0_net_[0] ) );
  OR2X1 U1 ( .A(n854), .B(n855), .Y(n303) );
  OR2X1 U2 ( .A(n757), .B(n714), .Y(n707) );
  OR2X1 U3 ( .A(n759), .B(n715), .Y(n708) );
  OR2X1 U4 ( .A(n755), .B(n713), .Y(n709) );
  OR2X1 U5 ( .A(n756), .B(n709), .Y(rd_data[7]) );
  OR2X1 U6 ( .A(n758), .B(n707), .Y(rd_data[8]) );
  OR2X1 U7 ( .A(n760), .B(n708), .Y(rd_data[9]) );
  AND2X2 U8 ( .A(shifter_out[7]), .B(n4), .Y(n713) );
  AND2X1 U9 ( .A(shifter_out[8]), .B(n4), .Y(n714) );
  AND2X1 U10 ( .A(shifter_out[9]), .B(n4), .Y(n715) );
  AND2X1 U11 ( .A(n7), .B(n6), .Y(n301) );
  INVX1 U12 ( .A(n301), .Y(n716) );
  OR2X1 U13 ( .A(n860), .B(n37), .Y(n283) );
  INVX1 U14 ( .A(n283), .Y(n717) );
  OR2X1 U15 ( .A(n862), .B(n23), .Y(n199) );
  INVX1 U16 ( .A(n199), .Y(n718) );
  OR2X1 U17 ( .A(n862), .B(n22), .Y(n193) );
  INVX1 U18 ( .A(n193), .Y(n719) );
  OR2X1 U19 ( .A(n862), .B(n21), .Y(n187) );
  INVX1 U20 ( .A(n187), .Y(n720) );
  OR2X1 U21 ( .A(n862), .B(n20), .Y(n181) );
  INVX1 U22 ( .A(n181), .Y(n721) );
  OR2X1 U23 ( .A(n862), .B(n19), .Y(n175) );
  INVX1 U24 ( .A(n175), .Y(n722) );
  OR2X1 U25 ( .A(n862), .B(n17), .Y(n163) );
  INVX1 U26 ( .A(n163), .Y(n723) );
  OR2X1 U27 ( .A(n862), .B(n16), .Y(n157) );
  INVX1 U28 ( .A(n157), .Y(n724) );
  BUFX2 U29 ( .A(n302), .Y(n725) );
  AND2X2 U30 ( .A(shifter_out[0]), .B(n4), .Y(n299) );
  INVX1 U31 ( .A(n299), .Y(n726) );
  AND2X1 U32 ( .A(shifter_out[10]), .B(n4), .Y(n293) );
  INVX1 U33 ( .A(n293), .Y(n727) );
  AND2X1 U34 ( .A(shifter_out[11]), .B(n4), .Y(n287) );
  INVX1 U35 ( .A(n287), .Y(n728) );
  AND2X2 U36 ( .A(shifter_out[12]), .B(n4), .Y(n281) );
  INVX1 U37 ( .A(n281), .Y(n729) );
  AND2X2 U38 ( .A(shifter_out[13]), .B(n4), .Y(n275) );
  INVX1 U39 ( .A(n275), .Y(n730) );
  AND2X2 U40 ( .A(shifter_out[14]), .B(n4), .Y(n269) );
  INVX1 U41 ( .A(n269), .Y(n731) );
  AND2X2 U42 ( .A(shifter_out[15]), .B(n4), .Y(n263) );
  INVX1 U43 ( .A(n263), .Y(n732) );
  AND2X2 U44 ( .A(shifter_out[16]), .B(n4), .Y(n257) );
  INVX1 U45 ( .A(n257), .Y(n733) );
  AND2X2 U46 ( .A(shifter_out[17]), .B(n4), .Y(n251) );
  INVX1 U47 ( .A(n251), .Y(n734) );
  AND2X2 U48 ( .A(shifter_out[18]), .B(n4), .Y(n245) );
  INVX1 U49 ( .A(n245), .Y(n735) );
  AND2X2 U50 ( .A(shifter_out[19]), .B(n4), .Y(n239) );
  INVX1 U51 ( .A(n239), .Y(n736) );
  AND2X2 U52 ( .A(shifter_out[1]), .B(n4), .Y(n233) );
  INVX1 U53 ( .A(n233), .Y(n737) );
  AND2X1 U54 ( .A(shifter_out[20]), .B(n4), .Y(n227) );
  INVX1 U55 ( .A(n227), .Y(n738) );
  AND2X1 U56 ( .A(shifter_out[21]), .B(n4), .Y(n221) );
  INVX1 U57 ( .A(n221), .Y(n739) );
  AND2X1 U58 ( .A(shifter_out[22]), .B(n4), .Y(n215) );
  INVX1 U59 ( .A(n215), .Y(n740) );
  AND2X1 U60 ( .A(shifter_out[23]), .B(n4), .Y(n209) );
  INVX1 U61 ( .A(n209), .Y(n741) );
  AND2X2 U62 ( .A(shifter_out[24]), .B(n4), .Y(n203) );
  INVX1 U63 ( .A(n203), .Y(n742) );
  AND2X2 U64 ( .A(shifter_out[25]), .B(n4), .Y(n197) );
  INVX1 U65 ( .A(n197), .Y(n743) );
  AND2X2 U66 ( .A(shifter_out[26]), .B(n4), .Y(n191) );
  INVX1 U67 ( .A(n191), .Y(n744) );
  AND2X2 U68 ( .A(shifter_out[27]), .B(n4), .Y(n185) );
  INVX1 U69 ( .A(n185), .Y(n745) );
  AND2X2 U70 ( .A(shifter_out[28]), .B(n4), .Y(n179) );
  INVX1 U71 ( .A(n179), .Y(n746) );
  AND2X2 U72 ( .A(shifter_out[29]), .B(n4), .Y(n173) );
  INVX1 U73 ( .A(n173), .Y(n747) );
  AND2X2 U74 ( .A(shifter_out[2]), .B(n4), .Y(n167) );
  INVX1 U75 ( .A(n167), .Y(n748) );
  AND2X2 U76 ( .A(shifter_out[30]), .B(n4), .Y(n161) );
  INVX1 U77 ( .A(n161), .Y(n749) );
  AND2X2 U78 ( .A(shifter_out[31]), .B(n4), .Y(n155) );
  INVX1 U79 ( .A(n155), .Y(n750) );
  AND2X2 U80 ( .A(shifter_out[3]), .B(n4), .Y(n149) );
  INVX1 U81 ( .A(n149), .Y(n751) );
  AND2X2 U82 ( .A(shifter_out[4]), .B(n4), .Y(n143) );
  INVX1 U83 ( .A(n143), .Y(n752) );
  AND2X2 U84 ( .A(shifter_out[5]), .B(n4), .Y(n137) );
  INVX1 U85 ( .A(n137), .Y(n753) );
  AND2X2 U86 ( .A(shifter_out[6]), .B(n4), .Y(n131) );
  INVX1 U87 ( .A(n131), .Y(n754) );
  INVX1 U88 ( .A(n790), .Y(n755) );
  INVX1 U89 ( .A(n124), .Y(n756) );
  INVX1 U90 ( .A(n791), .Y(n757) );
  INVX1 U91 ( .A(n118), .Y(n758) );
  INVX1 U92 ( .A(n792), .Y(n759) );
  INVX1 U93 ( .A(n110), .Y(n760) );
  BUFX2 U94 ( .A(n300), .Y(n761) );
  BUFX2 U95 ( .A(n294), .Y(n762) );
  BUFX2 U96 ( .A(n288), .Y(n763) );
  BUFX2 U97 ( .A(n282), .Y(n764) );
  BUFX2 U98 ( .A(n276), .Y(n765) );
  BUFX2 U99 ( .A(n270), .Y(n766) );
  BUFX2 U100 ( .A(n264), .Y(n767) );
  BUFX2 U101 ( .A(n258), .Y(n768) );
  BUFX2 U102 ( .A(n252), .Y(n769) );
  BUFX2 U103 ( .A(n246), .Y(n770) );
  BUFX2 U104 ( .A(n240), .Y(n771) );
  BUFX2 U105 ( .A(n234), .Y(n772) );
  BUFX2 U106 ( .A(n228), .Y(n773) );
  BUFX2 U107 ( .A(n222), .Y(n774) );
  BUFX2 U108 ( .A(n216), .Y(n775) );
  BUFX2 U109 ( .A(n210), .Y(n776) );
  BUFX2 U110 ( .A(n204), .Y(n777) );
  BUFX2 U111 ( .A(n198), .Y(n778) );
  BUFX2 U112 ( .A(n192), .Y(n779) );
  BUFX2 U113 ( .A(n186), .Y(n780) );
  BUFX2 U114 ( .A(n180), .Y(n781) );
  BUFX2 U115 ( .A(n174), .Y(n782) );
  BUFX2 U116 ( .A(n168), .Y(n783) );
  BUFX2 U117 ( .A(n162), .Y(n784) );
  BUFX2 U118 ( .A(n156), .Y(n785) );
  BUFX2 U119 ( .A(n150), .Y(n786) );
  BUFX2 U120 ( .A(n144), .Y(n787) );
  BUFX2 U121 ( .A(n138), .Y(n788) );
  BUFX2 U122 ( .A(n132), .Y(n789) );
  BUFX2 U123 ( .A(n126), .Y(n790) );
  BUFX2 U124 ( .A(n120), .Y(n791) );
  BUFX2 U125 ( .A(n112), .Y(n792) );
  OR2X1 U126 ( .A(n8), .B(n7), .Y(n312) );
  INVX1 U127 ( .A(n312), .Y(n793) );
  OR2X1 U128 ( .A(n6), .B(n8), .Y(n307) );
  INVX1 U129 ( .A(n307), .Y(n794) );
  OR2X1 U130 ( .A(n6), .B(n7), .Y(n305) );
  INVX1 U131 ( .A(n305), .Y(n795) );
  AND2X1 U132 ( .A(PC[17]), .B(n873), .Y(n462) );
  INVX1 U133 ( .A(n462), .Y(n796) );
  AND2X1 U134 ( .A(PC[5]), .B(is_auipc), .Y(n443) );
  INVX1 U135 ( .A(n443), .Y(n797) );
  BUFX2 U136 ( .A(n341), .Y(n798) );
  OR2X1 U137 ( .A(n862), .B(n25), .Y(n211) );
  INVX1 U138 ( .A(n211), .Y(n799) );
  OR2X1 U139 ( .A(n859), .B(n38), .Y(n289) );
  INVX1 U140 ( .A(n289), .Y(n800) );
  AND2X1 U141 ( .A(PC[29]), .B(is_auipc), .Y(n449) );
  INVX1 U142 ( .A(n449), .Y(n801) );
  AND2X1 U143 ( .A(PC[0]), .B(n873), .Y(n470) );
  INVX1 U144 ( .A(n470), .Y(n802) );
  BUFX2 U145 ( .A(n421), .Y(n803) );
  BUFX2 U146 ( .A(n346), .Y(n804) );
  OR2X1 U147 ( .A(n862), .B(n28), .Y(n229) );
  INVX1 U148 ( .A(n229), .Y(n805) );
  OR2X1 U149 ( .A(n860), .B(n39), .Y(n295) );
  INVX1 U150 ( .A(n295), .Y(n806) );
  AND2X1 U151 ( .A(PC[16]), .B(n873), .Y(n463) );
  INVX1 U153 ( .A(n463), .Y(n807) );
  AND2X1 U157 ( .A(PC[4]), .B(is_auipc), .Y(n444) );
  INVX1 U158 ( .A(n444), .Y(n808) );
  BUFX2 U160 ( .A(n436), .Y(n809) );
  BUFX2 U164 ( .A(n349), .Y(n810) );
  OR2X1 U165 ( .A(n862), .B(n31), .Y(n247) );
  INVX1 U167 ( .A(n247), .Y(n811) );
  OR2X1 U171 ( .A(n859), .B(n9), .Y(n114) );
  INVX1 U174 ( .A(n114), .Y(n812) );
  AND2X1 U178 ( .A(n334), .B(n878), .Y(n333) );
  INVX1 U181 ( .A(n333), .Y(n813) );
  AND2X1 U185 ( .A(PC[2]), .B(is_auipc), .Y(n448) );
  INVX1 U188 ( .A(n448), .Y(n814) );
  AND2X1 U192 ( .A(PC[11]), .B(n873), .Y(n468) );
  INVX1 U195 ( .A(n468), .Y(n815) );
  BUFX2 U199 ( .A(n412), .Y(n816) );
  BUFX2 U202 ( .A(n361), .Y(n817) );
  OR2X1 U206 ( .A(n861), .B(n24), .Y(n205) );
  INVX1 U209 ( .A(n205), .Y(n818) );
  OR2X1 U213 ( .A(n862), .B(n33), .Y(n259) );
  INVX1 U216 ( .A(n259), .Y(n819) );
  OR2X1 U220 ( .A(n861), .B(n10), .Y(n121) );
  INVX1 U223 ( .A(n121), .Y(n820) );
  AND2X1 U227 ( .A(PC[15]), .B(n872), .Y(n464) );
  INVX1 U230 ( .A(n464), .Y(n821) );
  AND2X1 U234 ( .A(PC[3]), .B(is_auipc), .Y(n445) );
  INVX1 U237 ( .A(n445), .Y(n822) );
  BUFX2 U241 ( .A(n415), .Y(n823) );
  BUFX2 U244 ( .A(n355), .Y(n824) );
  BUFX2 U248 ( .A(n332), .Y(n825) );
  OR2X1 U251 ( .A(n861), .B(n26), .Y(n217) );
  INVX1 U255 ( .A(n217), .Y(n826) );
  OR2X1 U258 ( .A(n862), .B(n34), .Y(n265) );
  INVX1 U262 ( .A(n265), .Y(n827) );
  OR2X1 U265 ( .A(n860), .B(n40), .Y(n308) );
  INVX1 U269 ( .A(n308), .Y(n828) );
  AND2X1 U272 ( .A(PC[13]), .B(n872), .Y(n466) );
  INVX1 U276 ( .A(n466), .Y(n829) );
  AND2X1 U279 ( .A(PC[7]), .B(is_auipc), .Y(n441) );
  INVX1 U283 ( .A(n441), .Y(n830) );
  BUFX2 U286 ( .A(n373), .Y(n831) );
  BUFX2 U290 ( .A(n406), .Y(n832) );
  BUFX2 U293 ( .A(n335), .Y(n833) );
  AND2X1 U297 ( .A(n337), .B(n44), .Y(n336) );
  INVX1 U300 ( .A(n336), .Y(n834) );
  OR2X1 U304 ( .A(n861), .B(n27), .Y(n223) );
  INVX1 U307 ( .A(n223), .Y(n835) );
  OR2X1 U311 ( .A(n862), .B(n35), .Y(n271) );
  INVX1 U314 ( .A(n271), .Y(n836) );
  OR2X1 U318 ( .A(n859), .B(n11), .Y(n127) );
  INVX1 U321 ( .A(n127), .Y(n837) );
  AND2X1 U325 ( .A(PC[1]), .B(n873), .Y(n459) );
  INVX1 U328 ( .A(n459), .Y(n838) );
  AND2X1 U332 ( .A(PC[31]), .B(is_auipc), .Y(n446) );
  INVX1 U335 ( .A(n446), .Y(n839) );
  BUFX2 U339 ( .A(n427), .Y(n840) );
  BUFX2 U342 ( .A(n358), .Y(n841) );
  OR2X1 U346 ( .A(n861), .B(n30), .Y(n241) );
  INVX1 U349 ( .A(n241), .Y(n842) );
  OR2X1 U353 ( .A(n862), .B(n36), .Y(n277) );
  INVX1 U356 ( .A(n277), .Y(n843) );
  OR2X1 U360 ( .A(n861), .B(n12), .Y(n133) );
  INVX1 U363 ( .A(n133), .Y(n844) );
  AND2X1 U367 ( .A(PC[8]), .B(is_auipc), .Y(n440) );
  INVX1 U372 ( .A(n440), .Y(n845) );
  AND2X1 U374 ( .A(PC[14]), .B(n873), .Y(n465) );
  INVX1 U375 ( .A(n465), .Y(n846) );
  OR2X1 U377 ( .A(n861), .B(n32), .Y(n253) );
  INVX1 U382 ( .A(n253), .Y(n847) );
  OR2X1 U384 ( .A(n862), .B(n13), .Y(n139) );
  INVX1 U386 ( .A(n139), .Y(n848) );
  OR2X1 U398 ( .A(n862), .B(n15), .Y(n151) );
  INVX1 U400 ( .A(n151), .Y(n849) );
  OR2X1 U503 ( .A(n861), .B(n29), .Y(n235) );
  INVX1 U507 ( .A(n235), .Y(n850) );
  OR2X1 U509 ( .A(n860), .B(n14), .Y(n145) );
  INVX1 U513 ( .A(n145), .Y(n851) );
  OR2X1 U515 ( .A(n862), .B(n18), .Y(n169) );
  INVX1 U517 ( .A(n169), .Y(n852) );
  INVX1 U519 ( .A(n303), .Y(n853) );
  BUFX2 U523 ( .A(n315), .Y(n854) );
  BUFX2 U525 ( .A(n316), .Y(n855) );
  INVX1 U545 ( .A(n876), .Y(n873) );
  INVX1 U551 ( .A(n874), .Y(n872) );
  INVX1 U553 ( .A(n863), .Y(n861) );
  INVX1 U555 ( .A(n863), .Y(n862) );
  INVX1 U557 ( .A(n875), .Y(n870) );
  INVX1 U559 ( .A(n874), .Y(n871) );
  INVX1 U563 ( .A(n863), .Y(n860) );
  INVX1 U567 ( .A(n863), .Y(n859) );
  INVX1 U568 ( .A(imm_u[31]), .Y(n857) );
  INVX1 U569 ( .A(n856), .Y(n858) );
  INVX1 U570 ( .A(n867), .Y(n866) );
  INVX1 U571 ( .A(n865), .Y(n864) );
  INVX1 U572 ( .A(is_auipc), .Y(n874) );
  INVX1 U573 ( .A(is_imm), .Y(n869) );
  INVX1 U574 ( .A(is_imm), .Y(n868) );
  INVX1 U575 ( .A(is_auipc), .Y(n875) );
  INVX1 U576 ( .A(is_auipc), .Y(n876) );
  INVX1 U577 ( .A(n113), .Y(n865) );
  INVX1 U578 ( .A(alu_op[2]), .Y(n6) );
  INVX1 U579 ( .A(alu_op[1]), .Y(n7) );
  OR2X1 U580 ( .A(is_store_op), .B(n872), .Y(n856) );
  INVX1 U581 ( .A(alu_op[0]), .Y(n8) );
  INVX1 U582 ( .A(is_imm), .Y(n867) );
  AND2X1 U583 ( .A(is_store_op), .B(n876), .Y(n343) );
  INVX1 U584 ( .A(n304), .Y(n5) );
  INVX1 U585 ( .A(n311), .Y(n3) );
  INVX1 U586 ( .A(n306), .Y(n4) );
  INVX1 U587 ( .A(n313), .Y(n2) );
  AND2X1 U588 ( .A(n7), .B(n8), .Y(n314) );
  INVX1 U589 ( .A(n116), .Y(n863) );
  INVX1 U590 ( .A(imm_u[14]), .Y(n877) );
  INVX1 U591 ( .A(comp_op[2]), .Y(n878) );
  INVX1 U592 ( .A(rs1_data[0]), .Y(n77) );
  INVX1 U593 ( .A(c), .Y(n1) );
  INVX1 U594 ( .A(rs1_data[1]), .Y(n76) );
  INVX1 U595 ( .A(rs1_data[2]), .Y(n75) );
  INVX1 U596 ( .A(rs1_data[3]), .Y(n74) );
  INVX1 U597 ( .A(rs1_data[4]), .Y(n73) );
  INVX1 U598 ( .A(rs1_data[5]), .Y(n72) );
  INVX1 U599 ( .A(rs1_data[6]), .Y(n71) );
  INVX1 U600 ( .A(rs1_data[7]), .Y(n70) );
  INVX1 U601 ( .A(rs1_data[8]), .Y(n69) );
  INVX1 U602 ( .A(rs1_data[9]), .Y(n68) );
  INVX1 U603 ( .A(rs1_data[10]), .Y(n67) );
  INVX1 U604 ( .A(rs1_data[11]), .Y(n66) );
  INVX1 U605 ( .A(rs1_data[12]), .Y(n65) );
  INVX1 U606 ( .A(rs1_data[13]), .Y(n64) );
  INVX1 U607 ( .A(rs1_data[14]), .Y(n63) );
  INVX1 U608 ( .A(rs1_data[15]), .Y(n62) );
  INVX1 U609 ( .A(rs1_data[16]), .Y(n61) );
  INVX1 U610 ( .A(rs1_data[17]), .Y(n60) );
  INVX1 U611 ( .A(rs1_data[18]), .Y(n59) );
  INVX1 U612 ( .A(rs1_data[19]), .Y(n58) );
  INVX1 U613 ( .A(rs1_data[20]), .Y(n57) );
  INVX1 U614 ( .A(rs1_data[21]), .Y(n56) );
  INVX1 U615 ( .A(rs1_data[22]), .Y(n55) );
  INVX1 U616 ( .A(rs1_data[23]), .Y(n54) );
  INVX1 U617 ( .A(rs1_data[24]), .Y(n53) );
  INVX1 U618 ( .A(rs1_data[25]), .Y(n52) );
  INVX1 U619 ( .A(rs1_data[26]), .Y(n51) );
  INVX1 U620 ( .A(rs1_data[27]), .Y(n50) );
  INVX1 U621 ( .A(rs1_data[28]), .Y(n49) );
  INVX1 U622 ( .A(rs1_data[29]), .Y(n48) );
  INVX1 U623 ( .A(rs1_data[30]), .Y(n47) );
  INVX1 U624 ( .A(rs1_data[31]), .Y(n46) );
  INVX1 U625 ( .A(imm_u[0]), .Y(n109) );
  INVX1 U626 ( .A(imm_u[1]), .Y(n108) );
  INVX1 U627 ( .A(imm_u[4]), .Y(n105) );
  INVX1 U628 ( .A(imm_u[2]), .Y(n107) );
  INVX1 U629 ( .A(imm_u[5]), .Y(n104) );
  INVX1 U630 ( .A(imm_u[3]), .Y(n106) );
  INVX1 U631 ( .A(imm_u[6]), .Y(n103) );
  INVX1 U632 ( .A(imm_u[7]), .Y(n102) );
  INVX1 U633 ( .A(imm_u[8]), .Y(n101) );
  INVX1 U634 ( .A(imm_u[9]), .Y(n100) );
  INVX1 U635 ( .A(imm_u[10]), .Y(n99) );
  INVX1 U636 ( .A(imm_u[11]), .Y(n98) );
  INVX1 U637 ( .A(imm_u[12]), .Y(n97) );
  INVX1 U638 ( .A(imm_u[13]), .Y(n96) );
  INVX1 U639 ( .A(imm_u[15]), .Y(n94) );
  INVX1 U640 ( .A(imm_u[16]), .Y(n93) );
  INVX1 U641 ( .A(imm_u[17]), .Y(n92) );
  INVX1 U642 ( .A(imm_u[18]), .Y(n91) );
  INVX1 U643 ( .A(imm_u[19]), .Y(n90) );
  INVX1 U644 ( .A(imm_u[20]), .Y(n89) );
  INVX1 U645 ( .A(imm_u[21]), .Y(n88) );
  INVX1 U646 ( .A(imm_u[22]), .Y(n87) );
  INVX1 U647 ( .A(imm_u[23]), .Y(n86) );
  INVX1 U648 ( .A(imm_u[24]), .Y(n85) );
  INVX1 U649 ( .A(imm_u[25]), .Y(n84) );
  INVX1 U650 ( .A(imm_u[26]), .Y(n83) );
  INVX1 U651 ( .A(imm_u[27]), .Y(n82) );
  INVX1 U652 ( .A(imm_u[28]), .Y(n81) );
  INVX1 U653 ( .A(imm_u[29]), .Y(n80) );
  INVX1 U654 ( .A(imm_u[30]), .Y(n79) );
  OR2X1 U655 ( .A(alu_op[16]), .B(alu_op[15]), .Y(n323) );
  OR2X1 U656 ( .A(alu_op[30]), .B(alu_op[29]), .Y(n331) );
  INVX1 U657 ( .A(n437), .Y(n40) );
  OR2X1 U658 ( .A(rs2_data[0]), .B(is_imm), .Y(n438) );
  INVX1 U659 ( .A(n404), .Y(n29) );
  OR2X1 U660 ( .A(rs2_data[1]), .B(n866), .Y(n405) );
  INVX1 U661 ( .A(n371), .Y(n18) );
  OR2X1 U662 ( .A(rs2_data[2]), .B(is_imm), .Y(n372) );
  INVX1 U663 ( .A(n362), .Y(n15) );
  OR2X1 U664 ( .A(rs2_data[3]), .B(is_imm), .Y(n363) );
  INVX1 U665 ( .A(n359), .Y(n14) );
  OR2X1 U666 ( .A(rs2_data[4]), .B(n866), .Y(n360) );
  INVX1 U667 ( .A(n356), .Y(n13) );
  OR2X1 U668 ( .A(rs2_data[5]), .B(is_imm), .Y(n357) );
  INVX1 U669 ( .A(n353), .Y(n12) );
  OR2X1 U670 ( .A(rs2_data[6]), .B(is_imm), .Y(n354) );
  INVX1 U671 ( .A(n350), .Y(n11) );
  OR2X1 U672 ( .A(rs2_data[7]), .B(is_imm), .Y(n351) );
  INVX1 U673 ( .A(n347), .Y(n10) );
  OR2X1 U674 ( .A(rs2_data[8]), .B(is_imm), .Y(n348) );
  INVX1 U675 ( .A(n344), .Y(n9) );
  OR2X1 U676 ( .A(rs2_data[9]), .B(is_imm), .Y(n345) );
  INVX1 U677 ( .A(n434), .Y(n39) );
  OR2X1 U678 ( .A(rs2_data[10]), .B(n866), .Y(n435) );
  INVX1 U679 ( .A(n431), .Y(n38) );
  OR2X1 U680 ( .A(rs2_data[11]), .B(n866), .Y(n432) );
  INVX1 U681 ( .A(n428), .Y(n37) );
  OR2X1 U682 ( .A(rs2_data[12]), .B(n866), .Y(n429) );
  INVX1 U683 ( .A(n425), .Y(n36) );
  OR2X1 U684 ( .A(rs2_data[13]), .B(n866), .Y(n426) );
  INVX1 U685 ( .A(n422), .Y(n35) );
  OR2X1 U686 ( .A(rs2_data[14]), .B(n866), .Y(n423) );
  INVX1 U687 ( .A(n419), .Y(n34) );
  OR2X1 U688 ( .A(rs2_data[15]), .B(n866), .Y(n420) );
  INVX1 U689 ( .A(n416), .Y(n33) );
  OR2X1 U690 ( .A(rs2_data[16]), .B(n866), .Y(n417) );
  INVX1 U691 ( .A(n413), .Y(n32) );
  OR2X1 U692 ( .A(rs2_data[17]), .B(n866), .Y(n414) );
  INVX1 U693 ( .A(n410), .Y(n31) );
  OR2X1 U694 ( .A(rs2_data[18]), .B(n866), .Y(n411) );
  INVX1 U695 ( .A(n407), .Y(n30) );
  OR2X1 U696 ( .A(rs2_data[19]), .B(n866), .Y(n408) );
  INVX1 U697 ( .A(n401), .Y(n28) );
  OR2X1 U698 ( .A(rs2_data[20]), .B(n866), .Y(n402) );
  INVX1 U699 ( .A(n398), .Y(n27) );
  OR2X1 U700 ( .A(rs2_data[21]), .B(n866), .Y(n399) );
  INVX1 U701 ( .A(n395), .Y(n26) );
  OR2X1 U702 ( .A(rs2_data[22]), .B(is_imm), .Y(n396) );
  INVX1 U703 ( .A(n392), .Y(n25) );
  OR2X1 U704 ( .A(rs2_data[23]), .B(n866), .Y(n393) );
  INVX1 U705 ( .A(n389), .Y(n24) );
  OR2X1 U706 ( .A(rs2_data[24]), .B(is_imm), .Y(n390) );
  INVX1 U707 ( .A(n386), .Y(n23) );
  OR2X1 U708 ( .A(rs2_data[25]), .B(n866), .Y(n387) );
  INVX1 U709 ( .A(n383), .Y(n22) );
  OR2X1 U710 ( .A(rs2_data[26]), .B(is_imm), .Y(n384) );
  INVX1 U711 ( .A(n380), .Y(n21) );
  OR2X1 U712 ( .A(rs2_data[27]), .B(n866), .Y(n381) );
  INVX1 U713 ( .A(n377), .Y(n20) );
  OR2X1 U714 ( .A(rs2_data[28]), .B(is_imm), .Y(n378) );
  INVX1 U715 ( .A(n374), .Y(n19) );
  OR2X1 U716 ( .A(rs2_data[29]), .B(n866), .Y(n375) );
  INVX1 U717 ( .A(n368), .Y(n17) );
  OR2X1 U718 ( .A(rs2_data[30]), .B(is_imm), .Y(n369) );
  INVX1 U719 ( .A(n365), .Y(n16) );
  OR2X1 U720 ( .A(rs2_data[31]), .B(n866), .Y(n366) );
  INVX1 U721 ( .A(comp_op[0]), .Y(n45) );
  AND2X1 U722 ( .A(n320), .B(n321), .Y(n319) );
  OR2X1 U723 ( .A(alu_op[23]), .B(alu_op[22]), .Y(n322) );
  AND2X1 U724 ( .A(n327), .B(n328), .Y(n326) );
  OR2X1 U725 ( .A(alu_op[5]), .B(alu_op[4]), .Y(n330) );
  INVX1 U726 ( .A(comp_op[1]), .Y(n44) );
  OR2X1 U727 ( .A(alu_op[9]), .B(alu_op[8]), .Y(n329) );
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
  wire   n70, \d_rd_data[7] , \d_rd_data[6] , \d_rd_data[5] , \d_rd_data[4] ,
         \d_rd_data[3] , \d_rd_data[2] , \d_rd_data[1] , \d_rd_data[0] , we,
         N23, n1, n4, n5, n6, \d_we[3] , n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n101;
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

  DFFSR ld_valid_reg ( .D(N23), .CLK(clk), .R(n6), .S(1'b1), .Q(n70) );
  DFFPOSX1 \ld_rd_reg[4]  ( .D(rd[4]), .CLK(clk), .Q(ld_rd[4]) );
  DFFPOSX1 \ld_rd_reg[3]  ( .D(rd[3]), .CLK(clk), .Q(ld_rd[3]) );
  DFFPOSX1 \ld_rd_reg[2]  ( .D(rd[2]), .CLK(clk), .Q(ld_rd[2]) );
  DFFPOSX1 \ld_rd_reg[1]  ( .D(rd[1]), .CLK(clk), .Q(ld_rd[1]) );
  DFFPOSX1 \ld_rd_reg[0]  ( .D(rd[0]), .CLK(clk), .Q(ld_rd[0]) );
  DFFPOSX1 \load_op_v_reg[2]  ( .D(load_op[2]), .CLK(clk), .Q(load_op_v[2]) );
  DFFPOSX1 \load_op_v_reg[1]  ( .D(load_op[1]), .CLK(clk), .Q(load_op_v[1]) );
  DFFPOSX1 \load_op_v_reg[0]  ( .D(load_op[0]), .CLK(clk), .Q(load_op_v[0]) );
  NAND2X1 U14 ( .A(n99), .B(n95), .Y(ld_rd_data[16]) );
  NAND2X1 U16 ( .A(n99), .B(n94), .Y(ld_rd_data[17]) );
  NAND2X1 U18 ( .A(n99), .B(n93), .Y(ld_rd_data[18]) );
  NAND2X1 U20 ( .A(n99), .B(n92), .Y(ld_rd_data[19]) );
  NAND2X1 U22 ( .A(n99), .B(n91), .Y(ld_rd_data[20]) );
  NAND2X1 U24 ( .A(n99), .B(n90), .Y(ld_rd_data[21]) );
  NAND2X1 U26 ( .A(n99), .B(n89), .Y(ld_rd_data[22]) );
  NAND2X1 U28 ( .A(n99), .B(n88), .Y(ld_rd_data[23]) );
  NAND2X1 U30 ( .A(n99), .B(n19), .Y(ld_rd_data[24]) );
  NAND2X1 U31 ( .A(d_rd_data[24]), .B(load_op_v[1]), .Y(n19) );
  NAND2X1 U32 ( .A(n99), .B(n20), .Y(ld_rd_data[25]) );
  NAND2X1 U33 ( .A(d_rd_data[25]), .B(load_op_v[1]), .Y(n20) );
  NAND2X1 U34 ( .A(n99), .B(n21), .Y(ld_rd_data[26]) );
  NAND2X1 U35 ( .A(d_rd_data[26]), .B(load_op_v[1]), .Y(n21) );
  NAND2X1 U36 ( .A(n99), .B(n22), .Y(ld_rd_data[27]) );
  NAND2X1 U37 ( .A(d_rd_data[27]), .B(load_op_v[1]), .Y(n22) );
  NAND2X1 U38 ( .A(n99), .B(n23), .Y(ld_rd_data[28]) );
  NAND2X1 U39 ( .A(d_rd_data[28]), .B(load_op_v[1]), .Y(n23) );
  NAND2X1 U40 ( .A(n99), .B(n24), .Y(ld_rd_data[29]) );
  NAND2X1 U41 ( .A(d_rd_data[29]), .B(load_op_v[1]), .Y(n24) );
  NAND2X1 U42 ( .A(n99), .B(n25), .Y(ld_rd_data[30]) );
  NAND2X1 U43 ( .A(d_rd_data[30]), .B(load_op_v[1]), .Y(n25) );
  NAND2X1 U44 ( .A(n99), .B(n26), .Y(ld_rd_data[31]) );
  NAND2X1 U45 ( .A(d_rd_data[31]), .B(load_op_v[1]), .Y(n26) );
  NAND3X1 U46 ( .A(n4), .B(n1), .C(n87), .Y(n10) );
  AOI22X1 U47 ( .A(load_op_v[0]), .B(n8), .C(n9), .D(n5), .Y(n27) );
  NAND2X1 U48 ( .A(n98), .B(n30), .Y(ld_rd_data[9]) );
  NAND2X1 U49 ( .A(d_rd_data[9]), .B(n96), .Y(n30) );
  NAND2X1 U50 ( .A(n98), .B(n32), .Y(ld_rd_data[8]) );
  NAND2X1 U51 ( .A(d_rd_data[8]), .B(n96), .Y(n32) );
  OAI21X1 U52 ( .A(n31), .B(n8), .C(n98), .Y(ld_rd_data[15]) );
  NAND2X1 U53 ( .A(n98), .B(n33), .Y(ld_rd_data[14]) );
  NAND2X1 U54 ( .A(d_rd_data[14]), .B(n96), .Y(n33) );
  NAND2X1 U55 ( .A(n98), .B(n34), .Y(ld_rd_data[13]) );
  NAND2X1 U56 ( .A(d_rd_data[13]), .B(n96), .Y(n34) );
  NAND2X1 U57 ( .A(n98), .B(n35), .Y(ld_rd_data[12]) );
  NAND2X1 U58 ( .A(d_rd_data[12]), .B(n96), .Y(n35) );
  NAND2X1 U59 ( .A(n98), .B(n36), .Y(ld_rd_data[11]) );
  NAND2X1 U60 ( .A(d_rd_data[11]), .B(n96), .Y(n36) );
  NAND2X1 U61 ( .A(n98), .B(n37), .Y(ld_rd_data[10]) );
  NAND2X1 U62 ( .A(d_rd_data[10]), .B(n96), .Y(n37) );
  NAND3X1 U63 ( .A(n31), .B(n1), .C(\d_rd_data[7] ), .Y(n29) );
  NAND2X1 U65 ( .A(n28), .B(n97), .Y(d_we[1]) );
  OAI21X1 U67 ( .A(store_op[2]), .B(store_op[1]), .C(we), .Y(n28) );
  BUFX2 U3 ( .A(n27), .Y(n87) );
  AND2X1 U4 ( .A(d_rd_data[23]), .B(load_op_v[1]), .Y(n18) );
  INVX1 U6 ( .A(n18), .Y(n88) );
  AND2X1 U7 ( .A(d_rd_data[22]), .B(load_op_v[1]), .Y(n17) );
  INVX1 U8 ( .A(n17), .Y(n89) );
  AND2X1 U9 ( .A(d_rd_data[21]), .B(load_op_v[1]), .Y(n16) );
  INVX1 U10 ( .A(n16), .Y(n90) );
  AND2X1 U11 ( .A(d_rd_data[20]), .B(load_op_v[1]), .Y(n15) );
  INVX1 U12 ( .A(n15), .Y(n91) );
  AND2X1 U13 ( .A(d_rd_data[19]), .B(load_op_v[1]), .Y(n14) );
  INVX1 U15 ( .A(n14), .Y(n92) );
  AND2X1 U17 ( .A(d_rd_data[18]), .B(load_op_v[1]), .Y(n13) );
  INVX1 U19 ( .A(n13), .Y(n93) );
  AND2X1 U21 ( .A(d_rd_data[17]), .B(load_op_v[1]), .Y(n12) );
  INVX1 U23 ( .A(n12), .Y(n94) );
  AND2X1 U25 ( .A(load_op_v[1]), .B(d_rd_data[16]), .Y(n11) );
  INVX1 U27 ( .A(n11), .Y(n95) );
  AND2X1 U29 ( .A(n5), .B(n4), .Y(n31) );
  INVX1 U64 ( .A(n31), .Y(n96) );
  AND2X1 U66 ( .A(store_op[0]), .B(we), .Y(n38) );
  INVX1 U68 ( .A(n38), .Y(n97) );
  BUFX2 U69 ( .A(n29), .Y(n98) );
  AND2X1 U70 ( .A(ld_en), .B(is_load_op), .Y(N23) );
  INVX1 U71 ( .A(n28), .Y(\d_we[3] ) );
  AND2X1 U72 ( .A(st_en), .B(is_store_op), .Y(we) );
  INVX1 U73 ( .A(n101), .Y(ld_valid) );
  INVX1 U74 ( .A(n70), .Y(n101) );
  BUFX2 U75 ( .A(n10), .Y(n99) );
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
         is_store_op, is_jump_op, is_imm, n119, n120, n121, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221;
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
        .addr({n218, n217, n216, n215, n214, n213, n212, n211, n210, n209, 
        n208, n207, n206, n205, n204, n203, n202, n201, n200, n199, n198, n197, 
        alu_rd_data[9:7], n196, n195, n194, n193, n192, n191, n190}), 
        .is_load_op(is_load_op), .is_store_op(is_store_op), .load_op(load_op), 
        .store_op(store_op), .write_data(rs2_data), .ld_valid(ld_valid), 
        .ld_rd(ld_rd), .ld_rd_data(ld_rd_data), .d_addr(d_addr), .d_we(d_we), 
        .d_wr_data(d_wr_data), .d_rd_data(d_rd_data) );
  NAND2X1 U117 ( .A(n119), .B(n120), .Y(rd_data[9]) );
  NAND2X1 U118 ( .A(ld_valid), .B(ld_rd_data[9]), .Y(n120) );
  AOI22X1 U119 ( .A(PC_p4[9]), .B(n121), .C(alu_rd_data[9]), .D(n220), .Y(n119) );
  NAND2X1 U120 ( .A(n123), .B(n124), .Y(rd_data[8]) );
  NAND2X1 U121 ( .A(ld_rd_data[8]), .B(ld_valid), .Y(n124) );
  AOI22X1 U122 ( .A(PC_p4[8]), .B(n121), .C(alu_rd_data[8]), .D(n220), .Y(n123) );
  NAND2X1 U123 ( .A(n125), .B(n126), .Y(rd_data[7]) );
  NAND2X1 U124 ( .A(ld_rd_data[7]), .B(ld_valid), .Y(n126) );
  AOI22X1 U125 ( .A(PC_p4[7]), .B(n121), .C(alu_rd_data[7]), .D(n220), .Y(n125) );
  NAND2X1 U126 ( .A(n127), .B(n128), .Y(rd_data[6]) );
  NAND2X1 U127 ( .A(ld_rd_data[6]), .B(ld_valid), .Y(n128) );
  AOI22X1 U128 ( .A(PC_p4[6]), .B(n121), .C(n196), .D(n220), .Y(n127) );
  NAND2X1 U129 ( .A(n129), .B(n130), .Y(rd_data[5]) );
  NAND2X1 U130 ( .A(ld_rd_data[5]), .B(ld_valid), .Y(n130) );
  AOI22X1 U131 ( .A(PC_p4[5]), .B(n121), .C(n195), .D(n220), .Y(n129) );
  NAND2X1 U132 ( .A(n131), .B(n132), .Y(rd_data[4]) );
  NAND2X1 U133 ( .A(ld_rd_data[4]), .B(ld_valid), .Y(n132) );
  AOI22X1 U134 ( .A(PC_p4[4]), .B(n121), .C(n194), .D(n220), .Y(n131) );
  NAND2X1 U135 ( .A(n133), .B(n134), .Y(rd_data[3]) );
  NAND2X1 U136 ( .A(ld_rd_data[3]), .B(ld_valid), .Y(n134) );
  AOI22X1 U137 ( .A(PC_p4[3]), .B(n121), .C(n193), .D(n220), .Y(n133) );
  NAND2X1 U138 ( .A(n135), .B(n136), .Y(rd_data[31]) );
  NAND2X1 U139 ( .A(ld_rd_data[31]), .B(ld_valid), .Y(n136) );
  AOI22X1 U140 ( .A(PC_p4[31]), .B(n121), .C(n218), .D(n220), .Y(n135) );
  NAND2X1 U141 ( .A(n137), .B(n138), .Y(rd_data[30]) );
  NAND2X1 U142 ( .A(ld_rd_data[30]), .B(ld_valid), .Y(n138) );
  AOI22X1 U143 ( .A(PC_p4[30]), .B(n121), .C(n217), .D(n220), .Y(n137) );
  NAND2X1 U144 ( .A(n139), .B(n140), .Y(rd_data[2]) );
  NAND2X1 U145 ( .A(ld_rd_data[2]), .B(ld_valid), .Y(n140) );
  AOI22X1 U189 ( .A(PC_p4[2]), .B(n121), .C(n192), .D(n220), .Y(n139) );
  NAND2X1 U190 ( .A(n141), .B(n142), .Y(rd_data[29]) );
  NAND2X1 U191 ( .A(ld_rd_data[29]), .B(ld_valid), .Y(n142) );
  AOI22X1 U192 ( .A(PC_p4[29]), .B(n121), .C(n216), .D(n220), .Y(n141) );
  NAND2X1 U193 ( .A(n143), .B(n144), .Y(rd_data[28]) );
  NAND2X1 U194 ( .A(ld_rd_data[28]), .B(ld_valid), .Y(n144) );
  AOI22X1 U195 ( .A(PC_p4[28]), .B(n121), .C(n215), .D(n220), .Y(n143) );
  NAND2X1 U196 ( .A(n145), .B(n146), .Y(rd_data[27]) );
  NAND2X1 U197 ( .A(ld_rd_data[27]), .B(ld_valid), .Y(n146) );
  AOI22X1 U198 ( .A(PC_p4[27]), .B(n121), .C(n214), .D(n220), .Y(n145) );
  NAND2X1 U199 ( .A(n147), .B(n148), .Y(rd_data[26]) );
  NAND2X1 U200 ( .A(ld_rd_data[26]), .B(ld_valid), .Y(n148) );
  AOI22X1 U201 ( .A(PC_p4[26]), .B(n121), .C(n213), .D(n220), .Y(n147) );
  NAND2X1 U202 ( .A(n149), .B(n150), .Y(rd_data[25]) );
  NAND2X1 U203 ( .A(ld_rd_data[25]), .B(ld_valid), .Y(n150) );
  AOI22X1 U204 ( .A(PC_p4[25]), .B(n121), .C(n212), .D(n220), .Y(n149) );
  NAND2X1 U205 ( .A(n151), .B(n152), .Y(rd_data[24]) );
  NAND2X1 U206 ( .A(ld_rd_data[24]), .B(ld_valid), .Y(n152) );
  AOI22X1 U207 ( .A(PC_p4[24]), .B(n121), .C(n211), .D(n220), .Y(n151) );
  NAND2X1 U208 ( .A(n153), .B(n154), .Y(rd_data[23]) );
  NAND2X1 U209 ( .A(ld_rd_data[23]), .B(ld_valid), .Y(n154) );
  AOI22X1 U210 ( .A(PC_p4[23]), .B(n121), .C(n210), .D(n220), .Y(n153) );
  NAND2X1 U211 ( .A(n155), .B(n156), .Y(rd_data[22]) );
  NAND2X1 U212 ( .A(ld_rd_data[22]), .B(ld_valid), .Y(n156) );
  AOI22X1 U213 ( .A(PC_p4[22]), .B(n121), .C(n209), .D(n220), .Y(n155) );
  NAND2X1 U214 ( .A(n157), .B(n158), .Y(rd_data[21]) );
  NAND2X1 U215 ( .A(ld_rd_data[21]), .B(ld_valid), .Y(n158) );
  AOI22X1 U216 ( .A(PC_p4[21]), .B(n121), .C(n208), .D(n220), .Y(n157) );
  NAND2X1 U217 ( .A(n159), .B(n160), .Y(rd_data[20]) );
  NAND2X1 U218 ( .A(ld_rd_data[20]), .B(ld_valid), .Y(n160) );
  AOI22X1 U219 ( .A(PC_p4[20]), .B(n121), .C(n207), .D(n220), .Y(n159) );
  NAND2X1 U220 ( .A(n161), .B(n162), .Y(rd_data[1]) );
  NAND2X1 U221 ( .A(ld_rd_data[1]), .B(ld_valid), .Y(n162) );
  AOI22X1 U222 ( .A(PC_p4[1]), .B(n121), .C(n191), .D(n220), .Y(n161) );
  NAND2X1 U223 ( .A(n163), .B(n164), .Y(rd_data[19]) );
  NAND2X1 U224 ( .A(ld_rd_data[19]), .B(ld_valid), .Y(n164) );
  AOI22X1 U225 ( .A(PC_p4[19]), .B(n121), .C(n206), .D(n220), .Y(n163) );
  NAND2X1 U226 ( .A(n165), .B(n166), .Y(rd_data[18]) );
  NAND2X1 U227 ( .A(ld_rd_data[18]), .B(ld_valid), .Y(n166) );
  AOI22X1 U228 ( .A(PC_p4[18]), .B(n121), .C(n205), .D(n220), .Y(n165) );
  NAND2X1 U229 ( .A(n167), .B(n168), .Y(rd_data[17]) );
  NAND2X1 U230 ( .A(ld_rd_data[17]), .B(ld_valid), .Y(n168) );
  AOI22X1 U231 ( .A(PC_p4[17]), .B(n121), .C(n204), .D(n220), .Y(n167) );
  NAND2X1 U232 ( .A(n169), .B(n170), .Y(rd_data[16]) );
  NAND2X1 U233 ( .A(ld_rd_data[16]), .B(ld_valid), .Y(n170) );
  AOI22X1 U234 ( .A(PC_p4[16]), .B(n121), .C(n203), .D(n220), .Y(n169) );
  NAND2X1 U235 ( .A(n171), .B(n172), .Y(rd_data[15]) );
  NAND2X1 U236 ( .A(ld_rd_data[15]), .B(ld_valid), .Y(n172) );
  AOI22X1 U237 ( .A(PC_p4[15]), .B(n121), .C(n202), .D(n220), .Y(n171) );
  NAND2X1 U238 ( .A(n173), .B(n174), .Y(rd_data[14]) );
  NAND2X1 U239 ( .A(ld_rd_data[14]), .B(ld_valid), .Y(n174) );
  AOI22X1 U240 ( .A(PC_p4[14]), .B(n121), .C(n201), .D(n220), .Y(n173) );
  NAND2X1 U241 ( .A(n175), .B(n176), .Y(rd_data[13]) );
  NAND2X1 U242 ( .A(ld_rd_data[13]), .B(ld_valid), .Y(n176) );
  AOI22X1 U243 ( .A(PC_p4[13]), .B(n121), .C(n200), .D(n220), .Y(n175) );
  NAND2X1 U244 ( .A(n177), .B(n178), .Y(rd_data[12]) );
  NAND2X1 U245 ( .A(ld_rd_data[12]), .B(ld_valid), .Y(n178) );
  AOI22X1 U246 ( .A(PC_p4[12]), .B(n121), .C(n199), .D(n220), .Y(n177) );
  NAND2X1 U247 ( .A(n179), .B(n180), .Y(rd_data[11]) );
  NAND2X1 U248 ( .A(ld_rd_data[11]), .B(ld_valid), .Y(n180) );
  AOI22X1 U249 ( .A(PC_p4[11]), .B(n121), .C(n198), .D(n220), .Y(n179) );
  NAND2X1 U250 ( .A(n181), .B(n182), .Y(rd_data[10]) );
  NAND2X1 U251 ( .A(ld_rd_data[10]), .B(ld_valid), .Y(n182) );
  AOI22X1 U252 ( .A(PC_p4[10]), .B(n121), .C(n197), .D(n220), .Y(n181) );
  NAND2X1 U253 ( .A(n183), .B(n184), .Y(rd_data[0]) );
  NAND2X1 U254 ( .A(ld_rd_data[0]), .B(ld_valid), .Y(n184) );
  AOI22X1 U255 ( .A(PC_p4[0]), .B(n121), .C(n190), .D(n220), .Y(n183) );
  AOI22X1 U257 ( .A(dec_rd[0]), .B(n221), .C(ld_rd[0]), .D(ld_valid), .Y(n185)
         );
  AOI22X1 U258 ( .A(dec_rd[1]), .B(n221), .C(ld_rd[1]), .D(ld_valid), .Y(n186)
         );
  AOI22X1 U259 ( .A(dec_rd[2]), .B(n221), .C(ld_rd[2]), .D(ld_valid), .Y(n187)
         );
  AOI22X1 U260 ( .A(dec_rd[3]), .B(n221), .C(ld_rd[3]), .D(ld_valid), .Y(n188)
         );
  AOI22X1 U261 ( .A(dec_rd[4]), .B(n221), .C(ld_rd[4]), .D(ld_valid), .Y(n189)
         );
  BUFX2 U262 ( .A(alu_rd_data[0]), .Y(n190) );
  BUFX2 U263 ( .A(alu_rd_data[1]), .Y(n191) );
  BUFX2 U264 ( .A(alu_rd_data[2]), .Y(n192) );
  BUFX2 U265 ( .A(alu_rd_data[3]), .Y(n193) );
  BUFX2 U266 ( .A(alu_rd_data[4]), .Y(n194) );
  BUFX2 U267 ( .A(alu_rd_data[5]), .Y(n195) );
  BUFX2 U268 ( .A(alu_rd_data[6]), .Y(n196) );
  BUFX2 U269 ( .A(alu_rd_data[10]), .Y(n197) );
  BUFX2 U270 ( .A(alu_rd_data[11]), .Y(n198) );
  BUFX2 U271 ( .A(alu_rd_data[12]), .Y(n199) );
  BUFX2 U272 ( .A(alu_rd_data[13]), .Y(n200) );
  BUFX2 U273 ( .A(alu_rd_data[14]), .Y(n201) );
  BUFX2 U274 ( .A(alu_rd_data[15]), .Y(n202) );
  BUFX2 U275 ( .A(alu_rd_data[16]), .Y(n203) );
  BUFX2 U276 ( .A(alu_rd_data[17]), .Y(n204) );
  BUFX2 U277 ( .A(alu_rd_data[18]), .Y(n205) );
  BUFX2 U278 ( .A(alu_rd_data[19]), .Y(n206) );
  BUFX2 U279 ( .A(alu_rd_data[20]), .Y(n207) );
  BUFX2 U280 ( .A(alu_rd_data[21]), .Y(n208) );
  BUFX2 U281 ( .A(alu_rd_data[22]), .Y(n209) );
  BUFX2 U282 ( .A(alu_rd_data[23]), .Y(n210) );
  BUFX2 U283 ( .A(alu_rd_data[24]), .Y(n211) );
  BUFX2 U284 ( .A(alu_rd_data[25]), .Y(n212) );
  BUFX2 U285 ( .A(alu_rd_data[26]), .Y(n213) );
  BUFX2 U286 ( .A(alu_rd_data[27]), .Y(n214) );
  BUFX2 U287 ( .A(alu_rd_data[28]), .Y(n215) );
  BUFX2 U288 ( .A(alu_rd_data[29]), .Y(n216) );
  BUFX2 U289 ( .A(alu_rd_data[30]), .Y(n217) );
  BUFX2 U290 ( .A(alu_rd_data[31]), .Y(n218) );
  INVX1 U291 ( .A(n219), .Y(n220) );
  OR2X1 U292 ( .A(ld_valid), .B(is_jump_op), .Y(n219) );
  AND2X1 U293 ( .A(is_jump_op), .B(n221), .Y(n121) );
  INVX1 U294 ( .A(ld_valid), .Y(n221) );
  INVX1 U295 ( .A(n185), .Y(rd[0]) );
  INVX1 U296 ( .A(n186), .Y(rd[1]) );
  INVX1 U297 ( .A(n187), .Y(rd[2]) );
  INVX1 U298 ( .A(n188), .Y(rd[3]) );
  INVX1 U299 ( .A(n189), .Y(rd[4]) );
endmodule

