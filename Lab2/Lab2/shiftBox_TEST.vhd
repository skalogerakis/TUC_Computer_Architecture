--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:05:54 03/14/2019
-- Design Name:   
-- Module Name:   C:/Users/EKALANTAJEI/Documents/xilinx/LAB2/LAB2_D/shiftBox_TEST.vhd
-- Project Name:  LAB2_D
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: shiftBox
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
 
ENTITY shiftBox_TEST IS
END shiftBox_TEST;
 
ARCHITECTURE behavior OF shiftBox_TEST IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT shiftBox
    PORT(
         imm32_in : IN  std_logic_vector(31 downto 0);
         OpCode : IN  std_logic;
         imm32_out : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal imm32_in : std_logic_vector(31 downto 0) := (others => '0');
   signal OpCode : std_logic := '0';

 	--Outputs
   signal imm32_out : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: shiftBox PORT MAP (
          imm32_in => imm32_in,
          OpCode => OpCode,
          imm32_out => imm32_out
        );

   -- Clock process definitions
  
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      -- insert stimulus here 
		
		 imm32_in <= "11100000000000000000000000000000";
       OpCode <= '1';
       wait for 100 ns;	

		 imm32_in <= "10000000000000000000000000001110";
       OpCode <= '1';
       wait for 100 ns;	
      wait;
   end process;

END;
