module ref_adder (
  input  [4:0] a,
  input  [4:0] b,
  input        cin,
  output [4:0] sum,
  output       cout
);

  reg [5:0] temp;

  always @(*) begin
    temp = a + b + cin;
  end

  assign sum = temp[4:0];
  assign cout = temp[5];

endmodule


