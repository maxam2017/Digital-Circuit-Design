module  t_Lab3_Pos_Edge_D_FF_gatelevel;
	
	wire 	Q,NQ;
	reg 	D,clock;

	Lab3_Pos_Edge_D_FF_gatelevel DFF(Q, NQ, D, clock);
	
	initial #100 $finish;
	
	initial begin 
		clock=0;
		forever #10 clock=~clock; 
	end

	initial fork
			D=1'b0;
			#15 D=1'b1;
			#35 D=1'b0;
			#65 D=1'b1;
			#90 D=1'b0;
 	join

endmodule
