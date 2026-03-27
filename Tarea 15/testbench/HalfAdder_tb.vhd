library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_HA_simple is
end tb_HA_simple;

architecture prueba of tb_HA_simple is

    component HA_simple
        port(
            A, B : in STD_LOGIC;
            S, C : out STD_LOGIC
        );
    end component;

    signal A, B : STD_LOGIC;
    signal S, C : STD_LOGIC;

begin

    U1: HA_simple port map(A, B, S, C);

    process
    begin
        -- Pruebas básicas
        A <= '0'; B <= '0'; wait for 20 ns;
        A <= '0'; B <= '1'; wait for 20 ns;
        A <= '1'; B <= '0'; wait for 20 ns;
        A <= '1'; B <= '1'; wait for 20 ns;

        wait;
    end process;

end prueba;
