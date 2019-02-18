----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:36:33 02/18/2019 
-- Design Name: 
-- Module Name:    SLLOGIC - Behavioral 
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

entity SLLOGIC is
    Port ( SLLOGICA : in  STD_LOGIC_VECTOR (31 downto 0);
           SLLOGICOUT : out  STD_LOGIC_VECTOR (31 downto 0));
end SLLOGIC;

architecture Behavioral of SLLOGIC is

begin

SLLOGICOUT <= SLLOGICA(30 DOWNTO 0) & '0' AFTER 10 NS;

end Behavioral;

