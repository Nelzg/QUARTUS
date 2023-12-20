module decod4x16_tb;
	reg en;
	reg [3:0] in;
	wire [15:0] out;
	integer i;
	decod4x16 dec ( en, in, out);
	initial begin

		en <= 0;
		in <= 0;
		$monitor("en=%0b in=0x%0h out=0x%0h", en, in, out);
		for (i = 0; i < 32; i = i + 1) begin
			{en, in} = i;
			#10;
		end
	end
endmodule