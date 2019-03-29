--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:56:24 03/14/2019
-- Design Name:   
-- Module Name:   C:/Users/EKALANTAJEI/Documents/xilinx/LAB2/LAB2_D/DECSTAGE_TEST.vhd
-- Project Name:  LAB2_D
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: DECSTAGE
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
 
ENTITY DECSTAGE_TEST IS
END DECSTAGE_TEST;
 
ARCHITECTURE behavior OF DECSTAGE_TEST IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DECSTAGE
    PORT(
         Instr : IN  std_logic_vector(25 downto 0);
         RF_WrEn : IN  std_logic;
         ALU_out : IN  std_logic_vector(31 downto 0);
         MEM_out : IN  std_logic_vector(31 downto 0);
         RF_WrData_sel : IN  std_logic;
         RF_B_sel : IN  std_logic;
         Immed_Ext : IN  std_logic;
			
         clk : IN  std_logic;
         Immed : OUT  std_logic_vector(31 downto 0);
         RF_A : OUT  std_logic_vector(31 downto 0);
         RF_B : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Instr : std_logic_vector(25 downto 0) := (others => '0');
   signal RF_WrEn : std_logic := '0';
   signal ALU_out : std_logic_vector(31 downto 0) := (others => '0');
   signal MEM_out : std_logic_vector(31 downto 0) := (others => '0');
   signal RF_WrData_sel : std_logic := '0';
   signal RF_B_sel : std_logic := '0';
   signal Immed_Ext : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal Immed : std_logic_vector(31 downto 0);
   signal RF_A : std_logic_vector(31 downto 0);
   signal RF_B : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DECSTAGE PORT MAP (
          Instr => Instr,
          RF_WrEn => RF_WrEn,
          ALU_out => ALU_out,
          MEM_out => MEM_out,
          RF_WrData_sel => RF_WrData_sel,
          RF_B_sel => RF_B_sel,
          Immed_Ext => Immed_Ext,
          clk => clk,
          Immed => Immed,
          RF_A => RF_A,
          RF_B => RF_B
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 
		 --write reg 3  value from ALU.
			Instr <= B"00000_00011_1100000000000000"; --readreg1_writereg_immed
         RF_WrEn <='1';
         ALU_out <="11000000000000000000000000000011";
         MEM_out <="10100000000000000000000000000110";
         RF_WrData_sel <='1'; -- 0=ALU 1=MEM
         RF_B_sel <='0';
         Immed_Ext <='1';
			
		wait for 100 ns;
      wait for clk_period*10;
		
			Instr <= B"00011_00010_0000000000000011";  
         ALU_out <="01000000000000000000000000000000";
         MEM_out <="11000000000000000000000000001111";
         RF_WrData_sel <='0'; 
         RF_B_sel <='0';
         Immed_Ext <='0';
			
		wait for 100 ns;
      wait for clk_period*10;
		
			Instr <= B"00010_00110_0000000000000011";  
         ALU_out <="01000000000000000000000000000000";
         MEM_out <="11100000000000000000000000001111";
         RF_WrData_sel <='0';
         RF_B_sel <='0';
         Immed_Ext <='0';

      wait;
   end process;

END;
