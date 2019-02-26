----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:42:44 02/18/2019 
-- Design Name: 
-- Module Name:    ROTL - Behavioral 
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

entity ROTL is
    Port ( ROTLA : in  STD_LOGIC_VECTOR (31 downto 0);
           ROTLOUT : out  STD_LOGIC_VECTOR (31 downto 0));
end ROTL;

architecture Behavioral of ROTL is

begin

ROTLOUT <= ROTLA(30 DOWNTO 0) & ROTLA(31) AFTER 10 NS;

end Behavioral;

