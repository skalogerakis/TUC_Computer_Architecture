--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:03:51 03/03/2019
-- Design Name:   
-- Module Name:   D:/TUC_PROJECT/TUC_Computer_Architecture/Lab2/Lab2/T_ALUSTAGE.vhd
-- Project Name:  Lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALUSTAGE
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
 
ENTITY T_ALUSTAGE IS
END T_ALUSTAGE;
 
ARCHITECTURE behavior OF T_ALUSTAGE IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALUSTAGE
    PORT(
         RF_A : IN  std_logic_vector(31 downto 0);
         RF_B : IN  std_logic_vector(31 downto 0);
         Immed : IN  std_logic_vector(31 downto 0);
         ALU_Bin_sel : IN  std_logic;
         ALU_func : IN  std_logic_vector(3 downto 0);
         ALU_out : OUT  std_logic_vector(31 downto 0);
			ALU_zero: OUT  STD_LOGIC	--added new version
        );
    END COMPONENT;
    

   --Inputs
   signal RF_A : std_logic_vector(31 downto 0) := (others => '0');
   signal RF_B : std_logic_vector(31 downto 0) := (others => '0');
   signal Immed : std_logic_vector(31 downto 0) := (others => '0');
   signal ALU_Bin_sel : std_logic := '0';
   signal ALU_func : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal ALU_out : std_logic_vector(31 downto 0);
	signal ALU_zero: std_logic; --added new version
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALUSTAGE PORT MAP (
          RF_A => RF_A,
          RF_B => RF_B,
          Immed => Immed,
          ALU_Bin_sel => ALU_Bin_sel,
          ALU_func => ALU_func,
          ALU_out => ALU_out,
			 ALU_zero=> ALU_zero
        );

   -- Clock process definitions
   --<clock>_process :process
  -- begin
	--	<clock> <= '0';
	--	wait for <clock>_period/2;
	--	<clock> <= '1';
	--	wait for <clock>_period/2;
   --end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 50 ns;	
		
		RF_A <=  "00000000000000000000000000000001";   
		RF_B <=  "00000000000000000000000000000100";	  
		Immed <= "00000000000000000000000000000001"; 
		ALU_Bin_sel <= '0';   
		ALU_func <= "0000" ;  --ADD operetion with RF_A, RF_B expected
		wait for 50 ns;	
		
		RF_A <=  "00000000000000000000000000010001";   
		RF_B <=  "00000000000000000000000000000100";	  
		Immed <= "00000000000000000000000000010001";
      ALU_BIN_SEL <= '1';   
		ALU_FUNC <= "0001" ;  --ssub operetion with RF_A, Imm expected
		wait for 50 ns;	
		
		RF_A <=  "00000000000000000000000000110001";   
		RF_B <=  "00000000000000001110000000000100";	  
		Immed <= "00000000000000000000000000000001";
      ALU_BIN_SEL <= '1';   --or operetion with RF_A, Immed expected
		ALU_FUNC <= "0111" ;  
		wait for 50 ns;
		
		RF_A <=  "00000000000000000000000000110101";   
		RF_B <=  "00000000000000001110000000000100";	  
		Immed <= "00000000000000000000000000000001";
		ALU_BIN_SEL <= '0';   --nand Operation in ALU with rfa rfb
		ALU_FUNC <= "0110" ;  
		wait for 50 ns;
		
		RF_A <=  "00000000000000000001100000000001";   
		RF_B <=  "00000000000000011000000000000100";	  
		Immed <= "00000000000000000000000000000001"; 
		ALU_Bin_sel <= '0';   
		ALU_func <= "0000" ;  --ADD operetion with RF_A, RF_B expected
		wait for 50 ns;	
		
 

      -- insert stimulus here 

      wait;
   end process;

END;
