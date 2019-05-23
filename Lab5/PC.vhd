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

SIGNAL tOut: std_logic_vector(31 downto 0) := (OTHERS => '0');

begin

	PROCESS
		BEGIN
		
		WAIT UNTIL rising_edge(clk) AND clk = '1' ;
		
		IF wenalbe='1' THEN DataOut <= DataIn;
		END IF ;
		IF reset = '1' then DataOut<="00000000000000000000000000000000";
		END IF;
		
			
	END PROCESS;


end Behavioral;

