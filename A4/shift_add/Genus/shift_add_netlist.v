
// Generated by Cadence Genus(TM) Synthesis Solution 16.21-s018_1
// Generated on: Oct 11 2019 01:18:20 IST (Oct 10 2019 19:48:20 UTC)

// Verification Directory fv/shiftadd 

module shiftadd(start, a, b, mul);
  input start;
  input [3:0] a, b;
  output [7:0] mul;
  wire start;
  wire [3:0] a, b;
  wire [7:0] mul;
  wire n_0, n_2, n_4, n_5, n_6, n_7, n_8, n_9;
  wire n_10, n_11, n_12, n_13, n_14, n_15, n_16, n_17;
  wire n_19, n_20, n_21, n_22, n_23, n_24, n_25, n_26;
  wire n_27, n_28, n_29, n_30, n_31, n_32, n_33, n_34;
  wire n_35, n_36, n_38, n_39, n_40, n_41, n_42, n_43;
  wire n_44, n_45, n_46, n_47, n_48, n_50, n_52, n_53;
  wire n_54, n_55, n_56, n_57, n_58, n_59, n_60, n_61;
  wire n_62, n_63, n_64, n_66, n_67, n_68, n_69, n_71;
  wire n_72, n_73, n_75, n_82;
  AOI21XL g1167(.A0 (n_72), .A1 (n_75), .B0 (n_36), .Y (mul[6]));
  AOI33XL g1168(.A0 (n_73), .A1 (a[3]), .A2 (n_71), .B0 (b[3]), .B1
       (n_50), .B2 (n_69), .Y (n_75));
  AOI21XL g1169(.A0 (n_73), .A1 (n_68), .B0 (n_64), .Y (mul[7]));
  OR2X1 g1170(.A (n_73), .B (n_71), .Y (n_72));
  AO22X1 g1171(.A0 (n_4), .A1 (n_67), .B0 (n_55), .B1 (n_66), .Y
       (mul[5]));
  NOR2BXL g1172(.AN (b[3]), .B (n_69), .Y (n_71));
  NAND2XL g1173(.A (a[3]), .B (n_69), .Y (n_68));
  ADDFX1 g1174(.A (n_66), .B (a[2]), .CI (n_59), .CO (n_69), .S (n_67));
  OAI21XL g1175(.A0 (n_63), .A1 (n_64), .B0 (n_56), .Y (mul[4]));
  AOI21XL g1176(.A0 (n_61), .A1 (n_60), .B0 (n_62), .Y (n_63));
  NOR2XL g1177(.A (n_61), .B (n_60), .Y (n_62));
  OAI21XL g1179(.A0 (n_57), .A1 (n_61), .B0 (n_58), .Y (n_59));
  OAI21XL g1178(.A0 (n_82), .A1 (n_52), .B0 (n_53), .Y (n_66));
  NOR2BXL g1180(.AN (n_58), .B (n_57), .Y (n_60));
  NAND2XL g1184(.A (n_55), .B (n_54), .Y (n_56));
  NAND2XL g1182(.A (a[1]), .B (n_54), .Y (n_58));
  AOI33XL g1181(.A0 (n_52), .A1 (a[3]), .A2 (n_82), .B0 (b[2]), .B1
       (n_50), .B2 (n_46), .Y (n_53));
  NOR2XL g1183(.A (a[1]), .B (n_54), .Y (n_57));
  OAI2BB1XL g1185(.A0N (n_52), .A1N (n_47), .B0 (b[2]), .Y (n_73));
  OAI31XL g1187(.A0 (n_64), .A1 (n_7), .A2 (n_44), .B0 (n_45), .Y
       (mul[3]));
  OAI21XL g1186(.A0 (n_30), .A1 (b[2]), .B0 (n_48), .Y (n_54));
  NAND2XL g1188(.A (b[2]), .B (n_43), .Y (n_48));
  NAND2XL g1189(.A (a[3]), .B (n_46), .Y (n_47));
  OAI21XL g1193(.A0 (n_8), .A1 (n_55), .B0 (n_44), .Y (n_45));
  NAND2XL g1192(.A (a[0]), .B (n_44), .Y (n_61));
  ADDFX1 g1191(.A (n_31), .B (a[2]), .CI (n_38), .CO (n_46), .S (n_43));
  MXI2XL g1194(.A (n_32), .B (n_42), .S0 (b[2]), .Y (n_44));
  AOI21XL g1195(.A0 (n_40), .A1 (n_39), .B0 (n_41), .Y (n_42));
  NOR2XL g1196(.A (n_40), .B (n_39), .Y (n_41));
  OAI21XL g1198(.A0 (n_34), .A1 (n_40), .B0 (n_35), .Y (n_38));
  NOR2XL g1197(.A (n_36), .B (n_33), .Y (mul[2]));
  NOR2BXL g1199(.AN (n_35), .B (n_34), .Y (n_39));
  AOI21XL g1200(.A0 (n_27), .A1 (n_29), .B0 (n_28), .Y (n_33));
  NAND2BXL g1201(.AN (n_32), .B (a[1]), .Y (n_35));
  INVXL g1203(.A (n_30), .Y (n_31));
  NOR2BXL g1205(.AN (n_32), .B (a[1]), .Y (n_34));
  NAND2XL g1202(.A (a[0]), .B (n_29), .Y (n_40));
  NOR2XL g1204(.A (n_27), .B (n_29), .Y (n_28));
  OAI211XL g1206(.A0 (n_25), .A1 (a[3]), .B0 (b[1]), .C0 (n_26), .Y
       (n_30));
  MX2X1 g1207(.A (n_9), .B (n_24), .S0 (b[1]), .Y (n_32));
  MXI2XL g1208(.A (n_14), .B (n_22), .S0 (b[1]), .Y (n_29));
  OAI21XL g1209(.A0 (n_21), .A1 (n_16), .B0 (b[1]), .Y (n_52));
  NAND2XL g1210(.A (a[3]), .B (n_25), .Y (n_26));
  AOI21XL g1212(.A0 (n_19), .A1 (n_23), .B0 (n_20), .Y (n_24));
  OAI21XL g1211(.A0 (n_23), .A1 (n_17), .B0 (n_10), .Y (n_25));
  XNOR2X1 g1213(.A (n_12), .B (n_15), .Y (n_22));
  NOR2XL g1214(.A (n_50), .B (n_23), .Y (n_21));
  NOR2XL g1215(.A (n_19), .B (n_23), .Y (n_20));
  NOR2XL g1216(.A (n_36), .B (n_11), .Y (mul[1]));
  NOR2XL g1217(.A (n_17), .B (n_16), .Y (n_19));
  AOI21XL g1220(.A0 (n_0), .A1 (n_14), .B0 (n_13), .Y (n_15));
  NOR2XL g1218(.A (n_13), .B (n_12), .Y (n_23));
  XNOR2X1 g1219(.A (n_2), .B (n_6), .Y (n_11));
  INVXL g1224(.A (n_16), .Y (n_10));
  NOR2BXL g1221(.AN (n_9), .B (a[2]), .Y (n_17));
  NOR2XL g1227(.A (n_5), .B (n_9), .Y (n_16));
  NOR2XL g1225(.A (a[0]), .B (n_64), .Y (n_8));
  NOR2XL g1223(.A (n_7), .B (n_6), .Y (n_12));
  NOR2XL g1222(.A (n_5), .B (n_6), .Y (n_13));
  NOR2XL g1229(.A (b[3]), .B (n_36), .Y (n_55));
  INVXL g1228(.A (n_64), .Y (n_4));
  AND3XL g1226(.A (b[0]), .B (start), .C (a[0]), .Y (mul[0]));
  NAND2XL g1230(.A (b[0]), .B (a[1]), .Y (n_6));
  NAND2XL g1235(.A (b[0]), .B (a[3]), .Y (n_9));
  NAND2XL g1231(.A (b[3]), .B (start), .Y (n_64));
  NAND2XL g1232(.A (b[1]), .B (a[0]), .Y (n_2));
  NAND2XL g1233(.A (b[0]), .B (a[2]), .Y (n_14));
  NAND2XL g1234(.A (b[2]), .B (a[0]), .Y (n_27));
  INVXL g1237(.A (a[0]), .Y (n_7));
  INVXL g1239(.A (start), .Y (n_36));
  INVXL g1236(.A (a[1]), .Y (n_0));
  INVXL g1240(.A (a[2]), .Y (n_5));
  INVXL g1238(.A (a[3]), .Y (n_50));
  NOR2BX1 g2(.AN (b[2]), .B (n_46), .Y (n_82));
endmodule

