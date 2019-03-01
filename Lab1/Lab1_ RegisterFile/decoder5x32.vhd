----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:07:44 02/20/2019 
-- Design Name: 
-- Module Name:    decoder5x8 - Behavioral 
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

entity decoder5x32 is

Port ( decIN : in  STD_LOGIC_VECTOR (4 downto 0);
		 decOUT : out  STD_LOGIC_VECTOR (31 downto 0));

end decoder5x32;

architecture Behavioral of decoder5x32 is

begin

process (decIN)
begin
    decOUT <= "00000000000000000000000000000000";        -- default output value
        case decIN is
         	when "00000" => decOUT(0) <= '1' after 5 ns;
            when "00001" => decOUT(1) <= '1' after 5 ns;
            when "00010" => decOUT(2) <= '1' after 5 ns;
            when "00011" => decOUT(3) <= '1' after 5 ns;
            when "00100" => decOUT(4) <= '1' after 5 ns;
            when "00101" => decOUT(5) <= '1' after 5 ns;
            when "00110" => decOUT(6) <= '1' after 5 ns;
            when "00111" => decOUT(7) <= '1' after 5 ns;
            when "01000" => decOUT(8) <= '1' after 5 ns;
            when "01001" => decOUT(9) <= '1' after 5 ns;
            when "01010" => decOUT(10) <= '1' after 5 ns;
            when "01011" => decOUT(11) <= '1' after 5 ns;
            when "01100" => decOUT(12) <= '1' after 5 ns;
            when "01101" => decOUT(13) <= '1' after 5 ns;
            when "01110" => decOUT(14) <= '1' after 5 ns;
            when "01111" => decOUT(15) <= '1' after 5 ns;
            when "10000" => decOUT(16) <= '1' after 5 ns;
            when "10001" => decOUT(17) <= '1' after 5 ns;
            when "10010" => decOUT(18) <= '1' after 5 ns;
            when "10011" => decOUT(19) <= '1' after 5 ns;
            when "10100" => decOUT(20) <= '1' after 5 ns;
            when "10101" => decOUT(21) <= '1' after 5 ns;
            when "10110" => decOUT(22) <= '1' after 5 ns;
            when "10111" => decOUT(23) <= '1' after 5 ns;
            when "11000" => decOUT(24) <= '1' after 5 ns;
            when "11001" => decOUT(25) <= '1' after 5 ns;
            when "11010" => decOUT(26) <= '1' after 5 ns;
            when "11011" => decOUT(27) <= '1' after 5 ns;
            when "11100" => decOUT(28) <= '1' after 5 ns;
            when "11101" => decOUT(29) <= '1' after 5 ns;
            when "11110" => decOUT(30) <= '1' after 5 ns;
            when "11111" => decOUT(31) <= '1' after 5 ns;
            when others => decOUT <= "00000000000000000000000000000000" after 5 ns;
        end case;
    
end process;



end Behavioral;

