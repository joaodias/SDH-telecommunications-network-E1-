module Demux (out0, out1, out2, out3, out4, out5, out6, out7, out8, out9, out10, out11, out12, out13, out14, out15, out16, out17, out18, out19, out20, out21, out22, out23, out24, out25,  out26, out27, out28, out29);

output wire [7:0] out0;
output wire [7:0] out1;
output wire [7:0] out2;
output wire [7:0] out3;
output wire [7:0] out4;
output wire [7:0] out5;
output wire [7:0] out6;
output wire [7:0] out7;
output wire [7:0] out8;
output wire [7:0] out9;
output wire [7:0] out10;
output wire [7:0] out11;
output wire [7:0] out12;
output wire [7:0] out13;
output wire [7:0] out14;
output wire [7:0] out15;
output wire [7:0] out16;
output wire [7:0] out17;
output wire [7:0] out18;
output wire [7:0] out19;
output wire [7:0] out20;
output wire [7:0] out21;
output wire [7:0] out22;
output wire [7:0] out23;
output wire [7:0] out24;
output wire [7:0] out25;
output wire [7:0] out26;
output wire [7:0] out27;
output wire [7:0] out28;
output wire [7:0] out29;

reg [7:0] teste0;
reg [7:0] teste1;
reg [7:0] teste2;
reg [7:0] teste3;
reg [7:0] teste4;
reg [7:0] teste5;
reg [7:0] teste6;
reg [7:0] teste7;
reg [7:0] teste8;
reg [7:0] teste9;
reg [7:0] teste10;
reg [7:0] teste11;
reg [7:0] teste12;
reg [7:0] teste13;
reg [7:0] teste14;
reg [7:0] teste15;
reg [7:0] teste16;
reg [7:0] teste17;
reg [7:0] teste18;
reg [7:0] teste19;
reg [7:0] teste20;
reg [7:0] teste21;
reg [7:0] teste22;
reg [7:0] teste23;
reg [7:0] teste24;
reg [7:0] teste25;
reg [7:0] teste26;
reg [7:0] teste27;
reg [7:0] teste28;
reg [7:0] teste29;


clockdemux clkd();
cnt8demux cnt8d();
comparador cmp();
shift_register_SIPO srSIPO();

assign out0 = teste0;
assign out1 = teste1;
assign out2 = teste2;
assign out3 = teste3;
assign out4 = teste4;
assign out5 = teste5;
assign out6 = teste6;
assign out7 = teste7;
assign out8 = teste8;
assign out9 = teste9;
assign out10 = teste10;
assign out11 = teste11;
assign out12 = teste12;
assign out13 = teste13;
assign out14 = teste14;
assign out15 = teste15;
assign out16 = teste16;
assign out17 = teste17;
assign out18 = teste18;
assign out19 = teste19;
assign out20 = teste20;
assign out21 = teste21;
assign out22 = teste22;
assign out23 = teste23;
assign out24 = teste24;
assign out25 = teste25;
assign out26 = teste26;
assign out27 = teste27;
assign out28 = teste28;
assign out29 = teste29;



always @ (srSIPO.paralelo) begin

if (cnt8d.dout >= 8'h00 && cnt8d.dout <= 8'h08 && cmp.sync == 1 && cmp.syncmulti ==1) begin 
       teste0 = srSIPO.paralelo;
end

if(cnt8d.dout >= 8'h08 && cnt8d.dout < 8'h10 && cmp.sync == 1 && cmp.syncmulti == 1) begin 
      teste1 =srSIPO.paralelo;
end

if(cnt8d.dout >= 8'h10 && cnt8d.dout < 8'h18 && cmp.sync == 1 && cmp.syncmulti == 1) begin 
      teste2 =srSIPO.paralelo;
end

if (cnt8d.dout >= 8'h18 && cnt8d.dout < 8'h20 && cmp.sync == 1 && cmp.syncmulti ==1) begin 
       teste3 =srSIPO.paralelo;
end

if (cnt8d.dout >= 8'h20 && cnt8d.dout < 8'h28 && cmp.sync == 1 && cmp.syncmulti ==1) begin 
       teste4 =srSIPO.paralelo;
end

if (cnt8d.dout >= 8'h28 && cnt8d.dout < 8'h30 && cmp.sync == 1 && cmp.syncmulti ==1) begin  
       teste5 =srSIPO.paralelo;
end

if (cnt8d.dout >= 8'h30 && cnt8d.dout < 8'h38 && cmp.sync == 1 && cmp.syncmulti ==1) begin 
       teste6 =srSIPO.paralelo;
end

if (cnt8d.dout >= 8'h38 && cnt8d.dout < 8'h40 && cmp.sync == 1 && cmp.syncmulti ==1) begin 
       teste7 =srSIPO.paralelo;
end

if (cnt8d.dout >= 8'h40 && cnt8d.dout < 8'h48 && cmp.sync == 1 && cmp.syncmulti ==1) begin 
       teste8 =srSIPO.paralelo;
end

if (cnt8d.dout >= 8'h48 && cnt8d.dout < 8'h50 && cmp.sync == 1 && cmp.syncmulti ==1) begin
       teste9 =srSIPO.paralelo;
end

if (cnt8d.dout >= 8'h50 && cnt8d.dout < 8'h58 && cmp.sync == 1 && cmp.syncmulti ==1) begin 
       teste10 =srSIPO.paralelo;
end

if (cnt8d.dout >= 8'h58 && cnt8d.dout < 8'h60 && cmp.sync == 1 && cmp.syncmulti ==1)  begin 
       teste11 = srSIPO.paralelo;
end

if (cnt8d.dout >= 8'h60 && cnt8d.dout < 8'h68 && cmp.sync == 1 && cmp.syncmulti ==1) begin 
       teste12 = srSIPO.paralelo;
end

if (cnt8d.dout >= 8'h68 && cnt8d.dout < 8'h70 && cmp.sync == 1 && cmp.syncmulti ==1) begin 
       teste13 = srSIPO.paralelo;
end

if (cnt8d.dout >= 8'h70 && cnt8d.dout < 8'h78 && cmp.sync == 1 && cmp.syncmulti ==1) begin 
       teste14 = srSIPO.paralelo;
end

if (cnt8d.dout >= 8'h80 && cnt8d.dout < 8'h88 && cmp.sync == 1 && cmp.syncmulti ==1) begin 
       teste15 = srSIPO.paralelo;
end

if (cnt8d.dout >= 8'h88 && cnt8d.dout < 8'h90 && cmp.sync == 1 && cmp.syncmulti ==1) begin 
       teste16 = srSIPO.paralelo;
end

if (cnt8d.dout >= 8'h90 && cnt8d.dout < 8'h98 && cmp.sync == 1 && cmp.syncmulti ==1) begin 
       teste17 = srSIPO.paralelo;
end

if (cnt8d.dout >= 8'h98 && cnt8d.dout < 8'hA0 && cmp.sync == 1 && cmp.syncmulti ==1) begin 
       teste18 = srSIPO.paralelo;
end

if (cnt8d.dout >= 8'hA0 && cnt8d.dout < 8'hA8 && cmp.sync == 1 && cmp.syncmulti ==1) begin 
       teste19 = srSIPO.paralelo;
end

if (cnt8d.dout >= 8'hA8 && cnt8d.dout < 8'hB0 && cmp.sync == 1 && cmp.syncmulti ==1) begin 
       teste20 = srSIPO.paralelo;
end

if (cnt8d.dout >= 8'hB0 && cnt8d.dout < 8'hB8 && cmp.sync == 1 && cmp.syncmulti ==1) begin 
       teste21 = srSIPO.paralelo;
end

if (cnt8d.dout >= 8'hB8 && cnt8d.dout < 8'hC0 && cmp.sync == 1 && cmp.syncmulti ==1) begin 
       teste22 = srSIPO.paralelo;
end

if (cnt8d.dout >= 8'hC0 && cnt8d.dout < 8'hC8 && cmp.sync == 1 && cmp.syncmulti ==1) begin 
       teste23 = srSIPO.paralelo;
end

if (cnt8d.dout >= 8'hC8 && cnt8d.dout < 8'hD0 && cmp.sync == 1 && cmp.syncmulti ==1) begin 
       teste24 = srSIPO.paralelo;
end

if (cnt8d.dout >= 8'hD0 && cnt8d.dout < 8'hD8 && cmp.sync == 1 && cmp.syncmulti ==1) begin 
       teste25 = srSIPO.paralelo;
end

if (cnt8d.dout >= 8'hD8 && cnt8d.dout < 8'hE0 && cmp.sync == 1 && cmp.syncmulti ==1) begin 
       teste26 = srSIPO.paralelo;
end

if (cnt8d.dout >= 8'hE0 && cnt8d.dout < 8'hE8 && cmp.sync == 1 && cmp.syncmulti ==1) begin 
       teste27 = srSIPO.paralelo;
end

if (cnt8d.dout >= 8'hE8 && cnt8d.dout < 8'hF0 && cmp.sync == 1 && cmp.syncmulti ==1) begin 
       teste28 = srSIPO.paralelo;
end

if (cnt8d.dout >= 8'hF0 && cnt8d.dout < 8'hF8 && cmp.sync == 1 && cmp.syncmulti ==1) begin 
       teste29 = srSIPO.paralelo;
end



if(cmp.sync == 0) begin
       teste0 = 8'h00;
       teste1 = 8'h00;
       teste2 = 8'h00;
       teste3 = 8'h00;
       teste4 = 8'h00;
       teste5 = 8'h00;
       teste6 = 8'h00;
       teste7 = 8'h00;
       teste8 = 8'h00;
       teste9 = 8'h00;
       teste10 = 8'h00;
       teste11 = 8'h00;
       teste12 = 8'h00;
       teste13 = 8'h00;
       teste14 = 8'h00;
       teste15 = 8'h00;
       teste16 = 8'h00;
       teste17 = 8'h00;
       teste18 = 8'h00;
       teste19 = 8'h00;
       teste20 = 8'h00;
       teste21 = 8'h00;
       teste22 = 8'h00;
       teste23 = 8'h00;
       teste24 = 8'h00;
       teste25 = 8'h00;
       teste26 = 8'h00;
       teste27 = 8'h00;
       teste28 = 8'h00;
       teste29 = 8'h00;
end
end

endmodule