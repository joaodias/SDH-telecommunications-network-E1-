module Contador4(clear, dout4);

input   clear;
output wire [3:0] dout4;

reg     [3:0] cnt;

clk_4Mbps clk();
Contador8 cnt8();

initial
begin
cnt = 4'h00;
end

assign dout4 = cnt;


always @ (posedge clk.saida)
begin

    if (!clear)
        cnt = 4'h00;
    else if(cnt8.dout == 8'hff)
        cnt = cnt + 1;
		  #251;
end
endmodule


