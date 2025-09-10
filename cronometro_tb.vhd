library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cronometro_tb is
 
end entity;

architecture a_cronometro_tb of cronometro_tb is
    component cronometro is
		 port(
			  clk     : in std_logic;
			  button1 : in std_logic;
			  botao_sim: out std_logic;
			  debounce: out integer
		 );
	end component;
	
	signal clk, button1, botao_sim : std_logic;
	signal debounce : integer;
begin
	uut : cronometro
	port map(
        clk     => clk,
        button1 => button1,
		  botao_sim => botao_sim,
		  debounce => debounce
	);
	
	clk_gen : process
	begin
		clk <= '0';
		wait for 10 ns;
		clk <= '1';
		wait for 10 ns;
	end process;
	
	button1_gen : process
	begin
		button1 <= '1';
		wait for 31 ms;
		button1 <= '0';
		wait for 15 ns;
		button1 <= '1';
		wait for 20 ms;
		button1 <= '0';
		wait;
	end process;
end architecture;