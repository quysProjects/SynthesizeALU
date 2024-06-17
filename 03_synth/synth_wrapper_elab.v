
// Generated by Cadence Genus(TM) Synthesis Solution GENUS15.20 - 15.20-p004_1
// Generated on: May 27 2024 03:11:00

// Verification Directory fv/synth_wrapper 

module fulladder(X, Y, Ci, S, Co);
  input X, Y, Ci;
  output S, Co;
  wire X, Y, Ci;
  wire S, Co;
  wire w1, w2, w3;
  xor G1 (w1, X, Y);
  xor G2 (S, w1, Ci);
  and G3 (w2, w1, Ci);
  and G4 (w3, X, Y);
  or G5 (Co, w2, w3);
endmodule

module ripple_adder(X, Y, S, Co, Cin);
  input [3:0] X, Y;
  input Cin;
  output [3:0] S;
  output Co;
  wire [3:0] X, Y;
  wire Cin;
  wire [3:0] S;
  wire Co;
  wire w1, w2, w3;
  fulladder u1(X[0], Y[0], Cin, S[0], w1);
  fulladder u2(X[1], Y[1], w1, S[1], w2);
  fulladder u3(X[2], Y[2], w2, S[2], w3);
  fulladder u4(X[3], Y[3], w3, S[3], Co);
endmodule

module not4bit(X, S);
  input [3:0] X;
  output [3:0] S;
  wire [3:0] X;
  wire [3:0] S;
  not g1 (S[0], X[0]);
  not g2 (S[1], X[1]);
  not g3 (S[2], X[2]);
  not g4 (S[3], X[3]);
endmodule

module and4bit(X, Y, S);
  input [3:0] X, Y;
  output [3:0] S;
  wire [3:0] X, Y;
  wire [3:0] S;
  and g1 (S[0], Y[0], X[0]);
  and g2 (S[1], Y[1], X[1]);
  and g3 (S[2], Y[2], X[2]);
  and g4 (S[3], Y[3], X[3]);
endmodule

module or4bit(X, Y, S);
  input [3:0] X, Y;
  output [3:0] S;
  wire [3:0] X, Y;
  wire [3:0] S;
  or g1 (S[0], Y[0], X[0]);
  or g2 (S[1], Y[1], X[1]);
  or g3 (S[2], Y[2], X[2]);
  or g4 (S[3], Y[3], X[3]);
endmodule

module xor4bit(X, Y, S);
  input [3:0] X, Y;
  output [3:0] S;
  wire [3:0] X, Y;
  wire [3:0] S;
  xor g1 (S[0], Y[0], X[0]);
  xor g2 (S[1], Y[1], X[1]);
  xor g3 (S[2], Y[2], X[2]);
  xor g4 (S[3], Y[3], X[3]);
endmodule

module mux2by1(D0, D1, S, Y);
  input D0, D1, S;
  output Y;
  wire D0, D1, S;
  wire Y;
  wire w1, w2, w3;
  not g1 (w1, S);
  and g2 (w2, D0, w1);
  and g3 (w3, D1, S);
  or g4 (Y, w2, w3);
endmodule

module mux2by1_4bit(in0, in1, sel, out);
  input [3:0] in0, in1;
  input sel;
  output [3:0] out;
  wire [3:0] in0, in1;
  wire sel;
  wire [3:0] out;
  mux2by1 mux0(in0[0], in1[0], sel, out[0]);
  mux2by1 mux1(in0[1], in1[1], sel, out[1]);
  mux2by1 mux2(in0[2], in1[2], sel, out[2]);
  mux2by1 mux3(in0[3], in1[3], sel, out[3]);
endmodule

module shift_left(a, b, s);
  input [3:0] a, b;
  output [3:0] s;
  wire [3:0] a, b;
  wire [3:0] s;
  wire [3:0] s1;
  wire [3:0] s2;
  wire [3:0] s3;
  mux2by1_4bit mux1(a, {a[2:0], 1'b0}, b[0], s1);
  mux2by1_4bit mux2(s1, {s1[1:0], 2'b00}, b[1], s2);
  mux2by1_4bit mux4(s2, 4'b0000, b[2], s3);
  mux2by1_4bit mux8(s3, 4'b0000, b[3], s);
endmodule

module shift_right(a, b, s);
  input [3:0] a, b;
  output [3:0] s;
  wire [3:0] a, b;
  wire [3:0] s;
  wire [3:0] s1;
  wire [3:0] s2;
  wire [3:0] s3;
  mux2by1_4bit mux1(a, {1'b0, a[3:1]}, b[0], s1);
  mux2by1_4bit mux2(s1, {2'b00, s1[3:2]}, b[1], s2);
  mux2by1_4bit mux4(s2, 4'b0000, b[2], s3);
  mux2by1_4bit mux8(s3, 4'b0000, b[3], s);
endmodule

module an4(X0, X1, X2, X3, Y);
  input X0, X1, X2, X3;
  output Y;
  wire X0, X1, X2, X3;
  wire Y;
  and g4 (Y, X0, X1, X2, X3);
endmodule

module orr8(X0, X1, X2, X3, X4, X5, X6, X7, Y);
  input X0, X1, X2, X3, X4, X5, X6, X7;
  output Y;
  wire X0, X1, X2, X3, X4, X5, X6, X7;
  wire Y;
  wire n_10, n_11, n_12, n_13;
  or g8 (n_10, X0, X1);
  or g9 (n_11, X2, X3);
  or g10 (n_12, X4, X5);
  or g11 (n_13, X6, X7);
  or g12 (Y, n_10, n_11, n_12, n_13);
endmodule

module mux8by1(D0, D1, D2, D3, D4, D5, D6, D7, s0, s1, s2, Y);
  input D0, D1, D2, D3, D4, D5, D6, D7, s0, s1, s2;
  output Y;
  wire D0, D1, D2, D3, D4, D5, D6, D7, s0, s1, s2;
  wire Y;
  wire not_s0, not_s1, not_s2, w0, w1, w2, w3, w4;
  wire w5, w6, w7;
  an4 a0(D0, not_s2, not_s1, not_s0, w0);
  an4 a1(D1, not_s2, not_s1, s0, w1);
  an4 a2(D2, not_s2, s1, not_s0, w2);
  an4 a3(D3, not_s2, s1, s0, w3);
  an4 a4(D4, s2, not_s1, not_s0, w4);
  an4 a5(D5, s2, not_s1, s0, w5);
  an4 a6(D6, s2, s1, not_s0, w6);
  an4 a7(D7, s2, s1, s0, w7);
  orr8 or0(w0, w1, w2, w3, w4, w5, w6, w7, Y);
  not g1 (not_s0, s0);
  not g2 (not_s1, s1);
  not g3 (not_s2, s2);
endmodule

module alu(a, b, op, result, carry);
  input [3:0] a, b;
  input [2:0] op;
  output [3:0] result;
  output carry;
  wire [3:0] a, b;
  wire [2:0] op;
  wire [3:0] result;
  wire carry;
  wire [3:0] result_add;
  wire [3:0] w1;
  wire [3:0] result_sub;
  wire [3:0] result_and;
  wire [3:0] result_or;
  wire [3:0] result_xor;
  wire [3:0] result_not;
  wire [3:0] result_shift_left;
  wire [3:0] result_shift_right;
  wire [2:0] not_op;
  wire carry1, carry2, carry_out1, carry_out2, carry_sub;
  ripple_adder u1(a, b, result_add, carry1, 1'b0);
  not4bit not4bit0(b, w1);
  ripple_adder u2(a, w1, result_sub, carry_sub, 1'b1);
  and4bit and4bit(a, b, result_and);
  or4bit or4bit(a, b, result_or);
  xor4bit xor4bit(a, b, result_xor);
  not4bit not4bit(a, result_not);
  shift_left shift_left(a, b, result_shift_left);
  shift_right shift_right(a, b, result_shift_right);
  mux8by1 mux_bit0(result_add[0], result_sub[0], result_and[0],
       result_or[0], result_xor[0], result_not[0],
       result_shift_left[0], result_shift_right[0], op[0], op[1],
       op[2], result[0]);
  mux8by1 mux_bit1(result_add[1], result_sub[1], result_and[1],
       result_or[1], result_xor[1], result_not[1],
       result_shift_left[1], result_shift_right[1], op[0], op[1],
       op[2], result[1]);
  mux8by1 mux_bit2(result_add[2], result_sub[2], result_and[2],
       result_or[2], result_xor[2], result_not[2],
       result_shift_left[2], result_shift_right[2], op[0], op[1],
       op[2], result[2]);
  mux8by1 mux_bit3(result_add[3], result_sub[3], result_and[3],
       result_or[3], result_xor[3], result_not[3],
       result_shift_left[3], result_shift_right[3], op[0], op[1],
       op[2], result[3]);
  an4 for_carryadd(carry1, not_op[0], not_op[1], not_op[2], carry_out1);
  an4 for_carrysub(carry2, op[0], not_op[1], not_op[2], carry_out2);
  not g1 (not_op[0], op[0]);
  not g2 (not_op[1], op[1]);
  not g3 (not_op[2], op[2]);
  not g4 (carry2, carry_sub);
  or g5 (carry, carry_out1, carry_out2);
endmodule

module bmux(ctl, in_0, in_1, z);
  input ctl;
  input [2:0] in_0, in_1;
  output [2:0] z;
  wire ctl;
  wire [2:0] in_0, in_1;
  wire [2:0] z;
  CDN_bmux2 g1(.sel0 (ctl), .data0 (in_0[2]), .data1 (in_1[2]), .z
       (z[2]));
  CDN_bmux2 g2(.sel0 (ctl), .data0 (in_0[1]), .data1 (in_1[1]), .z
       (z[1]));
  CDN_bmux2 g3(.sel0 (ctl), .data0 (in_0[0]), .data1 (in_1[0]), .z
       (z[0]));
endmodule

module bmux_1(ctl, in_0, in_1, z);
  input ctl;
  input [3:0] in_0, in_1;
  output [3:0] z;
  wire ctl;
  wire [3:0] in_0, in_1;
  wire [3:0] z;
  CDN_bmux2 g1(.sel0 (ctl), .data0 (in_0[3]), .data1 (in_1[3]), .z
       (z[3]));
  CDN_bmux2 g2(.sel0 (ctl), .data0 (in_0[2]), .data1 (in_1[2]), .z
       (z[2]));
  CDN_bmux2 g3(.sel0 (ctl), .data0 (in_0[1]), .data1 (in_1[1]), .z
       (z[1]));
  CDN_bmux2 g4(.sel0 (ctl), .data0 (in_0[0]), .data1 (in_1[0]), .z
       (z[0]));
endmodule

module bmux_3(ctl, in_0, in_1, z);
  input ctl, in_0, in_1;
  output z;
  wire ctl, in_0, in_1;
  wire z;
  CDN_bmux2 g1(.sel0 (ctl), .data0 (in_0), .data1 (in_1), .z (z));
endmodule

module synth_wrapper(a, b, op, rst_n, clk, result, carry);
  input [3:0] a, b;
  input [2:0] op;
  input rst_n, clk;
  output [3:0] result;
  output carry;
  wire [3:0] a, b;
  wire [2:0] op;
  wire rst_n, clk;
  wire [3:0] result;
  wire carry;
  wire [3:0] a_reg;
  wire [3:0] b_reg;
  wire [2:0] op_reg;
  wire UNCONNECTED, UNCONNECTED0, UNCONNECTED1, UNCONNECTED2,
       UNCONNECTED3, UNCONNECTED4, UNCONNECTED5, UNCONNECTED6;
  wire UNCONNECTED7, UNCONNECTED8, UNCONNECTED9, UNCONNECTED10,
       UNCONNECTED11, UNCONNECTED12, UNCONNECTED13, UNCONNECTED14;
  wire carry_reg_48, n_17, \result_reg[0]_36 , \result_reg[1]_37 ,
       \result_reg[2]_38 , \result_reg[3]_39 ;
  alu u1(.a (a_reg), .b (b_reg), .op (op_reg), .result
       ({\result_reg[3]_39 , \result_reg[2]_38 , \result_reg[1]_37 ,
       \result_reg[0]_36 }), .carry (carry_reg_48));
  bmux mux_op_reg_18_8(.ctl (n_17), .in_0 (op), .in_1 (3'b000), .z
       ({UNCONNECTED1, UNCONNECTED0, UNCONNECTED}));
  bmux_1 mux_b_reg_18_8(.ctl (n_17), .in_0 (b), .in_1 (4'b0000), .z
       ({UNCONNECTED5, UNCONNECTED4, UNCONNECTED3, UNCONNECTED2}));
  bmux_1 mux_a_reg_18_8(.ctl (n_17), .in_0 (a), .in_1 (4'b0000), .z
       ({UNCONNECTED9, UNCONNECTED8, UNCONNECTED7, UNCONNECTED6}));
  bmux_3 mux_carry_18_8(.ctl (n_17), .in_0 (carry_reg_48), .in_1
       (1'b0), .z (UNCONNECTED10));
  bmux_1 mux_result_18_8(.ctl (n_17), .in_0 ({\result_reg[3]_39 ,
       \result_reg[2]_38 , \result_reg[1]_37 , \result_reg[0]_36 }),
       .in_1 (4'b0000), .z ({UNCONNECTED14, UNCONNECTED13,
       UNCONNECTED12, UNCONNECTED11}));
  not g1 (n_17, rst_n);
  CDN_flop \result_reg[0] (.clk (clk), .d (\result_reg[0]_36 ), .sena
       (1'b1), .aclr (n_17), .apre (1'b0), .srl (1'b0), .srd (1'b0), .q
       (result[0]));
  CDN_flop \result_reg[1] (.clk (clk), .d (\result_reg[1]_37 ), .sena
       (1'b1), .aclr (n_17), .apre (1'b0), .srl (1'b0), .srd (1'b0), .q
       (result[1]));
  CDN_flop \result_reg[2] (.clk (clk), .d (\result_reg[2]_38 ), .sena
       (1'b1), .aclr (n_17), .apre (1'b0), .srl (1'b0), .srd (1'b0), .q
       (result[2]));
  CDN_flop \result_reg[3] (.clk (clk), .d (\result_reg[3]_39 ), .sena
       (1'b1), .aclr (n_17), .apre (1'b0), .srl (1'b0), .srd (1'b0), .q
       (result[3]));
  CDN_flop carry_reg(.clk (clk), .d (carry_reg_48), .sena (1'b1), .aclr
       (n_17), .apre (1'b0), .srl (1'b0), .srd (1'b0), .q (carry));
  CDN_flop \a_reg_reg[0] (.clk (clk), .d (a[0]), .sena (1'b1), .aclr
       (n_17), .apre (1'b0), .srl (1'b0), .srd (1'b0), .q (a_reg[0]));
  CDN_flop \a_reg_reg[1] (.clk (clk), .d (a[1]), .sena (1'b1), .aclr
       (n_17), .apre (1'b0), .srl (1'b0), .srd (1'b0), .q (a_reg[1]));
  CDN_flop \a_reg_reg[2] (.clk (clk), .d (a[2]), .sena (1'b1), .aclr
       (n_17), .apre (1'b0), .srl (1'b0), .srd (1'b0), .q (a_reg[2]));
  CDN_flop \a_reg_reg[3] (.clk (clk), .d (a[3]), .sena (1'b1), .aclr
       (n_17), .apre (1'b0), .srl (1'b0), .srd (1'b0), .q (a_reg[3]));
  CDN_flop \b_reg_reg[0] (.clk (clk), .d (b[0]), .sena (1'b1), .aclr
       (n_17), .apre (1'b0), .srl (1'b0), .srd (1'b0), .q (b_reg[0]));
  CDN_flop \b_reg_reg[1] (.clk (clk), .d (b[1]), .sena (1'b1), .aclr
       (n_17), .apre (1'b0), .srl (1'b0), .srd (1'b0), .q (b_reg[1]));
  CDN_flop \b_reg_reg[2] (.clk (clk), .d (b[2]), .sena (1'b1), .aclr
       (n_17), .apre (1'b0), .srl (1'b0), .srd (1'b0), .q (b_reg[2]));
  CDN_flop \b_reg_reg[3] (.clk (clk), .d (b[3]), .sena (1'b1), .aclr
       (n_17), .apre (1'b0), .srl (1'b0), .srd (1'b0), .q (b_reg[3]));
  CDN_flop \op_reg_reg[0] (.clk (clk), .d (op[0]), .sena (1'b1), .aclr
       (n_17), .apre (1'b0), .srl (1'b0), .srd (1'b0), .q (op_reg[0]));
  CDN_flop \op_reg_reg[1] (.clk (clk), .d (op[1]), .sena (1'b1), .aclr
       (n_17), .apre (1'b0), .srl (1'b0), .srd (1'b0), .q (op_reg[1]));
  CDN_flop \op_reg_reg[2] (.clk (clk), .d (op[2]), .sena (1'b1), .aclr
       (n_17), .apre (1'b0), .srl (1'b0), .srd (1'b0), .q (op_reg[2]));
endmodule

`ifdef RC_CDN_GENERIC_GATE
`else
module CDN_flop(clk, d, sena, aclr, apre, srl, srd, q);
  input clk, d, sena, aclr, apre, srl, srd;
  output q;
  wire clk, d, sena, aclr, apre, srl, srd;
  wire q;
  reg  qi;
  assign #1 q = qi;
  always 
    @(posedge clk or posedge apre or posedge aclr) 
      if (aclr) 
        qi <= 0;
      else if (apre) 
          qi <= 1;
        else if (srl) 
            qi <= srd;
          else begin
            if (sena) 
              qi <= d;
          end
  initial 
    qi <= 1'b0;
endmodule
`endif
`ifdef RC_CDN_GENERIC_GATE
`else
`ifdef ONE_HOT_MUX
module CDN_bmux2(sel0, data0, data1, z);
  input sel0, data0, data1;
  output z;
  wire sel0, data0, data1;
  reg  z;
  always 
    @(sel0 or data0 or data1) 
      case ({sel0})
       1'b0: z = data0;
       1'b1: z = data1;
      endcase
endmodule
`else
module CDN_bmux2(sel0, data0, data1, z);
  input sel0, data0, data1;
  output z;
  wire sel0, data0, data1;
  wire z;
  wire inv_sel0, w_0, w_1;
  not i_0 (inv_sel0, sel0);
  and a_0 (w_0, inv_sel0, data0);
  and a_1 (w_1, sel0, data1);
  or org (z, w_0, w_1);
endmodule
`endif // ONE_HOT_MUX
`endif
