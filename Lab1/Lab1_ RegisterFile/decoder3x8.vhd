library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity decoder3x8 is
Port ( i : in  STD_LOGIC_VECTOR (2 downto 0);
		 y : out  STD_LOGIC_VECTOR (7 downto 0);
		 enable : in std_logic);

end decoder3x8;

architecture Behavioral of decoder3x8 is

begin

	

		process(i,enable)
		begin
			
			if enable='1' then
			
					case i is
						when "111" => y<="10000000";
						when "110" => y<="01000000";
						when "101" => y<="00100000";
						when "100" => y<="00010000";
						when "011" => y<="00001000";
						when "010" => y<="00000100";
						when "001" => y<="00000010";
						when "000" => y<="00000001";
						when others => y <="00000000";
					end case;
					
			else 
					y <="00000000";
					
					
			end if;
		end process;
	
	
end Behavioral;