library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cronometro is
    port(
        clk 	 : in std_logic;
		  button1 : in std_logic;
		  button2 : in std_logic;
		  sec 	 : out std_logic_vector(7 downto 0);
		  cent 	 : out std_logic_vector(7 downto 0)
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
	component cont16_ld is
		port(
			  rst  : in std_logic;
			  clk  : in std_logic;
			  en	  : in std_logic;
			  clr  : in std_logic;
			  ld   : in std_logic;
			  load : in std_logic_vector(3 downto 0);
			  q	  : out std_logic_vector(3 downto 0)
		);
		
	signal button1_debounced, button2_debounced, running, reset, reset_b, clk_en0, clk_en1, clk_en2, clk_en3 : std_logic := '0';
	signal en_cc : integer := 0;
	
	
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
	
	cent0 : cont16_ld
	port map(
		  rst  => reset_s0;
		  clk  => clk;
		  en	  => clk_en0;
		  clr  => '0';
		  ld   => '0';
        load => "0000";
		  q	  => cent(3 downto 0);
	);
	
	cent1 : cont16_ld
	port map(
		  rst  => reset_s1;
		  clk  => clk;
		  en	  => clk_en1;
		  clr  => '0';
		  ld   => '0';
        load => "0000";
		  q	  => cent(7 downto 4);
	);
	
	sec0 : cont16_ld
	port map(
		  rst  => reset_s2;
		  clk  => clk;
		  en	  => clk_en2;
		  clr  => '0';
		  ld   => '0';
        load => "0000";
		  q	  => sec(3 downto 0);
	);
	
	sec1 : cont16_ld
	port map(
		  rst  => reset_s3;
		  clk  => clk;
		  en	  => clk_en3;
		  clr  => '0';
		  ld   => '0';
        load => "0000";
		  q	  => sec(7 downto 4);
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
			reset_b <= '1';
		end if;
	end process;
	
	process(clk)
	begin
		if (rising_edge(clk) and running = '1') then
			if (end_cc < 500000) then
				en_cc <= en_cc + 1;
			else
				en_cc <= 0;
			end if;
		elsif (rising_edge(clk) and reset_b = '1') then
			en_cc <= 0;
			reset_b <= '0';
		end if;
	
	clk_en <= '1' when end_cc = 499999
			 else '0';

	
	clk_en1 <= '1' when cent(3 downto 0) = "1001"
				else '0';
	clk_en2 <= '1' when cent(7 downto 4) = "1001"
				else '0';
	clk_en3 <= '1' when sec(3 downto 0) = "1001"
				else '0';
				
	reset_s0 <= '1' when cent(3 downto 0) = "1001" or reset_b = '1'
				else '0';
	reset_s1 <= '1' when cent(7 downto 4) = "1001" or reset_b = '1'
				else '0';
	reset_s2 <= '1' when sec(3 downto 0) = "1001" or reset_b = '1'
				else '0';
	reset_s3 <= '1' when sec(7 downto 4) = "0101" or reset_b = '1'
				else '0';
	end architecture;