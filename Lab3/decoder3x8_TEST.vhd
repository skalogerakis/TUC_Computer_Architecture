--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:46:23 02/20/2019
-- Design Name:   
-- Module Name:   C:/Xilinx/lab1_B/decoder3x8_TEST.vhd
-- Project Name:  lab1_B
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: decoder3x8
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
 
ENTITY decoder3x8_TEST IS
END decoder3x8_TEST;
 
ARCHITECTURE behavior OF decoder3x8_TEST IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT decoder3x8
    PORT(
         i : IN  std_logic_vector(2 downto 0);
         y : OUT  std_logic_vector(7 downto 0);
         enable : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal i : std_logic_vector(2 downto 0) := (others => '0');
   signal enable : std_logic := '0';

 	--Outputs
   signal y : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: decoder3x8 PORT MAP (
          i => i,
          y => y,
          enable => enable
        );

 
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	


      -- insert stimulus here 
		i <="000";
		enable <='1';
		wait for 100 ns;	
		
		i <="011";
		enable <='0';
		wait for 100 ns;	
		
		i <="011";
		enable <='1';
		wait for 100 ns;	
		
		i <="001";
		enable <='0';
		wait for 100 ns;	
		
		i <="111";
		enable <='0';
		wait for 100 ns;	
		

      wait;
   end process;

END;
