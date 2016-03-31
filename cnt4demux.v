module contador4demux (clear, dout4);

clockdemux clkd();

input   clear;
output wire [3:0] dout4;

reg     [3:0] cnt;

Contador8 cnt8();

initial
begin
cnt = 4'h00;
end

assign dout4 = cnt;


always @ (posedge clkd.saida)
begin

    if (!clear)
        cnt = 4'h00;
    else if(cnt8.dout == 8'hff)
        cnt = cnt + 1;
        #251;
end

endmodule