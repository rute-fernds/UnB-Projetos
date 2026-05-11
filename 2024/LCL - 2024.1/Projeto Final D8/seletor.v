module seletor (
    input wire A, B, C,            //Entradas de seleção
    input wire [6:0] timer_s1,
    input wire [6:0] timer_s2,
    input wire [6:0] timer_m1,
    input wire [6:0] timer_m2,
    input wire [6:0] timer_h1,
    input wire [6:0] timer_h2,
    input wire [6:0] relogio_c1,
    input wire [6:0] relogio_c2,
    input wire [6:0] relogio_s1,
    input wire [6:0] relogio_s2,
    input wire [6:0] relogio_m1,
    input wire [6:0] relogio_m2,
    input wire [6:0] relogio_h1,
    input wire [6:0] relogio_h2,
    input wire [6:0] cronometro_c1,
    input wire [6:0] cronometro_c2,
    input wire [6:0] cronometro_s1,
    input wire [6:0] cronometro_s2,
    input wire [6:0] cronometro_m1,
    input wire [6:0] cronometro_m2,
    output reg [6:0] hex_0,
    output reg [6:0] hex_1,
    output reg [6:0] hex_2,
    output reg [6:0] hex_3,
    output reg [6:0] hex_4,
    output reg [6:0] hex_5,
    output reg [6:0] hex_6,
    output reg [6:0] hex_7
);
    always @(*) begin
        case ({A, B, C})
            3'b000: begin
                hex_0 = relogio_c1;
                hex_1 = relogio_c2;
                hex_2 = relogio_s1;
                hex_3 = relogio_s2;
                hex_4 = relogio_m1;
                hex_5 = relogio_m2;
                hex_6 = relogio_h1;
                hex_7 = relogio_h2;
            end
            3'b001: begin
                hex_0 = cronometro_c1;
                hex_1 = cronometro_c2;
                hex_2 = cronometro_s1;
                hex_3 = cronometro_s2;
                hex_4 = cronometro_m1;
                hex_5 = cronometro_m2;
                hex_6 = 7'b0000000; //Zerando os valores que nÃ£o estÃ£o em uso
                hex_7 = 7'b0000000;
            end
            3'b010: begin
                hex_0 = 7'b0000000; 
                hex_1 = 7'b0000000;
                hex_2 = timer_s1;
                hex_3 = timer_s2;
                hex_4 = timer_m1;
                hex_5 = timer_m2;
                hex_6 = timer_h1;
                hex_7 = timer_h2;
            end
            default: begin
                hex_0 = 7'b0000000;
                hex_1 = 7'b0000000;
                hex_2 = 7'b0000000;
                hex_3 = 7'b0000000;
                hex_4 = 7'b0000000;
                hex_5 = 7'b0000000;
                hex_6 = 7'b0000000;
                hex_7 = 7'b0000000;
            end
        endcase
    end

endmodule
