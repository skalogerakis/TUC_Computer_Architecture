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

signal dec2x4_out: std_logic_vector(3 downto 0);

component decoder3x8 is
	port(
			i : in  STD_LOGIC_VECTOR (2 downto 0);
			y : out  STD_LOGIC_VECTOR (7 downto 0);
			enable : in std_logic
			);
			
end component;
	
	
component decoder2x4 is 
	port(	
			a : in STD_LOGIC_VECTOR(1 downto 0);
			b : out STD_LOGIC_VECTOR(3 downto 0)
			);
end component;


begin


D2x4: decoder2x4 port map (	a(0) => decIN(3),
										a(1) => decIN(4),
										b(0) => dec2x4_out(0),
										b(1) => dec2x4_out(1),
										b(2) => dec2x4_out(2),
										b(3) => dec2x4_out(3));
									
									
D3x8_1: decoder3x8 port map ( 	i(0) => decIN(0),
											i(1) => decIN(1),
											i(2) => decIN(2),
											enable => dec2x4_out(0),
											y(0) => decOUT(0),
											y(1) => decOUT(1),
											y(2) => decOUT(2),
											y(3) => decOUT(3),
											y(4) => decOUT(4),
											y(5) => decOUT(5),
											y(6) => decOUT(6),
											y(7) => decOUT(7));
											

D3x8_2: decoder3x8 port map ( 	i(0) => decIN(0),
											i(1) => decIN(1),
											i(2) => decIN(2),
											enable => dec2x4_out(1),
											y(0) => decOUT(8),
											y(1) => decOUT(9),
											y(2) => decOUT(10),
											y(3) => decOUT(11),
											y(4) => decOUT(12),
											y(5) => decOUT(13),
											y(6) => decOUT(14),
											y(7) => decOUT(15));
											

D3x8_3: decoder3x8 port map ( 	i(0) => decIN(0),
											i(1) => decIN(1),
											i(2) => decIN(2),
											enable => dec2x4_out(2),
											y(0) => decOUT(16),
											y(1) => decOUT(17),
											y(2) => decOUT(18),
											y(3) => decOUT(19),
											y(4) => decOUT(20),
											y(5) => decOUT(21),
											y(6) => decOUT(22),
											y(7) => decOUT(23));


D3x8_4: decoder3x8 port map ( 	i(0) => decIN(0),
											i(1) => decIN(1),
											i(2) => decIN(2),
											enable => dec2x4_out(3),
											y(0) => decOUT(24),
											y(1) => decOUT(25),
											y(2) => decOUT(26),
											y(3) => decOUT(27),
											y(4) => decOUT(28),
											y(5) => decOUT(29),
											y(6) => decOUT(30),
											y(7) => decOUT(31));



end Behavioral;

