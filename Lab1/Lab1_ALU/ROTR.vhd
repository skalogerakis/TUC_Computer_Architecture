----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:48:07 02/18/2019 
-- Design Name: 
-- Module Name:    ROTR - Behavioral 
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

entity ROTR is
    Port ( ROTRA : in  STD_LOGIC_VECTOR (31 downto 0);
           ROTROUT : out  STD_LOGIC_VECTOR (31 downto 0));
end ROTR;

architecture Behavioral of ROTR is

begin

ROTROUT <= ROTRA(0) & ROTRA(31 DOWNTO 1) AFTER 10 NS;

end Behavioral;

