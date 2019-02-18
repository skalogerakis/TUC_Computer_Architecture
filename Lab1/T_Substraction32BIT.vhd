--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:50:00 02/18/2019
-- Design Name:   
-- Module Name:   D:/TUC_PROJECT/TUC_Computer_Architecture/Lab1/T_Substraction32BIT.vhd
-- Project Name:  Lab1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Subtraction32BIT
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
 
ENTITY T_Substraction32BIT IS
END T_Substraction32BIT;
 
ARCHITECTURE behavior OF T_Substraction32BIT IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Subtraction32BIT
    PORT(
         SUBA : IN  std_logic_vector(31 downto 0);
         SUBB : IN  std_logic_vector(31 downto 0);
         SUBOUT : OUT  std_logic_vector(31 downto 0);
         SUBCOUT : OUT  std_logic;
         SUBOVF : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal SUBA : std_logic_vector(31 downto 0) := (others => '0');
   signal SUBB : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal SUBOUT : std_logic_vector(31 downto 0);
   signal SUBCOUT : std_logic;
   signal SUBOVF : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Subtraction32BIT PORT MAP (
          SUBA => SUBA,
          SUBB => SUBB,
          SUBOUT => SUBOUT,
          SUBCOUT => SUBCOUT,
          SUBOVF => SUBOVF
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

      SUBA<="00000000000000000000000000000100";
		SUBB<="00000000000000000000000000000001";
      wait for 100 ns;	
		
		SUBA<="00000000000000000000000000000010";
		SUBB<="00000000000000000000000000000100";
      wait for 100 ns;
		
		SUBA<="00000000000000000100000000000010";
		SUBB<="00000000010000000100000000001100";
      wait for 100 ns;	

      wait;
   end process;

END;
