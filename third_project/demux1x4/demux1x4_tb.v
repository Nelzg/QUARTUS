module demux1x4_tb;
  reg f;
  reg [1:0] sel;
  wire a, b, c, d;
  integer i;
  demux1x4 mux (f, sel, a, b, c, d);
  initial
  begin
    f <= 0;
    sel <= 0;
    $monitor("f=%0b sel=%0b a=%0b b=%0b c=%0b d=%0b", f, sel, a, b, c, d);
    for (i = 0; i < 8; i = i + 1)
    begin
      {f, sel} = i;
      #10;
    end
  end
endmodule