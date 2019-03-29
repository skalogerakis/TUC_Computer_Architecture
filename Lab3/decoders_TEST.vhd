--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:12:41 02/19/2019
-- Design Name:   
-- Module Name:   C:/Xilinx/lab1_B/decoders_TEST.vhd
-- Project Name:  lab1_B
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: decoders
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
 
ENTITY decoders_TEST IS
END decoders_TEST;
 
ARCHITECTURE behavior OF decoders_TEST IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT decoders
    PORT(
         DecIn : IN  std_logic_vector(4 downto 0);
         DecOut : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal DecIn : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal DecOut : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: decoders PORT MAP (
          DecIn => DecIn,
          DecOut => DecOut
        );

   -- Clock process definitions
  

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      DecIn <="00001";
		wait for 100 ns;
		
		DecIn <="00010";
		wait for 100 ns;
		
		DecIn <="10010";
		wait for 100 ns;
		
		DecIn <="00000";
		wait for 100 ns;

      -- insert stimulus here 

      wait;
   end process;

END;
