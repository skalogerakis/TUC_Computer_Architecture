----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:54:18 03/04/2019 
-- Design Name: 
-- Module Name:    DECODE - Behavioral 
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

entity DECSTAGE is
	Port ( Instr : in STD_LOGIC_VECTOR (25 downto 0);
			 RF_WrEn : in std_logic;
			 ALU_out : in STD_LOGIC_VECTOR(31 downto 0);
			 MEM_out : in STD_LOGIC_VECTOR(31 downto 0);
			 Write_reg: in std_logic_vector(4 downto 0);	
			 RF_WrData_sel : in std_logic;
			 RF_B_sel : in std_logic;
			 Immed_Ext: in std_logic;
			 clk : in std_logic;
			 Immed : out STD_LOGIC_VECTOR(31 downto 0);
			 RF_A : out STD_LOGIC_VECTOR(31 downto 0);
			 RF_B : out STD_LOGIC_VECTOR(31 downto 0));
			 
end DECSTAGE;

architecture Behavioral of DECSTAGE is

component extender is 
	port ( 
				imm16: in std_logic_vector(15 downto 0);
				ImmExt : in std_logic;
				imm32_out: out std_logic_vector(31 downto 0)
				);
				
end component;

component register_file is
	port (	
				Ard1: in std_logic_vector(4 downto 0);
				Ard2: in std_logic_vector(4 downto 0);
				Awr : in std_logic_vector(4 downto 0);
				Dout1: out std_logic_vector(31 downto 0);
				Dout2: out std_logic_vector(31 downto 0);
				Din: in std_logic_vector(31 downto 0);
				WrEN: in std_logic;
				clk : in std_logic
				);
	
end component;

component shiftBox is
			port (
			imm32_in: in std_logic_vector(31 downto 0);
			OpCode: in std_logic;
			imm32_out: out std_logic_vector(31 downto 0)
			);
end component;



component MUX10to5 is
	port (
				Instruct0: in std_logic_vector (4 downto 0);
				Instruct1: in std_logic_vector (4 downto 0);
				sel: in std_logic;
				Out_instruct: out std_logic_vector (4 downto 0));
				
end component;

component MUX64to32 is
	port (
			Instruct0: in std_logic_vector (31 downto 0);
			Instruct1: in std_logic_vector (31 downto 0);
			sel: in std_logic;
			Out_instruct: out std_logic_vector (31 downto 0));
end component;




signal MuxToRF: std_logic_vector (4 downto 0);
signal MuxToWrData: std_logic_vector (31 downto 0);
signal Ext32: std_logic_vector (31 downto 0);
signal opCodeDummy: std_logic;

--+====================================================

begin

EXTEND: extender port map (
										imm16 => Instr(15 downto 0),
										ImmExt=> Immed_Ext,
										imm32_out => Ext32
										);
										
--TO PETAME EKTOS
MUX_INSTR:  MUX10to5  port map (
								           Instruct0 => Instr(15 downto 11),
											  Instruct1 => Instr(20 downto 16),
											  sel => RF_B_sel,
											  Out_instruct => MuxToRF
											 );

MUX_ALU_MEM: MUX64to32 PORT MAP (
										 Instruct0 => ALU_out,
										 Instruct1 => MEM_out,
										 sel => RF_WrData_sel,
										 Out_instruct => MuxToWrData 
										);
RF: register_file port map (
									   Ard1 => Instr(25 downto 21),
										Ard2 => MuxToRF,
										Awr => Write_reg, -- CRITICAL
										Dout1 => RF_A,
										Dout2 => RF_B,
										Din => MuxToWrData,
										WrEN => RF_WrEn,
										clk => clk
									 );
									 
SHIFT: shiftBox port map(
									imm32_in => Ext32,
									OpCode => opCodeDummy,
									imm32_out => Immed
								);

end Behavioral;

