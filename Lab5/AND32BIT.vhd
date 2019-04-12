----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:59:47 02/18/2019 
-- Design Name: 
-- Module Name:    AND32BIT - Behavioral 
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

entity AND32BIT is
    Port ( ANDA : in  STD_LOGIC_VECTOR (31 downto 0);
           ANDB : in  STD_LOGIC_VECTOR (31 downto 0);
           OUTA : out  STD_LOGIC_VECTOR (31 downto 0):= (OTHERS => '0'));
end AND32BIT;

architecture Behavioral of AND32BIT is

begin

OUTA <= ANDA AND ANDB AFTER 10 NS;

end Behavioral;

