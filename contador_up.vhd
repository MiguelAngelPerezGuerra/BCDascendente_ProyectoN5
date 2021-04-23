library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity contador_up is
port (clock,enable,reset : in std_logic;
		Q: buffer std_logic_vector(1 downto 0));
end contador_up;

architecture sol of contador_up is
begin
process(enable)
	begin
		if reset='0' then Q<="00";
  		elsif (clock'event and clock='1') then
			if enable='1' then
				if (Q="11") then Q<="00";
				else Q<=Q+1;
				end if;
			end if;
		end if;
end process;
end sol;