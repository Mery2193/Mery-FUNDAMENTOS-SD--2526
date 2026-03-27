library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity HA_simple is
    port(
        A, B  : in  STD_LOGIC;
        S, C  : out STD_LOGIC
    );
end HA_simple;

architecture flujo of HA_simple is
begin
    S <= A xor B;
    C <= A and B;
end flujo;
