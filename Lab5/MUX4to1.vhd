----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:01:55 05/21/2019 
-- Design Name: 
-- Module Name:    MUX4to1 - Behavioral 
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

entity MUX4to1 is

Port (     InA : in  STD_LOGIC_VECTOR (31 downto 0);
           InB : in  STD_LOGIC_VECTOR (31 downto 0);
			  InC : in  STD_LOGIC_VECTOR (31 downto 0);
           Selector : in  STD_LOGIC_vector(1 downto 0);
           Output : out  STD_LOGIC_VECTOR (31 downto 0));
end MUX4to1;

architecture Behavioral of MUX4to1 is

begin
	

with Selector select
		Output <= InA  after 5 ns when "00",
					 InB  after 5 ns when "01",
					 InC after 5 ns when others;


end Behavioral;

