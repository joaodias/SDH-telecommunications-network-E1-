module cnt8demux (clear, dout);

input wire clear;
output wire [7:0] dout;

reg     [7:0] cnt;
integer i;

clockdemux clkd();
shift_register_SIPO srSIPO();

initial
begin
		  i=0;
end

assign dout = cnt;

always @ (posedge clkd.saida)
begin
		if (i<8)begin
		  i = i+1;
		end
		else if (i == 8) begin
		  #20;
		  cnt = 8'h00;
		  i = 9;
		end
      else if (i == 9) begin
		  #20;
        cnt = cnt + 1;
		end
end
endmodule