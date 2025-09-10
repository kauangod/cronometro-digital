library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity debouncer is
    port(
        clk       : in std_logic;
        input     : in std_logic;
		  debounced : out std_logic
    );
end entity;

architecture a_debouncer of debouncer is
	signal debounced_s : integer := 0;
begin
	process(clk)
	begin
		if(rising_edge(clk)) then
			if(input = '1') then
				debounced_s <= debounced_s +1;
			else
				debounced_s <= 0;
			end if;
		end if;
	end process;
	
	debounced <= '1' when debounced_s > 1500000 else
					 '0';
end architecture;