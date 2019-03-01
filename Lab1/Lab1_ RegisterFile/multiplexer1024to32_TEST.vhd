--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:47:21 02/21/2019
-- Design Name:   
-- Module Name:   C:/Xilinx/lab1_B/multiplexer1024to32_TEST.vhd
-- Project Name:  lab1_B
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: multiplexer1024to32
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY multiplexer1024to32_TEST IS
END multiplexer1024to32_TEST;
 
ARCHITECTURE behavior OF multiplexer1024to32_TEST IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
	
	 constant FIRST_REG : integer := 973078511; --2147483647 =31 ones
 
    COMPONENT multiplexer1024to32
    PORT(
         muxIN : IN  std_logic_vector(1023 downto 0);
         muxSEL : IN  std_logic_vector(4 downto 0);
         muxOUT : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal muxIN : std_logic_vector(1023 downto 0) := (others => '0');
   signal muxSEL : std_logic_vector(4 downto 0) := (others => '0');
	
	

 	--Outputs
   signal muxOUT : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: multiplexer1024to32 PORT MAP (
          muxIN => muxIN,
          muxSEL => muxSEL,
          muxOUT => muxOUT
        );

  

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
		muxSEL <="00100";
		muxIN <= conv_std_logic_vector(FIRST_REG,muxIN'length);
		wait for 100 ns;
		


      -- insert stimulus here 

      wait;
   end process;

END;
