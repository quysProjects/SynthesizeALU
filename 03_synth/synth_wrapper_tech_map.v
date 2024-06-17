
// Generated by Cadence Genus(TM) Synthesis Solution GENUS15.20 - 15.20-p004_1
// Generated on: May 27 2024 03:11:04

// Verification Directory fv/synth_wrapper 

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
  wire n_0, n_1, n_2, n_3, n_4, n_5, n_6, n_7;
  wire n_8, n_9, n_10, n_11, n_12, n_13, n_14, n_15;
  wire n_16, n_17, n_18, n_19, n_20, n_21, n_22, n_23;
  wire n_24, n_25, n_26, n_27, n_28, n_29, n_31, n_32;
  wire n_33, n_34, n_35, n_36, n_37, n_38, n_39, n_40;
  wire n_41, n_42, n_43, n_44, n_45, n_46, n_47, n_48;
  wire n_49, n_50, n_51, n_52, n_53, n_54, n_55, n_56;
  wire n_57, n_58, n_59, n_60, n_61, n_62, n_63, n_64;
  wire n_65, n_66, n_67, n_68, n_69, n_70, n_71, n_72;
  wire n_73, n_74, n_75, n_76, n_77, n_78, n_79, n_80;
  wire n_81, n_82, n_83, n_84, n_85, n_86, n_87, n_88;
  wire n_89, n_90, n_91, n_92, n_93, n_94, n_95, n_96;
  wire n_97, n_98, n_99, n_100, n_101, n_102, n_103, n_104;
  wire n_105, n_106, n_107, n_108, n_109, n_110, n_111, n_112;
  wire n_113, n_114, n_115, n_116, n_117, n_118, n_119, n_120;
  wire n_121, n_122, n_123, n_124, n_125, n_126, n_127, n_128;
  wire n_129, n_130, n_131, n_132, n_133, n_134, n_135, n_136;
  wire n_137, n_138, n_139, n_140, n_141, n_142, n_143, n_144;
  wire n_145, n_146, n_147, n_148, n_149, n_150, n_151, n_152;
  wire n_153, n_154, n_155, n_156, n_157, n_158, n_159, n_160;
  wire n_161, n_162, n_163, n_164, n_165, n_166, n_167, n_168;
  wire n_169, n_170, n_171, n_172, n_173, n_174, n_175, n_176;
  wire n_177, n_178;
  sky130_fd_sc_hd__dfrtp_1 \result_reg[3] (.RESET_B (rst_n), .CLK
       (clk), .D (n_178), .Q (result[3]));
  sky130_fd_sc_hd__dfrtp_1 \result_reg[1] (.RESET_B (rst_n), .CLK
       (clk), .D (n_174), .Q (result[1]));
  sky130_fd_sc_hd__dfrtp_1 \result_reg[2] (.RESET_B (rst_n), .CLK
       (clk), .D (n_175), .Q (result[2]));
  sky130_fd_sc_hd__dfrtp_1 carry_reg(.RESET_B (rst_n), .CLK (clk), .D
       (n_177), .Q (carry));
  sky130_fd_sc_hd__nand3_1 g16534(.A (n_176), .B (n_172), .C (n_165),
       .Y (n_178));
  sky130_fd_sc_hd__nand2_1 g16535(.A (n_169), .B (n_164), .Y (n_177));
  sky130_fd_sc_hd__nand2_1 g16536(.A (n_171), .B (n_118), .Y (n_176));
  sky130_fd_sc_hd__nand2_1 g16537(.A (n_170), .B (n_173), .Y (n_175));
  sky130_fd_sc_hd__nand4_1 g16538(.A (n_168), .B (n_159), .C (n_153),
       .D (n_150), .Y (n_174));
  sky130_fd_sc_hd__dfrtp_1 \result_reg[0] (.RESET_B (rst_n), .CLK
       (clk), .D (n_161), .Q (result[0]));
  sky130_fd_sc_hd__nand2_1 g16540(.A (n_167), .B (n_166), .Y (n_173));
  sky130_fd_sc_hd__a21oi_2 g16541(.A1 (n_155), .A2 (n_136), .B1
       (n_162), .Y (n_172));
  sky130_fd_sc_hd__o211ai_2 g16542(.A1 (n_95), .A2 (n_155), .B1
       (n_145), .C1 (n_156), .Y (n_171));
  sky130_fd_sc_hd__a21oi_2 g16543(.A1 (n_157), .A2 (n_25), .B1 (n_127),
       .Y (n_170));
  sky130_fd_sc_hd__a21o_1 g16544(.A1 (n_155), .A2 (n_118), .B1 (n_1),
       .X (n_169));
  sky130_fd_sc_hd__nand2_1 g16545(.A (n_151), .B (n_50), .Y (n_168));
  sky130_fd_sc_hd__nand3b_1 g16546(.A_N (n_9), .B (n_13), .C (n_138),
       .Y (n_167));
  sky130_fd_sc_hd__nand3_1 g16547(.A (n_13), .B (n_141), .C (n_7), .Y
       (n_166));
  sky130_fd_sc_hd__clkinv_1 g16548(.A (n_163), .Y (n_165));
  sky130_fd_sc_hd__a21oi_2 g16549(.A1 (n_133), .A2 (n_148), .B1
       (n_104), .Y (n_164));
  sky130_fd_sc_hd__nand2_1 g16550(.A (n_160), .B (n_158), .Y (n_163));
  sky130_fd_sc_hd__nand4_1 g16551(.A (n_5), .B (n_6), .C (n_111), .D
       (n_113), .Y (n_162));
  sky130_fd_sc_hd__o21ai_1 g16552(.A1 (n_25), .A2 (n_8), .B1 (n_152),
       .Y (n_161));
  sky130_fd_sc_hd__nand2_1 g16553(.A (n_140), .B (a_reg[3]), .Y
       (n_160));
  sky130_fd_sc_hd__nand2_1 g16554(.A (n_142), .B (n_100), .Y (n_159));
  sky130_fd_sc_hd__nand4_1 g16555(.A (n_139), .B (n_96), .C (n_28), .D
       (n_86), .Y (n_158));
  sky130_fd_sc_hd__nand3_1 g16556(.A (n_135), .B (n_3), .C (n_2), .Y
       (n_157));
  sky130_fd_sc_hd__clkinv_1 g16557(.A (n_154), .Y (n_156));
  sky130_fd_sc_hd__nand3_1 g16558(.A (n_126), .B (n_4), .C (n_125), .Y
       (n_154));
  sky130_fd_sc_hd__o211a_1 g16559(.A1 (n_72), .A2 (n_98), .B1 (n_122),
       .C1 (n_128), .X (n_153));
  sky130_fd_sc_hd__a21oi_1 g16560(.A1 (n_131), .A2 (a_reg[0]), .B1
       (n_149), .Y (n_152));
  sky130_fd_sc_hd__o211ai_2 g16561(.A1 (n_20), .A2 (n_130), .B1
       (n_134), .C1 (n_129), .Y (n_151));
  sky130_fd_sc_hd__nand2_4 g16562(.A (n_147), .B (n_146), .Y (n_155));
  sky130_fd_sc_hd__nand2b_1 g16564(.A_N (n_100), .B (n_123), .Y
       (n_150));
  sky130_fd_sc_hd__nand2_1 g16565(.A (n_119), .B (n_103), .Y (n_149));
  sky130_fd_sc_hd__nand2_1 g16568(.A (n_139), .B (n_28), .Y (n_148));
  sky130_fd_sc_hd__inv_2 g16570(.A (n_144), .Y (n_147));
  sky130_fd_sc_hd__inv_2 g16571(.A (n_143), .Y (n_146));
  sky130_fd_sc_hd__o22a_1 g16572(.A1 (n_114), .A2 (n_90), .B1 (n_28),
       .B2 (n_97), .X (n_145));
  sky130_fd_sc_hd__nand3_2 g16573(.A (n_105), .B (n_102), .C (n_85), .Y
       (n_144));
  sky130_fd_sc_hd__nand2_2 g16575(.A (n_132), .B (n_106), .Y (n_143));
  sky130_fd_sc_hd__nand3_1 g16576(.A (n_110), .B (n_116), .C (n_36), .Y
       (n_142));
  sky130_fd_sc_hd__a21oi_2 g16577(.A1 (n_109), .A2 (n_35), .B1 (n_137),
       .Y (n_141));
  sky130_fd_sc_hd__nand2_1 g16578(.A (n_130), .B (n_12), .Y (n_140));
  sky130_fd_sc_hd__nand2_1 g16579(.A (n_108), .B (n_88), .Y (n_139));
  sky130_fd_sc_hd__nand2_1 g16580(.A (n_96), .B (n_108), .Y (n_138));
  sky130_fd_sc_hd__nand2_1 g16581(.A (n_36), .B (n_88), .Y (n_137));
  sky130_fd_sc_hd__nor2_2 g16586(.A (n_118), .B (n_34), .Y (n_136));
  sky130_fd_sc_hd__nand2_1 g16587(.A (n_117), .B (n_15), .Y (n_135));
  sky130_fd_sc_hd__nand2_1 g16588(.A (n_101), .B (n_23), .Y (n_134));
  sky130_fd_sc_hd__nor2_2 g16590(.A (n_118), .B (n_97), .Y (n_133));
  sky130_fd_sc_hd__inv_2 g16591(.A (n_124), .Y (n_132));
  sky130_fd_sc_hd__inv_1 g16593(.A (n_130), .Y (n_131));
  sky130_fd_sc_hd__nand3_1 g16594(.A (n_117), .B (n_49), .C (a_reg[3]),
       .Y (n_129));
  sky130_fd_sc_hd__nand3_1 g16595(.A (n_107), .B (n_17), .C (n_25), .Y
       (n_128));
  sky130_fd_sc_hd__and3_1 g16596(.A (n_107), .B (n_89), .C (n_50), .X
       (n_127));
  sky130_fd_sc_hd__nand4_1 g16597(.A (n_80), .B (n_67), .C (n_73), .D
       (n_74), .Y (n_126));
  sky130_fd_sc_hd__nand3_1 g16599(.A (n_79), .B (n_67), .C (n_68), .Y
       (n_125));
  sky130_fd_sc_hd__nand2_1 g16600(.A (n_82), .B (n_62), .Y (n_124));
  sky130_fd_sc_hd__o21ai_1 g16601(.A1 (n_70), .A2 (n_97), .B1 (n_0), .Y
       (n_123));
  sky130_fd_sc_hd__o22a_1 g16602(.A1 (n_22), .A2 (n_87), .B1 (n_69),
       .B2 (n_31), .X (n_122));
  sky130_fd_sc_hd__nand2_1 g16603(.A (n_94), .B (n_112), .Y (n_121));
  sky130_fd_sc_hd__o21ai_1 g16604(.A1 (n_43), .A2 (n_11), .B1 (n_81),
       .Y (n_120));
  sky130_fd_sc_hd__o22a_1 g16605(.A1 (a_reg[0]), .A2 (n_87), .B1
       (n_29), .B2 (n_31), .X (n_119));
  sky130_fd_sc_hd__nand2_2 g16606(.A (n_107), .B (n_49), .Y (n_130));
  sky130_fd_sc_hd__inv_2 g16607(.A (n_86), .Y (n_118));
  sky130_fd_sc_hd__nand2_1 g16610(.A (n_35), .B (n_58), .Y (n_116));
  sky130_fd_sc_hd__nand4_1 g16611(.A (n_33), .B (n_44), .C (n_50), .D
       (n_45), .Y (n_115));
  sky130_fd_sc_hd__nand4_1 g16612(.A (n_74), .B (n_24), .C (n_44), .D
       (b_reg[2]), .Y (n_114));
  sky130_fd_sc_hd__or2_1 g16613(.A (a_reg[3]), .B (n_87), .X (n_113));
  sky130_fd_sc_hd__nand4_1 g16614(.A (n_24), .B (op_reg[2]), .C (n_50),
       .D (n_46), .Y (n_112));
  sky130_fd_sc_hd__nand3_1 g16615(.A (n_60), .B (n_45), .C (n_52), .Y
       (n_111));
  sky130_fd_sc_hd__nand2_1 g16616(.A (n_96), .B (n_70), .Y (n_110));
  sky130_fd_sc_hd__nor2_4 g16618(.A (n_43), .B (n_99), .Y (n_117));
  sky130_fd_sc_hd__nand3_2 g16621(.A (n_76), .B (n_59), .C (n_49), .Y
       (n_106));
  sky130_fd_sc_hd__nand3b_1 g16623(.A_N (n_28), .B (n_58), .C (n_59),
       .Y (n_105));
  sky130_fd_sc_hd__and3_1 g16624(.A (n_96), .B (n_52), .C (a_reg[3]),
       .X (n_104));
  sky130_fd_sc_hd__o21ai_1 g16625(.A1 (n_67), .A2 (n_60), .B1 (n_84),
       .Y (n_103));
  sky130_fd_sc_hd__nand3_1 g16626(.A (n_59), .B (n_57), .C (n_24), .Y
       (n_102));
  sky130_fd_sc_hd__nor2b_1 g16627(.A (n_99), .B_N (n_10), .Y (n_101));
  sky130_fd_sc_hd__nand2_1 g16628(.A (n_83), .B (n_55), .Y (n_109));
  sky130_fd_sc_hd__nand2_2 g16629(.A (n_91), .B (n_27), .Y (n_108));
  sky130_fd_sc_hd__nor2_4 g16630(.A (n_32), .B (n_92), .Y (n_107));
  sky130_fd_sc_hd__inv_2 g16634(.A (n_97), .Y (n_96));
  sky130_fd_sc_hd__inv_1 g16637(.A (n_35), .Y (n_95));
  sky130_fd_sc_hd__inv_2 g16638(.A (n_34), .Y (n_35));
  sky130_fd_sc_hd__nand4_1 g16639(.A (b_reg[2]), .B (n_44), .C (n_23),
       .D (n_45), .Y (n_94));
  sky130_fd_sc_hd__nand2_1 g16640(.A (n_71), .B (n_52), .Y (n_93));
  sky130_fd_sc_hd__nand3_2 g16641(.A (n_41), .B (n_26), .C (n_19), .Y
       (n_92));
  sky130_fd_sc_hd__nand2_2 g16642(.A (n_74), .B (n_73), .Y (n_91));
  sky130_fd_sc_hd__and2_1 g16643(.A (n_69), .B (n_73), .X (n_100));
  sky130_fd_sc_hd__nand2_1 g16644(.A (n_67), .B (n_73), .Y (n_90));
  sky130_fd_sc_hd__nand2_2 g16645(.A (n_67), .B (op_reg[2]), .Y (n_36));
  sky130_fd_sc_hd__nand2_2 g16646(.A (n_77), .B (n_75), .Y (n_99));
  sky130_fd_sc_hd__nand3_1 g16647(.A (n_44), .B (n_50), .C (n_45), .Y
       (n_98));
  sky130_fd_sc_hd__nand2_2 g16648(.A (n_67), .B (n_44), .Y (n_97));
  sky130_fd_sc_hd__nand3_2 g16649(.A (n_44), .B (n_50), .C (n_46), .Y
       (n_34));
  sky130_fd_sc_hd__nand4_1 g16652(.A (b_reg[2]), .B (n_19), .C (n_22),
       .D (n_23), .Y (n_85));
  sky130_fd_sc_hd__nand2b_1 g16653(.A_N (n_16), .B (n_58), .Y (n_84));
  sky130_fd_sc_hd__nand2_1 g16654(.A (n_58), .B (n_59), .Y (n_83));
  sky130_fd_sc_hd__nand4_1 g16655(.A (n_24), .B (n_41), .C (n_18), .D
       (n_19), .Y (n_82));
  sky130_fd_sc_hd__nand2_1 g16656(.A (n_53), .B (b_reg[0]), .Y (n_81));
  sky130_fd_sc_hd__nand2_1 g16657(.A (n_63), .B (n_65), .Y (n_89));
  sky130_fd_sc_hd__nor2_1 g16658(.A (n_24), .B (n_78), .Y (n_80));
  sky130_fd_sc_hd__nor2_1 g16659(.A (n_23), .B (n_54), .Y (n_79));
  sky130_fd_sc_hd__nand2_2 g16661(.A (n_62), .B (n_56), .Y (n_88));
  sky130_fd_sc_hd__nand3_2 g16662(.A (op_reg[2]), .B (n_46), .C (n_50),
       .Y (n_87));
  sky130_fd_sc_hd__nand2_1 g16663(.A (n_61), .B (n_66), .Y (n_86));
  sky130_fd_sc_hd__inv_2 g16666(.A (n_33), .Y (n_76));
  sky130_fd_sc_hd__inv_2 g16669(.A (n_32), .Y (n_75));
  sky130_fd_sc_hd__inv_2 g16670(.A (n_64), .Y (n_74));
  sky130_fd_sc_hd__inv_1 g16671(.A (n_73), .Y (n_72));
  sky130_fd_sc_hd__inv_2 g16673(.A (n_31), .Y (n_71));
  sky130_fd_sc_hd__clkbuf_1 g16674(.A (n_29), .X (n_70));
  sky130_fd_sc_hd__inv_1 g16678(.A (n_68), .Y (n_69));
  sky130_fd_sc_hd__inv_2 g16680(.A (n_27), .Y (n_68));
  sky130_fd_sc_hd__nand2b_1 g16681(.A_N (a_reg[3]), .B (b_reg[3]), .Y
       (n_66));
  sky130_fd_sc_hd__nand2_1 g16682(.A (n_41), .B (n_44), .Y (n_78));
  sky130_fd_sc_hd__nand2_1 g16683(.A (b_reg[0]), .B (a_reg[3]), .Y
       (n_65));
  sky130_fd_sc_hd__nor2_2 g16684(.A (b_reg[3]), .B (b_reg[2]), .Y
       (n_77));
  sky130_fd_sc_hd__nand2_1 g16685(.A (n_41), .B (n_24), .Y (n_33));
  sky130_fd_sc_hd__nand2_2 g16686(.A (op_reg[2]), .B (op_reg[1]), .Y
       (n_32));
  sky130_fd_sc_hd__nand2_1 g16687(.A (a_reg[0]), .B (b_reg[0]), .Y
       (n_64));
  sky130_fd_sc_hd__nand2_2 g16688(.A (n_21), .B (n_19), .Y (n_73));
  sky130_fd_sc_hd__nand2_2 g16689(.A (n_44), .B (op_reg[1]), .Y (n_31));
  sky130_fd_sc_hd__nand2_2 g16690(.A (a_reg[0]), .B (b_reg[0]), .Y
       (n_29));
  sky130_fd_sc_hd__nand2_2 g16691(.A (b_reg[2]), .B (n_23), .Y (n_28));
  sky130_fd_sc_hd__nand2_1 g16692(.A (n_18), .B (b_reg[1]), .Y (n_27));
  sky130_fd_sc_hd__and2_4 g16693(.A (n_46), .B (n_25), .X (n_67));
  sky130_fd_sc_hd__nor2_1 g16698(.A (n_51), .B (b_reg[2]), .Y (n_57));
  sky130_fd_sc_hd__nand2_1 g16699(.A (n_24), .B (b_reg[2]), .Y (n_56));
  sky130_fd_sc_hd__nand2_1 g16700(.A (n_19), .B (n_22), .Y (n_55));
  sky130_fd_sc_hd__nand2_1 g16701(.A (n_44), .B (b_reg[2]), .Y (n_54));
  sky130_fd_sc_hd__nand2_1 g16703(.A (n_49), .B (n_23), .Y (n_63));
  sky130_fd_sc_hd__nand2_1 g16704(.A (n_23), .B (n_41), .Y (n_62));
  sky130_fd_sc_hd__nor2_1 g16706(.A (n_42), .B (n_24), .Y (n_53));
  sky130_fd_sc_hd__nand2_1 g16707(.A (n_26), .B (a_reg[3]), .Y (n_61));
  sky130_fd_sc_hd__nor2_2 g16708(.A (n_25), .B (op_reg[2]), .Y (n_60));
  sky130_fd_sc_hd__nand2_2 g16709(.A (n_21), .B (b_reg[1]), .Y (n_59));
  sky130_fd_sc_hd__nand2_2 g16710(.A (n_51), .B (b_reg[0]), .Y (n_58));
  sky130_fd_sc_hd__inv_2 g16713(.A (n_26), .Y (n_52));
  sky130_fd_sc_hd__inv_2 g16714(.A (b_reg[3]), .Y (n_26));
  sky130_fd_sc_hd__inv_2 g16715(.A (a_reg[0]), .Y (n_51));
  sky130_fd_sc_hd__inv_4 g16720(.A (n_25), .Y (n_50));
  sky130_fd_sc_hd__inv_4 g16725(.A (op_reg[0]), .Y (n_25));
  sky130_fd_sc_hd__clkinv_4 g16728(.A (n_23), .Y (n_24));
  sky130_fd_sc_hd__inv_2 g16736(.A (b_reg[0]), .Y (n_49));
  sky130_fd_sc_hd__dfrtp_2 \b_reg_reg[3] (.RESET_B (rst_n), .CLK (clk),
       .D (b[3]), .Q (b_reg[3]));
  sky130_fd_sc_hd__dfrtp_2 \a_reg_reg[0] (.RESET_B (rst_n), .CLK (clk),
       .D (a[0]), .Q (a_reg[0]));
  sky130_fd_sc_hd__dfrtp_1 \op_reg_reg[0] (.RESET_B (rst_n), .CLK
       (clk), .D (op[0]), .Q (op_reg[0]));
  sky130_fd_sc_hd__dfrtp_1 \a_reg_reg[2] (.RESET_B (rst_n), .CLK (clk),
       .D (a[2]), .Q (a_reg[2]));
  sky130_fd_sc_hd__dfrtp_1 \b_reg_reg[0] (.RESET_B (rst_n), .CLK (clk),
       .D (b[0]), .Q (n_47));
  sky130_fd_sc_hd__inv_4 g16742(.A (n_48), .Y (b_reg[0]));
  sky130_fd_sc_hd__inv_2 g16743(.A (n_47), .Y (n_48));
  sky130_fd_sc_hd__inv_2 g16744(.A (n_46), .Y (n_45));
  sky130_fd_sc_hd__inv_4 g16745(.A (op_reg[1]), .Y (n_46));
  sky130_fd_sc_hd__inv_4 g16749(.A (op_reg[2]), .Y (n_44));
  sky130_fd_sc_hd__inv_2 g16754(.A (n_22), .Y (n_20));
  sky130_fd_sc_hd__inv_2 g16758(.A (n_42), .Y (n_43));
  sky130_fd_sc_hd__inv_2 g16760(.A (n_19), .Y (n_42));
  sky130_fd_sc_hd__inv_4 g16762(.A (b_reg[1]), .Y (n_19));
  sky130_fd_sc_hd__inv_4 g16763(.A (b_reg[2]), .Y (n_41));
  sky130_fd_sc_hd__dfrtp_2 \op_reg_reg[1] (.RESET_B (rst_n), .CLK
       (clk), .D (op[1]), .Q (op_reg[1]));
  sky130_fd_sc_hd__dfrtp_2 \a_reg_reg[3] (.RESET_B (rst_n), .CLK (clk),
       .D (a[3]), .Q (a_reg[3]));
  sky130_fd_sc_hd__dfrtp_1 \op_reg_reg[2] (.RESET_B (rst_n), .CLK
       (clk), .D (op[2]), .Q (n_39));
  sky130_fd_sc_hd__inv_4 g16767(.A (n_40), .Y (op_reg[2]));
  sky130_fd_sc_hd__inv_2 g16768(.A (n_39), .Y (n_40));
  sky130_fd_sc_hd__dfrtp_1 \a_reg_reg[1] (.RESET_B (rst_n), .CLK (clk),
       .D (a[1]), .Q (a_reg[1]));
  sky130_fd_sc_hd__dfrtp_2 \b_reg_reg[1] (.RESET_B (rst_n), .CLK (clk),
       .D (b[1]), .Q (b_reg[1]));
  sky130_fd_sc_hd__dfrtp_1 \b_reg_reg[2] (.RESET_B (rst_n), .CLK (clk),
       .D (b[2]), .Q (n_37));
  sky130_fd_sc_hd__inv_4 g16772(.A (n_38), .Y (b_reg[2]));
  sky130_fd_sc_hd__inv_2 g16773(.A (n_37), .Y (n_38));
  sky130_fd_sc_hd__buf_6 drc(.A (a_reg[2]), .X (n_23));
  sky130_fd_sc_hd__inv_2 drc_bufs(.A (n_21), .Y (n_22));
  sky130_fd_sc_hd__inv_2 drc_bufs16780(.A (n_21), .Y (n_18));
  sky130_fd_sc_hd__clkinv_2 drc_bufs16781(.A (a_reg[1]), .Y (n_21));
  sky130_fd_sc_hd__nor2_1 g16795(.A (n_51), .B (b_reg[0]), .Y (n_16));
  sky130_fd_sc_hd__nor2_1 g16705_dup(.A (n_51), .B (b_reg[0]), .Y
       (n_15));
  sky130_fd_sc_hd__buf_1 drc_bufs16799(.A (n_77), .X (n_14));
  sky130_fd_sc_hd__o21ai_1 g16814(.A1 (b_reg[0]), .A2 (n_20), .B1
       (n_29), .Y (n_17));
  sky130_fd_sc_hd__and2b_1 g2(.A_N (n_121), .B (n_115), .X (n_13));
  sky130_fd_sc_hd__and2_1 g16836(.A (n_98), .B (n_93), .X (n_12));
  sky130_fd_sc_hd__o21a_1 g16837(.A1 (b_reg[0]), .A2 (n_20), .B1
       (n_29), .X (n_11));
  sky130_fd_sc_hd__and2_1 g16838(.A (b_reg[0]), .B (n_19), .X (n_10));
  sky130_fd_sc_hd__o21bai_1 g16839(.A1 (n_34), .A2 (n_109), .B1_N
       (n_88), .Y (n_9));
  sky130_fd_sc_hd__a21boi_2 g16840(.A1 (n_89), .A2 (n_117), .B1_N
       (n_3), .Y (n_8));
  sky130_fd_sc_hd__nand2b_1 g16841(.A_N (n_108), .B (n_96), .Y (n_7));
  sky130_fd_sc_hd__or2b_1 g16842(.A (n_36), .B_N (n_86), .X (n_6));
  sky130_fd_sc_hd__nand3b_1 g16843(.A_N (n_99), .B (n_120), .C (n_25),
       .Y (n_5));
  sky130_fd_sc_hd__nand4b_1 g16844(.A_N (n_78), .B (n_67), .C (n_23),
       .D (n_68), .Y (n_4));
  sky130_fd_sc_hd__nand4b_1 g16845(.A_N (n_32), .B (n_14), .C (n_10),
       .D (n_22), .Y (n_3));
  sky130_fd_sc_hd__nand2b_1 g16846(.A_N (n_63), .B (n_107), .Y (n_2));
  sky130_fd_sc_hd__nand2_1 g16847(.A (n_61), .B (n_35), .Y (n_1));
  sky130_fd_sc_hd__nand2b_1 g16848(.A_N (n_58), .B (n_35), .Y (n_0));
endmodule

