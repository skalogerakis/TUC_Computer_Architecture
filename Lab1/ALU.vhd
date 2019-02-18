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

signal OUTPUT : std_logic_vector (31 downto 0) := (others => '0');

signal NOT32 : std_logic_vector (31 downto 0);

begin

ADD : Addition32BIT PORT MAP(
         ADDA => ADDA,
         ADDB => ADDB,
         ADDOUT => ADDOUT,
         ADDCOUT => ADDCOUT,
         ADDOVF => ADDOVF
        );

SUB: Subtraction32BIT PORT MAP(
         SUBA => SUBA,
         SUBB => SUBB,
         SUBOUT =>SUBOUT,
         SUBCOUT =>SUBCOUT,
         SUBOVF =>SUBOVF
        );

AND32: AND32BIT PORT MAP(
         ANDA => ANDA,
         ANDB => ANDB,
         OUTA => OUTA
        );

OR32: OR32BIT PORT MAP(
         ORA => ORA,
         ORB  => ORB,
         OROUT => OROUT
        );
		  
SRARITH: SRARITH32BIT PORT MAP(
         SRARITHA => SRARITHA,
         SRARITHOUT => SRARITHOUT
        );

SRLO: SRLOGIC PORT MAP(
         SRLOGICA => SRLOGICA,
         SRLOGICOUT => SRLOGICOUT
        );

SLLO: SLLOGIC PORT MAP(
         SLLOGICA  => SLLOGICA,
         SLLOGICOUT => SLLOGICOUT
        );

RTL :ROTL PORT MAP(
         ROTLA => ROTLA,
         ROTLOUT => RORLOUT
        );

RTR: ROTR PORT MAP(
         ROTRA => ROTRA,
         ROTROUT =>ROTROUT
        );
NOT32 <= NOT ALUA AFTER 10 NS ;
  
WITH ALUOP SELECT
	OUTPUT <= ADDOUT WHEN "0000",
					SUBOUT WHEN "0001",
					OUTA WHEN "0010",
					OROUT WHEN "0011",
					NOT32 WHEN "0100",
					SRARITHOUT WHEN "1000",
					SRLOGICOUT WHEN "1001",
					SLLOGICOUT WHEN "1010",
					ROTLOUT WHEN "1100",
					ROTLOUT WHEN "1101",
					OUTPUT WHEN OTHERS;

WITH ALUOP SELECT
	ALUCOUT <= ADDCOUT WHEN "0000",
				SUBCOUT WHEN "0001",
				'0' WHEN OTHERS;
				
WITH ALUOP SELECT
	ALUOVF <= ADDOVF WHEN "0000",
				SUBOVF WHEN "0001",
				'0' WHEN OTHERS;

ALUOUT <= OUTPUT;
--CASE OUTPUT IS ZERO THEN VALUE ALUZERO IS ASSIGNED WITH ONE
--ZERO OTHERWISE
IF OUTPUT == "00000000000000000000000000000000" THEN
	ALUZERO = '1';
ELSE
	ALUZERO = '0';
END IF;
end Behavioral;

