module adder5 (
  input  [4:0] a,
  input  [4:0] b,
  input        cin,
  output [4:0] sum,
  output       cout
);

  wire [4:0] carry;

  full_adder fa0 (.x(a[0]), .y(b[0]), .cin(cin),     .s(sum[0]), .cout(carry[0]));
  full_adder fa1 (.x(a[1]), .y(b[1]), .cin(carry[0]), .s(sum[1]), .cout(carry[1]));
  full_adder fa2 (.x(a[2]), .y(b[2]), .cin(carry[1]), .s(sum[2]), .cout(carry[2]));
  full_adder fa3 (.x(a[3]), .y(b[3]), .cin(carry[2]), .s(sum[3]), .cout(carry[3]));
  full_adder fa4 (.x(a[4]), .y(b[4]), .cin(carry[3]), .s(sum[4]), .cout(cout));

endmodule

module full_adder (
  input  x, y, cin,
  output s, cout
);

  wire p, g, h;

  xor(p, x, y);
  and(g, x, y);
  xor(s, p, cin);
  and(h, p, cin);
  or(cout, g, h);

endmodule

