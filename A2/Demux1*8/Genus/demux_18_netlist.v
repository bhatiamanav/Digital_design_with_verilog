
// Generated by Cadence Genus(TM) Synthesis Solution 16.21-s018_1
// Generated on: Sep  8 2019 19:05:22 IST (Sep  8 2019 13:35:22 UTC)

// Verification Directory fv/demux_18 

module demux_12_3(s, d, y0, y1);
  input s, d;
  output y0, y1;
  wire s, d;
  wire y0, y1;
  NOR2BXL g17(.AN (d), .B (s), .Y (y0));
  AND2X1 g18(.A (d), .B (s), .Y (y1));
endmodule

module demux_12(s, d, y0, y1);
  input s, d;
  output y0, y1;
  wire s, d;
  wire y0, y1;
  NOR2BXL g17(.AN (d), .B (s), .Y (y0));
  AND2X1 g18(.A (s), .B (d), .Y (y1));
endmodule

module demux_12_1(s, d, y0, y1);
  input s, d;
  output y0, y1;
  wire s, d;
  wire y0, y1;
  NOR2BXL g17(.AN (d), .B (s), .Y (y0));
  AND2XL g18(.A (s), .B (d), .Y (y1));
endmodule

module demux_12_2(s, d, y0, y1);
  input s, d;
  output y0, y1;
  wire s, d;
  wire y0, y1;
  NOR2BXL g17(.AN (d), .B (s), .Y (y0));
  AND2XL g18(.A (s), .B (d), .Y (y1));
endmodule

module demux_14(d, s0, s1, y0, y1, y2, y3);
  input d, s0, s1;
  output y0, y1, y2, y3;
  wire d, s0, s1;
  wire y0, y1, y2, y3;
  wire z0, z1;
  demux_12 demux1(s1, d, z0, z1);
  demux_12_1 demux2(s0, z0, y0, y1);
  demux_12_2 demux3(s0, z1, y2, y3);
endmodule

module demux_12_4(s, d, y0, y1);
  input s, d;
  output y0, y1;
  wire s, d;
  wire y0, y1;
  NOR2BXL g17(.AN (d), .B (s), .Y (y0));
  AND2X1 g18(.A (s), .B (d), .Y (y1));
endmodule

module demux_12_5(s, d, y0, y1);
  input s, d;
  output y0, y1;
  wire s, d;
  wire y0, y1;
  NOR2BXL g17(.AN (d), .B (s), .Y (y0));
  AND2XL g18(.A (s), .B (d), .Y (y1));
endmodule

module demux_12_6(s, d, y0, y1);
  input s, d;
  output y0, y1;
  wire s, d;
  wire y0, y1;
  NOR2BXL g17(.AN (d), .B (s), .Y (y0));
  AND2XL g18(.A (s), .B (d), .Y (y1));
endmodule

module demux_14_1(d, s0, s1, y0, y1, y2, y3);
  input d, s0, s1;
  output y0, y1, y2, y3;
  wire d, s0, s1;
  wire y0, y1, y2, y3;
  wire z0, z1;
  demux_12_4 demux1(.s (s1), .d (d), .y0 (z0), .y1 (z1));
  demux_12_5 demux2(.s (s0), .d (z0), .y0 (y0), .y1 (y1));
  demux_12_6 demux3(.s (s0), .d (z1), .y0 (y2), .y1 (y3));
endmodule

module demux_18(d, a, b, c, y0, y1, y2, y3, y4, y5, y6, y7);
  input d, a, b, c;
  output y0, y1, y2, y3, y4, y5, y6, y7;
  wire d, a, b, c;
  wire y0, y1, y2, y3, y4, y5, y6, y7;
  wire z0, z1;
  demux_12_3 demux1(a, d, z0, z1);
  demux_14 demux2(z0, c, b, y0, y1, y2, y3);
  demux_14_1 demux3(z1, c, b, y4, y5, y6, y7);
endmodule
