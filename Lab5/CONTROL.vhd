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
				clk : in STD_LOGIC;
				RESET: in STD_LOGIC;
				OPCODE: in std_logic_vector(5 downto 0);
				ALU_IN : in std_logic_vector(5 downto 0);
				 
				 -- CONTROL TO RF 
				RF_B_SEL: out std_logic;
				IMM_EXT: out std_logic;
				RF_WRDATA_SEL: out std_logic;
				REG_WRITE_EN: out std_logic;
				imm_Shift: out std_logic;
				BYTE_CASE: out std_logic;
				FETCH_EN: out std_logic;
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
end CONTROL;

architecture Behavioral of CONTROL is

	type FSMSTATE is (START, FETCH, DELAY, DECRYPT ,dummyC, R_add, R_sub,R_and, R_nand, R_not, R_or, R_sra, R_sll, R_srl, R_rol, R_ror, li, lui, addi, nandi, ori, b, beq, beqDelay, bne, bneDelay, sw, swDelay, sb, sbDelay, lw, lwDelay, lb, lbDelay);
	signal STATE: FSMSTATE;
	
begin
	
	
	FSM: process
	begin
		
		WAIT UNTIL clk'EVENT AND clk='1';  
		if(RESET ='1') then -- RESET STHN ARXH
			STATE<=START; -- MALLON OXI
		else
			if(STATE = START) then
				STATE<=FETCH;
			elsif(STATE = FETCH) then
				STATE<=DECRYPT;
			elsif(STATE = DELAY) then
				STATE<=FETCH;
			elsif(STATE = DECRYPT) then
				if OPCODE = "100000" then -- REGISTER TYPE CASES
					if(ALU_IN = "110000") then
						STATE<=R_add;
					elsif ALU_IN = "110001" then 
						STATE<=R_sub;
					elsif ALU_IN = "110010" then 
						STATE<=R_and;
					elsif ALU_IN = "110111" then 
						STATE<=R_or;
					elsif ALU_IN = "110110" then 
						STATE<=R_nand;
					elsif ALU_IN = "110100" then 
						STATE<=R_not;
					elsif ALU_IN = "111000" then 
						STATE<=R_sra;
					elsif ALU_IN = "111010" then 
						STATE<=R_sll;
					elsif ALU_IN = "111001" then 
						STATE<=R_srl;
					elsif ALU_IN = "111100" then 
						STATE<=R_rol;
					elsif ALU_IN = "111101" then 
						STATE<=R_ror;
					end if;
				elsif OPCODE = "111000" then 
					STATE<=li;
				elsif OPCODE = "111001" then 
					STATE<=lui;												
				elsif OPCODE = "110000" then 
					STATE<=addi;
				elsif OPCODE = "110010" then 
					STATE<=nandi;
				elsif OPCODE = "110011" then 
					STATE<=ori;
				elsif OPCODE = "111111" then 
					STATE<=b;
				elsif OPCODE = "000000" then 
					STATE<=beq;
				elsif OPCODE = "000001" then 
					STATE<=bne;
				elsif OPCODE = "000011" then 
					STATE<=lb;
				elsif OPCODE = "000111" then 
					STATE<=sb;
				elsif OPCODE = "001111" then 
					STATE<=lw;
				elsif OPCODE = "011111" then 
					STATE<=sw;				
				else STATE<=START ; 
				end if;
			elsif(STATE = lw) then -- STATES GIA ENTOLES SW LW
				STATE <= lwDelay;
			elsif(STATE = lb) then 
				STATE <= lbDelay;
			elsif(STATE = sw) then
				STATE <= swDelay;
			elsif(STATE = sb) then -- STATES GIA ENTOLES SW LW
				STATE <= sbDelay;				
			else
				STATE<=DELAY;
			end if;
		end if;
	end process FSM;
	
	--NOW TAKE CARE OF THE OUTPUT

fsmTest:process(STATE) is
begin
	case STATE is
		WHEN START =>
			IDEX_EN <= '0';
			MEMWB_EN <= '0';
			FETCH_EN <= '1';
			RF_B_SEL <='0';
			IMM_EXT <='0';
			RF_WRDATA_SEL <= '0';
			REG_WRITE_EN <='0';
			imm_Shift <='0';
			BYTE_CASE <= '0';
			PC_LOAD_EN<='0';		--ENABLE next just on Fetch
			MEM_WREN <='0';
			ALU_BIN_SEL <= '0';	
			ALU_FUNC <="0000";
		WHEN FETCH =>
			IDEX_EN <= '1';	--ENABLE ALU STUFF
			MEMWB_EN <= '0';
			FETCH_EN <= '0';
			RF_B_SEL <='0';
			IMM_EXT <='0';
			RF_WRDATA_SEL <= '0';
			REG_WRITE_EN <='0';
			imm_Shift <='0';
			BYTE_CASE <= '0';
			PC_LOAD_EN<='1';		--ENABLE next just on Fetch
			MEM_WREN <='0';
			ALU_BIN_SEL <= '0';	
			ALU_FUNC <="0000";
		WHEN DELAY =>	--ON DELAY CASE DON'T DO ANYTHING
			IDEX_EN <= '0';
			MEMWB_EN <= '0';
			FETCH_EN <= '1';
			RF_B_SEL <='0';
			IMM_EXT <='0';
			RF_WRDATA_SEL <= '0';
			REG_WRITE_EN <='0';
			imm_Shift <='0';
			BYTE_CASE <= '0';
			PC_LOAD_EN<='0';		
			MEM_WREN <='0';
			ALU_BIN_SEL <= '0';	
			ALU_FUNC <="0000";
		WHEN DECRYPT =>
			IDEX_EN <= '0';
			MEMWB_EN <= '0';
			FETCH_EN <= '0';
			RF_B_SEL <='0';
			IMM_EXT <='0';
			RF_WRDATA_SEL <= '0';
			REG_WRITE_EN <='0';
			imm_Shift <='0';
			BYTE_CASE <= '0';
			PC_LOAD_EN<='0';				
			MEM_WREN <='0';
			ALU_BIN_SEL <= '0';	
			ALU_FUNC <="0000";
		WHEN R_add =>
			IDEX_EN <= '0';
			MEMWB_EN <= '0';
			FETCH_EN <= '0';
			RF_B_SEL <='0';
			IMM_EXT <='0';
			RF_WRDATA_SEL <= '0';
			REG_WRITE_EN <='1';
			imm_Shift <='0';
			BYTE_CASE <= '0';
			PC_LOAD_EN<='0';		
			MEM_WREN <='0';
			ALU_BIN_SEL <= '0';	
			ALU_FUNC <=ALU_IN(3 DOWNTO 0);
		WHEN R_and =>
			IDEX_EN <= '0';
			MEMWB_EN <= '0';
			FETCH_EN <= '0';
			RF_B_SEL <='0';
			IMM_EXT <='0';
			RF_WRDATA_SEL <= '0';
			REG_WRITE_EN <='1';
			imm_Shift <='0';
			BYTE_CASE <= '0';
			PC_LOAD_EN<='0';		
			MEM_WREN <='0';
			ALU_BIN_SEL <= '0';	
			ALU_FUNC <=ALU_IN(3 DOWNTO 0);
		WHEN R_sub =>
			IDEX_EN <= '0';
			MEMWB_EN <= '0';
			FETCH_EN <= '0';
			RF_B_SEL <='0';
			IMM_EXT <='0';
			RF_WRDATA_SEL <= '0';
			REG_WRITE_EN <='1';
			imm_Shift <='0';
			BYTE_CASE <= '0';
			PC_LOAD_EN<='0';		
			MEM_WREN <='0';
			ALU_BIN_SEL <= '0';	
			ALU_FUNC <=ALU_IN(3 DOWNTO 0);
		WHEN R_nand =>
			IDEX_EN <= '0';
			MEMWB_EN <= '0';
			FETCH_EN <= '0';
			RF_B_SEL <='0';
			IMM_EXT <='0';
			RF_WRDATA_SEL <= '0';
			REG_WRITE_EN <='1';
			imm_Shift <='0';
			BYTE_CASE <= '0';
			PC_LOAD_EN<='0';		
			MEM_WREN <='0';
			ALU_BIN_SEL <= '0';	
			ALU_FUNC <=ALU_IN(3 DOWNTO 0);
		WHEN R_not =>
			IDEX_EN <= '0';
			MEMWB_EN <= '0';
			FETCH_EN <= '0';
			RF_B_SEL <='0';
			IMM_EXT <='0';
			RF_WRDATA_SEL <= '0';
			REG_WRITE_EN <='1';
			imm_Shift <='0';
			BYTE_CASE <= '0';
			PC_LOAD_EN<='0';		
			MEM_WREN <='0';
			ALU_BIN_SEL <= '0';	
			ALU_FUNC <=ALU_IN(3 DOWNTO 0);
		WHEN R_or =>
			IDEX_EN <= '0';
			MEMWB_EN <= '0';
			FETCH_EN <= '0';
			RF_B_SEL <='0';
			IMM_EXT <='0';
			RF_WRDATA_SEL <= '0';
			REG_WRITE_EN <='1';
			imm_Shift <='0';
			BYTE_CASE <= '0';
			PC_LOAD_EN<='0';		
			MEM_WREN <='0';
			ALU_BIN_SEL <= '0';	
			ALU_FUNC <=ALU_IN(3 DOWNTO 0);
		WHEN R_sra =>
			IDEX_EN <= '0';
			MEMWB_EN <= '0';
			FETCH_EN <= '0';
			RF_B_SEL <='0';
			IMM_EXT <='0';
			RF_WRDATA_SEL <= '0';
			REG_WRITE_EN <='1';
			imm_Shift <='0';
			BYTE_CASE <= '0';
			PC_LOAD_EN<='0';		
			MEM_WREN <='0';
			ALU_BIN_SEL <= '0';	
			ALU_FUNC <=ALU_IN(3 DOWNTO 0);
		WHEN R_sll =>
			IDEX_EN <= '0';
			MEMWB_EN <= '0';
			FETCH_EN <= '0';
			RF_B_SEL <='0';
			IMM_EXT <='0';
			RF_WRDATA_SEL <= '0';
			REG_WRITE_EN <='1';
			imm_Shift <='0';
			BYTE_CASE <= '0';
			PC_LOAD_EN<='0';		
			MEM_WREN <='0';
			ALU_BIN_SEL <= '0';	
			ALU_FUNC <=ALU_IN(3 DOWNTO 0);
		WHEN R_srl =>
			IDEX_EN <= '0';
			MEMWB_EN <= '0';
			FETCH_EN <= '0';
			RF_B_SEL <='0';
			IMM_EXT <='0';
			RF_WRDATA_SEL <= '0';
			REG_WRITE_EN <='1';
			imm_Shift <='0';
			BYTE_CASE <= '0';
			PC_LOAD_EN<='0';		
			MEM_WREN <='0';
			ALU_BIN_SEL <= '0';	
			ALU_FUNC <=ALU_IN(3 DOWNTO 0);
		WHEN R_rol =>
			IDEX_EN <= '0';
			MEMWB_EN <= '0';
			FETCH_EN <= '0';
			RF_B_SEL <='0';
			IMM_EXT <='0';
			RF_WRDATA_SEL <= '0';
			REG_WRITE_EN <='1';
			imm_Shift <='0';
			BYTE_CASE <= '0';
			PC_LOAD_EN<='0';		
			MEM_WREN <='0';
			ALU_BIN_SEL <= '0';	
			ALU_FUNC <=ALU_IN(3 DOWNTO 0);
		WHEN R_ror =>
			IDEX_EN <= '0';
			MEMWB_EN <= '0';
			FETCH_EN <= '0';
			RF_B_SEL <='0';
			IMM_EXT <='0';
			RF_WRDATA_SEL <= '0';
			REG_WRITE_EN <='1';
			imm_Shift <='0';
			BYTE_CASE <= '0';
			PC_LOAD_EN<='0';		
			MEM_WREN <='0';
			ALU_BIN_SEL <= '0';	
			ALU_FUNC <=ALU_IN(3 DOWNTO 0);
		WHEN li =>
			IDEX_EN <= '0';
			MEMWB_EN <= '0';		
			FETCH_EN <= '0';
			RF_B_SEL <='1';
			IMM_EXT <='1';
			RF_WRDATA_SEL <= '0';
			REG_WRITE_EN <='1';
			imm_Shift <='0';
			BYTE_CASE <= '0';
			PC_LOAD_EN<='0';				
			MEM_WREN <='0';
			ALU_BIN_SEL <= '1';	--Immediate case
			ALU_FUNC <="0000";
		WHEN lui => -- TODO CHECL
			IDEX_EN <= '0';
			MEMWB_EN <= '0';
			FETCH_EN <= '0';
			RF_B_SEL <='1';
			IMM_EXT <='0';
			RF_WRDATA_SEL <= '0';
			REG_WRITE_EN <='1';
			imm_Shift <='0';
			BYTE_CASE <= '0';
			PC_LOAD_EN<='0';				
			MEM_WREN <='0';
			ALU_BIN_SEL <= '1';	--Immediate case
			ALU_FUNC <="0000";
		WHEN addi =>
			IDEX_EN <= '0';
			MEMWB_EN <= '0';
			FETCH_EN <= '0';
			RF_B_SEL <= '1';
			IMM_EXT <='1';
			RF_WRDATA_SEL <='0';
			REG_WRITE_EN <='1';
			imm_Shift <='0';
			BYTE_CASE <='0';
			PC_LOAD_EN <='0';
			MEM_WREN <='0';
			ALU_BIN_SEL <='1';
			ALU_FUNC <="0000";
		WHEN ori =>	
			IDEX_EN <= '0';
			MEMWB_EN <= '0';
			FETCH_EN <= '0';
			RF_B_SEL <= '1';
			IMM_EXT <='0';
			RF_WRDATA_SEL <='0'; --alu
			REG_WRITE_EN <='1';
			imm_Shift <='0';
			BYTE_CASE <='0';
			PC_LOAD_EN <='0';
			MEM_WREN <='0';
			ALU_BIN_SEL <='1'; -- immediate
			ALU_FUNC <="0111"; --OR
		WHEN nandi =>
			IDEX_EN <= '0';
			MEMWB_EN <= '0';
			FETCH_EN <= '0';
			RF_B_SEL <= '1';
			IMM_EXT <='0';
			RF_WRDATA_SEL <='0';
			REG_WRITE_EN <='1';
			imm_Shift <='0';
			BYTE_CASE <='0';
			PC_LOAD_EN <='0';
			MEM_WREN <='0';
			ALU_BIN_SEL <='1'; -- immediate
			ALU_FUNC <="0110";
		when sw =>	--todo fix
			IDEX_EN <= '0';
			MEMWB_EN <= '1';
			FETCH_EN <= '0';
			RF_B_SEL <= '1';
			IMM_EXT <='1';
			RF_WRDATA_SEL <='0'; --we dont care
			REG_WRITE_EN <='0'; -- we dont write any reg 
			imm_Shift <='0'; -- PENDING
			BYTE_CASE <='0';
			
			PC_LOAD_EN <='0'; 
			
			MEM_WREN <='0'; -- WE WRITE IN OUR MEMORY
			
			ALU_BIN_SEL <='1'; -- immediate 
			ALU_FUNC <="0000"; --add
		when swDelay =>	-- sw immediate format
			IDEX_EN <= '0';
			MEMWB_EN <= '0';
			FETCH_EN <= '0';
			RF_B_SEL <= '1';
			IMM_EXT <='1';
			RF_WRDATA_SEL <='0'; --we dont care
			REG_WRITE_EN <='0'; -- we dont write any reg 
			imm_Shift <='0'; -- PENDING
			BYTE_CASE <='0';
			
			PC_LOAD_EN <='0'; 
			
			MEM_WREN <='1'; -- WE WRITE IN OUR MEMORY
			
			ALU_BIN_SEL <='1'; -- immediate 
			ALU_FUNC <="0000"; --add
		when sb =>	--todo fix
			IDEX_EN <= '0';
			MEMWB_EN <= '1';
			FETCH_EN <= '0';
			RF_B_SEL <= '1';
			IMM_EXT <='1';
			RF_WRDATA_SEL <='0'; --we dont care
			REG_WRITE_EN <='0'; -- we dont write any reg 
			imm_Shift <='0'; -- PENDING
			BYTE_CASE <='1';
			
			PC_LOAD_EN <='0'; 
			
			MEM_WREN <='0'; -- WE WRITE IN OUR MEMORY
			
			ALU_BIN_SEL <='1'; -- immediate 
			ALU_FUNC <="0000"; --add
		when sbDelay =>	-- sw immediate format
			IDEX_EN <= '0';
			MEMWB_EN <= '0';
			FETCH_EN <= '0';
			RF_B_SEL <= '1';
			IMM_EXT <='1';
			RF_WRDATA_SEL <='0'; --we dont care
			REG_WRITE_EN <='0'; -- we dont write any reg 
			imm_Shift <='0'; -- PENDING
			BYTE_CASE <='1';
			
			PC_LOAD_EN <='0'; 
			
			MEM_WREN <='1'; -- WE WRITE IN OUR MEMORY
			
			ALU_BIN_SEL <='1'; -- immediate 
			ALU_FUNC <="0000"; --add
		when lw =>	-- lw immediate format
			IDEX_EN <= '0';
			MEMWB_EN <= '1';
			FETCH_EN <= '0';
			RF_B_SEL <= '1';
			IMM_EXT <='1';
			RF_WRDATA_SEL <='0'; -- memory data
			REG_WRITE_EN <='0'; -- we  write  reg 
			imm_Shift <='0'; -- PENDING
			BYTE_CASE <='0';
			PC_LOAD_EN <='0'; 
			MEM_WREN <='0'; -- WE dont WRITE IN OUR MEMORY
			ALU_BIN_SEL <='1'; -- immediate 
			ALU_FUNC <="0000"; --add
		when lwDelay =>	-- lw immediate format
			IDEX_EN <= '0';
			MEMWB_EN <= '0';
			FETCH_EN <= '0';
			RF_B_SEL <= '1';
			IMM_EXT <='1';
			RF_WRDATA_SEL <='1'; -- memory data
			REG_WRITE_EN <='1'; -- we  write  reg 
			imm_Shift <='0'; -- PENDING
			BYTE_CASE <='0';
			PC_LOAD_EN <='0'; 
			MEM_WREN <='0'; -- WE dont WRITE IN OUR MEMORY
			ALU_BIN_SEL <='1'; -- immediate 
			ALU_FUNC <="0000"; --add
		when lb =>	-- lw immediate format
			IDEX_EN <= '0';
			MEMWB_EN <= '1';
			FETCH_EN <= '0';
			RF_B_SEL <= '1';
			IMM_EXT <='1';
			RF_WRDATA_SEL <='0'; -- memory data
			REG_WRITE_EN <='0'; -- we  write  reg 
			imm_Shift <='0'; -- PENDING
			BYTE_CASE <='1';
			PC_LOAD_EN <='0'; 
			MEM_WREN <='0'; -- WE dont WRITE IN OUR MEMORY
			ALU_BIN_SEL <='1'; -- immediate 
			ALU_FUNC <="0000"; --add
		when lbDelay =>	-- lw immediate format
			IDEX_EN <= '0';
			MEMWB_EN <= '0';
			FETCH_EN <= '0';
			RF_B_SEL <= '1';
			IMM_EXT <='1';
			RF_WRDATA_SEL <='1'; -- memory data
			REG_WRITE_EN <='1'; -- we  write  reg 
			imm_Shift <='0'; -- PENDING
			BYTE_CASE <='1';
			PC_LOAD_EN <='0'; 
			MEM_WREN <='0'; -- WE dont WRITE IN OUR MEMORY
			ALU_BIN_SEL <='1'; -- immediate 
			ALU_FUNC <="0000"; --add
		when b =>	-- b case format
			IDEX_EN <= '0';
			MEMWB_EN <= '0';
			FETCH_EN <= '0';
			RF_B_SEL <= '1'; --21-16
			IMM_EXT <='1';
			RF_WRDATA_SEL <='0'; -- no need for write
			REG_WRITE_EN <='0'; -- we dont  write  reg 
			imm_Shift <='0'; -- PENDING
			BYTE_CASE <='0';
			PC_LOAD_EN <='0'; 
			MEM_WREN <='0'; -- WE dont WRITE IN OUR MEMORY
			ALU_BIN_SEL <='0'; -- register ops 
			ALU_FUNC <="0001"; --sub
		when bne =>	-- bne case format
			IDEX_EN <= '0';
			MEMWB_EN <= '0';
			FETCH_EN <= '0';
			RF_B_SEL <= '1'; --21-16
			IMM_EXT <='1'; 
			RF_WRDATA_SEL <='0'; -- no need for write
			REG_WRITE_EN <='0'; -- we dont  write  reg 
			imm_Shift <='0'; -- PENDING
			BYTE_CASE <='0';
			PC_LOAD_EN <='0'; 
			MEM_WREN <='0'; -- WE dont WRITE IN OUR MEMORY
			ALU_BIN_SEL <='0'; -- register ops 
			ALU_FUNC <="0001"; --sub
		when beq =>	-- beq case format
			IDEX_EN <= '0';
			MEMWB_EN <= '0';
			FETCH_EN <= '0';
			RF_B_SEL <= '1'; --21-16
			IMM_EXT <='1';
			RF_WRDATA_SEL <='0'; -- no need for write
			REG_WRITE_EN <='0'; -- we dont  write  reg 
			imm_Shift <='0'; -- PENDING
			BYTE_CASE <='0';
			PC_LOAD_EN <='0'; 
			MEM_WREN <='0'; -- WE dont WRITE IN OUR MEMORY
			ALU_BIN_SEL <='0'; -- register ops 
			ALU_FUNC <="0001"; --sub
		WHEN OTHERS =>
			IDEX_EN <= '0';
			MEMWB_EN <= '0';
			FETCH_EN <= '0';
			RF_B_SEL <='0';
			IMM_EXT <='0';
			RF_WRDATA_SEL <= '0';
			REG_WRITE_EN <='0';
			imm_Shift <='0';
			BYTE_CASE <= '0';
			PC_LOAD_EN<='0';				
			MEM_WREN <='0';
			ALU_BIN_SEL <= '0';	
			ALU_FUNC <="0000";
	end case;
end process;


end Behavioral;

