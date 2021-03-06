
// Generated by Cadence Genus(TM) Synthesis Solution 16.21-s018_1
// Generated on: Sep 26 2019 19:06:58 IST (Sep 26 2019 13:36:58 UTC)

// Verification Directory fv/rc_16bit 

module fa_1bit(a, b, cin, s, cout);
  input a, b, cin;
  output s, cout;
  wire a, b, cin;
  wire s, cout;
  ADDFX1 g2(.A (cin), .B (b), .CI (a), .CO (cout), .S (s));
endmodule

module fa_1bit_1(a, b, cin, s, cout);
  input a, b, cin;
  output s, cout;
  wire a, b, cin;
  wire s, cout;
  ADDFX1 g2(.A (b), .B (a), .CI (cin), .CO (cout), .S (s));
endmodule

module fa_1bit_2(a, b, cin, s, cout);
  input a, b, cin;
  output s, cout;
  wire a, b, cin;
  wire s, cout;
  ADDFX1 g2(.A (b), .B (a), .CI (cin), .CO (cout), .S (s));
endmodule

module fa_1bit_3(a, b, cin, s, cout);
  input a, b, cin;
  output s, cout;
  wire a, b, cin;
  wire s, cout;
  ADDFX1 g2(.A (b), .B (a), .CI (cin), .CO (cout), .S (s));
endmodule

module rcarry_4bit(a, b, cin, s, cout);
  input [3:0] a, b;
  input cin;
  output [3:0] s;
  output cout;
  wire [3:0] a, b;
  wire cin;
  wire [3:0] s;
  wire cout;
  wire \carry[1] , \carry[2] , \carry[3] ;
  fa_1bit FA1(a[0], b[0], cin, s[0], \carry[1] );
  fa_1bit_1 FA2(a[1], b[1], \carry[1] , s[1], \carry[2] );
  fa_1bit_2 FA3(a[2], b[2], \carry[2] , s[2], \carry[3] );
  fa_1bit_3 FA4(a[3], b[3], \carry[3] , s[3], cout);
endmodule

module fa_1bit_4(a, b, cin, s, cout);
  input a, b, cin;
  output s, cout;
  wire a, b, cin;
  wire s, cout;
  ADDFX1 g2(.A (b), .B (a), .CI (cin), .CO (cout), .S (s));
endmodule

module fa_1bit_5(a, b, cin, s, cout);
  input a, b, cin;
  output s, cout;
  wire a, b, cin;
  wire s, cout;
  ADDFX1 g2(.A (b), .B (a), .CI (cin), .CO (cout), .S (s));
endmodule

module fa_1bit_6(a, b, cin, s, cout);
  input a, b, cin;
  output s, cout;
  wire a, b, cin;
  wire s, cout;
  ADDFX1 g2(.A (b), .B (a), .CI (cin), .CO (cout), .S (s));
endmodule

module fa_1bit_7(a, b, cin, s, cout);
  input a, b, cin;
  output s, cout;
  wire a, b, cin;
  wire s, cout;
  ADDFX1 g2(.A (b), .B (a), .CI (cin), .CO (cout), .S (s));
endmodule

module rcarry_4bit_1(a, b, cin, s, cout);
  input [3:0] a, b;
  input cin;
  output [3:0] s;
  output cout;
  wire [3:0] a, b;
  wire cin;
  wire [3:0] s;
  wire cout;
  wire \carry[1] , \carry[2] , \carry[3] ;
  fa_1bit_4 FA1(.a (a[0]), .b (b[0]), .cin (cin), .s (s[0]), .cout
       (\carry[1] ));
  fa_1bit_5 FA2(.a (a[1]), .b (b[1]), .cin (\carry[1] ), .s (s[1]),
       .cout (\carry[2] ));
  fa_1bit_6 FA3(.a (a[2]), .b (b[2]), .cin (\carry[2] ), .s (s[2]),
       .cout (\carry[3] ));
  fa_1bit_7 FA4(.a (a[3]), .b (b[3]), .cin (\carry[3] ), .s (s[3]),
       .cout (cout));
endmodule

module fa_1bit_8(a, b, cin, s, cout);
  input a, b, cin;
  output s, cout;
  wire a, b, cin;
  wire s, cout;
  ADDFX1 g2(.A (b), .B (a), .CI (cin), .CO (cout), .S (s));
endmodule

module fa_1bit_9(a, b, cin, s, cout);
  input a, b, cin;
  output s, cout;
  wire a, b, cin;
  wire s, cout;
  ADDFX1 g2(.A (b), .B (a), .CI (cin), .CO (cout), .S (s));
endmodule

module fa_1bit_10(a, b, cin, s, cout);
  input a, b, cin;
  output s, cout;
  wire a, b, cin;
  wire s, cout;
  ADDFX1 g2(.A (b), .B (a), .CI (cin), .CO (cout), .S (s));
endmodule

module fa_1bit_11(a, b, cin, s, cout);
  input a, b, cin;
  output s, cout;
  wire a, b, cin;
  wire s, cout;
  ADDFX1 g2(.A (b), .B (a), .CI (cin), .CO (cout), .S (s));
endmodule

module rcarry_4bit_2(a, b, cin, s, cout);
  input [3:0] a, b;
  input cin;
  output [3:0] s;
  output cout;
  wire [3:0] a, b;
  wire cin;
  wire [3:0] s;
  wire cout;
  wire \carry[1] , \carry[2] , \carry[3] ;
  fa_1bit_8 FA1(.a (a[0]), .b (b[0]), .cin (cin), .s (s[0]), .cout
       (\carry[1] ));
  fa_1bit_9 FA2(.a (a[1]), .b (b[1]), .cin (\carry[1] ), .s (s[1]),
       .cout (\carry[2] ));
  fa_1bit_10 FA3(.a (a[2]), .b (b[2]), .cin (\carry[2] ), .s (s[2]),
       .cout (\carry[3] ));
  fa_1bit_11 FA4(.a (a[3]), .b (b[3]), .cin (\carry[3] ), .s (s[3]),
       .cout (cout));
endmodule

module fa_1bit_12(a, b, cin, s, cout);
  input a, b, cin;
  output s, cout;
  wire a, b, cin;
  wire s, cout;
  ADDFX1 g2(.A (b), .B (a), .CI (cin), .CO (cout), .S (s));
endmodule

module fa_1bit_13(a, b, cin, s, cout);
  input a, b, cin;
  output s, cout;
  wire a, b, cin;
  wire s, cout;
  ADDFX1 g2(.A (b), .B (a), .CI (cin), .CO (cout), .S (s));
endmodule

module fa_1bit_14(a, b, cin, s, cout);
  input a, b, cin;
  output s, cout;
  wire a, b, cin;
  wire s, cout;
  ADDFX1 g2(.A (b), .B (a), .CI (cin), .CO (cout), .S (s));
endmodule

module fa_1bit_15(a, b, cin, s, cout);
  input a, b, cin;
  output s, cout;
  wire a, b, cin;
  wire s, cout;
  ADDFX1 g2(.A (b), .B (a), .CI (cin), .CO (cout), .S (s));
endmodule

module rcarry_4bit_3(a, b, cin, s, cout);
  input [3:0] a, b;
  input cin;
  output [3:0] s;
  output cout;
  wire [3:0] a, b;
  wire cin;
  wire [3:0] s;
  wire cout;
  wire \carry[1] , \carry[2] , \carry[3] ;
  fa_1bit_12 FA1(.a (a[0]), .b (b[0]), .cin (cin), .s (s[0]), .cout
       (\carry[1] ));
  fa_1bit_13 FA2(.a (a[1]), .b (b[1]), .cin (\carry[1] ), .s (s[1]),
       .cout (\carry[2] ));
  fa_1bit_14 FA3(.a (a[2]), .b (b[2]), .cin (\carry[2] ), .s (s[2]),
       .cout (\carry[3] ));
  fa_1bit_15 FA4(.a (a[3]), .b (b[3]), .cin (\carry[3] ), .s (s[3]),
       .cout (cout));
endmodule

module rc_16bit(a, b, cin, s, cout);
  input [15:0] a, b;
  input cin;
  output [15:0] s;
  output cout;
  wire [15:0] a, b;
  wire cin;
  wire [15:0] s;
  wire cout;
  wire c1, c2, c3;
  rcarry_4bit rc_1(a[3:0], b[3:0], cin, s[3:0], c1);
  rcarry_4bit_1 rc_2(a[7:4], b[7:4], c1, s[7:4], c2);
  rcarry_4bit_2 rc_3(a[11:8], b[11:8], c2, s[11:8], c3);
  rcarry_4bit_3 rc_4(a[15:12], b[15:12], c3, s[15:12], cout);
endmodule

