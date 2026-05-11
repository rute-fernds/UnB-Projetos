module contador9_0(
    input clk,         // Sinal de clock
    input reset,       // Sinal de reset
    output reg [3:0] count  // Saída do contador (4 bits para contar de 9 a 0)
);

always @(posedge clk or posedge reset) begin
    if (reset) begin
        count <= 4'b1001;  // Inicializa o contador em 9 quando reset for ativado
    end else begin
        if (count == 4'b0000) begin
            count <= 4'b1001;  // Reinicia o contador para 9 quando atingir 0
        end else begin
            count <= count - 1;  // Decrementa o contador
        end
    end
end

endmodule
