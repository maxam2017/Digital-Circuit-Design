module Lab2_full_sub(output D, B, input x, y, z);
	
	wire D1,B1,B2;

	Lab2_half_sub_gate_level HA1(D1 , B1 , x , y);
	Lab2_half_sub_gate_level HA2(D , B2 , D1 , z);
	or	G(B , B1 , B2);

endmodule