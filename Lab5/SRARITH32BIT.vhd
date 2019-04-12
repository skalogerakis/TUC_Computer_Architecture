----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:18:03 02/18/2019 
-- Design Name: 
-- Module Name:    SRARITH32BIT - Behavioral 
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

entity SRARITH32BIT is
    Port ( SRARITHA : in  STD_LOGIC_VECTOR (31 downto 0);
           SRARITHOUT : out  STD_LOGIC_VECTOR (31 downto 0):= (OTHERS => '0'));
end SRARITH32BIT;

architecture Behavioral of SRARITH32BIT is

begin

--ARITHMETIC SHIFT USES MSB TO CHECK WHICH ELEMENT TO SHIFT
-- & OPPERANT IS USED FOR CONCATENATION
SRARITHOUT <= SRARITHA(31) & SRARITHA(31 DOWNTO 1) AFTER 10 NS;

end Behavioral;

