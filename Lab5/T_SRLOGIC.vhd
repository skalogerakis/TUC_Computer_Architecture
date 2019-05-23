--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   02:34:00 02/18/2019
-- Design Name:   
-- Module Name:   D:/TUC_PROJECT/TUC_Computer_Architecture/Lab1/T_SRLOGIC.vhd
-- Project Name:  Lab1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SRLOGIC
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
 
ENTITY T_SRLOGIC IS
END T_SRLOGIC;
 
ARCHITECTURE behavior OF T_SRLOGIC IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SRLOGIC
    PORT(
         SRLOGICA : IN  std_logic_vector(31 downto 0);
         SRLOGICOUT : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal SRLOGICA : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal SRLOGICOUT : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SRLOGIC PORT MAP (
          SRLOGICA => SRLOGICA,
          SRLOGICOUT => SRLOGICOUT
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

      SRLOGICA<="11000000000100000000000000000100";
		
		wait for 100 ns;	

      SRLOGICA<="01000001000000000001100000000100";

      wait;
   end process;

END;
