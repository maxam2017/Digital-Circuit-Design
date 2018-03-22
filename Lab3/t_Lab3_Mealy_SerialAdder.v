module t_Lab3_Mealy_SerialAdder;

	wire	s1,s2;
	reg	x,y,clock,reset;

	Lab3_Mealy_SerialAdder_state_diagram 	SD(s1, x, y, clock, reset);
	Lab3_Mealy_SerialAdder_structural 	ST(s2, x, y, clock, reset);

	initial #90 $finish;
	initial begin
		reset = 0; clock = 0;
		forever #5 clock=~clock;
	end
	initial fork
		x=0; y=0;
		#2 reset=1;
		#10 x=0; #10 y=1;
		#20 x=1; #20 y=0;
		#30 x=1; #30 y=1;
		#40 x=1; #40 y=1;
		#50 x=1; #50 y=0;
		#60 x=0; #60 y=1;
		#70 x=0; #70 y=0;
		#75 reset=0;
		#77 reset=1;
		#80 x=0; #80 y=1;
	join
endmodule
