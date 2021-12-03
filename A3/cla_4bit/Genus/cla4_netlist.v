
// Generated by Cadence Genus(TM) Synthesis Solution 16.21-s018_1
// Generated on: Sep 26 2019 19:12:00 IST (Sep 26 2019 13:42:00 UTC)

// Verification Directory fv/cla_4bit 

module cla_4bit(a, b, cin, cout, s);
  input [3:0] a, b;
  input cin;
  output cout;
  output [3:0] s;
  wire [3:0] a, b;
  wire cin;
  wire cout;
  wire [3:0] s;
  wire n_0, n_1, n_2, n_5, n_6, n_8, n_9;
  OAI21XL g357(.A0 (n_8), .A1 (n_9), .B0 (n_0), .Y (cout));
  MXI2XL g358(.A (n_1), .B (n_9), .S0 (n_8), .Y (s[3]));
  AOI22XL g359(.A0 (n_5), .A1 (n_6), .B0 (a[2]), .B1 (b[2]), .Y (n_8));
  CLKXOR2X1 g360(.A (n_6), .B (n_5), .Y (s[2]));
  ADDFX1 g361(.A (b[1]), .B (a[1]), .CI (n_2), .CO (n_5), .S (s[1]));
  ADDFX1 g362(.A (b[0]), .B (a[0]), .CI (cin), .CO (n_2), .S (s[0]));
  INVXL g363(.A (n_1), .Y (n_9));
  CLKXOR2X1 g364(.A (b[3]), .B (a[3]), .Y (n_1));
  CLKXOR2X1 g365(.A (b[2]), .B (a[2]), .Y (n_6));
  NAND2XL g366(.A (b[3]), .B (a[3]), .Y (n_0));
endmodule

