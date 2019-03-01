----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:46:13 02/21/2019 
-- Design Name: 
-- Module Name:    multiplexer1024to32 - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity multiplexer1024to32 is

	port ( muxIN: in std_logic_vector(1023 downto 0);
			 muxSEL:in std_logic_vector(4 downto 0);
			 muxOUT: out std_logic_vector(31 downto 0));
			 
end multiplexer1024to32;



architecture Behavioral of multiplexer1024to32 is


component multiplexer32to1 is

	port ( 	x : in std_logic_vector(31 downto 0);
				s : in std_logic_vector(4 downto 0);
				y : out std_logic
				);
end component;
							

begin

	GEN_MUX:

	for i in 0 to 31 generate
		
		MUX: multiplexer32to1 port map ( 
													x(0) 	=> muxIN(0+i*32),
													x(1) 	=> muxIN(1+i*32),
													x(2) 	=> muxIN(2+i*32),
													x(3) 	=> muxIN(3+i*32),
													x(4) 	=> muxIN(4+i*32),
													x(5) 	=> muxIN(5+i*32),
													x(6) 	=> muxIN(6+i*32),
													x(7) 	=> muxIN(7+i*32),
													x(8) 	=> muxIN(8+i*32),
													x(9) 	=> muxIN(9+i*32),
													x(10) => muxIN(10+i*32),
													x(11) => muxIN(11+i*32),
													x(12) => muxIN(12+i*32),
													x(13) => muxIN(13+i*32),
													x(14) => muxIN(14+i*32),
													x(15) => muxIN(15+i*32),
													x(16) => muxIN(16+i*32),
													x(17) => muxIN(17+i*32),
													x(18) => muxIN(18+i*32),
													x(19) => muxIN(19+i*32),
													x(20) => muxIN(20+i*32),
													x(21) => muxIN(21+i*32),
													x(22) => muxIN(22+i*32),
													x(23) => muxIN(23+i*32),
													x(24) => muxIN(24+i*32),
													x(25) => muxIN(25+i*32),
													x(26) => muxIN(26+i*32),
													x(27) => muxIN(27+i*32),
													x(28) => muxIN(28+i*32),
													x(29) => muxIN(29+i*32),
													x(30) => muxIN(30+i*32),
													x(31) => muxIN(31+i*32),
													y     => muxOUT(i),
													s(0) 	=> muxSEL(0),
													s(1) 	=> muxSEL(1),
													s(2) 	=> muxSEL(2),
													s(3) 	=> muxSEL(3),
													s(4) 	=> muxSEL(4));
													
	end generate GEN_MUX;			



end Behavioral;

