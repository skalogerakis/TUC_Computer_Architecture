----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:04:12 03/04/2019 
-- Design Name: 
-- Module Name:    MUX10to5 - Behavioral 
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

entity MUX64to32 is
	port (
			Instruct0: in std_logic_vector (31 downto 0);
			Instruct1: in std_logic_vector (31 downto 0);
			sel: in std_logic;
			Out_instruct: out std_logic_vector (31 downto 0));
end MUX64to32;

architecture Behavioral of MUX64to32 is

begin

	process(sel,Instruct0,Instruct1)
	begin
				if (sel='0') then
					Out_instruct <= Instruct0;
				elsif (sel='1') then
					Out_instruct <= Instruct1;
					
				end if;
	end process ;

end Behavioral;

