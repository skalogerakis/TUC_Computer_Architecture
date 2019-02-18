--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:24:38 02/18/2019
-- Design Name:   
-- Module Name:   D:/TUC_PROJECT/TUC_Computer_Architecture/Lab1/T_ALU.vhd
-- Project Name:  Lab1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU
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
 
ENTITY T_ALU IS
END T_ALU;
 
ARCHITECTURE behavior OF T_ALU IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         ALUA : IN  std_logic_vector(31 downto 0);
         ALUB : IN  std_logic_vector(31 downto 0);
         ALUOP : IN  std_logic_vector(3 downto 0);
         ALUOUT : OUT  std_logic_vector(31 downto 0);
         ALUZERO : OUT  std_logic;
         ALUCOUT : OUT  std_logic;
         ALUOVF : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal ALUA : std_logic_vector(31 downto 0) := (others => '0');
   signal ALUB : std_logic_vector(31 downto 0) := (others => '0');
   signal ALUOP : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal ALUOUT : std_logic_vector(31 downto 0);
   signal ALUZERO : std_logic;
   signal ALUCOUT : std_logic;
   signal ALUOVF : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          ALUA => ALUA,
          ALUB => ALUB,
          ALUOP => ALUOP,
          ALUOUT => ALUOUT,
          ALUZERO => ALUZERO,
          ALUCOUT => ALUCOUT,
          ALUOVF => ALUOVF
        );

   -- Clock process definitions
   --<clock>_process :process
  -- begin
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
		ALUA <= "00000000000000000000000000001101";	-- 13
	   ALUB <= "00000000000000000000000000010011";	-- 19
	   ALUOP <= "0000";
	   wait for 100 ns;
		
		ALUA <= "00000000000000000000000000000000";	-- 0
	   ALUB <= "00000000000000000000000000000000";	-- 0
	   ALUOP <= "0000";
	   wait for 100 ns;
		
		ALUA <= "00000000000000000000000000011010";	-- 26
	   ALUB <= "00000000000000000000000000110100";	-- 52
	   ALUOP <= "0010";										--	AND_LOGICAL
	   wait for 100 ns;
		
		ALUA <= "11111111111111111111111111111011";	-- -5
	   ALUB <= "00000000000000000000000000001100";	-- +12
	   ALUOP <= "0000";
	   wait for 100 ns;
		
	   ALUA <= "11111111111100000000001000000000";	--srl
	   ALUOP <= "1001";
	   wait for 100 ns;
		
		ALUA <= "01111111111100000000001000000101";	--rotate_right
	   ALUOP <= "1101";
	   wait for 100 ns;

		ALUA <= "10111111111100000000001000000101";	--sra
	   ALUOP <= "1000";
	   wait for 100 ns;
		
		--More additions
		ALUA <= "11111111111111111111111111111111" ;	-- -1 		Cout,Zero expected
		ALUB <= "00000000000000000000000000000001" ; -- +1
		ALUOP <= "0000";										--ADD			
		wait for 100 ns;
		
		ALUA <= "01111111111111111111111111111111" ;	-- 2^31 		OF expected
		ALUB <= "00000000000000000000000000000001" ; -- +1
		ALUOP <= "0000";										-- ADD
		wait for 100 ns;
		
		ALUA <= "00000000000000000000000000001101" ;	-- 13
		ALUB <= "00000000000000000000000000010011" ; -- 19
		ALUOP <= "1111";										-- Crypt
		wait for 100 ns;

      wait;
   end process;

END;
