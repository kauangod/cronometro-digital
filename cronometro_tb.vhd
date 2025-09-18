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
			button2 : in std_logic;
			sec     : out std_logic_vector(7 downto 0);
			cent    : out std_logic_vector(7 downto 0)
		);
	end component;
	
	signal clk, button1, button2 : std_logic;
	signal sec, cent : std_logic_vector(7 downto 0);

begin
	uut : cronometro
	port map(
		clk     => clk,
		button1 => button1,
		button2 => button2,
		sec     => sec,
		cent	  => cent
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
		wait for 1 ms;
		button1 <= '0';
		wait for 31 ms; 
		button1 <= '1'; --running
		wait for 1 ms;
		button1 <= '0';
		wait for 31 ms; 
		button1 <= '1'; --paused
		wait for 50 ms;
		button1 <= '0';
		wait for 31 ms;
		button1 <= '1'; -- running
		wait;
	end process;
	
	button2_gen : process
	begin
		button2 <= '1';
		wait for 70 ms;
		button2 <= '0';
		wait for 31 ms;
		button2 <= '1';
		wait for 100 ms;
		button2 <= '0';
		wait for 31 ms;
		button2 <= '1';
		wait;
	end process;
	
	
end architecture;