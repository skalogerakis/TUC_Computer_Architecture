----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:31:26 02/18/2019 
-- Design Name: 
-- Module Name:    SRLOGIC - Behavioral 
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

entity SRLOGIC is
    Port ( SRLOGICA : in  STD_LOGIC_VECTOR (31 downto 0);
           SRLOGICOUT : out  STD_LOGIC_VECTOR (31 downto 0):= (OTHERS => '0'));
end SRLOGIC;

architecture Behavioral of SRLOGIC is

begin

SRLOGICOUT <= '0' & SRLOGICA(31 DOWNTO 1) AFTER 10 NS;

end Behavioral;

