module  Lab3_Pos_Edge_D_FF_gatelevel(output Q, NQ, input D, clock);
	
	wire w,x,y,z;

	nand #(2)G1(w,x,z);
	nand #(2)G2(x,w,clock);
	nand #(2)G3(y,x,clock,z);
	nand #(2)G4(z,D,y);
	nand #(2)G5(Q,x,NQ);
	nand #(2)G6(NQ,y,Q);

endmodule