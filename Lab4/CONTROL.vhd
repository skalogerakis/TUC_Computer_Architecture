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
				
				OPCODE: in std_logic_vector(5 downto 0);
				 
				 -- CONTROL TO RF 
				RF_B_SEL: out std_logic;
				IMM_EXT: out std_logic;
				RF_WRDATA_SEL: out std_logic;
				REG_WRITE_EN: out std_logic;
				imm_Shift: out std_logic;
				BYTE_CASE: out std_logic;
				
				--nPC_sel: in std_logic_vector(5 downto 0); 
				-- CONTROL TO IF 
				PC_LOAD_EN: out std_logic;
				
			   -- CONTROL TO MEMORY 
				MEM_WREN: out std_logic;
				
				-- CONTROL TO ALU 
				ALU_BIN_SEL: out std_logic; 
				ALU_FUNC: out std_logic_vector(3 downto 0)
			);	
end CONTROL;

architecture Behavioral of CONTROL is

begin

process(OPCODE)
begin
	
	case OPCODE is
	
		when "110000" =>	-- addi
			RF_B_SEL <= '1';
			IMM_EXT <='1';
			RF_WRDATA_SEL <='0'; --alu
			REG_WRITE_EN <='1';
			imm_Shift <='0';
			BYTE_CASE <='0';
			
			PC_LOAD_EN <='1';
			
			MEM_WREN <='0';
			
			ALU_BIN_SEL <='1'; -- immediate
			ALU_FUNC <="0000"; --add
		
		when "110011" =>	-- ori
			RF_B_SEL <= '1';
			IMM_EXT <='0';
			RF_WRDATA_SEL <='0'; --alu
			REG_WRITE_EN <='1';
			imm_Shift <='0';
			BYTE_CASE <='0';
			
			PC_LOAD_EN <='1';
			
			MEM_WREN <='0';
			
			ALU_BIN_SEL <='1'; -- immediate
			ALU_FUNC <="0011"; --OR
			
		when "011111" =>	-- sw immediate format
			RF_B_SEL <= '1';
			IMM_EXT <='1';
			RF_WRDATA_SEL <='0'; --we dont care
			REG_WRITE_EN <='0'; -- we dont write any reg 
			imm_Shift <='0'; -- PENDING
			BYTE_CASE <='0';
			
			PC_LOAD_EN <='1'; 
			
			MEM_WREN <='1'; -- WE WRITE IN OUR MEMORY
			
			ALU_BIN_SEL <='1'; -- immediate 
			ALU_FUNC <="0000"; --add
		
		when "001111" =>	-- lw immediate format
			RF_B_SEL <= '1';
			IMM_EXT <='1';
			RF_WRDATA_SEL <='1'; -- memory data
			REG_WRITE_EN <='1'; -- we  write  reg 
			imm_Shift <='0'; -- PENDING
			BYTE_CASE <='0';
			
			PC_LOAD_EN <='1'; 
			
			MEM_WREN <='0'; -- WE dont WRITE IN OUR MEMORY
			
			ALU_BIN_SEL <='1'; -- immediate 
			ALU_FUNC <="0000"; --add
			
		when "000011" =>	-- lb immediate format
			RF_B_SEL <= '1';
			IMM_EXT <='1';
			RF_WRDATA_SEL <='1'; -- memory data
			REG_WRITE_EN <='1'; -- we  write  reg 
			imm_Shift <='0'; -- PENDING
			BYTE_CASE <='1'; -- WE NEED THE BYTE 
			
			PC_LOAD_EN <='1'; 
			
			MEM_WREN <='0'; -- WE dont WRITE IN OUR MEMORY
			
			ALU_BIN_SEL <='1'; -- immediate 
			ALU_FUNC <="0000"; --add
			
		
		when others =>
		
			RF_B_SEL <= '1';
			IMM_EXT <='1';
			RF_WRDATA_SEL <='0'; 
			REG_WRITE_EN <='0'; 
			imm_Shift <='0'; 
			BYTE_CASE <='0';
			
			PC_LOAD_EN <='0'; 
			
			MEM_WREN <='0'; 
			
			ALU_BIN_SEL <='0'; 
			ALU_FUNC <="0000"; 
	end case;		
end process;

end Behavioral;

