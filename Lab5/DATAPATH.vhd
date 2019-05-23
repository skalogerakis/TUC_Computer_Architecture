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
				
				 --REGISTER ENABLE FROM CONTROL
				
				CLK: in std_logic;  
				opcode: out std_logic_vector(5 downto 0);
				func: out std_logic_vector(4 downto 0);
				
				 -- CONTROL TO RF 
				RegDst: in std_logic;
				immExt: in std_logic;
				MemtoReg: in std_logic;
				RegWrite: in std_logic;
				imm_Shift: in std_logic;
				BYTE_CASE: in std_logic; -- dead
				
				--nPC_sel: in std_logic_vector(5 downto 0); 
				
				-- CONTROL TO IF 
				--PC_LOAD_EN: in std_logic; 
				RESET: in std_logic;
				
				
			   -- CONTROL TO MEMORY 
				MemWrite: in std_logic;
				
				-- CONTROL TO ALU 
				AluSrc: in std_logic; 
				ALUControl: in std_logic_vector(3 downto 0)
				
				
		);

end DATAPATH;

architecture Behavioral of DATAPATH is


component regist IS

PORT ( 	
			DataIn : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			WE, Clock : IN STD_LOGIC ;
			DataOut : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)  ) ;
			
END component ;


component Forward_Unit is
port(
		ID_EX_rs: in std_logic_vector(4 downto 0);
		ID_EX_rd: in std_logic_vector(4 downto 0);
		ID_EX_rt: in std_logic_vector(4 downto 0);
		EX_MEM_rd: in std_logic_vector(4 downto 0);
		regWrite: in std_logic;
		MEM_WB_rd: in std_logic_vector(4 downto 0);
		ForwardA: out std_logic_vector(1 downto 0);
		ForwardB: out std_logic_vector(1 downto 0)
		
	  );
end component;

component StallUnit is
    Port ( 	
				IF_ID_op: in std_logic_vector(5 downto 0);
				IF_ID_rt: in std_logic_vector(4 downto 0);
				IF_ID_rs: in std_logic_vector(4 downto 0);
				ID_EX_rt: in std_logic_vector(4 downto 0);
				PC_LDEN : in std_logic;
				enabler : out std_logic
				);
end component;


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
			 Write_reg: in std_logic_vector(4 downto 0);	
			 RF_WrData_sel : in std_logic;
			 RF_B_sel : in std_logic;
			 Immed_Ext: in std_logic;
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

component MUX10to5 is
	port (
			Instruct0: in std_logic_vector (4 downto 0);
			Instruct1: in std_logic_vector (4 downto 0);
			sel: in std_logic;
			Out_instruct: out std_logic_vector (4 downto 0));
end 	component;

component MUX4to1 is

Port (     InA : in  STD_LOGIC_VECTOR (31 downto 0);
           InB : in  STD_LOGIC_VECTOR (31 downto 0);
			  InC : in  STD_LOGIC_VECTOR (31 downto 0);
           Selector : in  STD_LOGIC_vector(1 downto 0);
           Output : out  STD_LOGIC_VECTOR (31 downto 0));
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

component regist5bits IS

PORT ( 	
			DataIn : IN STD_LOGIC_VECTOR(4 DOWNTO 0):= (others => '0') ;
			WE, Clock : IN STD_LOGIC ;
			DataOut : OUT STD_LOGIC_VECTOR(4 DOWNTO 0):= (others => '0')  ) ;
			
END component ;

--+=================SIGNALS=======================
signal MEM_WB_DATA_OUT: std_logic_vector(31 downto 0);
signal RegEn: std_logic;
signal ALU_DATA:  std_logic_vector(31 downto 0);
signal IMMEDIATE_ZERO,IMMEDIATE:  std_logic_vector(31 downto 0);
signal RF_A_DATA:  std_logic_vector(31 downto 0);
signal RF_B_DATA:  std_logic_vector(31 downto 0);
signal INSTRUCTION: std_logic_vector(31 downto 0);
signal PC_INSTRUCTION_ADDRESS,DATA_ADDRESS: std_logic_vector(10 downto 0);
signal IMMEDIATE_BR: std_logic_vector(31 downto 0);
signal MEM_DATA_IN: std_logic_vector(31 downto 0);
signal SELECT_BRANCH: std_logic;
signal ALU_ZERO_SIGN: std_logic;
signal PC_LOAD_EN, StallOut: std_logic;

--==IF_ID SIGNALS====
signal IF_ID_INSTR: std_logic_vector(31 downto 0);
signal IF_ID_SIG_IN,IF_ID_SIG_OUT: sTD_logic_vector(31 downto 0);
signal writeRegEn: std_logic;

--==ID_EX SIGNALS====

signal ID_EX_RFA_DATA,ID_EX_RFB_DATA,ID_EX_IMMED,ID_EX_SIG_OUT,ID_EX_SIG_IN,ID_EX_MUX_RFB_OUT,ID_EX_MUX_RFA_OUT: std_logic_vector(31 downto 0);
signal ID_EX_OUT_RT_RD,ID_EX_RS_BLOCK_OUT,ID_EX_RT_BLOCK_OUT: std_logic_vector(4 downto 0);
signal ID_EX_MUX_RFA_SEL,ID_EX_MUX_RFB_SEL: std_logic_vector(1 downto 0);


--==EX_MEM SIGNALS===
signal EX_MEM_ALU_DATA,EX_MEM_SIG_OUT,EX_MEM_RFB_DATA,EX_MEM_SIG_IN: std_logic_vector(31 downto 0);
SIGNAL ID_EX_INSTR_RT_RD_IN,ID_EX_INSTR_RT_RD_OUT: std_logic_vector(31 downto 0);
signal EX_MEM_MEM_DATA: std_logic_vector(31 downto 0);
signal EX_MEM_OUT_RT_RD: std_logic_vector(4 downto 0);

--==MEM_WB SIGNALS===
signal MEM_WB_ALU_DATA_OUT,MEM_WB_MEM_DATA_OUT:std_logic_vector(31 downto 0);
signal MEM_WB_OUT_RT_RD: std_logic_vector(4 downto 0);
signal MEM_WB_SIG_IN,MEM_WB_SIG_OUT: std_logic_vector(31 downto 0);

begin



FORWARD_UN: Forward_Unit port map(
							ID_EX_rs => ID_EX_RS_BLOCK_OUT,
							ID_EX_rd => ID_EX_INSTR_RT_RD_OUT(31 DOWNTO 27),
							ID_EX_rt => ID_EX_RT_BLOCK_OUT,
							EX_MEM_rd => EX_MEM_OUT_RT_RD,
							regWrite => ID_EX_SIG_OUT(31),
							MEM_WB_rd => MEM_WB_OUT_RT_RD,
							ForwardA => ID_EX_MUX_RFA_SEL,
							ForwardB => ID_EX_MUX_RFB_SEL
		
							);



							
INSTRUCTION_FETCH: IFSTAGE Port map( 

						  PC_IMMED => IMMEDIATE_ZERO,
						  PC_SEL => SELECT_BRANCH,
						  --MODIFIED
						  PC_LDEN => StallOut,
						  RESET => RESET,
						  RAM_ADDROUT => PC_INSTRUCTION_ADDRESS,
						  CLK => CLK
						  
						  
			           );
			  
STALL_UN:  StallUnit port MAP(	
							IF_ID_op => IF_ID_INSTR(31 DOWNTO 26),
							IF_ID_rt => IF_ID_INSTR(15 DOWNTO 11),
							IF_ID_rs => IF_ID_INSTR(15 DOWNTO 11),
							ID_EX_rt => ID_EX_RT_BLOCK_OUT,
							PC_LDEN => PC_LOAD_EN,
							enabler => StallOut
							);
						

--============IF_ID==========

DECODE: DECSTAGE port map ( 
										 Instr => IF_ID_INSTR(25 downto 0),
										 --TODO CHECK THAT
										 RF_WrEn => writeRegEn, -- RegWrite after 4 cycles OR in the 1st cycle
										 ALU_out => MEM_WB_ALU_DATA_OUT, 
										 MEM_out => MEM_WB_MEM_DATA_OUT,
										 RF_WrData_sel => MEM_WB_SIG_OUT(30), -- MemtoReG after 4 cycles
										 Write_reg => MEM_WB_OUT_RT_RD,
										 RF_B_sel => RegDst,
										 Immed_Ext => immExt,
										 clk => CLK,
										 Immed => IMMEDIATE,
										 RF_A => RF_A_DATA,
										 RF_B => RF_B_DATA
			 
									);

IF_ID_CONTROL_SIGNALS: regist port map (		
										DataIn => IF_ID_SIG_IN,
										--MODIFIED
										WE => StallOut, 										
										Clock => CLK,
										DataOut => IF_ID_SIG_OUT
									);

IF_ID_INSTRUCTION: regist port map (		
										DataIn => INSTRUCTION,
										--MODIFIED
										WE => StallOut,  									
										Clock => CLK,
										DataOut => IF_ID_INSTR
									);
									



--============ID_EX==========	


ID_EX_MUX_RFA: MUX4to1 port map(
										  InA => ID_EX_RFA_DATA,
										  InB =>	EX_MEM_ALU_DATA,
										  InC => MEM_WB_ALU_DATA_OUT,
										  Selector => ID_EX_MUX_RFA_SEL,
										  Output => ID_EX_MUX_RFA_OUT
										  );

ID_EX_MUX_RFB: MUX4to1 port map(
										  InA => ID_EX_RFB_DATA,
										  InB =>	EX_MEM_ALU_DATA,
										  InC => MEM_WB_ALU_DATA_OUT,
										  Selector => ID_EX_MUX_RFB_SEL,
										  Output => ID_EX_MUX_RFB_OUT
										  );
										

ID_EX_RS_BLOCK: regist5bits port map(
										DataIn => IF_ID_INSTR(25 DOWNTO 21),
										WE => RegEn, 									
										Clock => CLK,
										DataOut => ID_EX_RS_BLOCK_OUT
										);
										
ID_EX_RT_BLOCK: regist5bits port map(
										DataIn => IF_ID_INSTR(15 DOWNTO 11),
										WE => RegEn, 									
										Clock => CLK,
										DataOut => ID_EX_RT_BLOCK_OUT
										);

EX: ALUSTAGE port map( 
								
							RF_A => ID_EX_MUX_RFA_OUT,
						   RF_B => ID_EX_MUX_RFB_OUT,
						   Immed => ID_EX_IMMED,
						   ALU_Bin_sel => ID_EX_SIG_OUT(24), --ALUSrc
						   ALU_func => ID_EX_SIG_OUT(28 DOWNTO 25), -- aluCONTROL
						   ALU_out => ALU_DATA,
						   ALU_zero => ALU_ZERO_SIGN
							
							);	
							
ID_EX_INSTR_RD: regist port map (
													DataIn => ID_EX_INSTR_RT_RD_IN,
													WE => RegEn, 										
													Clock => CLK,
													DataOut => ID_EX_INSTR_RT_RD_OUT
													);


--ID_EX_MUX_INSRT: MUX10to5 PORT MAP (
--									Instruct0 => ID_EX_INSTR_RT_RD_OUT(31 downto 27),--Rt
--									Instruct1 => ID_EX_INSTR_RT_RD_OUT(26 downto 22),--Rd
--									sel => ID_EX_SIG_OUT(23),
--									Out_instruct => ID_EX_OUT_RT_RD
--									);

ID_EX_CONTROL_SIGNALS:  regist port map (		
										DataIn => ID_EX_SIG_IN,
										WE => RegEn, 										
										Clock => CLK,
										DataOut => ID_EX_SIG_OUT
									);

ID_EX_REGA: regist port map (		
										DataIn => RF_A_DATA,
										WE => RegEn,									
										Clock => CLK,
										DataOut => ID_EX_RFA_DATA
									);
									
ID_EX_REGB: regist port map (		
										DataIn => RF_B_DATA,
										WE => RegEn, 										
										Clock => CLK,
										DataOut => ID_EX_RFB_DATA
									);
									
ID_EX_IMMEDIATE: regist port map (		
										DataIn => IMMEDIATE,
										WE => RegEn,										
										Clock => CLK,
										DataOut => ID_EX_IMMED
									);
								

--============EX_MEM==========	

RAM1: RAM Port map(
							 clk       => CLK,
							 inst_addr => PC_INSTRUCTION_ADDRESS,
							 inst_dout => INSTRUCTION,
							 data_we   => EX_MEM_SIG_OUT(29),
							 data_addr => DATA_ADDRESS, -- IS THE EX_MEM_ALU_DATA
							 data_din => EX_MEM_RFB_DATA, 
							 data_dout => EX_MEM_MEM_DATA
							 
						);


EX_MEM_CONTROL_SIGNALS: regist port map (		
										DataIn => EX_MEM_SIG_IN,
										WE => RegEn, 										
										Clock => CLK,
										DataOut => EX_MEM_SIG_OUT
									);

EX_MEM_ALU_OUT: 	regist port map (		
										DataIn => ALU_DATA,
										WE => RegEn,								
										Clock => CLK,
										DataOut => EX_MEM_ALU_DATA
									);
EX_MEM_RFB_OUT: regist port map (		
										DataIn => ID_EX_MUX_RFB_OUT,
										WE => RegEn,									
										Clock => CLK,
										DataOut => EX_MEM_RFB_DATA
									);
									
EX_MEM_RD: regist5bits port map (		
										DataIn => ID_EX_INSTR_RT_RD_OUT(31 downto 27),--Rd,
										WE => RegEn,									
										Clock => CLK,
										DataOut => EX_MEM_OUT_RT_RD
									);

--============MEM_WB==========	


MEM_WB_CONTROL_SIGNALS: regist port map (		
										DataIn => MEM_WB_SIG_IN,
										WE => RegEn, 										
										Clock => CLK,
										DataOut => MEM_WB_SIG_OUT
									);

MEM_WB_MEM_DATA: regist port map (		
										DataIn => EX_MEM_MEM_DATA,
										WE => RegEn,									
										Clock => CLK,
										DataOut => MEM_WB_MEM_DATA_OUT
									);
MEM_WB_ALU_DATA: regist port map (		
										DataIn => EX_MEM_ALU_DATA, 
										WE => RegEn,									
										Clock => CLK,
										DataOut => MEM_WB_ALU_DATA_OUT
									);									
									
									
MEM_WB_RT_RD: regist5bits port map (		
										DataIn => EX_MEM_OUT_RT_RD,
										WE => RegEn,									
										Clock => CLK,
										DataOut => MEM_WB_OUT_RT_RD
									);
									



--================================

--stathero to IF 
IMMEDIATE_ZERO <= "00000000000000000000000000000000";
SELECT_BRANCH <='0';
PC_LOAD_EN <='1';		


writeRegEn <= MEM_WB_SIG_OUT(31);
							
RegEn<='1';						
DATA_ADDRESS <= EX_MEM_ALU_DATA(12 DOWNTO 2) + "10000000000";
opcode <= IF_ID_INSTR(31 downto 26) ;

ID_EX_INSTR_RT_RD_IN <= IF_ID_INSTR(20 DOWNTO 16) & IF_ID_INSTR(15 DOWNTO 11) & (21 DOWNTO 0 =>'0');

ID_EX_SIG_IN <= RegWrite & MemtoReg & MemWrite & ALUControl & ALUSrc  & (23 downto 0 =>'0');
EX_MEM_SIG_IN <= ID_EX_SIG_OUT(31 downto 29) & (28 downto 0 =>'0');
MEM_WB_SIG_IN <= EX_MEM_SIG_OUT(31 downto 30) & (29 downto 0 =>'0');
end Behavioral;

