--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:56:11 03/29/2019
-- Design Name:   
-- Module Name:   C:/Users/EKALANTAJEI/Documents/xilinx/lab3_test/DATAPATH_TEST.vhd
-- Project Name:  lab3_test
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: DATAPATH
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY DATAPATH_TEST IS
END DATAPATH_TEST;
 
ARCHITECTURE behavior OF DATAPATH_TEST IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DATAPATH
    PORT(
         CLK : IN  std_logic;
         OPCODE : OUT  std_logic_vector(5 downto 0);
         RF_B_SEL : IN  std_logic;
         IMM_EXT : IN  std_logic;
         RF_WRDATA_SEL : IN  std_logic;
         REG_WRITE_EN : IN  std_logic;
         imm_Shift : IN  std_logic;
         BYTE_CASE : IN  std_logic;
         PC_LOAD_EN : IN  std_logic;
         RESET : IN  std_logic;
         MEM_WREN : IN  std_logic;
         ALU_BIN_SEL : IN  std_logic;
         ALU_FUNC : IN  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal RF_B_SEL : std_logic := '0';
   signal IMM_EXT : std_logic := '0';
   signal RF_WRDATA_SEL : std_logic := '0';
   signal REG_WRITE_EN : std_logic := '0';
   signal imm_Shift : std_logic := '0';
   signal BYTE_CASE : std_logic := '0';
   signal PC_LOAD_EN : std_logic := '0';
   signal RESET : std_logic := '0';
   signal MEM_WREN : std_logic := '0';
   signal ALU_BIN_SEL : std_logic := '0';
   signal ALU_FUNC : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal OPCODE : std_logic_vector(5 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DATAPATH PORT MAP (
          CLK => CLK,
          OPCODE => OPCODE,
          RF_B_SEL => RF_B_SEL,
          IMM_EXT => IMM_EXT,
          RF_WRDATA_SEL => RF_WRDATA_SEL,
          REG_WRITE_EN => REG_WRITE_EN,
          imm_Shift => imm_Shift,
          BYTE_CASE => BYTE_CASE,
          PC_LOAD_EN => PC_LOAD_EN,
          RESET => RESET,
          MEM_WREN => MEM_WREN,
          ALU_BIN_SEL => ALU_BIN_SEL,
          ALU_FUNC => ALU_FUNC
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 50 ns;	

      wait for CLK_period;

      -- insert stimulus here 
							--==========bne r5,r5,8 ===========
        RF_B_SEL<='1'; -- CONTROL TO RF 
        IMM_EXT<='1';
		  imm_Shift <='0';
        RF_WRDATA_SEL<='0';
        REG_WRITE_EN<='0';
        
         -- CONTROL TO IF 
        PC_LOAD_EN<='0';
        RESET<='0'; --RESET THE WHOLE MEMORY MODULE
        
        MEM_WREN<='0'; -- CONTROL TO MEMORY 
        
        
        ALU_BIN_SEL<='0'; -- CONTROL TO ALU 
        ALU_FUNC<="0001";
        
    --=================================   
		  wait for CLK_period;	
		  
		  PC_LOAD_EN<='1';

      wait;
   end process;

END;
