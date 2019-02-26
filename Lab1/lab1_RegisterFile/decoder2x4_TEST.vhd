--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:29:43 02/20/2019
-- Design Name:   
-- Module Name:   C:/Xilinx/lab1_B/decoder2x4_TEST.vhd
-- Project Name:  lab1_B
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: decoder2x4
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
 
ENTITY decoder2x4_TEST IS
END decoder2x4_TEST;
 
ARCHITECTURE behavior OF decoder2x4_TEST IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT decoder2x4
    PORT(
         a : IN  std_logic_vector(1 downto 0);
         b : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal b : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: decoder2x4 PORT MAP (
          a => a,
          b => b
        );

   -- Clock process definitions
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	


      -- insert stimulus here 
		
		a<="00";
		wait for 100 ns;
		
		a<="11";
		wait for 100 ns;
		
		a<="01";
		wait for 100 ns;

      wait;
   end process;

END;
