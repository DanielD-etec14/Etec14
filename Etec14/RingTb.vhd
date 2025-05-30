library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RingTb is
end RingTb;

architecture Behavioral of RingTb is 
signal D,S,RST,CLK,Q:std_logic;
begin 
uut:entity work.Ring_Struc
    port map(
    D=>D,
    S=>S,
    RST=>RST,
    CLK=>CLK,
    Q=>Q
    );

process 
begin
    
    --test 1
    D<='1', S<='0', RST<='0';


