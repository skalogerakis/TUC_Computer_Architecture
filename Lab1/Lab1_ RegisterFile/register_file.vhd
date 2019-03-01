----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:54:50 02/21/2019 
-- Design Name: 
-- Module Name:    register_file - Behavioral 
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

entity register_file is
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
	
end register_file;

architecture Behavioral of register_file is

signal decTOandWrEn: std_logic_vector(31 downto 0);
signal WrEnTOreg: std_logic_vector(31 downto 0);

type dimArray is array (0 to 31,0 to 31) of std_logic;
signal data_reg: dimArray;

component decoder5x32 is
	   port  ( 	
					decIN : in  STD_LOGIC_VECTOR (4 downto 0);
					decOUT : out  STD_LOGIC_VECTOR (31 downto 0)
				);
				
end component;

component multiplexer32to1 is

	 Port   (
				  x : in std_logic_vector(31 downto 0);
				  s : in std_logic_vector(4 downto 0);
				  y : out std_logic
			  );
			  
end component;

component regist is 
	   port  (
					DataIn : IN std_logic_vector(31 DOWNTO 0) ;
					WE, Clock : IN std_logic ;
					DataOut : OUT std_logic_vector(31 DOWNTO 0) 
				);
				
end component;					

--==========================BOXES-SIGNALS===================================
BEGIN


	WrEn_GEN:

	for k in 0 to 31 generate 									  
											
	WrEnTOreg(k) <= decTOandWrEn(k) and WrEn after 2 ns;	
		
	end generate WrEn_GEN;
	

	DEC: decoder5x32 port map ( decIN(0) => Awr(0),
										 decIN(1) => Awr(1),
										 decIN(2) => Awr(2),
										 decIN(3) => Awr(3),
										 decIN(4) => Awr(4),
										decOUT(0) => decTOandWrEn (0),
											decOUT(1) => decTOandWrEn (1),
											decOUT(2) => decTOandWrEn (2),
											decOUT(3) => decTOandWrEn (3),
											decOUT(4) => decTOandWrEn (4),
											decOUT(5) => decTOandWrEn (5),
											decOUT(6) => decTOandWrEn (6),
											decOUT(7) => decTOandWrEn (7),
											decOUT(8) => decTOandWrEn (8),
											decOUT(9) => decTOandWrEn (9),
											decOUT(10) => decTOandWrEn (10),
											decOUT(11) => decTOandWrEn (11),
											decOUT(12) => decTOandWrEn (12),
											decOUT(13) => decTOandWrEn (13),
											decOUT(14) => decTOandWrEn (14),
											decOUT(15) => decTOandWrEn (15),
											decOUT(16) => decTOandWrEn (16),
											decOUT(17) => decTOandWrEn (17),
											decOUT(18) => decTOandWrEn (18),
											decOUT(19) => decTOandWrEn (19),
											decOUT(20) => decTOandWrEn (20),
											decOUT(21) => decTOandWrEn (21),
											decOUT(22) => decTOandWrEn (22),
											decOUT(23) => decTOandWrEn (23),
											decOUT(24) => decTOandWrEn (24),
											decOUT(25) => decTOandWrEn (25),
											decOUT(26) => decTOandWrEn (26),
											decOUT(27) => decTOandWrEn (27),
											decOUT(28) => decTOandWrEn (28),
											decOUT(29) => decTOandWrEn (29),
											decOUT(30) => decTOandWrEn (30),
											decOUT(31) => decTOandWrEn (31)				
										);


	
	
MUX_GEN_1:	

	for i in 0 to 31 generate 		
	
		 MUX: multiplexer32to1 port map (	
														x(0) 	=> data_reg(0,i),
														x(1) 	=> data_reg(1,i),
														x(2) 	=> data_reg(2,i),
														x(3) 	=> data_reg(3,i),
														x(4) 	=> data_reg(4,i),
														x(5) 	=> data_reg(5,i),
														x(6) 	=> data_reg(6,i),
														x(7) 	=> data_reg(7,i),
														x(8) 	=> data_reg(8,i),
														x(9) 	=> data_reg(9,i),
														x(10) => data_reg(10,i),
														x(11) => data_reg(11,i),
														x(12) => data_reg(12,i),
														x(13) => data_reg(13,i),
														x(14) => data_reg(14,i),
														x(15) => data_reg(15,i),
														x(16) => data_reg(16,i),
														x(17) => data_reg(17,i),
														x(18) => data_reg(18,i),
														x(19) => data_reg(19,i),
														x(20) => data_reg(20,i),
														x(21) => data_reg(21,i),
														x(22) => data_reg(22,i),
														x(23) => data_reg(23,i),
														x(24) => data_reg(24,i),
														x(25) => data_reg(25,i),
														x(26) => data_reg(26,i),
														x(27) => data_reg(27,i),
														x(28) => data_reg(28,i),
														x(29) => data_reg(29,i),
														x(30) => data_reg(30,i),
														x(31) => data_reg(31,i),
														y     => Dout1(i),
														s(0) 	=> Ard1(0),
														s(1) 	=> Ard1(1),
														s(2) 	=> Ard1(2),
														s(3) 	=> Ard1(3),
														s(4) 	=> Ard1(4));
													
	end generate MUX_GEN_1;
	

MUX_GEN_2:	

	for i in 0 to 31 generate 		
	
		 MUX: multiplexer32to1 port map (	
														x(0) 	=> data_reg(0,i),
														x(1) 	=> data_reg(1,i),
														x(2) 	=> data_reg(2,i),
														x(3) 	=> data_reg(3,i),
														x(4) 	=> data_reg(4,i),
														x(5) 	=> data_reg(5,i),
														x(6) 	=> data_reg(6,i),
														x(7) 	=> data_reg(7,i),
														x(8) 	=> data_reg(8,i),
														x(9) 	=> data_reg(9,i),
														x(10) => data_reg(10,i),
														x(11) => data_reg(11,i),
														x(12) => data_reg(12,i),
														x(13) => data_reg(13,i),
														x(14) => data_reg(14,i),
														x(15) => data_reg(15,i),
														x(16) => data_reg(16,i),
														x(17) => data_reg(17,i),
														x(18) => data_reg(18,i),
														x(19) => data_reg(19,i),
														x(20) => data_reg(20,i),
														x(21) => data_reg(21,i),
														x(22) => data_reg(22,i),
														x(23) => data_reg(23,i),
														x(24) => data_reg(24,i),
														x(25) => data_reg(25,i),
														x(26) => data_reg(26,i),
														x(27) => data_reg(27,i),
														x(28) => data_reg(28,i),
														x(29) => data_reg(29,i),
														x(30) => data_reg(30,i),
														x(31) => data_reg(31,i),
														y     => Dout2(i),
														s(0) 	=> Ard2(0),
														s(1) 	=> Ard2(1),
														s(2) 	=> Ard2(2),
														s(3) 	=> Ard2(3),
														s(4) 	=> Ard2(4));
													
	end generate MUX_GEN_2;
	
	
REG_GEN:

	for i in 0 to 31 generate
		
		REG: regist port map ( 	
											Clock => clk,
											WE => WrEnTOreg(i),
											dataIn(0) => Din (0),
											dataIn(1) => Din (1),
											dataIn(2) => Din (2),
											dataIn(3) => Din (3),
											dataIn(4) => Din (4),
											dataIn(5) => Din (5),
											dataIn(6) => Din (6),
											dataIn(7) => Din (7),
											dataIn(8) => Din (8),
											dataIn(9) => Din (9),
											dataIn(10) => Din (10),
											dataIn(11) => Din (11),
											dataIn(12) => Din (12),
											dataIn(13) => Din (13),
											dataIn(14) => Din (14),
											dataIn(15) => Din (15),
											dataIn(16) => Din (16),
											dataIn(17) => Din (17),
											dataIn(18) => Din (18),
											dataIn(19) => Din (19),
											dataIn(20) => Din (20),
											dataIn(21) => Din (21),
											dataIn(22) => Din (22),
											dataIn(23) => Din (23),
											dataIn(24) => Din (24),
											dataIn(25) => Din (25),
											dataIn(26) => Din (26),
											dataIn(27) => Din (27),
											dataIn(28) => Din (28),
											dataIn(29) => Din (29),
											dataIn(30) => Din (30),
											dataIn(31) => Din (31),											
											dataOut(0) => data_reg(i,0),
											dataOut(1) => data_reg(i,1),
											dataOut(2) => data_reg(i,2),
											dataOut(3) => data_reg(i,3),
											dataOut(4) => data_reg(i,4),
											dataOut(5) => data_reg(i,5),
											dataOut(6) => data_reg(i,6),
											dataOut(7) => data_reg(i,7),
											dataOut(8) => data_reg(i,8),
											dataOut(9) => data_reg(i,9),
											dataOut(10) => data_reg(i,10),
											dataOut(11) => data_reg(i,11),
											dataOut(12) => data_reg(i,12),
											dataOut(13) => data_reg(i,13),
											dataOut(14) => data_reg(i,14),
											dataOut(15) => data_reg(i,15),
											dataOut(16) => data_reg(i,16),
											dataOut(17) => data_reg(i,17),
											dataOut(18) => data_reg(i,18),
											dataOut(19) => data_reg(i,19),
											dataOut(20) => data_reg(i,20),
											dataOut(21) => data_reg(i,21),
											dataOut(22) => data_reg(i,22),
											dataOut(23) => data_reg(i,23),
											dataOut(24) => data_reg(i,24),
											dataOut(25) => data_reg(i,25),
											dataOut(26) => data_reg(i,26),
											dataOut(27) => data_reg(i,27),
											dataOut(28) => data_reg(i,28),
											dataOut(29) => data_reg(i,29),
											dataOut(30) => data_reg(i,30),
											dataOut(31) => data_reg(i,31)
											);
											
	end generate REG_GEN;

	
	
end Behavioral;

