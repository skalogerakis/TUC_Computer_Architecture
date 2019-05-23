----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:57:35 05/21/2019 
-- Design Name: 
-- Module Name:    Forward_Unit - Behavioral 
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

entity Forward_Unit is
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
end Forward_Unit;

architecture Behavioral of Forward_Unit is

begin

process(ID_EX_rs,ID_EX_rt)
begin
	
	
	if(ID_EX_rd=EX_MEM_rd and regWrite='0' ) then --sw cases
		ForwardB<="01";
		ForwardA<="00";
	
	elsif(ID_EX_rd="00000" or regWrite='0') then 
		ForwardA<="00";
		ForwardB<="00";
	
	elsif(EX_MEM_rd=ID_EX_rs ) then 
		ForwardA<="01";	
			
	elsif(MEM_WB_rd=ID_EX_rs) then 
		ForwardA<="10";
			
	end if;
			
	--================rt CASES---------------------	
	
	if(EX_MEM_rd=ID_EX_rt ) then 
		ForwardB<="01";	
			
	elsif(MEM_WB_rd=ID_EX_rt) then 
		ForwardB<="10";
			
	end if; 
			
	
	
end process;

end Behavioral;

