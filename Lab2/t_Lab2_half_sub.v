module t_Lab2_half_sub;

	wire	Dg,Bg,Dd,Bd,Db,Bb;
	reg		x,y;

	Lab2_half_sub_gate_level	HS1(Dg,Bg,x,y);
	Lab2_half_sub_dataflow		HS2(Dd,Bd,x,y);
	Lab2_half_sub_behavior		HS3(Db,Bb,x,y);

	initial
		begin
			x=1'b0;y=1'b0;
			#10
			x=1'b0;y=1'b1;
			#10
			x=1'b1;y=1'b0;
			#10
			x=1'b1;y=1'b1;
		end
	initial
	#40$finish;

endmodule