module t_Lab2_decoder_2x4;
	
	wire	[3:0] Dout;
	reg		[1:0] A;
	reg		enable;

	Lab2_decoder_2x4 D(Dout, A, enable);
	initial
		begin
			A=2'b00;enable=0;
			repeat(3)#10 A= A + 1'b1;
			#10
			A=2'b00; enable=1;
			repeat(3)#10 A= A + 1'b1;
		end
	initial
	#80$finish;

	initial begin
		$display("D3 D2 D1 D0");
		$monitor("%b  %b  %b  %b",Dout[3],Dout[2],Dout[1],Dout[0]);
	end
	
endmodule
