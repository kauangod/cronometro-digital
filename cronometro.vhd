library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cronometro is
    port(
        clk 	 : in std_logic;
		  button1 : in std_logic;
		  button2 : in std_logic
    );
end entity;

architecture a_cronometro of cronometro is
	component debouncer is
		 port(
			  clk       : in std_logic;
			  input     : in std_logic;
			  debounced : out std_logic
		 );
	end component;
	
	signal button1_debounced, button2_debounced, running : std_logic := '0';
begin
	b1 : debouncer
	port map(
		  clk       => clk,
		  input     => button1,
		  debounced => button1_debounced
	);
	
	b2 : debouncer
	port map(
		  clk       => clk,
		  input     => button2,
		  debounced => button2_debounced
	);
	
	process(button1_debounced)
	begin
		if(rising_edge(button1_debounced)) then
			running <= not(running);
		end if;
	end process;
	
	process(button2_debounced)
	begin
		if(rising_edge(button2_debounced) and running = '0') then
			--reset
		end if;
	end process;
end architecture;