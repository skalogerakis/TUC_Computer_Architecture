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

component DATAPATH is -- EINAI TA SHMATA TOY CONTROL
port (
				
				 --REGISTER ENABLE FROM CONTROL
				
				CLK: in std_logic;  
				opcode: out std_logic_vector(5 downto 0);
				func: out std_logic_vector(4 downto 0);
				
				 -- CONTROL TO RF 
				RegDst: in std_logic;
				immExt: in std_logic;
				MemtoReg: in std_logic;
				RegWrite: in std_logic;
				imm_Shift: in std_logic;
				BYTE_CASE: in std_logic; -- dead
				
				--nPC_sel: in std_logic_vector(5 downto 0); 
				
				-- CONTROL TO IF 
				--PC_LOAD_EN: in std_logic; 
				RESET: in std_logic;
				
				
			   -- CONTROL TO MEMORY 
				MemWrite: in std_logic;
				
				-- CONTROL TO ALU 
				AluSrc: in std_logic; 
				ALUControl: in std_logic_vector(3 downto 0)
				
				
		);

end component;


component CONTROL 
	PORT (
				
				opcode: in std_logic_vector(5 downto 0);
				func: in std_logic_vector(4 downto 0);
				
				RegDst: out std_logic;
				immExt: out std_logic;
				MemtoReg: out std_logic;
				RegWrite: out std_logic;
				imm_Shift: out std_logic;
				BYTE_CASE: out std_logic; -- dead
				
				--nPC_sel: out std_logic_vector(5 downto 0); 
				
				-- CONTROL TO IF 
				--PC_LOAD_EN: out std_logic; 
				RESET: in std_logic;
				
				
			   -- CONTROL TO MEMORY 
				MemWrite: out std_logic;
				
				-- CONTROL TO ALU 
				AluSrc: out std_logic; 
				ALUControl: out std_logic_vector(3 downto 0)			
				);	
end component;

SIGNAL REGDST_SIGNAL,IMMEXT_SIGNAL,MEMTOREG_SIGNAL,REGWRITE_SIGNAL: STD_LOGIC;
SIGNAL IMMSHIFT_SIGNAL,BYTECASE_SIGNAL,MEMWRITE_SIGNAL,ALUSRC_SIGNAL: STD_LOGIC;
SIGNAL ALUCONTROL_SIGNAL: STD_LOGIC_VECTOR(3 DOWNTO 0);
signal OPCODE_SIGNAL: std_logic_vector(5 downto 0);
signal FUNC_SIGNAL: std_logic_vector(4 downto 0);

begin

CONTROL1:  CONTROL 
	PORT MAP(
				
				opcode => OPCODE_SIGNAL,
				func => FUNC_SIGNAL,
				
				RegDst => REGDST_SIGNAL,
				immExt => IMMEXT_SIGNAL,
				MemtoReg => MEMTOREG_SIGNAL,
				RegWrite =>REGWRITE_SIGNAL,
				imm_Shift => IMMSHIFT_SIGNAL,
				BYTE_CASE => BYTECASE_SIGNAL,
				
				--nPC_sel: out std_logic_vector(5 downto 0); 
				
				-- CONTROL TO IF 
				--PC_LOAD_EN: out std_logic; 
				RESET => RESET,
				
				
			   -- CONTROL TO MEMORY 
				MemWrite => MEMWRITE_SIGNAL,
				
				-- CONTROL TO ALU 
				AluSrc => ALUSRC_SIGNAL,
				ALUControl => ALUCONTROL_SIGNAL	
				);	
				
DATAPATH1:  DATAPATH  -- EINAI TA SHMATA TOY CONTROL
port  map(
				
				 --REGISTER ENABLE FROM CONTROL
				
				CLK => CLK, 
				opcode=> OPCODE_SIGNAL,
				func=> FUNC_SIGNAL,
				
				 -- CONTROL TO RF 
				RegDst=>REGDST_SIGNAL,
				immExt=>IMMEXT_SIGNAL,
				MemtoReg=>MEMTOREG_SIGNAL,
				RegWrite=>REGWRITE_SIGNAL,
				imm_Shift=>IMMSHIFT_SIGNAL,
				BYTE_CASE=> BYTECASE_SIGNAL,
				
				--nPC_sel: in std_logic_vector(5 downto 0); 
				
				-- CONTROL TO IF 
				--PC_LOAD_EN: in std_logic; 
				RESET=> RESET,
				
				
			   -- CONTROL TO MEMORY 
				MemWrite=> MEMWRITE_SIGNAL,
				
				-- CONTROL TO ALU 
				AluSrc => ALUSRC_SIGNAL,
				ALUControl => ALUCONTROL_SIGNAL
				
				
		);

end Behavioral;

