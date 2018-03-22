module Lab2_half_sub_gate_level(output D, B, input x, y);

	wire	w;

	xor		G1(D,x,y);
	not		G2(w,x);
	and		G3(B,w,y);

endmodule