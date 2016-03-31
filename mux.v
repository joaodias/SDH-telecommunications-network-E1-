module mux (paralelo);

   output wire [7:0]paralelo;

clk_2Mbps clk();  //instancias dos modulos anteriores
Contador8 cnt8();
alinhamentos algn();
gerador ger();

reg [7:0] trama16;
reg [7:0] out;

initial
begin //inicialização
    //pre definição do it16
    trama16 = 8'h0b;
end

assign paralelo = out;

always @(posedge clk.saida) begin

if(cnt8.dout <= 8'h08) begin
      out = algn.doutalign;
end

if(cnt8.dout <= 8'h10 && cnt8.dout>=8'h08) begin
      out =ger.out0;
end

if (cnt8.dout >= 8'h10 && cnt8.dout < 8'h18) begin //canal2
       out =ger.out1;
end

if (cnt8.dout >= 8'h18 && cnt8.dout < 8'h20) begin //canal3
       out =ger.out2;
end

if (cnt8.dout >= 8'h20 && cnt8.dout < 8'h28) begin  //canal4
       out =ger.out3;
end

if (cnt8.dout >= 8'h28 && cnt8.dout < 8'h30) begin //canal5
       out =ger.out4;
end

if (cnt8.dout >= 8'h30 && cnt8.dout < 8'h38) begin //canal6
       out =ger.out5;
end

if (cnt8.dout >= 8'h38 && cnt8.dout < 8'h40) begin //canal7
       out =ger.out6;
end

if (cnt8.dout >= 8'h40 && cnt8.dout < 8'h48) begin //canal8
       out =ger.out7;
end

if (cnt8.dout >= 8'h48 && cnt8.dout < 8'h50) begin //canal9
       out =ger.out8;
end

if (cnt8.dout >= 8'h50 && cnt8.dout < 8'h58) begin //canal10
       out =ger.out9;
end

if (cnt8.dout >= 8'h58 && cnt8.dout < 8'h60) begin //canal11
       out = ger.out10;
end

if (cnt8.dout >= 8'h60 && cnt8.dout < 8'h68) begin //canal12
       out = ger.out11;
end

if (cnt8.dout >= 8'h68 && cnt8.dout < 8'h70) begin //canal13
       out = ger.out12;
end

if (cnt8.dout >= 8'h70 && cnt8.dout < 8'h78) begin //canal14
       out = ger.out13;
end

if (cnt8.dout >= 8'h78 && cnt8.dout < 8'h80) begin //canal15
       out = ger.out14;
end

if (cnt8.dout >= 8'h80 && cnt8.dout < 8'h88) begin // it16
       out = trama16;
end

if (cnt8.dout >= 8'h88 && cnt8.dout < 8'h90) begin // canal17

       out = ger.out15;
end

if (cnt8.dout >= 8'h90 && cnt8.dout < 8'h98) begin // canal18
       out = ger.out16;
end

if (cnt8.dout >= 8'h98 && cnt8.dout < 8'hA0) begin // canal19
       out = ger.out17;
end

if (cnt8.dout >= 8'hA0 && cnt8.dout < 8'hA8) begin // canal20
       out = ger.out18;
end

if (cnt8.dout >= 8'hA8 && cnt8.dout < 8'hB0) begin // canal21
       out = ger.out19;
end

if (cnt8.dout >= 8'hB0 && cnt8.dout < 8'hB8) begin // canal22
       out = ger.out20;
end

if (cnt8.dout >= 8'hB8 && cnt8.dout < 8'hC0) begin // canal23
       out = ger.out21;
end

if (cnt8.dout >= 8'hC0 && cnt8.dout < 8'hC8) begin // canal24
       out = ger.out22;
end

if (cnt8.dout >= 8'hC8 && cnt8.dout < 8'hD0) begin // canal25
       out = ger.out23;
end

if (cnt8.dout >= 8'hD0 && cnt8.dout < 8'hD8) begin // canal26
       out = ger.out24;
end

if (cnt8.dout >= 8'hD8 && cnt8.dout < 8'hE0) begin // canal27
       out = ger.out25;
end

if (cnt8.dout >= 8'hE0 && cnt8.dout < 8'hE8) begin // canal28
       out = ger.out26;
end

if (cnt8.dout >= 8'hE8 && cnt8.dout < 8'hF0) begin // canal29
       out = ger.out27;
end

if (cnt8.dout >= 8'hF0 && cnt8.dout < 8'hF8) begin // canal30
       out = ger.out28;
end

if (cnt8.dout >= 8'hF8 && cnt8.dout <= 8'hFF) begin // canal31
       out = ger.out29;
end

end
endmodule