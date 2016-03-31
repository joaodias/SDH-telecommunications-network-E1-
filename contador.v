module Contador8(clear, dout);

input   clear;
output wire [7:0] dout;

reg     [7:0] cnt;

clk_2Mbps clk();

initial
begin
        cnt = 8'h00;
end

assign dout = cnt;

always @ (posedge clk.saida)
begin

    if (!clear)
        cnt = 8'h00;
    else
        cnt = cnt + 1;
end

endmodule
