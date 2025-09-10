library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cont_16 is
    port (
        rst : in std_logic;
        clk : in std_logic;
        en : in std_logic;
        clr : in std_logic;
		ld_en : in std_logic;
		ld : in std_logic_vector(3 downto 0) := (others => '0');
        q : out std_logic_vector(3 downto 0) := (others => '0')
    );
end entity;

architecture a_cont_16 of cont_16 is
    signal q_sig : std_logic_vector(3 downto 0) := (others => '0');
begin
    process(rst, clk, ld_en)
		begin
        if rst = '1' then
            q_sig <= ld;
		elsif ld_en = '1' then
			q_sig <= ld;
        elsif clk'event and clk = '1' then
            if clr = '1' then
                q_sig <= ld;
            else
                if en = '1' then
                    q_sig <= std_logic_vector(unsigned(q_sig) + 1);
                end if;
            end if;
        end if; 
    end process;
    q <= q_sig;
end architecture;