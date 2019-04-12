----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    03:33:40 04/10/2019 
-- Design Name: 
-- Module Name:    IF_ID - Behavioral 
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

entity IF_ID is
    Port ( InstrInp : in  STD_LOGIC_VECTOR (31 downto 0);
           InstrOut : out  STD_LOGIC_VECTOR (31 downto 0);
           clk : in  STD_LOGIC;
           RESET : in  STD_LOGIC;
           IF_ID_EN : in  STD_LOGIC);
end IF_ID;

architecture Behavioral of IF_ID is

begin

process(clk, RESET)
	begin
		if(rising_edge(clk) AND IF_ID_EN ='1') then
			InstrOut<=InstrInp;
		end if;
end process;


end Behavioral;

