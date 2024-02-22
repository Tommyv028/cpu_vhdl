library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity cpu_nuevo is 
	port(
		data_in: in std_logic_vector (7 downto 0);
		control: in std_logic_vector (2 downto 0);
		salida: out std_logic_vector (7 downto 0));
end entity cpu_nuevo;

architecture cpu of cpu_nuevo is

type estado is(inicio, activar_leer_pc, activar_esc_pc, reset_pc, espera, escribir_ram, activar_leer_ram, activar_esc_ram, leer_ram,
					mostrar_salida, activar_leer_ri, activar_esc_ri, leer_ri, escribir_ri, activar_leer_op1, activar_esc_op1, escribir_op1, leer_op1, incrementar_pc,
					activar_esc_data, activar_leer_data, escribir_data, leer_data, activar_leer_op2, activar_esc_op2, escribir_op2, leer_op2,
					activar_carga_alu, activar_esc_resultado, activar_leer_resultado, escribir_resultado, leer_resultado,
					activar_esc_status, activar_leer_status, escribir_status, leer_status,
					activar_esc_salida, activar_leer_salida, escribir_salida, leer_salida, desactivar_salida);
					
signal estadoActual: estado := inicio;
signal estadoSiguiente: estado;

signal en_ri, wr_ri, en_salida, wr_salida, en_pc, wr_pc, en_op1, wr_op1, en_op2, wr_op2, en_resultado, wr_resultado, en_status, wr_status, en_data, wr_data,
		 en_ram, wr_ram, op_a_cargar, carry_alu , ov_alu, zeta_alu, mostrar: std_logic:='0';
		 
signal in_ram, out_ram, out_pc, in_ri, out_ri, in_op1, out_op1, in_op2, out_op2, in_data, out_data, in_resultado, out_resultado, in_status, out_status,
		 in_salida, out_salida: std_logic_vector (7 downto 0); 
		 
signal donde_leer: std_logic_vector (1 downto 0):= "00";
signal codigo_operacion_alu: std_logic_vector (2 downto 0):= "000";
		 
signal in_pc, posicion_ram, posicion_actual: std_logic_vector (7 downto 0):="00000000";
		 
		 
alias clk: std_logic is control(0);
alias load: std_logic is control(1);
alias reset: std_logic is control(2);

component alu is
	port(
		clk: in std_logic:='0';
		carry,ov,zeta: out std_logic:='0';
		op1: in std_logic_vector (7 downto 0):="00000000";
		op2: in std_logic_vector(7 downto 0):="00000000";
		cod_op: in std_logic_vector(2 downto 0):="000";
		resultado: out std_logic_vector(7 downto 0):="00000000");
end component alu;
component registro8b is
	port(
		clk,en,wr: in std_logic:='0';
		data_in: in std_logic_vector (7 downto 0):="00000000";
		data_out: out std_logic_vector(7 downto 0):="00000000");
end component registro8b;
component memoria8b is
	port(
		clk,en,wr: in std_logic:='0';
		data_in: in std_logic_vector (7 downto 0):="00000000";
		data_out: out std_logic_vector(7 downto 0):="00000000";
		direcciones: in std_logic_vector (7 downto 0));
end component memoria8b;

begin

modulo_alu: alu port map(clk=>clk,
						resultado=>in_resultado,
						op1=>out_op1, op2=>out_op2,
						cod_op=>codigo_operacion_alu,
						carry=>carry_alu, ov=>ov_alu, zeta=>zeta_alu);

r_operador1: registro8b port map (clk=>clk, en=>en_op1, wr=>wr_op1,
								   data_in=>in_op1,
									data_out=>out_op1);

r_operador2: registro8b port map (clk=>clk, en=>en_op2, wr=>wr_op2,
								   data_in=>in_op2,
									data_out=>out_op2);
									
r_resultado: registro8b port map (clk=>clk, en=>en_resultado, wr=>wr_resultado,
								   data_in=>in_resultado,
									data_out=>out_resultado);

r_status: registro8b port map (clk=>clk, en=>en_status, wr=>wr_status,
								   data_in=>in_status,
									data_out=>out_status);

r_ri: registro8b port map (clk=>clk, en=>en_ri, wr=>wr_ri,
								   data_in=>in_ri,
									data_out=>out_ri);

r_data: registro8b port map (clk=>clk, en=>en_data, wr=>wr_data,
								   data_in=>in_data,
									data_out=>out_data);

r_pc: registro8b port map (clk=>clk, en=>en_pc, wr=>wr_pc,
								   data_in=>in_pc,
									data_out=>out_pc);

r_salida: registro8b port map (clk=>clk, en=>en_salida, wr=>wr_salida,
								   data_in=>in_salida,
									data_out=>out_salida);

r_ram: memoria8b port map (clk=>clk, direcciones=>posicion_ram, en=>en_ram, wr=>wr_ram,
									data_in=>in_ram,
									data_out=>out_ram);

logicaEstado: process (clk)
begin
	if clk'event and clk='1' then
		if reset='0' then
			estadoSiguiente<=reset_pc;
		else 
			case estadoActual is
				when reset_pc=>estadoSiguiente<=inicio;
				when inicio=>estadoSiguiente<=espera;
				when espera=>estadoSiguiente<=activar_leer_pc;
				when activar_leer_pc=>
					if load='1' then
						estadoSiguiente<=escribir_ram;
					elsif load='0' then
						estadoSiguiente<=activar_leer_ram;
					else 
						estadoSiguiente<=reset_pc;
					end if;
				when activar_leer_ram=>estadoSiguiente<=leer_ram;
				when escribir_ram=>estadoSiguiente<=incrementar_pc;
				when leer_ram=>estadoSiguiente<=activar_esc_ri;
				when activar_esc_ri=>estadoSiguiente<=activar_leer_ri;
				when activar_leer_ri=>estadoSiguiente<=leer_ri;
				when leer_ri=>estadoSiguiente<=incrementar_pc;
				
				when incrementar_pc=>
					case out_ri is
						when "00001000"=>
							estadoSiguiente<=activar_esc_data;
							op_a_cargar<='0';
							donde_leer<="00";
						when "00010000"=>
							estadoSiguiente<=activar_esc_data;
							op_a_cargar<='1';
							donde_leer<="00";
						when "00100000"=>
							estadoSiguiente<=activar_carga_alu;
							codigo_operacion_alu<="000";
						when "00110000"=>
							estadoSiguiente<=activar_carga_alu;
							codigo_operacion_alu<="001";
						when "00101000"=>
							estadoSiguiente<=activar_carga_alu;
							codigo_operacion_alu<="011";
						when "00111000"=>
							estadoSiguiente<=activar_carga_alu;
							codigo_operacion_alu<="010";
						when "01000000"=>
							estadoSiguiente<=activar_carga_alu;
							codigo_operacion_alu<="100";
						when "01001000"=>
							estadoSiguiente<=activar_carga_alu;
							codigo_operacion_alu<="101";
						when "01010000"=>
							estadoSiguiente<=activar_carga_alu;
							codigo_operacion_alu<="110";	
						when "01011000"=>
							estadoSiguiente<=activar_esc_data;
							donde_leer<="01";
							op_a_cargar<='0';
						when "01100000"=>
							estadoSiguiente<=activar_esc_salida;
							mostrar<='0';
						when "01101000"=>
							estadoSiguiente<=activar_esc_salida;
							mostrar<='1';
							
						when "01110000"=>
							estadoSiguiente<=activar_esc_data;
							donde_leer<="10";
							op_a_cargar<='0';
						when "01111000"=>
							estadoSiguiente<=activar_esc_data;
							donde_leer<="10";
							op_a_cargar<='1';
							
						when others=>
							estadoSiguiente<=espera;
					end case;
				when activar_esc_data=>estadoSiguiente<=escribir_data;
				when escribir_data=>estadoSiguiente<=activar_leer_data;
				when activar_leer_data=>
					if op_a_cargar='0' then
						estadoSiguiente<=activar_esc_op1;
					else
						estadoSiguiente<=activar_esc_op2;
					end if;
				when activar_esc_op1=>estadoSiguiente<=escribir_op1;
				when activar_esc_op2=>estadoSiguiente<=escribir_op2;
				
				when escribir_op1=>estadoSiguiente<=activar_leer_op1;
				when escribir_op2=>estadoSiguiente<=activar_leer_op2;
				
				when activar_leer_op1=>estadoSiguiente<=leer_op1;
				when activar_leer_op2=>estadoSiguiente<=leer_op2;
				
				when leer_op1=>estadoSiguiente<=activar_leer_pc;--mostrar_salida;
				when leer_op2=>estadoSiguiente<=activar_leer_pc;--mostrar_salida;
				
				when activar_carga_alu=>estadoSiguiente<=activar_esc_resultado;
				when activar_esc_resultado=>estadoSiguiente<=escribir_resultado;
				when escribir_resultado=>estadoSiguiente<=activar_esc_status;
				when activar_esc_status=>estadoSiguiente<=escribir_status;
				when escribir_status=>estadoSiguiente<=activar_leer_resultado;
				when activar_leer_resultado=>estadoSiguiente<=activar_leer_status;
				when activar_leer_status=>estadoSiguiente<=activar_leer_pc;--mostrar_salida;
				
				when mostrar_salida=>estadoSiguiente<=	  activar_leer_pc;
																	--incrementar_pc;
				when activar_esc_salida=>estadoSiguiente<=escribir_salida;
				when escribir_salida=>estadoSiguiente<=activar_leer_salida;
				when activar_leer_salida=>estadoSiguiente<=leer_salida;
				when leer_salida=>estadoSiguiente<=desactivar_salida;
				when desactivar_salida=>estadoSiguiente<=activar_leer_pc;
				
				when others=>estadoSiguiente<=inicio;
			end case;
		end if;
	end if;
	
end process logicaEstado;


estadoActual<=estadoSiguiente;



logicaSalida: process (estadoActual)
variable en_pc_v: std_logic:=en_pc;
variable wr_pc_v: std_logic:=wr_pc;
variable en_ram_v: std_logic:=en_ram;
variable wr_ram_v: std_logic:=wr_ram;
variable en_ri_v: std_logic:=en_ri;
variable wr_ri_v: std_logic:=wr_ri;
variable en_salida_v: std_logic:=en_salida;
variable wr_salida_v: std_logic:=wr_salida;
variable en_data_v: std_logic:=en_data;
variable wr_data_v: std_logic:=wr_data;
variable en_op1_v: std_logic:=en_op1;
variable wr_op1_v: std_logic:=wr_op1;
variable en_op2_v: std_logic:=en_op2;
variable wr_op2_v: std_logic:=wr_op2;
variable en_status_v: std_logic:=en_status;
variable wr_status_v: std_logic:=wr_status;
variable en_resultado_v: std_logic:=en_resultado;
variable wr_resultado_v: std_logic:=wr_resultado;

begin
	case estadoActual is
		when inicio=>
		when espera=>
			en_ri_v:='0';
			wr_ri_v:='0';
			en_salida_v:='0';
			wr_salida_v:='0';
			en_pc_v:='0';
			wr_pc_v:='0';
			en_ram_v:='0';
			wr_ram_v:='0';
			
			en_data_v:='0';
			wr_data_v:='0';
			en_resultado_v:='0';
			wr_resultado_v:='0';
			en_op1_v:='0';
			wr_op1_v:='0';
			en_op2_v:='0';
			wr_op2_v:='0';
			en_status_v:='0';
			wr_status_v:='0';

		when reset_pc=>
			en_pc_v:='1';
			wr_pc_v:='1';
			in_pc<="00000000";
			posicion_ram<="00000000";
			posicion_actual<="00000000";

		when activar_leer_pc=>
			en_pc_v:='1';
			wr_pc_v:='0';
			
		when escribir_ram=>
			en_ram_v:='1';
			wr_ram_v:='1';
			in_ram<=data_in;
			
			posicion_ram<=out_pc;
			posicion_actual<=out_pc;			
		
		when activar_leer_ram=>
			en_ram_v:='1';
			wr_ram_v:='0';		
		
		when leer_ram=>
			in_ri<=out_ram;
			
			posicion_ram<=out_pc;
			posicion_actual<=out_pc;
		
		when activar_leer_ri=>
			en_ri_v:='1';
			wr_ri_v:='0';
		
		when activar_esc_ri=>
			en_ri_v:='1';
			wr_ri_v:='1';
			
		when leer_ri=>
			--salida<=out_ri;
			en_ri_v:='1';
			wr_ri_v:='0';
			
		when activar_esc_op1=>
			en_op1_v:='1';
			wr_op1_v:='1';
		
		when activar_leer_op1=>
			en_op1_v:='1';
			wr_op1_v:='0';
		
		when activar_esc_op2=>
			en_op2_v:='1';
			wr_op2_v:='1';
		
		when activar_leer_op2=>
			en_op2_v:='1';
			wr_op2_v:='0';
		
		when activar_esc_data=>
			en_data_v:='1';
			wr_data_v:='1';
			
			en_ram_v:='1';
			wr_ram_v:='0';
			
			en_resultado_v:='1';
			wr_resultado_v:='0';
				
		when activar_leer_data=>
			en_data_v:='1';
			wr_data_v:='0';
		
		when leer_data=>
			en_data_v:='1';
			wr_data_v:='0';
		
		when escribir_data=>
			
			case donde_leer is
				when "00"=> in_data<=out_ram;
				when "01"=> in_data<=out_resultado;
				when "10"=> in_data<=data_in;
				when others=>
			end case;
			--in_data<=out_ram;
		
		when escribir_op1=>
			in_op1<=out_data;
			
			en_ri_v:='1';
			wr_ri_v:='1';
			in_ri<="00000000";
		
		when leer_op1=>
			en_op1_v:='1';
			wr_op1_v:='0';
			
		when leer_op2=>
			en_op2_v:='1';
			wr_op2_v:='0';
		
		when escribir_op2=>
			in_op2<=out_data;
			
			en_ri_v:='1';
			wr_ri_v:='1';
			in_ri<="00000000";
			
		when activar_carga_alu=>
			en_op1_v:='1';
			wr_op1_v:='0';
			en_op2_v:='1';
			wr_op2_v:='0';
			
		when activar_esc_resultado=>
			en_resultado_v:='1';
			wr_resultado_v:='1';
			
		when activar_esc_status=>
			en_status_v:='1';
			wr_status_v:='1';
		
		when activar_leer_resultado=>
			en_resultado_v:='1';
			wr_resultado_v:='0';
			
		when activar_leer_status=>
			en_status_v:='1';
			wr_status_v:='0';
		
		when escribir_resultado=>
			en_resultado_v:='1';
			wr_resultado_v:='1';
			
		when escribir_status=>
			en_status_v:='1';
			wr_status_v:='1';
			in_status<="00000"&carry_alu&ov_alu&zeta_alu;
		
		when leer_resultado=>
			en_resultado_v:='1';
			wr_resultado_v:='0';
			
		when leer_status=>
			en_status_v:='1';
			wr_status_v:='0';
		
		when activar_esc_salida=>
			en_salida_v:='1';
			wr_salida_v:='1';
			
			en_ri_v:='1';
			wr_ri_v:='0';
		
		when escribir_salida=>
			if mostrar='0' then
				in_salida<=out_resultado;
			else
				in_salida<=out_status;
			end if;
			en_salida_v:='1';
			wr_salida_v:='1';
			
		when activar_leer_salida=>
			en_salida_v:='1';
			wr_salida_v:='0';
		
		when leer_salida=>
			en_salida_v:='1';
			wr_salida_v:='0';
			salida<=out_salida;
			
		when desactivar_salida=>
			en_salida_v:='0';
			wr_salida_v:='0';
			salida<=out_salida;


		when incrementar_pc=>
			en_pc_v:='1';
			wr_pc_v:='1';
	
			in_pc<=posicion_actual+1;
			if posicion_actual="00111111" then
				in_pc<="00000000";
			end if;
			
			en_ram_v:='0';
			wr_ram_v:='0';	
			in_ram<="ZZZZZZZZ";

		when others=>
--			en_pc_v:='0';
--			wr_pc_v:='0';
--			en_salida<='0';
--			wr_salida<='0';
--			en_ram_v:='0';
--			wr_ram_v:='0';
--			en_ri_v:='0';
--			wr_ri_v:='0';

--			en_op1_v:='0';
--			wr_op1_v:='0';
--			en_op2_v:='0';
--			wr_op2_v:='0';
--			en_status_v:='0';
--			wr_status_v:='0';
--			en_data_v:='0';
--			wr_data_v:='0';
--			en_resultado_v:='0';
--			wr_resultado_v:='0';

	end case;
	
	en_pc<=en_pc_v;
	wr_pc<=wr_pc_v;
	en_ram<=en_ram_v;
	wr_ram<=wr_ram_v;
	en_ri<=en_ri_v;
	wr_ri<=wr_ri_v;
	en_salida<=en_salida_v;
	wr_salida<=wr_salida_v;
	en_data<=en_data_v;
	wr_data<=wr_data_v;
	en_op1<=en_op1_v;
	wr_op1<=wr_op1_v;
	en_op2<=en_op2_v;
	wr_op2<=wr_op2_v;
	en_status<=en_status_v;
	wr_status<=wr_status_v;
	en_resultado<=en_resultado_v;
	wr_resultado<=wr_resultado_v;
end process logicaSalida;

end architecture cpu;