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
use IEEE.numeric_std.all;
use IEEE.STD_LOGIC_SIGNED.ALL;
--use ieee.STD_LOGIC_UNSIGNED.all;
--use ieee.std_logic_arith.all;

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
           PC1 : out  STD_LOGIC_VECTOR (31 downto 0));
end IFSTAGE;

architecture Behavioral of IFSTAGE is

COMPONENT PC is
    Port ( DataIn : in  STD_LOGIC_VECTOR (31 downto 0);
           DataOut : out  STD_LOGIC_VECTOR (31 downto 0);
           clk : in  STD_LOGIC;
           wenalbe : in  STD_LOGIC;
           reset : in  STD_LOGIC
			  );
	end COMPONENT;

COMPONENT RAM is
    Port ( clk : in  STD_LOGIC;
           inst_addr : in  STD_LOGIC_VECTOR (10 downto 0);
           inst_dout : out  STD_LOGIC_VECTOR (31 downto 0);
           data_we : in  STD_LOGIC;	--from that variable and below are not needed in this module
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
	
SIGNAL MUXIN1 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL MUXIN2 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL MUXOUT : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL ADDROUT :  STD_LOGIC_VECTOR (10 downto 0);
SIGNAL PCOUT : STD_LOGIC_VECTOR(31 DOWNTO 0);

SIGNAL dummyDout : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
SIGNAL dummyWe : STD_LOGIC := '0';
SIGNAL dummyAddr : STD_LOGIC_VECTOR(10 DOWNTO 0) := (OTHERS => '0');
SIGNAL dummyDin : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
SIGNAL dummyInstr : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');

SIGNAL MULTIPLIER : STD_LOGIC_VECTOR(31 DOWNTO 0);
	 

begin

MUX : MUX2TO1 PORT MAP(
			InA => MUXIN1,
         InB => MUXIN2,
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
			  
RAMCOM : RAM PORT MAP ( 
			clk => CLK,
         inst_addr => ADDROUT,
         inst_dout => dummyInstr,
         data_we => dummyWe,
         data_addr => dummyAddr,
         data_din => dummyDin,
         data_dout => dummyDout
			 );
	

PC1<=PCOUT;

--MULTIPLIER <= signed(PC_IMMED) * 4;
--PC_IMMED <= std_logic_vector(MULTIPLIER);

MUXIN1 <= PCOUT + 4;
--MUXIN2 <= PCOUT + 4 + PC_IMMED * 4;
MULTIPLIER <= std_logic_vector(signed(PC_IMMED)*4);
MUXIN2 <= PCOUT + 4 + MULTIPLIER;

ADDROUT <= PCOUT(12 DOWNTO 2);
end Behavioral;

