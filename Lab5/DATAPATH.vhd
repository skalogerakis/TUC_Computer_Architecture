----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:27:54 03/18/2019 
-- Design Name: 
-- Module Name:    DATAPATH - Behavioral 
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
use IEEE.STD_LOGIC_SIGNED.ALL;
use ieee.std_logic_arith.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DATAPATH is -- EINAI TA SHMATA TOY CONTROL
port (
				CLK: in std_logic;  
				OPCODE: out std_logic_vector(5 downto 0);
				ALU_IN :out std_logic_vector(5 downto 0);
				
				 -- CONTROL TO RF 
				RF_B_SEL: in std_logic;
				IMM_EXT: in std_logic;
				RF_WRDATA_SEL: in std_logic;
				REG_WRITE_EN: in std_logic;
				imm_Shift: in std_logic;
				BYTE_CASE: in std_logic;
				
				--nPC_sel: in std_logic_vector(5 downto 0); 
				-- CONTROL TO IF 
				PC_LOAD_EN: in std_logic;
				RESET: in std_logic;
				
			   -- CONTROL TO MEMORY 
				MEM_WREN: in std_logic;
				
				-- CONTROL TO ALU 
				ALU_BIN_SEL: in std_logic;
				FETCH_EN : in std_logic;
				ALU_FUNC: in std_logic_vector(3 downto 0)
				
				
		);

end DATAPATH;

architecture Behavioral of DATAPATH is


component BRANCH_BOX is
	
	port (
				CONTROL_BRANCH: in std_logic_vector(5 downto 0); 
				ALU_ZERO: in std_logic;
				BRANCH_SEL: out std_logic;
				CLK: IN STD_LOGIC
				
		);
end component;

	
component DECSTAGE is
	Port ( Instr : in STD_LOGIC_VECTOR (25 downto 0);
			 RF_WrEn : in std_logic;
			 ALU_out : in STD_LOGIC_VECTOR(31 downto 0);
			 MEM_out : in STD_LOGIC_VECTOR(31 downto 0);
			 RF_WrData_sel : in std_logic;
			 RF_B_sel : in std_logic;
			 Immed_Ext: in std_logic;
			 Immed_Sh: in std_logic;
			 byte_case: in std_logic;
			 clk : in std_logic;
			 Immed : out STD_LOGIC_VECTOR(31 downto 0);
			 RF_A : out STD_LOGIC_VECTOR(31 downto 0);
			 RF_B : out STD_LOGIC_VECTOR(31 downto 0));
			 
end component;


component RAM is
   port (
			 clk       : in std_logic;
			 inst_addr : in std_logic_vector(10 downto 0);
			 inst_dout : out std_logic_vector(31 downto 0);
			 data_we   : in std_logic;
			 data_addr : in std_logic_vector(10 downto 0);
			 data_din  : in std_logic_vector(31 downto 0);
			 data_dout : out std_logic_vector(31 downto 0));
		  
end component;

component ALUSTAGE is
   Port (  
			  RF_A : in  STD_LOGIC_VECTOR (31 downto 0);
           RF_B : in  STD_LOGIC_VECTOR (31 downto 0);
           Immed : in  STD_LOGIC_VECTOR (31 downto 0);
           ALU_Bin_sel : in  STD_LOGIC;
           ALU_func : in  STD_LOGIC_VECTOR (3 downto 0);
           ALU_out : out  STD_LOGIC_VECTOR (31 downto 0);
			  ALU_zero: OUT  STD_LOGIC);	--after new version added this signal
end component;


component IFSTAGE is
   Port (  PC_IMMED : in  STD_LOGIC_VECTOR (31 downto 0);
           PC_SEL : in  STD_LOGIC;
           PC_LDEN : in  STD_LOGIC;
           RESET : in  STD_LOGIC;
			  RAM_ADDROUT: out std_logic_vector(10 downto 0);
           CLK : in  STD_LOGIC
           --PC1 : out  STD_LOGIC_VECTOR (31 downto 0)
			  );
end component;

component IF_ID is
    Port ( InstrInp : in  STD_LOGIC_VECTOR (31 downto 0);
           InstrOut : out  STD_LOGIC_VECTOR (31 downto 0);
           clk : in  STD_LOGIC;
           RESET : in  STD_LOGIC;
           IF_ID_EN : in  STD_LOGIC);
end component;


--+=================SIGNALS=======================
signal MEM_DATA_OUT: std_logic_vector(31 downto 0);
signal ALU_DATA:  std_logic_vector(31 downto 0);
signal IMMEDIATE:  std_logic_vector(31 downto 0);
signal RF_A_DATA:  std_logic_vector(31 downto 0);
signal RF_B_DATA:  std_logic_vector(31 downto 0);
signal INSTRUCTION: std_logic_vector(31 downto 0);
signal INSTRUCTIONFIN: std_logic_vector(31 downto 0);
signal PC_INSTRUCTION_ADDRESS: std_logic_vector(10 downto 0);
signal DATA_ADDRESS: std_logic_vector(10 downto 0);
signal IMMEDIATE_BR: std_logic_vector(31 downto 0);
signal MEM_DATA_IN: std_logic_vector(31 downto 0);
signal NOT_YET: std_logic_vector(31 downto 0);
signal SELECT_BRANCH: std_logic;
signal ALU_ZERO_SIGN: std_logic;

begin

--+=================PORT MAPS=======================

DECODE: DECSTAGE port map ( 
										 Instr => INSTRUCTIONFIN(25 downto 0),
										 RF_WrEn => REG_WRITE_EN,
										 ALU_out => ALU_DATA,
										 MEM_out => MEM_DATA_OUT,
										 RF_WrData_sel => RF_WRDATA_SEL,
										 RF_B_sel => RF_B_SEL,
										 byte_case => BYTE_CASE,
										 Immed_Ext => IMM_EXT,
										 Immed_Sh => imm_Shift,
										 clk => CLK,
										 Immed => IMMEDIATE,
										 RF_A => RF_A_DATA,
										 RF_B => RF_B_DATA
			 
									);

EX: ALUSTAGE port map( 
								
							RF_A => RF_A_DATA,
						   RF_B => RF_B_DATA,
						   Immed => IMMEDIATE,
						   ALU_Bin_sel => ALU_BIN_SEL,
						   ALU_func => ALU_FUNC,
						   ALU_out => ALU_DATA,
						   ALU_zero => ALU_ZERO_SIGN
							
							);	
							
INSTRUCTION_FETCH: IFSTAGE Port map( 

						  PC_IMMED => IMMEDIATE,
						  PC_SEL => SELECT_BRANCH,
						  PC_LDEN => PC_LOAD_EN,
						  RESET => RESET,
						  RAM_ADDROUT => PC_INSTRUCTION_ADDRESS,
						  CLK => CLK
						  --PC1 => NOT_YET
						  
			           );
			  
RAM1: RAM Port map(
							 clk       => CLK,
							 inst_addr => PC_INSTRUCTION_ADDRESS,
							 inst_dout => INSTRUCTION,
							 data_we   => MEM_WREN,
							 data_addr => DATA_ADDRESS, 
							 data_din => RF_B_DATA, 
							 data_dout => MEM_DATA_OUT
							 
						);
						
BR_CHECK: BRANCH_BOX Port map(
											CONTROL_BRANCH => INSTRUCTION(31 downto 26) , 
											ALU_ZERO => ALU_ZERO_SIGN,
											BRANCH_SEL => SELECT_BRANCH,
											CLK => CLK
										);
										
IFREG: IF_ID Port map ( 
						InstrInp => INSTRUCTION,
						InstrOut =>INSTRUCTIONFIN,
						clk => CLK,
						RESET => RESET,
						IF_ID_EN => FETCH_EN
			  );


						
DATA_ADDRESS <= ALU_DATA(12 DOWNTO 2) + "10000000000";
OPCODE <= INSTRUCTION(31 downto 26) ;
ALU_IN <= INSTRUCTION(5 downto 0) ;


end Behavioral;

