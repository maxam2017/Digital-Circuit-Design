module Lab1_gatelevel(F,A,B,C);

	output F;
	input A,B,C;
	wire w1,w2,w3,w4,w5,w6;

	not		G1(w1,A);
	and		G2(w2,B,w1);
	and		G3(w3,A,C);
	and		G4(w4,B,C);
	or		G5(w5,w2,w3);
	or		G6(F,w4,w5);

endmodule