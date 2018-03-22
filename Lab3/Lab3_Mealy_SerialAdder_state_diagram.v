
module Lab3_Mealy_SerialAdder_state_diagram(output reg s, input x, y, clock, reset);
	
	reg state , next_state;
	parameter S0=1'b0 , S1=1'b1;
	always @ (posedge clock ,negedge reset)
		if(reset==0)
			state<=S0;
		else
			state<=next_state;
	always @ (state , x ,y)
		case(state)
			S0:if(x==1 && y==1) next_state=S1;
				else	next_state=S0;
			S1:if(x==0 && y==0) next_state=S0;
				else	next_state=S1;
		endcase
	always @ (state , x,y)
		case(state)
			S0: s=x^y;
			S1: s=x^(!y);
		endcase

endmodule

