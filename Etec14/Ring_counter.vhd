Library IEEE;
use IEEE.std_logic_1164.all;

entity Ring_counter is
Port ( D,S,RST,CLK:in std_logic;
       Q:out std_logic
       );
end Ring_counter;

architecture Behavioral of Ring_counter is
begin
process (S,RST,CLK)
begin
    if (RST='1') then 
    Q<='0';
    If (S='1') then 
    Q<='1';
    if ((D='1') and (rising_edge (CLK))) then 
    Q<='1';
    if ((D='0') and (rising_edge (CLK))) then 
    Q<='0';
   end if;
   end if;
   end if;
   end if;
   end process;
end Behavioral;