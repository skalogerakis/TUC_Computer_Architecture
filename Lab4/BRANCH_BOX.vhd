----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:11:01 03/23/2019 
-- Design Name: 
-- Module Name:    BRANCH_BOX - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity BRANCH_BOX is
	
	port (
				CONTROL_BRANCH: in std_logic_vector(5 downto 0); 
				ALU_ZERO: in std_logic;
				BRANCH_SEL: out std_logic;	
				CLK: IN std_logic
		);

	
end BRANCH_BOX;

architecture Behavioral of BRANCH_BOX is

begin

process(CONTROL_BRANCH,ALU_ZERO)
begin
	
	
	
		case CONTROL_BRANCH is
		
			when "111111" => BRANCH_SEL <= '1' ; -- b operation
			
			when "000000" => 
			   if (ALU_ZERO='1') then -- beq operation
					BRANCH_SEL <='1';
				elsif (ALU_ZERO='0') then
					BRANCH_SEL <='0';
				end if;
			when "000001" => 
			   if (ALU_ZERO='1') then -- bne operation
					BRANCH_SEL <='0';
				elsif (ALU_ZERO='0') then
					BRANCH_SEL <='1' ;
				end if;
			when others => BRANCH_SEL <= '0' ; 
		
				
		end case;
	
end process;
end Behavioral;

