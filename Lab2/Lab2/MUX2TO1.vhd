----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:31:20 03/03/2019 
-- Design Name: 
-- Module Name:    MUX2TO1 - Behavioral 
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

entity MUX2TO1 is
    Port ( InA : in  STD_LOGIC_VECTOR (31 downto 0);
           InB : in  STD_LOGIC_VECTOR (31 downto 0);
           Selector : in  STD_LOGIC;
           Output : out  STD_LOGIC_VECTOR (31 downto 0));
end MUX2TO1;

architecture Behavioral of MUX2TO1 is

begin

with Selector select
		Output <= InA when '0',
					 InB when others;

end Behavioral;

