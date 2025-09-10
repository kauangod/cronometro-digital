library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cont16_ld is
	port(
		rst  : in std_logic;
		clk  : in std_logic;
		en	  : in std_logic;
		clr  : in std_logic;
		ld   : in std_logic;
      load : in std_logic_vector(3 downto 0);
		q	  : out std_logic_vector(3 downto 0)
	);
end entity;

architecture a_cont16_ld of cont16_ld is
	signal q_aux : unsigned(3 downto 0);
begin
	process(rst, clk)
	begin
		if rst = '1' then
			q_aux <= "0000";
		elsif rising_edge(clk) then
			if clr = '1' then
				q_aux <= "0000";
			elsif en = '1' then
				if ld = '1' then
					q_aux <= unsigned(load);
				else
					q_aux <= q_aux + 1;
				end if;
			end if;
		end if;
	end process;
	
	q <= std_logic_vector(q_aux);
	
end architecture;
			