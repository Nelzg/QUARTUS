module mux_counter(a, b, c, d, e, f, g, addr, clk, mux_out, counter_out);
	input a,
			b,
			c,
			d,
			e,
			f,
			g,
			clk;
			
	input	[2:0] addr;

	output [6:0]counter_out;
	output mux_out;
	
	mux m(a,b,c,d,e,f,g,addr,mux_out);
	counter count(.clk(clk), .rstn(mux_out), .out(counter_out));

endmodule 