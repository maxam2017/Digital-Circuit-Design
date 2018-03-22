module Lab3_Mealy_SerialAdder_structural(output s, input x, y, clock, reset);
	reg state;
	wire Q,NQ,D;
	parameter S0=1'b0 , S1=1'b1;
	always @(posedge clock , negedge reset)
		if(reset==0)
			state=S0;
		else case(state)
			S0:if(x==1 && y==1) state=S1;
				else	state=S0;
			S1: if(x==0 && y==0) state=S0;
				else	state=S1;
			endcase
	assign D=(Q&&x) || (x&&y) || (y&&Q);
	D_ff_AR DFF( Q, D , clock , reset);
	xor(s,x,y,Q);
endmodule