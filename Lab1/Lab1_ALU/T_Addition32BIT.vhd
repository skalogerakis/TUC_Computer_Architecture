--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:00:58 02/18/2019
-- Design Name:   
-- Module Name:   D:/TUC_PROJECT/TUC_Computer_Architecture/Lab1/T_Addition32BIT.vhd
-- Project Name:  Lab1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Addition32BIT
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
 
ENTITY T_Addition32BIT IS
END T_Addition32BIT;
 
ARCHITECTURE behavior OF T_Addition32BIT IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Addition32BIT
    PORT(
         ADDA : IN  std_logic_vector(31 downto 0);
         ADDB : IN  std_logic_vector(31 downto 0);
         ADDOUT : OUT  std_logic_vector(31 downto 0);
         ADDCOUT : OUT  std_logic;
         ADDOVF : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal ADDA : std_logic_vector(31 downto 0) := (others => '0');
   signal ADDB : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal ADDOUT : std_logic_vector(31 downto 0);
   signal ADDCOUT : std_logic;
   signal ADDOVF : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Addition32BIT PORT MAP (
          ADDA => ADDA,
          ADDB => ADDB,
          ADDOUT => ADDOUT,
          ADDCOUT => ADDCOUT,
          ADDOVF => ADDOVF
        );

   -- Clock process definitions
   --<clock>_process :process
   --begin
	--	<clock> <= '0';
	--	wait for <clock>_period/2;
	--	<clock> <= '1';
	--	wait for <clock>_period/2;
   --end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		--NO OVERFLOW
		ADDA<="11000000000000000000000000000100";
		ADDB<="01000000000000000000000000000100";
      wait for 100 ns;
		
		--OVERFLOW
      ADDA<="01000000000000000000000000000100";
		ADDB<="01000000000000000000000000000100";
      wait for 100 ns;
		
		--OVERFLOW
      ADDA<="11000000000000000000000000000100";
		ADDB<="10000000000000000000000000000100";
      wait for 100 ns;
		
		--NO OVERFLOW
	   ADDA<="10000000000000000000000000000100";
		ADDB<="01000000000000000000000000000100";
      wait for 100 ns;
		
		--JUST RANDOM TESTS
		ADDA<="00000000000000011100000000000100";
		ADDB<="01000000000001001000000000000100";
      wait for 100 ns;
		
		
		ADDA<="10000000000000000001010000000100";
		ADDB<="00000000000000000000100000000100";
      wait for 100 ns;
		


      wait;
   end process;

END;
