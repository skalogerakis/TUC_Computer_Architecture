----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:08:55 02/19/2019 
-- Design Name: 
-- Module Name:    register - Behavioral 
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


ENTITY regist5bits IS

PORT ( 	
			DataIn : IN STD_LOGIC_VECTOR(4 DOWNTO 0):= (others => '0') ;
			WE, Clock : IN STD_LOGIC ;
			DataOut : OUT STD_LOGIC_VECTOR(4 DOWNTO 0):= (others => '0')  ) ;
			
END regist5bits ;

ARCHITECTURE Behavior OF regist5bits IS

BEGIN


	
	PROCESS
			BEGIN
		   
			WAIT UNTIL Clock'EVENT AND Clock = '1' ;
			IF WE='1' THEN DataOut <= DataIn after 5 ns ;
			END IF ;
			
   END PROCESS ;
		
END Behavior ;