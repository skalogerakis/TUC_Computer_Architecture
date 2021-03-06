--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:16:17 03/05/2019
-- Design Name:   
-- Module Name:   D:/TUC_PROJECT/TUC_Computer_Architecture/Lab2/Lab2/TEST_MEMSTAGE.vhd
-- Project Name:  Lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MEMSTAGE
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
 
ENTITY TEST_MEMSTAGE IS
END TEST_MEMSTAGE;
 
ARCHITECTURE behavior OF TEST_MEMSTAGE IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MEMSTAGE
    PORT(
         CLK : IN  std_logic;
         Mem_WrEn : IN  std_logic;
         ALU_MEM_Addr : IN  std_logic_vector(31 downto 0);
         MEM_DataIn : IN  std_logic_vector(31 downto 0);
         MEM_DataOut : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal Mem_WrEn : std_logic := '0';
   signal ALU_MEM_Addr : std_logic_vector(31 downto 0) := (others => '0');
   signal MEM_DataIn : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal MEM_DataOut : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MEMSTAGE PORT MAP (
          CLK => CLK,
          Mem_WrEn => Mem_WrEn,
          ALU_MEM_Addr => ALU_MEM_Addr,
          MEM_DataIn => MEM_DataIn,
          MEM_DataOut => MEM_DataOut
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
      
		--First write some stuff without enable
      wait for Clk_period *5;
		
		ALU_MEM_Addr <= "00000000000000000000000000001000" ;
		MEM_DataIn   <= "00000000000000000000000000000100" ;
		Mem_WrEn <= '0' ;
		
		wait for Clk_period *5;
		
		ALU_MEM_Addr <= "00000000000000000000000000001000" ;
		MEM_DataIn   <= "00000000000000000001101000000100" ;
		Mem_WrEn <= '0' ;
		
      wait for Clk_period *5;
		
		ALU_MEM_Addr <= "00000000000000000000000000001100" ;
		MEM_DataIn   <= "00000000000000000000000000100100" ;
		Mem_WrEn <= '1' ;
		
		wait for Clk_period *5;
		
		ALU_MEM_Addr <= "00000000000000000000000000011100" ;
		MEM_DataIn   <= "00000000000000000000000000101100" ;
		Mem_WrEn <= '1' ;
		
		
		wait for Clk_period *5;
		
		ALU_MEM_Addr <= "00000000000000000000000001111100" ;
		MEM_DataIn   <= "00000000000000000000000000110100" ;
		Mem_WrEn <= '1' ;
		
		wait for Clk_period *5;
		ALU_MEM_Addr <= "00000000000000000010000000001100" ;
		Mem_WrEn <= '0' ;
		
		wait for Clk_period *5;
		ALU_MEM_Addr <= "00000000000000000010000000011100" ;
		Mem_WrEn <= '0' ;
		
		wait for Clk_period *5;
		ALU_MEM_Addr <= "00000000000000000010000001111100" ;
		Mem_WrEn <= '0' ;
		
		wait for Clk_period *5;	--zero expected
		ALU_MEM_Addr <= "00000000000000000000100001111100" ;
		Mem_WrEn <= '0' ;
		
		
		

      wait;
   end process;

END;
