--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:24:08 02/21/2019
-- Design Name:   
-- Module Name:   C:/Xilinx/lab1_B/multiplexer32to1_TEST.vhd
-- Project Name:  lab1_B
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: multiplexer32to1
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
 
ENTITY multiplexer32to1_TEST IS
END multiplexer32to1_TEST;
 
ARCHITECTURE behavior OF multiplexer32to1_TEST IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT multiplexer32to1
    PORT(
         x : IN  std_logic_vector(31 downto 0);
         s : IN  std_logic_vector(4 downto 0);
         y : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal x : std_logic_vector(31 downto 0) := (others => '0');
   signal s : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal y : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: multiplexer32to1 PORT MAP (
          x => x,
          s => s,
          y => y
        );

   -- Clock process definitions
   

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
		x <="00000000000000000000000000000011";
		s <="00001";
		wait for 100 ns;	
		
		x <="00000000000000000000000000000111";
		s <="00000";
		wait for 100 ns;	
		
		x <="00000000000000000000000000000111";
		s <="00010";
		wait for 100 ns;	
		
		x <="10000000000000000000000000000111";
		s <="11111";
		wait for 100 ns;	
		
		x <="10000000000000000000000000000111";
		s <="00000";
		wait for 100 ns;	
		
		x <="10000000000000000000000000000111";
		s <="00100";
		wait for 100 ns;	

      -- insert stimulus here 

      wait;
   end process;

END;
