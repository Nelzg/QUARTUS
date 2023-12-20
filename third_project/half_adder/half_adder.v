module half_adder(input a,b, output reg sum, count);
	always @ (a or b) begin
		{count, sum} = a + b;
	end
endmodule