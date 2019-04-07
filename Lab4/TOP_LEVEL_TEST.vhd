--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:02:27 03/27/2019
-- Design Name:   
-- Module Name:   C:/Users/EKALANTAJEI/Documents/xilinx/lab3_test/TOP_LEVEL_TEST.vhd
-- Project Name:  lab3_test
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: TOP_LEVEL
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
 
ENTITY TOP_LEVEL_TEST IS
END TOP_LEVEL_TEST;
 
ARCHITECTURE behavior OF TOP_LEVEL_TEST IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT TOP_LEVEL
    PORT(
         CLK : IN  std_logic;
         RESET : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal RESET : std_logic := '0';

   -- Clock period definitions
   constant CLK_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: TOP_LEVEL PORT MAP (
          CLK => CLK,
          RESET => RESET
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
		
      wait for 20 ns;
		RESET <= '1';
		wait for CLK_period;
		RESET <= '0';
		
		
      wait;
   end process;

END;
