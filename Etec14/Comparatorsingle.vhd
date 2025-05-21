library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Comparatorsingle is
Port ( A,B:in std_logic; 
       AB,AlessB,AmoreB:out std_logic
        );
end Comparatorsingle;

architecture Behavioral of Comparatorsingle is

begin
process (A,B)
begin
        if A=B then
        AB<='1';
        AmoreB<='0';
        AlessB<='0';
        else 
        AB<='0';
        if ((A='1') and (B='0')) then
        AmoreB<='1';
        AlessB<='0';
        else
        AlessB<='1';
        AmoreB<='0';
        end if;
        end if;
        end process;
end Behavioral;