--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:44:40 02/23/2019
-- Design Name:   
-- Module Name:   C:/Users/EKALANTAJEI/Dropbox/sxolh/organosi/lab1_B/register_file_TEST.vhd
-- Project Name:  lab1_B
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: register_file
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
 
ENTITY register_file_TEST IS
END register_file_TEST;
 
ARCHITECTURE behavior OF register_file_TEST IS 

    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT register_file
    PORT(
         Ard1 : IN  std_logic_vector(4 downto 0);
         Ard2 : IN  std_logic_vector(4 downto 0);
         Awr : IN  std_logic_vector(4 downto 0);
         Dout1 : OUT  std_logic_vector(31 downto 0);
         Dout2 : OUT  std_logic_vector(31 downto 0);
         Din : IN  std_logic_vector(31 downto 0);
         WrEN : IN  std_logic;
         clk : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Ard1 : std_logic_vector(4 downto 0) := (others => '0');
   signal Ard2 : std_logic_vector(4 downto 0) := (others => '0');
   signal Awr : std_logic_vector(4 downto 0) := (others => '0');
   signal Din : std_logic_vector(31 downto 0) := (others => '0');
   signal WrEN : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal Dout1 : std_logic_vector(31 downto 0);
   signal Dout2 : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: register_file PORT MAP (
          Ard1 => Ard1,
          Ard2 => Ard2,
          Awr => Awr,
          Dout1 => Dout1,
          Dout2 => Dout2,
          Din => Din,
          WrEN => WrEN,
          clk => clk
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
      wait for clk_period*10;
		
		Ard1 <="00000";
		Ard2 <="00000";
		Awr  <="00010";
		Din  <="01100000000000000000000000000000";
		WrEN <='1';
		wait for 100 ns;	
      wait for clk_period*10;
		
		Ard1 <="00000";
		Ard2 <="00010";
		Awr  <="11101";
		Din  <="11100000000000000000000000000000";
		WrEN <='1';
		wait for 100 ns;	
      wait for clk_period*10;
		
		Ard1 <="11111";
		Ard2 <="00010";
		Awr  <="11111";
		Din  <="10100000000000000000000000000000";
		WrEN <='0';
		wait for 100 ns;	
      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
