module FA_Gate(
  input  a,
  input  b,
  input  cin,
  output sum,
  output cout
);

  wire ps, pc1, pc2;

  and (pc1, a,   b);
  xor (ps,  a,   b);
  xor (sum, cin, ps);
  or  (cout, pc1, pc2);
  and (pc2, cin, ps);

endmodule