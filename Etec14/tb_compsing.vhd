library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_compsing is
end tb_compsing;


architecture Behav of tb_compsing is 
component Comparatorsingle
    port ( A,B:in std_logic;
           AB,AmoreB,AlessB:out std_logic);
end component;
 signal A,B,AB,AlessB,AmoreB:std_logic;
 begin
    uut: entity work.Comparatorsingle
        port map (
        A=>A,
        B=>B,
        AB=>AB,
        AlessB=>AlessB,
        AmoreB=>AmoreB
        );

    process
    begin
    wait for 10ns;
    A<='0'; B<='0';
    wait for 10ns;
    A<='1'; B<='0';
    wait for 10ns;
    A<='0'; B<='1';
    wait for 10ns;
    A<='1'; B<='1';
    wait for 10ns;
 end process;
end Behav;
