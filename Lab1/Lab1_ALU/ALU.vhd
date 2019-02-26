----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    03:02:26 02/18/2019 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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

entity ALU is
    Port ( ALUA : in  STD_LOGIC_VECTOR (31 downto 0);
           ALUB : in  STD_LOGIC_VECTOR (31 downto 0);
           ALUOP : in  STD_LOGIC_VECTOR (3 downto 0);
           ALUOUT : out  STD_LOGIC_VECTOR (31 downto 0);
           ALUZERO : out  STD_LOGIC;
           ALUCOUT : out  STD_LOGIC;
           ALUOVF : out  STD_LOGIC);
end ALU;

architecture Behavioral of ALU is

COMPONENT Addition32BIT
    PORT(
         ADDA : IN  std_logic_vector(31 downto 0);
         ADDB : IN  std_logic_vector(31 downto 0);
         ADDOUT : OUT  std_logic_vector(31 downto 0);
         ADDCOUT : OUT  std_logic;
         ADDOVF : OUT  std_logic
        );
END COMPONENT;

COMPONENT Subtraction32BIT
    PORT(
         SUBA : IN  std_logic_vector(31 downto 0);
         SUBB : IN  std_logic_vector(31 downto 0);
         SUBOUT : OUT  std_logic_vector(31 downto 0);
         SUBCOUT : OUT  std_logic;
         SUBOVF : OUT  std_logic
        );
END COMPONENT;

COMPONENT AND32BIT
    PORT(
         ANDA : IN  std_logic_vector(31 downto 0);
         ANDB : IN  std_logic_vector(31 downto 0);
         OUTA : OUT  std_logic_vector(31 downto 0)
        );
END COMPONENT;

COMPONENT OR32BIT
    PORT(
         ORA : IN  std_logic_vector(31 downto 0);
         ORB : IN  std_logic_vector(31 downto 0);
         OROUT : OUT  std_logic_vector(31 downto 0)
        );
END COMPONENT;

COMPONENT SRARITH32BIT
    PORT(
         SRARITHA : IN  std_logic_vector(31 downto 0);
         SRARITHOUT : OUT  std_logic_vector(31 downto 0)
        );
END COMPONENT;

COMPONENT SRLOGIC
    PORT(
         SRLOGICA : IN  std_logic_vector(31 downto 0);
         SRLOGICOUT : OUT  std_logic_vector(31 downto 0)
        );
END COMPONENT;
	 
COMPONENT SLLOGIC
    PORT(
         SLLOGICA : IN  std_logic_vector(31 downto 0);
         SLLOGICOUT : OUT  std_logic_vector(31 downto 0)
        );
END COMPONENT;

COMPONENT ROTL
    PORT(
         ROTLA : IN  std_logic_vector(31 downto 0);
         ROTLOUT : OUT  std_logic_vector(31 downto 0)
        );
END COMPONENT;

COMPONENT ROTR
    PORT(
         ROTRA : IN  std_logic_vector(31 downto 0);
         ROTROUT : OUT  std_logic_vector(31 downto 0)
        );
END COMPONENT;

--NEEDED FOR ADDITION COMPONENT
signal ADDEXIT : std_logic_vector (31 downto 0);
signal ADDC: std_logic ;
signal ADDVF : std_logic := '0' ;

--NEEDED FOR SUBTRACTION COMPONENT
signal SUBEXIT : std_logic_vector (31 downto 0);
signal SUBC: std_logic;
signal SUBVF : std_logic := '0';

--NEEDED FOR AND32 COMPONENT
signal ANDEXIT : std_logic_vector (31 downto 0);

--NEEDED FOR OR32 COMPONENT
signal OREXIT : std_logic_vector (31 downto 0);

--NEEDED FOR SRARITH COMPONENT
signal SRAREXIT : std_logic_vector (31 downto 0);

--NEEDED FOR SRLO COMPONENT
signal SRLOEXIT : std_logic_vector (31 downto 0);

--NEEDED FOR SLLO COMPONENT
signal SLLOEXIT : std_logic_vector (31 downto 0);

--NEEDED FOR RTL COMPONENT
signal RTLEXIT : std_logic_vector (31 downto 0);

--NEEDED FOR RTR COMPONENT
signal RTREXIT : std_logic_vector (31 downto 0);

--NEEDED FOR OUR CHECKS
signal OUTPUT : std_logic_vector (31 downto 0) := (others => '0');
CONSTANT ZEROOUTPUT : std_logic_vector (31 downto 0) := (others => '0');	--SWITCHED TO CONSTANT TO AVOID ERROR


signal NOTEXIT : std_logic_vector (31 downto 0);

begin

ADD : Addition32BIT PORT MAP(
         ADDA => ALUA,
         ADDB => ALUB,
         ADDOUT => ADDEXIT,
         ADDCOUT => ADDC,
         ADDOVF => ADDVF
        );

SUB: Subtraction32BIT PORT MAP(
         SUBA => ALUA,
         SUBB => ALUB,
         SUBOUT =>SUBEXIT,
         SUBCOUT =>SUBC,
         SUBOVF =>SUBVF
        );

AND32: AND32BIT PORT MAP(
         ANDA => ALUA,
         ANDB => ALUB,
         OUTA => ANDEXIT
        );

OR32: OR32BIT PORT MAP(
         ORA => ALUA,
         ORB  => ALUB,
         OROUT => OREXIT
        );
		  
SRARITH: SRARITH32BIT PORT MAP(
         SRARITHA => ALUA,
         SRARITHOUT => SRAREXIT
        );

SRLO: SRLOGIC PORT MAP(
         SRLOGICA => ALUA,
         SRLOGICOUT => SRLOEXIT
        );

SLLO: SLLOGIC PORT MAP(
         SLLOGICA  => ALUA,
         SLLOGICOUT => SLLOEXIT
        );

RTL :ROTL PORT MAP(
         ROTLA => ALUA,
         ROTLOUT => RTLEXIT
        );

RTR: ROTR PORT MAP(
         ROTRA => ALUA,
         ROTROUT =>RTREXIT
        );
		  
NOTEXIT <= NOT ALUA AFTER 10 NS ;
  
WITH ALUOP SELECT
	OUTPUT <= ADDEXIT WHEN "0000",
					SUBEXIT WHEN "0001",
					ANDEXIT WHEN "0010",
					OREXIT WHEN "0011",
					NOTEXIT WHEN "0100",
					SRAREXIT WHEN "1000",
					SRLOEXIT WHEN "1001",
					SLLOEXIT WHEN "1010",
					RTLEXIT WHEN "1100",
					RTREXIT WHEN "1101",
					OUTPUT WHEN OTHERS;

WITH ALUOP SELECT
	ALUCOUT <= ADDC WHEN "0000",
				SUBC WHEN "0001",
				'0' WHEN OTHERS;
				
WITH ALUOP SELECT
	ALUOVF <= ADDVF WHEN "0000",
				SUBVF WHEN "0001",
				'0' WHEN OTHERS;

ALUOUT <= OUTPUT;

--CASE OUTPUT IS ZERO THEN VALUE ALUZERO IS ASSIGNED WITH ONE
--ZERO OTHERWISE

WITH OUTPUT SELECT
	ALUZERO <= '1' WHEN ZEROOUTPUT,
				'0' WHEN OTHERS;


end Behavioral;

