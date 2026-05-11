module contador0_9(
    input wire clk,    //Clock input
    input wire reset,  //Reset input
    output reg [3:0] count  //Saida de 0 a 9
);

always @(posedge clk or posedge reset) begin
    if (reset) 
        count <= 4'b0000;  //Se o reset for ativado, o contador vai para 0
    else if (count == 4'b1001)  
        count <= 4'b0000;  //Quando chega a 9, o contador reseta para 0
    else 
        count <= count + 1'b1;  //Incrementa o contador
end

endmodule

