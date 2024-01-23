library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity alu is 
	port(
		clk: in std_logic:='0';
		carry,ov,zeta: out std_logic:='0';
		op1: in std_logic_vector (7 downto 0):="00000000";
		op2: in std_logic_vector(7 downto 0):="00000000";
		cod_op: in std_logic_vector(2 downto 0):="000";
		resultado: out std_logic_vector(7 downto 0):="00000000");
end entity alu;

architecture estructural of alu is
begin
	proceso: process (clk,op1,op2,cod_op)
		variable comp_op2: std_logic_vector (7 downto 0);
		variable suma: std_logic_vector (8 downto 0);
		variable resta: std_logic_vector (8 downto 0);
		variable negador: std_logic_vector (7 downto 0);
		variable despla: std_logic_vector (7 downto 0);
	begin
		if clk'event and clk='1' then
			case cod_op is
				when "000"=>--suma
					suma:="0"&op1 + op2;
					if (op1(7)=op2(7)) and (op1(7)/=suma(7)) then
						ov<='1';
						resultado<=suma(7 downto 0);
					else
						ov<='0';
					end if;
					if (conv_integer(suma)>255) then
						carry<='1';
						resultado<=suma(7 downto 0);
					else 
						carry<='0';
						resultado<=suma(7 downto 0);
					end if;
				when "001"=>--resta
					comp_op2:= (not op2) + 1;
					resta:="0"&op1 + comp_op2;
					if (op1(7)= comp_op2(7)) and (op1(7)/=resta(7)) then
						ov<='1';
						resultado<=resta(7 downto 0);
					else
						ov<='0';
					end if;
					if (conv_integer(resta)>255) then
						carry<='1';
						resultado<=resta(7 downto 0);
					else 
						resultado<=resta(7 downto 0);
					end if;
				when "010"=>--or
					resultado<=op1 or op2;
				when "011"=>--and
					resultado<=op1 and op2;
				when "100"=>--shl
					despla:=op1;
					resultado(7 downto 1)<=despla(6 downto 0);
					resultado(0)<='0';
				when "101"=>--shr
					despla:=op1;
					resultado(6 downto 0)<=despla(7 downto 1);
					resultado(7)<=despla(0);
				when "110"=>--not
					negador:= not op1;
					resultado<=negador;
				when others=>resultado<="ZZZZZZZZ";
			end case;
		end if;
	end process;
end architecture estructural;