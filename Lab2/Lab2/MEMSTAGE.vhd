----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:01:13 03/05/2019 
-- Design Name: 
-- Module Name:    MEMSTAGE - Behavioral 
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
use IEEE.STD_LOGIC_SIGNED.ALL;
use ieee.std_logic_arith.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MEMSTAGE is
    Port ( CLK : in  STD_LOGIC;
           Mem_WrEn : in  STD_LOGIC;
           ALU_MEM_Addr : in  STD_LOGIC_VECTOR (31 downto 0);
           MEM_DataIn : in  STD_LOGIC_VECTOR (31 downto 0);
           MEM_DataOut : out  STD_LOGIC_VECTOR (31 downto 0));
end MEMSTAGE;

architecture Behavioral of MEMSTAGE is

COMPONENT RAM is
    Port ( clk : in  STD_LOGIC;
           inst_addr : in  STD_LOGIC_VECTOR (10 downto 0); --that variable is not needed in this module
           inst_dout : out  STD_LOGIC_VECTOR (31 downto 0);--that variable is not needed in this module
           data_we : in  STD_LOGIC;	
           data_addr : in  STD_LOGIC_VECTOR (10 downto 0);
           data_din : in  STD_LOGIC_VECTOR (31 downto 0);
           data_dout : out  STD_LOGIC_VECTOR (31 downto 0)
			  );
	end COMPONENT;
	
	
SIGNAL dummyDout : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
SIGNAL dummyAddr : STD_LOGIC_VECTOR(10 DOWNTO 0) := (OTHERS => '0');
SIGNAL finAddr : STD_LOGIC_VECTOR(10 DOWNTO 0) := (OTHERS => '0');


begin

RRAM : RAM PORT MAP(
			  clk => CLK,
           inst_addr => dummyAddr,
           inst_dout => dummyDout,
           data_we => Mem_WrEn,	
           data_addr => finAddr,
           data_din => MEM_DataIn,
           data_dout => MEM_DataOut
			  );
			  
--0x400 that is demanded is number 1024 in binary and 10000000000	in decimal. So we add our address to that
finAddr <= ALU_MEM_Addr(12 DOWNTO 2) + "10000000000";


end Behavioral;

