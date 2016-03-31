module alinhamentos (doutalign);// Este modulo é responsavel por gerar as tramas de controlo e alinhamento de trama

   output wire [7:0]doutalign;//tramas para inserir no processamento
   //Para testes estas variaveis c1, c2, c3, c4, e1 e e2 vão ter o papel de constantes fixadas a '0' lógico
   reg [7:0] tramas;

   clk_4Mbps clk();
   Contador4 cnt4();

   initial
   begin
      tramas = 8'h00;
   end

   assign doutalign = tramas;

   always @ (posedge clk.saida)
   begin

    case(cnt4.dout4)
     4'h00: tramas = 8'h1b; 
     4'h02: tramas = 8'h1b;
     4'h04: tramas = 8'h1b;
     4'h06: tramas = 8'h1b;
     4'h08: tramas = 8'h1b;
     4'h0a: tramas = 8'h1b;
     4'h0c: tramas = 8'h1b;
     4'h0e: tramas = 8'h1b;

     4'h01: tramas = 8'h5f; 
     4'h03: tramas = 8'h5f;
     4'h07: tramas = 8'h5f;
     4'h0d: tramas = 8'h5f;
     4'h0f: tramas = 8'h5f;

     4'h05: tramas = 8'hdf;
     4'h09: tramas = 8'hdf;
     4'h0b: tramas = 8'hdf;
     default: tramas = tramas; 
    endcase

  end
 endmodule
