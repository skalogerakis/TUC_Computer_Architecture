----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:44:21 03/27/2019 
-- Design Name: 
-- Module Name:    TOP_LEVEL_TEST - Behavioral 
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

entity TOP_LEVEL is
	PORT( 	
			CLK: in std_logic;
			RESET: in std_logic
	);
	
end TOP_LEVEL;





architecture Behavioral of TOP_LEVEL is

component DATAPATH is 
port (
				CLK: in std_logic;  
				OPCODE: out std_logic_vector(5 downto 0);
				ALU_IN: out std_logic_vector(5 downto 0);
				
				 -- CONTROL TO RF 
				RF_B_SEL: in std_logic;
				IMM_EXT: in std_logic;
				RF_WRDATA_SEL: in std_logic;
				REG_WRITE_EN: in std_logic;
				imm_Shift: in std_logic;
				BYTE_CASE: in std_logic;
				FETCH_EN : in std_logic;
				IDEX_EN: in std_logic;
				MEMWB_EN: in std_logic;
				--nPC_sel: in std_logic_vector(5 downto 0); 
				-- CONTROL TO IF 
				PC_LOAD_EN: in std_logic;
				RESET: in std_logic;
				
			   -- CONTROL TO MEMORY 
				MEM_WREN: in std_logic;
				
				-- CONTROL TO ALU 
				ALU_BIN_SEL: in std_logic; 
				ALU_FUNC: in std_logic_vector(3 downto 0)
				
				
		);

end component;

component CONTROL is
	PORT(
				CLK: in std_logic;
				RESET: in std_logic;
				OPCODE: in std_logic_vector(5 downto 0);
				ALU_IN : in std_logic_vector(5 downto 0);
				
				 
				 -- CONTROL TO RF 
				RF_B_SEL: out std_logic;
				IMM_EXT: out std_logic;
				RF_WRDATA_SEL: out std_logic;
				REG_WRITE_EN: out std_logic;
				imm_Shift: out std_logic;
				BYTE_CASE: out std_logic;
				FETCH_EN : out std_logic;
				IDEX_EN: out std_logic;
				MEMWB_EN: out std_logic;
				
				--nPC_sel: in std_logic_vector(5 downto 0); 
				-- CONTROL TO IF 
				PC_LOAD_EN: out std_logic;
				
			   -- CONTROL TO MEMORY 
				MEM_WREN: out std_logic;
				
				-- CONTROL TO ALU 
				ALU_BIN_SEL: out std_logic; 
				ALU_FUNC: out std_logic_vector(3 downto 0)
			);	
end component;

signal OPCODE_SIGNAL:STD_LOGIC_VECTOR(5 DOWNTO 0);
signal ALU_SIGNAL : std_logic_vector(5 downto 0);
signal RF_B_SEL_SIGNAL:std_logic;
signal IMM_EXT_SIGNAL:std_logic;
signal RF_WRDATA_SEL_SIGNAL:std_logic;
signal REG_WRITE_EN_SIGNAL:std_logic;
signal imm_Shift_SIGNAL:std_logic;

signal PC_LOAD_EN_SIGNAL:std_logic;

signal MEM_WREN_SIGNAL:std_logic;

signal ALU_BIN_SEL_SIGNAL:std_logic;
signal ALU_FUNC_SIGNAL:std_logic_vector(3 downto 0);
signal BYTE_CASE_SIGNAL: std_logic;
signal FETCH_EN_SIGNAL: std_logic;
signal IDEX_EN_SIGNAL: std_logic;
signal MEMWB_EN_SIGNAL: std_logic;


begin

CONTROL1: CONTROL port map (
										CLK => CLK,
										RESET=>RESET,
										OPCODE => OPCODE_SIGNAL,
										ALU_IN=> ALU_SIGNAL,
											 -- CONTROL TO RF 
										RF_B_SEL=> RF_B_SEL_SIGNAL,
										IMM_EXT => IMM_EXT_SIGNAL,
										RF_WRDATA_SEL => RF_WRDATA_SEL_SIGNAL,
										REG_WRITE_EN => REG_WRITE_EN_SIGNAL,
										imm_Shift => imm_Shift_SIGNAL,	
										BYTE_CASE => BYTE_CASE_SIGNAL,
										FETCH_EN => FETCH_EN_SIGNAL,
										IDEX_EN => IDEX_EN_SIGNAL,
										MEMWB_EN => MEMWB_EN_SIGNAL,
											-- CONTROL TO IF 
										PC_LOAD_EN => PC_LOAD_EN_SIGNAL,
											
											-- CONTROL TO MEMORY 
										MEM_WREN => MEM_WREN_SIGNAL,
											
											-- CONTROL TO ALU 
										ALU_BIN_SEL => ALU_BIN_SEL_SIGNAL,
										ALU_FUNC => ALU_FUNC_SIGNAL
										
									);
								
DATAPATH1: DATAPATH port map(
										CLK => CLK,
										OPCODE => OPCODE_SIGNAL,
										ALU_IN => ALU_SIGNAL,
										RESET=>RESET,
										
											 -- CONTROL TO RF 
										RF_B_SEL=> RF_B_SEL_SIGNAL,
										IMM_EXT => IMM_EXT_SIGNAL,
										RF_WRDATA_SEL => RF_WRDATA_SEL_SIGNAL,
										REG_WRITE_EN => REG_WRITE_EN_SIGNAL,
										imm_Shift => imm_Shift_SIGNAL,	
										BYTE_CASE => BYTE_CASE_SIGNAL,
										FETCH_EN => FETCH_EN_SIGNAL,
										IDEX_EN => IDEX_EN_SIGNAL,
										MEMWB_EN => MEMWB_EN_SIGNAL,
											-- CONTROL TO IF 
										PC_LOAD_EN => PC_LOAD_EN_SIGNAL,
											
											-- CONTROL TO MEMORY 
										MEM_WREN => MEM_WREN_SIGNAL,
											
											-- CONTROL TO ALU 
										ALU_BIN_SEL => ALU_BIN_SEL_SIGNAL,
										ALU_FUNC => ALU_FUNC_SIGNAL
		
									 );

end Behavioral;

