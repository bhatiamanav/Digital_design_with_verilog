
// Generated by Cadence Genus(TM) Synthesis Solution 16.21-s018_1
// Generated on: Sep 26 2019 18:53:36 IST (Sep 26 2019 13:23:36 UTC)

// Verification Directory fv/fa_1bit 

module fa_1bit(a, b, cin, s, cout);
  input a, b, cin;
  output s, cout;
  wire a, b, cin;
  wire s, cout;
  ADDFX1 g2(.A (cin), .B (b), .CI (a), .CO (cout), .S (s));
endmodule

