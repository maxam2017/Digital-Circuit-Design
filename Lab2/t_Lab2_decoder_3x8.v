module t_Lab2_decoder_3x8;

	wire	[7:0] Dout;
	reg		[2:0] A;
	reg		enable;

	Lab2_decoder_3x8 D(Dout,A,enable);
	initial
		begin
			A=3'b000;enable=0;
			repeat(7)#10 A= A + 1'b1;
			#10
			A=3'b000;enable=1;
			repeat(7)#10 A= A + 1'b1;
		end
	initial
	#160$finish;

	initial begin
		$display("D7 D6 D5 D4 D3 D2 D1 D0");
		$monitor("%b  %b  %b  %b  %b  %b  %b  %b",Dout[7],Dout[6],Dout[5],Dout[4],Dout[3],Dout[2],Dout[1],Dout[0]);
	end

endmodule