module  t_Lab2_decoder_5x32;

	wire	[31:0] Dout;
	reg		[4:0] A;
	reg		enable;

	Lab2_decoder_5x32 D(Dout,A,enable);
	initial
		begin
			A=5'b00000;enable=0;
			repeat(31)#10 A= A + 1'b1;
			#10
			A=5'b00000;enable=1;
			repeat(31)#10 A= A + 1'b1;
		end
	initial
	#640$finish;

	initial begin
		$display("Dout");
		$monitor("%b",Dout);
	end

endmodule