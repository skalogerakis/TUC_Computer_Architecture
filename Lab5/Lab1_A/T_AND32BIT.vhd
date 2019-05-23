--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   02:01:10 02/18/2019
-- Design Name:   
-- Module Name:   D:/TUC_PROJECT/TUC_Computer_Architecture/Lab1/T_AND32BIT.vhd
-- Project Name:  Lab1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: AND32BIT
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
 
ENTITY T_AND32BIT IS
END T_AND32BIT;
 
ARCHITECTURE behavior OF T_AND32BIT IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT AND32BIT
    PORT(
         ANDA : IN  std_logic_vector(31 downto 0);
         ANDB : IN  std_logic_vector(31 downto 0);
         OUTA : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal ANDA : std_logic_vector(31 downto 0) := (others => '0');
   signal ANDB : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal OUTA : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: AND32BIT PORT MAP (
          ANDA => ANDA,
          ANDB => ANDB,
          OUTA => OUTA
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
		
		ANDA<="11000000000000000000000000000100";
		ANDB<="01000000000000000000000000000100";
      wait for 100 ns;
		
      ANDA<="01000000000000000000000000000100";
		ANDB<="01000000000000000000000000000100";
      wait for 100 ns;
		
      ANDA<="11000000000000000000000000000100";
		ANDB<="10000000000000000000000000000100";
      wait for 100 ns;
		
	   ANDA<="10000000000000000000000000000100";
		ANDB<="01000000000000000000000000000100";
      wait for 100 ns;
		
		ANDA<="00000000000000011100000000000100";
		ANDB<="01000000000001001000000000000100";
      wait for 100 ns;
		
		
		ANDA<="10000000000000000001010000000100";
		ANDB<="00000000000000000000100000000100";
    
      wait;
   end process;

END;
