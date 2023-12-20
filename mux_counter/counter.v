module counter ( input clk, input rstn, output reg[6:0] out);

  always @ (posedge clk)
  begin
    if (!rstn)
    begin
      out <= 0;
    end
    else
    begin
      if (out == 128)
        out <= 0;
      else
        out <= out + 1;
    end
  end
endmodule