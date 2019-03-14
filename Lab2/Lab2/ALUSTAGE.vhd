----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:23:39 03/03/2019 
-- Design Name: 
-- Module Name:    ALUSTAGE - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALUSTAGE is
    Port ( RF_A : in  STD_LOGIC_VECTOR (31 downto 0);
           RF_B : in  STD_LOGIC_VECTOR (31 downto 0);
           Immed : in  STD_LOGIC_VECTOR (31 downto 0);
           ALU_Bin_sel : in  STD_LOGIC;
           ALU_func : in  STD_LOGIC_VECTOR (3 downto 0);
           ALU_out : out  STD_LOGIC_VECTOR (31 downto 0);
			  ALU_zero: OUT  STD_LOGIC);	--after new version added this signal
end ALUSTAGE;

architecture Behavioral of ALUSTAGE is

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
	 
COMPONENT MUX2TO1
    PORT(
         InA : IN  std_logic_vector(31 downto 0);
         InB : IN  std_logic_vector(31 downto 0);
         Selector : IN  std_logic;
         Output : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
	 
SIGNAL MUXOUT: STD_LOGIC_VECTOR (31 DOWNTO 0);
--SIGNAL ZERO : STD_LOGIC := '0';
SIGNAL OVF : STD_LOGIC := '0';
SIGNAL COUT : STD_LOGIC := '0';

begin

SELSIGN : MUX2TO1 PORT MAP(
			InA => RF_B,
         InB => Immed,
         Selector => ALU_Bin_sel,
         Output => MUXOUT
			);
			
ALUST: ALU PORT MAP(
			ALUA => RF_A,
         ALUB => MUXOUT,
         ALUOP => ALU_func,
         ALUOUT => ALU_out,
         ALUZERO => ALU_zero,	--after new version 
         ALUCOUT => COUT,
         ALUOVF => OVF
			);




end Behavioral;

