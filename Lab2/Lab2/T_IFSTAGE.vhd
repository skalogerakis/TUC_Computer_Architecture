--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:47:56 03/06/2019
-- Design Name:   
-- Module Name:   D:/TUC_PROJECT/TUC_Computer_Architecture/Lab2/Lab2/T_IFSTAGE.vhd
-- Project Name:  Lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: IFSTAGE
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
 
ENTITY T_IFSTAGE IS
END T_IFSTAGE;
 
ARCHITECTURE behavior OF T_IFSTAGE IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT IFSTAGE
    PORT(
         PC_IMMED : IN  std_logic_vector(31 downto 0);
         PC_SEL : IN  std_logic;
         PC_LDEN : IN  std_logic;
         RESET : IN  std_logic;
         CLK : IN  std_logic;
         PC1 : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal PC_IMMED : std_logic_vector(31 downto 0) := (others => '0');
   signal PC_SEL : std_logic := '0';
   signal PC_LDEN : std_logic := '0';
   signal RESET : std_logic := '0';
   signal CLK : std_logic := '0';

 	--Outputs
   signal PC1 : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: IFSTAGE PORT MAP (
          PC_IMMED => PC_IMMED,
          PC_SEL => PC_SEL,
          PC_LDEN => PC_LDEN,
          RESET => RESET,
          CLK => CLK,
          PC1 => PC1
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      
			Reset <= '1' ;                   -- RST
      wait for 100 ns;	
		Reset <= '0' ;                   -- Expected "00000000000000000000000000000001" (1)
      wait for Clk_period*2;
		
		PC_sel <= '0' ;
		PC_LdEn <= '1' ;                 -- Next Line
		
		wait for Clk_period*1;
		PC_LdEn <= '0' ;                 -- Expected "00000000000000000000000000000010" (2) 
		wait for Clk_period*2;
		
		PC_Immed <= "00000000000000000000000001000000" ; -- 64  (16 * 4)
		PC_sel <= '1' ;
		PC_LdEn <= '1' ;                 -- Skip 16 lines of Machine Code
		
		wait for Clk_period*1;
		PC_LdEn <= '0' ;                 -- Expected "00000000000000000000000000010011" (19)
		wait for Clk_period*2;
		
		PC_sel <= '0' ;
		PC_LdEn <= '1' ;                 -- Next Line
		
		wait for Clk_period*1;
		PC_LdEn <= '0' ;                 -- Expected "00000000000000000000000000000010" (20)
		wait for Clk_period*2;
		
		PC_Immed <= "11111111111111111111111111100000" ; -- -32 (-8 * 4)
		PC_sel <= '1' ;
		PC_LdEn <= '1' ;                 -- Skip 16 lines of Machine Code
		
		wait for Clk_period*1;
		PC_LdEn <= '0' ;                 -- Expected "00000000000000000000000000000010" (13)
		wait for Clk_period*10;
		Reset <= '1' ;                   -- RST
		
		wait ;
	end process;
END;
