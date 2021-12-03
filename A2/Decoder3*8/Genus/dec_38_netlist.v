
// Generated by Cadence Genus(TM) Synthesis Solution 16.21-s018_1
// Generated on: Sep  8 2019 19:22:08 IST (Sep  8 2019 13:52:08 UTC)

// Verification Directory fv/dec_38 

module dec_12_3(a, in, y0, y1);
  input a, in;
  output y0, y1;
  wire a, in;
  wire y0, y1;
  NOR2BXL g17(.AN (in), .B (a), .Y (y0));
  AND2X1 g18(.A (in), .B (a), .Y (y1));
endmodule

module dec_12(a, in, y0, y1);
  input a, in;
  output y0, y1;
  wire a, in;
  wire y0, y1;
  NOR2BXL g17(.AN (in), .B (a), .Y (y0));
  AND2X1 g18(.A (a), .B (in), .Y (y1));
endmodule

module dec_12_1(a, in, y0, y1);
  input a, in;
  output y0, y1;
  wire a, in;
  wire y0, y1;
  NOR2BXL g17(.AN (in), .B (a), .Y (y0));
  AND2XL g18(.A (a), .B (in), .Y (y1));
endmodule

module dec_12_2(a, in, y0, y1);
  input a, in;
  output y0, y1;
  wire a, in;
  wire y0, y1;
  NOR2BXL g17(.AN (in), .B (a), .Y (y0));
  AND2XL g18(.A (a), .B (in), .Y (y1));
endmodule

module dec_24(a0, a1, in, d0, d1, d2, d3);
  input a0, a1, in;
  output d0, d1, d2, d3;
  wire a0, a1, in;
  wire d0, d1, d2, d3;
  wire y0, y1;
  dec_12 dec_1(a1, in, y0, y1);
  dec_12_1 dec_2(a0, y0, d0, d1);
  dec_12_2 dec_3(a0, y1, d2, d3);
endmodule

module dec_12_4(a, in, y0, y1);
  input a, in;
  output y0, y1;
  wire a, in;
  wire y0, y1;
  NOR2BXL g17(.AN (in), .B (a), .Y (y0));
  AND2X1 g18(.A (a), .B (in), .Y (y1));
endmodule

module dec_12_5(a, in, y0, y1);
  input a, in;
  output y0, y1;
  wire a, in;
  wire y0, y1;
  NOR2BXL g17(.AN (in), .B (a), .Y (y0));
  AND2XL g18(.A (a), .B (in), .Y (y1));
endmodule

module dec_12_6(a, in, y0, y1);
  input a, in;
  output y0, y1;
  wire a, in;
  wire y0, y1;
  NOR2BXL g17(.AN (in), .B (a), .Y (y0));
  AND2XL g18(.A (a), .B (in), .Y (y1));
endmodule

module dec_24_1(a0, a1, in, d0, d1, d2, d3);
  input a0, a1, in;
  output d0, d1, d2, d3;
  wire a0, a1, in;
  wire d0, d1, d2, d3;
  wire y0, y1;
  dec_12_4 dec_1(.a (a1), .in (in), .y0 (y0), .y1 (y1));
  dec_12_5 dec_2(.a (a0), .in (y0), .y0 (d0), .y1 (d1));
  dec_12_6 dec_3(.a (a0), .in (y1), .y0 (d2), .y1 (d3));
endmodule

module dec_38(a, b, c, in, d0, d1, d2, d3, d4, d5, d6, d7);
  input a, b, c, in;
  output d0, d1, d2, d3, d4, d5, d6, d7;
  wire a, b, c, in;
  wire d0, d1, d2, d3, d4, d5, d6, d7;
  wire y0, y1;
  dec_12_3 dec1(a, in, y0, y1);
  dec_24 dec2(c, b, y0, d0, d1, d2, d3);
  dec_24_1 dec3(c, b, y1, d4, d5, d6, d7);
endmodule

