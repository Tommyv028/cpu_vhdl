library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity memoria8b is 
	port(
		clk,en,wr: in std_logic:='0';
		data_in: in std_logic_vector (7 downto 0):="00000000";
		data_out: out std_logic_vector(7 downto 0):="00000000";
		direcciones: in std_logic_vector (7 downto 0));
end entity memoria8b;

architecture estructural of memoria8b is
	type memoria is array (63 downto 0) of std_logic_vector (7 downto 0);
	signal ram: memoria:=(others=>x"FF");
begin
	proceso: process (clk,en,wr,data_in,direcciones)
	begin
		if clk'event and clk='1' then
			if en='0' then
				data_out<= "ZZZZZZZZ";
			else
				if wr='0' then 
					data_out<= ram(conv_integer(direcciones));
				else 
					data_out<= "ZZZZZZZZ";
					ram(conv_integer(direcciones))<= data_in;
				end if;
			end if;
		end if;
	end process;
end architecture estructural;