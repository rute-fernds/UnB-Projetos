module contador0_5(
    input wire clk,    //Clock input
    input wire reset,  //Reset input
    output reg [3:0] count  //Saida de 0 a 5
);

always @(posedge clk or posedge reset) begin
    if (reset) 
        count <= 4'b0000;  //Se o reset for ativado, o contador vai para 0
    else if (count == 4'b0101)  
        count <= 4'b0000;  //Quando chega a 5, o contador reseta para 0
    else 
        count <= count + 1'b1;  //Incrementa o contador
end

endmodule


