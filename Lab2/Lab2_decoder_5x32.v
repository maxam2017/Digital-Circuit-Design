module Lab2_decoder_5x32 (output [31:0] Dout, input [4:0] A, input enable);
	
	wire [3:0]B;
	Lab2_decoder_2x4 D0(B[3:0], A[4:3], enable);
	Lab2_decoder_3x8 D1(Dout[31:24] , A[2:0], B[3]);
	Lab2_decoder_3x8 D2(Dout[23:16] , A[2:0], B[2]);
	Lab2_decoder_3x8 D3(Dout[15:8], A[2:0], B[1]);
	Lab2_decoder_3x8 D4(Dout[7:0], A[2:0], B[0]);

endmodule