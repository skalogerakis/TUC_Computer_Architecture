----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:48:09 05/23/2019 
-- Design Name: 
-- Module Name:    StallUnit - Behavioral 
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

entity StallUnit is
    Port ( 	
				IF_ID_op: in std_logic_vector(5 downto 0);
				IF_ID_rt: in std_logic_vector(4 downto 0);
				IF_ID_rs: in std_logic_vector(4 downto 0);
				ID_EX_rt: in std_logic_vector(4 downto 0);
				PC_LDEN : in std_logic;
				enabler : out std_logic
				);
end StallUnit;

architecture Behavioral of StallUnit is

begin
	
	process(IF_ID_op, IF_ID_rs, ID_EX_rt, IF_ID_rt,PC_LDEN)
	begin

		if((IF_ID_op="001111" or IF_ID_op="000011") and ((ID_EX_rt = IF_ID_rs) or (ID_EX_rt = IF_ID_rt)) and PC_LDEN='0') then 
			enabler<='0';
		else
			enabler<='1';
		end if;
	end process;
	

end Behavioral;

