----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:05:36 03/03/2019 
-- Design Name: 
-- Module Name:    IFSTAGE - Behavioral 
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

entity IFSTAGE is
    Port ( PC_IMMED : in  STD_LOGIC_VECTOR (31 downto 0);
           PC_SEL : in  STD_LOGIC;
           PC_LDEN : in  STD_LOGIC;
           RESET : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           PC : out  STD_LOGIC_VECTOR (31 downto 0));
end IFSTAGE;

architecture Behavioral of IFSTAGE is

COMPONENT PC is
    Port ( DataIn : in  STD_LOGIC_VECTOR (9 downto 0);
           DataOut : out  STD_LOGIC_VECTOR (9 downto 0);
           clk : in  STD_LOGIC;
           wenalbe : in  STD_LOGIC;
           reset : in  STD_LOGIC
			  );
	end COMPONENT;

COMPONENT RAM is
    Port ( clk : in  STD_LOGIC;
           inst_addr : in  STD_LOGIC_VECTOR (10 downto 0);
           inst_dout : out  STD_LOGIC_VECTOR (31 downto 0);
           data_we : in  STD_LOGIC;
           data_addr : in  STD_LOGIC_VECTOR (10 downto 0);
           data_din : in  STD_LOGIC_VECTOR (31 downto 0);
           data_dout : out  STD_LOGIC_VECTOR (31 downto 0)
			  );
	end COMPONENT;

COMPONENT MUX2TO1
    PORT(
         InA : IN  std_logic_vector(31 downto 0);
         InB : IN  std_logic_vector(31 downto 0);
         Selector : IN  std_logic;
         Output : OUT  std_logic_vector(31 downto 0)
        );
	END COMPONENT;
	
SIGNAL MUXIN1 : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL MUXIN2 : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL PCOUT : STD_LOGIC_VECTOR(9 DOWNTO 0);
	 

begin

MUX : MUX2TO1 PORT MAP(
			InA => MUXIN1,
         InB =>MUXIN2,
         Selector => PC_SEL,
         Output => MUXOUT
			);

PROGCOUNTER : PC PORT MAP(
				DataIn => MUXOUT,
				DataOut => PCOUT,
				clk => CLK,
				wenalbe => PC_LDEN,
				reset => RESET
			  );
			  
--RAMCOM : RAM PORT MAP ( 
--			clk => CLK,
--         inst_addr 
--         inst_dout
--         data_we 
--         data_addr 
--         data_din 
--         data_dout => PC
--			 );
	


MUXIN1 <= PCOUT + 4;
MUXIN2 <= MUXIN1 + PC_IMMED(9 DOWNTO 0);
end Behavioral;

