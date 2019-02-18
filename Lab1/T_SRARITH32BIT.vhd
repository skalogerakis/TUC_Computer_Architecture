--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   02:24:01 02/18/2019
-- Design Name:   
-- Module Name:   D:/TUC_PROJECT/TUC_Computer_Architecture/Lab1/T_SRARITH32BIT.vhd
-- Project Name:  Lab1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SRARITH32BIT
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
 
ENTITY T_SRARITH32BIT IS
END T_SRARITH32BIT;
 
ARCHITECTURE behavior OF T_SRARITH32BIT IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SRARITH32BIT
    PORT(
         SRARITHA : IN  std_logic_vector(31 downto 0);
         SRARITHOUT : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal SRARITHA : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal SRARITHOUT : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SRARITH32BIT PORT MAP (
          SRARITHA => SRARITHA,
          SRARITHOUT => SRARITHOUT
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

      SRARITHA<="11000000000100000000000000000100";
		
		wait for 100 ns;	

      SRARITHA<="01000001000000000001100000000100";

      -- insert stimulus here 

      wait;
   end process;

END;
