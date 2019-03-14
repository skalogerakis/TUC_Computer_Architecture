----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:10:08 03/05/2019 
-- Design Name: 
-- Module Name:    Extender - Behavioral 
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

entity Extender is
	port( 	
			imm16: in std_logic_vector(15 downto 0);
			ImmExt : in std_logic;
			imm32_out: out std_logic_vector(31 downto 0)
       );
				
end Extender;

architecture Behavioral of Extender is

signal extend: std_logic_vector(15 downto 0);


begin
     
process(extend,ImmExt ,imm16)
begin
	  
	   if (ImmExt ='0') then
		
				extend <= (others => '0');	
				imm32_out <= extend & imm16;
				
				
		elsif (ImmExt='1') then 
			
				if (imm16(15)='1') then 
				extend <= (others => '1');
				
				elsif (imm16(15)='0') then			
				extend <= (others => '0');
				
				end if;
				
				
				imm32_out <= extend & imm16(15 downto 0) ;
				
					
		end if;		
			
end process;
	 
	 
	 
end Behavioral;

