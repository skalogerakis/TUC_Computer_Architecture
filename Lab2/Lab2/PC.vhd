----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:30:11 03/03/2019 
-- Design Name: 
-- Module Name:    PC - Behavioral 
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

entity PC is
    Port ( DataIn : in  STD_LOGIC_VECTOR (31 downto 0);
           DataOut : out  STD_LOGIC_VECTOR (31 downto 0);
           clk : in  STD_LOGIC;
           wenalbe : in  STD_LOGIC;
           reset : in  STD_LOGIC);
end PC;

architecture Behavioral of PC is

SIGNAL tOut: std_logic_vector(31 downto 0) ;

begin

	PROCESS
		BEGIN
		
		WAIT UNTIL clk'EVENT AND clk = '1' ;
		IF reset = '1' then tOut <="00000000000000000000000000000000";
		END IF;
		IF wenalbe='1' THEN tOut <= DataIn;
		END IF ;
		DataOut <= tOut;
			
	END PROCESS;


end Behavioral;

