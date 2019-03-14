--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:12:05 03/04/2019
-- Design Name:   
-- Module Name:   C:/Users/EKALANTAJEI/Documents/xilinx/LAB2/LAB2_D/MUX10to5_TEST.vhd
-- Project Name:  LAB2_D
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MUX10to5
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
 
ENTITY MUX10to5_TEST IS
END MUX10to5_TEST;
 
ARCHITECTURE behavior OF MUX10to5_TEST IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MUX10to5
    PORT(
         Instruct0 : IN  std_logic_vector(4 downto 0);
         Instruct1 : IN  std_logic_vector(4 downto 0);
         sel : IN  std_logic;
         Out_instruct : out  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Instruct0 : std_logic_vector(4 downto 0) := (others => '0');
   signal Instruct1 : std_logic_vector(4 downto 0) := (others => '0');
   signal sel : std_logic := '0';
   signal Out_instruct : std_logic_vector(4 downto 0) := (others => '0');
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MUX10to5 PORT MAP (
          Instruct0 => Instruct0,
          Instruct1 => Instruct1,
          sel => sel,
          Out_instruct => Out_instruct
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 20 ns;	

      Instruct0<="00000";
      Instruct0<="01010";
		sel <= '1';
		wait for 100 ns;	
		
		Instruct0<="00000";
      Instruct0<="01010";
		sel <= '0';
		wait for 100 ns;	
		
		Instruct0<="00110";
      Instruct0<="01010";
		sel <= '0';
		wait for 100 ns;	
  
		Instruct0<="00000";
      Instruct0<="01000";
		sel <= '1';
		wait for 100 ns;	


      -- insert stimulus here 

      wait;
   end process;

END;
