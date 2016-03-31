module shift_register_SIPO (paralelo);

output wire [7:0]paralelo;
integer i;
reg [7:0]outbus;
reg [7:0]tempbus;


clockdemux clkd();
shift_register_PISO srPISO();

initial
begin
  i=0;
end

  assign paralelo = outbus;

  always @(posedge clkd.saida)
  begin
    #2;
    if(i==8) begin
        i = 0;
        outbus = tempbus;
    end
    tempbus[(0+i)] = srPISO.linha;
    i = i+1;
  end
endmodule