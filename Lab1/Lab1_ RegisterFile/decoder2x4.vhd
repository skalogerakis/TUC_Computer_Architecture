----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:59:51 02/19/2019 
-- Design Name: 
-- Module Name:    decoder2x4 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created

library IEEE;

use IEEE.STD_LOGIC_1164.all;

entity decoder2x4 is

port(
a : in STD_LOGIC_VECTOR(1 downto 0);
b : out STD_LOGIC_VECTOR(3 downto 0));


end decoder2x4;

architecture bhv of decoder2x4 is
begin

	process(a)
		begin
			
			case a is
				when "00" => b <= "0001"; 
				when "01" => b <= "0010"; 
				when "10" => b <= "0100";
				when "11" => b <= "1000";
				when others  => b <="0000";
			end case;
			
	end process;

end bhv;
