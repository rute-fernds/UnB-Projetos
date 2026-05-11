module rom(
	input [4:0] endereco,
	output [5:0] dados);
	
always_comb
	casex (endereco)
		//Estado - RelÃ³gio
		5'b 0_x_000: dados = 6'b 100001;
		5'b 0_0_001: dados = 6'b 010010;
		5'b 0_x_010: dados = 6'b 001001;
		5'b 1_x_xxx: dados = 6'b 000001;
		
		default: dados = 6'b 100001;
	endcase
endmodule
