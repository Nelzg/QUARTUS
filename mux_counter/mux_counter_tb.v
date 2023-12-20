
module mux_counter_tb;
	reg a,
		 b,
		 c,
		 d,
	    e,
		 f,
		 g,
		 clk;
		 
	reg [2:0] addr;
	wire [6:0] out;
	wire mux_out;
	
	mux_counter mc(a,b,c,d,e,f,g, addr,clk, mux_out,out);
	
	always #10 clk = ~clk;
	initial begin
		{clk, b, c, d, e, f, g} <= 0;

		a <= 0;
		addr <= 0;
		#40;
		a<=1;
		
		#40;
		a <= out[0];
		b <= out[1];
		c <= out[2];
		d <= out[3];
		e <= out[4];
		f <= out[5];
		g <= out[6];
		addr <= 1;
	
		#40;
		a <= out[0];
		b <= out[1];
		c <= out[2];
		d <= out[3];
		e <= out[4];
		f <= out[5];
		g <= out[6];
		b <= 0;
		

		#40;
		a <= out[0];
		b <= out[1];
		c <= out[2];
		d <= out[3];
		e <= out[4];
		f <= out[5];
		g <= out[6];
		addr <= 2;

		#40;
		a <= out[0];
		b <= out[1];
		c <= out[2];
		d <= out[3];
		e <= out[4];
		f <= out[5];
		g <= out[6];
		c <= 0;
		
		#40;
		a <= out[0];
		b <= out[1];
		c <= out[2];
		d <= out[3];
		e <= out[4];
		f <= out[5];
		g <= out[6];
		c <= 0;
		#40;
		a <= out[0];
		b <= out[1];
		c <= out[2];
		d <= out[3];
		e <= out[4];
		f <= out[5];
		g <= out[6];
		addr <= 3;
		
		#40;
		f <= 1;

		#800 $finish;
	end
endmodule 