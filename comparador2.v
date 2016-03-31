module comparador (syncmulti, sync);

output wire sync;
output wire syncmulti;

integer aux;
reg synctrama;
reg syncmultitrama;

clockdemux4M clkd();
shift_register_SIPO srSIPO();
aligndemux algnd();
cnt8demux cnt8();

assign sync = synctrama;
assign syncmulti = syncmultitrama;

initial
begin
    aux = 0;     //aux == 0 estado A; aux==1 estado B; aux=2 estado C; aux=3 estado D; aux=4 estado E; aux=5 estado F;
    synctrama = 1;
    syncmultitrama = 1;
end

always @(cnt8.dout==8'h00 || cnt8.dout==8'h80) begin


    if(cnt8.dout==8'h00) begin  //maquina de estados

    case(aux)
        0:
            if(srSIPO.paralelo != algnd.doutalign) begin
                aux=1;
            end
        1:
            if(srSIPO.paralelo != algnd.doutalign) begin
                aux = 2;
            end
            else begin
					 aux = 0;
				end
        2:
            if(srSIPO.paralelo != algnd.doutalign) begin
                aux = 3;
					 synctrama = 0;
					 syncmultitrama = 0;
            end
            else begin
					 aux = 0;
				end
        3:
            if(srSIPO.paralelo == algnd.doutalign) begin
                aux=4;
            end
				else begin
					 synctrama = 0;
					 syncmultitrama = 0;
			   end
        4:
            if(srSIPO.paralelo == algnd.doutalign) begin
                aux = 5;
            end
            else begin 
					 aux = 3;
				end
        5:
            if(srSIPO.paralelo == algnd.doutalign) begin
                aux = 0;
                synctrama = 1;
					 syncmultitrama = 0;
            end
            else begin
					 aux = 3;
				end
        endcase
    end
    else if(cnt8.dout==8'h80 && aux==0) begin // caso esteja em sincronismo podemos detectar a posiçºao da PAMT
        if(srSIPO.paralelo == 8'h0b) begin
            syncmultitrama = 1;
        end
        else begin
            syncmultitrama = 0;
        end
	end
	end
endmodule