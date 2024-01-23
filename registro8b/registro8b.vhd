library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity registro8b is 
	port(
		clk,en,wr: in std_logic:='0';
		data_in: in std_logic_vector (7 downto 0):="00000000";
		data_out: out std_logic_vector(7 downto 0):="00000000");
end entity registro8b;

architecture estructural of registro8b is
	signal registro: std_logic_vector (7 downto 0):="00000000";
begin
	proceso: process (clk,en,wr,data_in,registro)
	begin
		if clk'event and clk='1' then
			if en='0' then
				data_out<= "ZZZZZZZZ";
			else
				if wr='0' then 
					data_out<= registro;
				else 
					data_out<= "ZZZZZZZZ";
					registro<= data_in;
				end if;
			end if;
		end if;
	end process;
end architecture estructural;