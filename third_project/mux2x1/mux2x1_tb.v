module mux2x1_tb;
  reg a, b, sel;
  wire c;
  integer i;
  mux2x1 mux ( a, b, sel, c);
  initial
  begin
    $dumpfile("build/mux21_tb.vcd");
    $dumpvars;
    a <= 0;
    b <= 0;
    sel <= 0;
    $monitor("a=%0b b=%0b sel=%0b c=%0b", a, b, sel, c);
    for (i = 0; i < 6; i = i + 1)
    begin
      {a, b, sel} = i;
      #10;
    end
  end
endmodule