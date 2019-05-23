----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:18:42 05/22/2019 
-- Design Name: 
-- Module Name:    Stalling_UN - Behavioral 
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

entity Stalling_UN is
port(	
		Instr_op: in std_logic_vector(5 downto 0);
		Instr_rt: in std_logic_vector(4 downto 0);
		Instr_rs: in std_logic_vector(4 downto 0);
		ID_EX_rt: in std_logic_vector(4 downto 0);
		ID_EX_rs: in std_logic_vector(4 downto 0);
		con__ID_EX_mux: out std_logic;
		IF_ID_en: out std_logic;
		pc_en: out std_logic
		);
end Stalling_UN;

architecture Behavioral of Stalling_UN is

begin

process(Instr_op,ID_EX_rt,ID_EX_rs)

begin
	If(Instr_op="100000") then --R case
		
		if(Instr_rt=ID_EX_rt) then
			
			

end Behavioral;

