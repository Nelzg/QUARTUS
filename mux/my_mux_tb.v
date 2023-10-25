module my_mux_tb;
	reg a,
		 b,
		 c,
		 d,
	    e,
		 f,
		 g;
		 
	reg [2:0] addr;
		 
	wire res;
		 
	my_mux my_mux_res(a, b, c, d, e, f, g, addr, res);
	
	initial begin
		$monitor("%d  --->  %b %b %b %b %b %b %b %b %b",$time, a, b, c, d, e, f, g, addr, res);

		a = 1;
		b = 1;
		c = 0;
		d = 0;
		e = 1;
		f = 0;
		g = 0;
		addr = 0;
	
		#5;
		
		addr = 1;
		

		#5;
		
		addr = 2;
		

		#5;
		
		addr = 3;
		

		#5;
		
		addr = 6;

		#5;
		
		g = 1;
		
		#5;
		
		$stop;
	end
endmodule 