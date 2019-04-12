----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:13:15 04/08/2019 
-- Design Name: 
-- Module Name:    ByteCase - Behavioral 
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

entity ByteCase is
    Port ( InputByte : in  STD_LOGIC_VECTOR (31 downto 0);
           OutputByte : out  STD_LOGIC_VECTOR (31 downto 0);
           Selector : in  STD_LOGIC);
end ByteCase;

architecture Behavioral of ByteCase is

begin



WITH Selector SELECT
	 OutputByte <= "000000000000000000000000" & InputByte(7 downto 0) WHEN '1',
						InputByte WHEN others;

end Behavioral;

