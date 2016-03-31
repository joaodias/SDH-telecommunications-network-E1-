module clockdemux4M (saida, inicio);

         output wire saida;
         output wire inicio;
         reg out;
         reg out1;

    assign saida = out;
    assign inicio = out1;

initial
begin
    out = 0;
     out1 = 1;
end
always
begin
   #125 out = ~out;
    out1 = 0;
end
endmodule
