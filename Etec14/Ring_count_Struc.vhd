library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Ring_Struc is
Port ( D:in std_logic;
       S:in std_logic;
       RST:in std_logic;
       CLK:in std_logic;
       Q:inout std_logic
       );
end Ring_Struc;

architecture structural of Ring_Struc is
signal Q1,Q2,Q3,stp1,stp2:std_logic;
begin

    --DFlipFlop 1
    DFF1:entity work.Ring_counter port map
        (D=>Q, Q=>Q1, S=>S, CLK=>CLK, RST=>stp1);
    --DFlipFlop 2
    DFF2:entity work.Ring_counter port map
        (D=>Q1, Q=>Q2, S=>stp2, CLK=>CLK, RST=>RST);
    --DFlipFlop 3
    DFF3:entity work.Ring_counter port map
        (D=>Q2, Q=>Q3, S=>stp2, CLK=>CLK, RST=>RST);
    --DFlipFlop 4
    DFF4:entity work.Ring_counter port map
        (D=>Q3, Q=>Q, S=>stp2, CLK=>CLK, RST=>RST);

end structural;