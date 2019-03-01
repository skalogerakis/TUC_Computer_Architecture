library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

--  Uncomment the following lines to use the declarations that are
--  provided for instantiating Xilinx primitive components.
--library UNISIM;
--use UNISIM.VComponents.all;

entity multiplexer32to1 is
    Port ( x : in std_logic_vector(31 downto 0);
           s : in std_logic_vector(4 downto 0);
           y : out std_logic);
end multiplexer32to1;

architecture mux of multiplexer32to1 is

begin
    process(x,s)
    begin
			 if(s="00000")then
			 y<=x(0) after 5 ns;
			 elsif(s="00001")then
			 y<=x(1) after 5 ns;
			 elsif(s="00010")then
			 y<=x(2) after 5 ns;
			 elsif(s="00011")then
			 y<=x(3) after 5 ns;
			 elsif(s="00100")then
			 y<=x(4) after 5 ns;
			 elsif(s="00101")then
			 y<=x(5) after 5 ns;
			 elsif(s="00110")then
			 y<=x(6) after 5 ns;
			 elsif(s="00111")then
			 y<=x(7) after 5 ns;
			 elsif(s="01000")then
			 y<=x(8) after 5 ns;
			 elsif(s="01001")then
			 y<=x(9) after 5 ns;
			 elsif(s="01010")then
			 y<=x(10) after 5 ns;
			 elsif(s="01011")then
			 y<=x(11) after 5 ns;
			 elsif(s="01100")then
			 y<=x(12) after 5 ns;
			 elsif(s="01101")then
			 y<=x(13) after 5 ns;
			 elsif(s="01110")then
			 y<=x(14) after 5 ns;
			 elsif(s="01111")then-----
			 y<=x(15) after 5 ns;
			 elsif(s="10000")then
			 y<=x(16) after 5 ns;
			 elsif(s="10001")then
			 y<=x(17) after 5 ns;
			 elsif(s="10010")then
			 y<=x(18) after 5 ns;
			 elsif(s="10011")then
			 y<=x(19) after 5 ns;
			 elsif(s="10100")then
			 y<=x(20) after 5 ns;
			 elsif(s="10101")then
			 y<=x(21) after 5 ns;
			 elsif(s="10110")then
			 y<=x(22) after 5 ns;
			 elsif(s="10111")then
			 y<=x(23) after 5 ns;
			 elsif(s="11000")then
			 y<=x(24) after 5 ns;
			 elsif(s="11001")then
			 y<=x(25) after 5 ns;
			 elsif(s="11010")then
			 y<=x(26) after 5 ns;
			 elsif(s="11011")then
			 y<=x(27) after 5 ns;
			 elsif(s="11100")then
			 y<=x(28) after 5 ns;
			 elsif(s="11101")then
			 y<=x(29) after 5 ns;
			 elsif(s="11110")then
			 y<=x(30) after 5 ns;
			 elsif(s="11111")then
			 y<=x(31) after 5 ns;
			 
			 end if ;
	end process ;
end mux;  
