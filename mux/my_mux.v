module my_mux(a, b, c, d, e, f, g, addr, mux_out);
	input a,
			b,
			c,
			d,
			e,
			f,
			g;
			
	input	[2:0] addr;
	
	output mux_out;
	
	wire [6:0] in_vec = {g, f, e, d, c, b, a};

	assign mux_out = in_vec[addr];

endmodule 