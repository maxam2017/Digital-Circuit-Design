module t_Lab3_SbRb_Latch_gatelevel;

	wire 	Q,NQ;
	reg 	Sb,Rb;

	Lab3_SbRb_Latch_gatelevel sr_latch (Q,NQ,Sb,Rb);

	initial #60 $finish;

	initial fork
			Sb=1'b1; 
			Rb=1'b0;
			#10 Sb=1'b1; #10 Rb=1'b1;
			#20 Sb=1'b0; #20 Rb=1'b1;
			#30 Sb=1'b1; #30 Rb=1'b1;
			#40 Sb=1'b0; #40 Rb=1'b0;
			#50 Sb=1'b1; #50 Rb=1'b1;
 	join

endmodule