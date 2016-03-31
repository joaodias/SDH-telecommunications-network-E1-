module shift_register_PISO (linha);

output wire linha;
integer i;
reg outlinha;

clk_2Mbps clk();
mux mux();
initial
begin
  i=0;
end

  assign linha = outlinha;

  always @(posedge clk.saida)
  begin
    #1;
    if(i ==8) begin
        i = 0;
    end
    outlinha = mux.paralelo[(0+i)];
    i = i+1;
  end
endmodule