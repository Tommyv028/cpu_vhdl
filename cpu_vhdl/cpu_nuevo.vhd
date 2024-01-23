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

type estado is(inicio,activar_pc, reset_pc, espera, escribir_ram, leer_ram, mostrar_salida, leer_ri, cargar_op1, incrementar_pc);
signal estadoActual: estado := inicio;
signal estadoSiguiente: estado;

signal en_ri, wr_ri, en_salida, wr_salida, en_pc, wr_pc, en_op1, wr_op1, en_op2, wr_op2, en_resultado, wr_resultado, en_status, wr_status, en_data, wr_data,
		 en_ram, wr_ram: std_logic:='0';
		 --
		 
		 
signal in_ram, out_ram, out_pc, in_ri, out_ri, in_op1, out_op1, in_op2, out_op2, in_data, out_data, in_resultado, out_resultado, in_status, out_status,
		 in_salida, out_salida: std_logic_vector (7 downto 0);
		 
		 -- 
		 
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

--modulo_alu: alu port map(clk=>clk,
--						resultado=>,
--						op1=>, op2=>,
--						cod_op=>, carry=> ,ov=> ,zeta=> );

r_operador1: registro8b port map (clk=>clk, en=>en_op1, wr=>wr_op1,
								   data_in=>in_op1,
									data_out=>out_op1);

--r_operador2: registro8b port map (clk=>clk, en=>en_op2, wr=>wr_op2,
--								   data_in=>in_op2,
--									data_out=>out_op2);
--									
--r_resultado: registro8b port map (clk=>clk, en=>en_resultado, wr=>wr_resultado,
--								   data_in=>in_resultado,
--									data_out=>out_resultado);

--r_status: registro8b port map (clk=>clk, en=>en_status, wr=>wr_status,
--								   data_in=>in_status,
--									data_out=>out_status);

r_ri: registro8b port map (clk=>clk, en=>en_ri, wr=>wr_ri,
								   data_in=>in_ri,
									data_out=>out_ri);

--r_data: registro8b port map (clk=>clk, en=>en_data, wr=>wr_data,
--								   data_in=>in_data,
--									data_out=>out_data);

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
				when espera=>estadoSiguiente<=activar_pc;
				when activar_pc=>
					if load='1' then
						estadoSiguiente<=escribir_ram;
					elsif load='0' then
						estadoSiguiente<=leer_ram;
					else 
						estadoSiguiente<=reset_pc;
					end if;
				when escribir_ram=>estadoSiguiente<=incrementar_pc;
				when leer_ram=>estadoSiguiente<=leer_ri;
				when leer_ri=>estadoSiguiente<=incrementar_pc;
				
				when incrementar_pc=>
					case out_ri is
						when "00001000"=>
							estadoSiguiente<=cargar_op1;
						when others=>
							estadoSiguiente<=espera;
					end case;
				when cargar_op1=>estadoSiguiente<=mostrar_salida;
				when mostrar_salida=>estadoSiguiente<=incrementar_pc;
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
--variable en_data_v: std_logic:=en_data;
--variable wr_data_v: std_logic:=wr_data;
variable en_op1_v: std_logic:=en_op1;
variable wr_op1_v: std_logic:=wr_op1;
--variable en_op2_v: std_logic:=en_op2;
--variable wr_op2_v: std_logic:=wr_op2;
--variable en_status_v: std_logic:=en_status;
--variable wr_status_v: std_logic:=wr_status;
--variable en_resultado_v: std_logic:=en_resultado;
--variable wr_resultado_v: std_logic:=wr_resultado;

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
			
--			en_data_v:='0';
--			wr_data_v:='0';
--			en_resultado_v:='0';
--			wr_resultado_v:='0';
			en_op1_v:='0';
			wr_op1_v:='0';
--			en_op2_v:='0';
--			wr_op2_v:='0';
--			en_status_v:='0';
--			wr_status_v:='0';

		when activar_pc=>
			en_pc_v:='1';
			wr_pc_v:='0';
			posicion_ram<=out_pc;
			posicion_actual<=out_pc;
			
		when escribir_ram=>
			en_ram_v:='1';
			wr_ram_v:='1';
			in_ram<=data_in;
			
			en_pc_v:='1';
			wr_pc_v:='0';
			posicion_ram<=out_pc;			
			
--			en_ri_v:='0';
--			wr_ri_v:='0';
--			en_salida_v:='0';
--			wr_salida_v:='0';

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
			
		when leer_ram=>
			en_ram_v:='1';
			wr_ram_v:='0';
			
			en_ri_v:='1';
			wr_ri_v:='1';
			in_ri<=out_ram;
			
		when leer_ri=>
			en_ri_v:='1';
			wr_ri_v:='0';
			
		
		when cargar_op1=>
			en_op1_v:='1';
			wr_op1_v:='1';
			in_op1<=out_ram;
			
			en_ri_v:='1';
			wr_ri_v:='1';
			in_ri<="00000000";
		
		when mostrar_salida=>
			en_salida_v:='1';
			wr_salida_v:='0';
			--salida<=out_salida;
			salida<=out_ram;
			en_ri_v:='1';
			wr_ri_v:='0';
			
			en_pc_v:='1';
			wr_pc_v:='0';
			posicion_actual<=out_pc;
			
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
			
		when reset_pc=>
			en_pc_v:='1';
			wr_pc_v:='1';
			in_pc<="00000000";
			
			
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

		when incrementar_pc=>
			en_pc_v:='1';
			wr_pc_v:='1';
			in_pc<=posicion_actual+1;

			en_ram_v:='0';
			wr_ram_v:='0';	
			in_ram<="ZZZZZZZZ";
			
--			en_salida<='0';
--			wr_salida<='0';

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
--	en_data<=en_data_v;
--	wr_data<=wr_data_v;
	en_op1<=en_op1_v;
	wr_op1<=wr_op1_v;
-- en_op2<=en_op2_v;
--	wr_op2<=wr_op2_v;
--	en_status<=en_status_v;
--	wr_status<=wr_status_v;
--	en_resultado<=en_resultado_v;
--	wr_resultado<=wr_resultado_v;
end process logicaSalida;

end architecture cpu;