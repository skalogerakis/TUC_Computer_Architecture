--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:36:42 03/03/2019
-- Design Name:   
-- Module Name:   D:/TUC_PROJECT/TUC_Computer_Architecture/Lab2/Lab2/T_MUX2TO1.vhd
-- Project Name:  Lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MUX2TO1
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
 
ENTITY T_MUX2TO1 IS
END T_MUX2TO1;
 
ARCHITECTURE behavior OF T_MUX2TO1 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MUX2TO1
    PORT(
         InA : IN  std_logic_vector(31 downto 0);
         InB : IN  std_logic_vector(31 downto 0);
         Selector : IN  std_logic;
         Output : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal InA : std_logic_vector(31 downto 0) := (others => '0');
   signal InB : std_logic_vector(31 downto 0) := (others => '0');
   signal Selector : std_logic := '0';

 	--Outputs
   signal Output : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MUX2TO1 PORT MAP (
          InA => InA,
          InB => InB,
          Selector => Selector,
          Output => Output
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
      wait for 50 ns;
      InA <= "11011100000000000000000000000100";	
		InB <= "00000000000000000000000000000100";
		Selector <= '0';
      -- insert stimulus here 
		
		wait for 50 ns;	
		InA <= "11011100000000000000000000000100";	
		InB <= "00000011000000000000000000000100";
		Selector <= '1';
		
      wait;
   end process;

END;
