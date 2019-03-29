--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:32:14 03/13/2019
-- Design Name:   
-- Module Name:   C:/Users/EKALANTAJEI/Documents/xilinx/LAB2/LAB2_D/extender_TEST.vhd
-- Project Name:  LAB2_D
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Extender
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
 
ENTITY extender_TEST IS
END extender_TEST;
 
ARCHITECTURE behavior OF extender_TEST IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Extender
    PORT(
         imm16 : IN  std_logic_vector(15 downto 0);
         shift_left : IN  std_logic;
         imm32_out : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal imm16 : std_logic_vector(15 downto 0) := (others => '0');
   signal shift_left : std_logic := '0';

 	--Outputs
   signal imm32_out : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Extender PORT MAP (
          imm16 => imm16,
          shift_left => shift_left,
          imm32_out => imm32_out
        );

   -- Clock process definitions
 
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      


      -- insert stimulus here 
		
		imm16 <= "1100001000000011";
		shift_left <= '0';
		
		wait for 100 ns;	
		
		imm16 <= "1100001000000011";
		shift_left <= '1';
		
		wait for 100 ns;	
		
		imm16 <= "0100001000000011";
		shift_left <= '1';
		
		wait for 100 ns;	
		
		imm16 <= "1100001000000011";
		shift_left <= '0';
		
		wait for 100 ns;	
		

      wait;
   end process;

END;
