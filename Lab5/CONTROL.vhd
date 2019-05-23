----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:30:13 03/27/2019 
-- Design Name: 
-- Module Name:    CONTROL - Behavioral 
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

entity CONTROL is
	PORT(
				
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
				ALUControl: out std_logic_vector(3 downto 0)			);	
end CONTROL;

architecture Behavioral of CONTROL is

begin

process(opcode,func)
begin
	
	case opcode is
	
		when "111000" =>	-- li
				RegDst <= '0';
				immExt <= '1';
				MemtoReg <= '0'; --ALU
				RegWrite <= '1';
				imm_Shift <= '0';
				BYTE_CASE <= '0';			
			   -- CONTROL TO MEMORY 
				MemWrite <= '0';
				
				-- CONTROL TO ALU 
				AluSrc <= '1';
				ALUControl <= "0000";
			
		when "100000" =>	-- add									
				RegDst <= '0'; -- R-case
				immExt <= '0'; -- no immed
				MemtoReg <= '0'; --ALU
				RegWrite <= '1'; -- we write to RF
				imm_Shift <= '0';
				BYTE_CASE <= '0';			
			   -- CONTROL TO MEMORY 
				MemWrite <= '0';
				
				-- CONTROL TO ALU 
				AluSrc <= '0'; -- from rf_B
				ALUControl<= "0000";
--				if func = "10000" then
--					ALUControl <= func(3 DOWNTO 0); --ADD
--				elsif func = "10001" then
--					ALUControl <= func(3 DOWNTO 0); --SUB
--				elsif func = "10010" then
--					ALUControl <= func(3 DOWNTO 0); --AND
--				elsif func = "10111" then
--					ALUControl <= func(3 DOWNTO 0); --OR
--				elsif func = "10110" then
--					ALUControl <= func(3 DOWNTO 0); --NAND
--				elsif func = "10100" then
--					ALUControl <= func(3 DOWNTO 0); --MOT
--				elsif func = "11000" then
--					ALUControl <= func(3 DOWNTO 0); --SRA
--				elsif func = "111010" then
--					ALUControl <= func(3 DOWNTO 0); --SLL
--				elsif func = "111001" then
--					ALUControl <= func(3 DOWNTO 0); --SRL
--				elsif func = "11100" then
--					ALUControl <= func(3 DOWNTO 0); --ROL
--				elsif func = "11101" then
--					ALUControl <= func(3 DOWNTO 0); --ROR
--				end if;
				
				
		when "011111" =>	-- sw
				RegDst <= '1'; -- we read rd
				immExt <= '0'; 
				MemtoReg <= '0'; --ALU
				RegWrite <= '0'; 
				imm_Shift <= '0';
				BYTE_CASE <= '0';			
			   -- CONTROL TO MEMORY 
				MemWrite <= '1';
				
				-- CONTROL TO ALU 
				AluSrc <= '1'; -- from immed
				ALUControl <= "0000"; --ADD
			
		when "001111" =>	-- lw
				RegDst <= '1'; -- we read rd
				immExt <= '0'; 
				MemtoReg <= '1'; --MEM
				RegWrite <= '1'; -- we write to RF
				imm_Shift <= '0';
				BYTE_CASE <= '0';			
			   -- CONTROL TO MEMORY 
				MemWrite <= '0';
				
				-- CONTROL TO ALU 
				AluSrc <= '1'; -- from immed
				ALUControl <= "0000"; --ADD	
		
						
		
		when others =>
				RegDst <= '0';
				immExt <= '0';
				MemtoReg <= '0'; --ALU
				RegWrite <= '0';
				imm_Shift <= '0';
				BYTE_CASE <= '0';			
			   -- CONTROL TO MEMORY 
				MemWrite <= '0';
				
				-- CONTROL TO ALU 
				AluSrc <= '0';
				ALUControl <= "0000";
		
		
			
	end case;		
end process;

end Behavioral;

