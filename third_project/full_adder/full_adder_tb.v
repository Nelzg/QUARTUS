module full_adder_tb;
	reg a, b, cin;
	wire sum, cout;
	integer i;
	full_adder fa ( a, b, cin, sum, cout);
	initial begin
		a <= 0;
		b <= 0;
		$monitor("a=%0b b=%0b cin=%0b cout=%0b sum=%0b", a, b, cin, cout, sum);
		for (i = 0; i < 8; i = i + 1) begin
			{a, b, cin} = i;
			#10;
		end
	end
endmodule