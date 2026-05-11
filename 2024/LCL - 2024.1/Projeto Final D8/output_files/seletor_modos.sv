module seletor_modos(
	input wire clk,
	input wire reset,
	input wire [17:15] SW,
	output reg [7:0] output_data

);

reg [7:0] cronometro_output;
reg [7:0] relogio_output;
reg [7:0] timer_output;

always @(posedge clk or posedge reset) begin
	if (reset) begin
		output_data <= 8'b00000000;
	end else begin
		case ({SW[17], SW[16], SW[15]})
			3'b001: begin
				output_data <= cronometro_output;
			end
			
			3'b010: begin
				output_data <= timer_output;
			end	
			
			3'b000: begin
				output_data <= relogio_output;
			end
			default: begin	
				output_data <= 8'b00000000;
			end
		endcase
	end
end

always @(posedge clk) begin
	cronometro_output <= 8'hA1;
	relogio_output <= 8'hB2;
	timer_output <= 8'hC3;
end

endmodule