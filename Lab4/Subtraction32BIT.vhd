----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:10:19 02/18/2019 
-- Design Name: 
-- Module Name:    Subtraction32BIT - Behavioral 
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
use IEEE.NUMERIC_BIT;
use IEEE.NUMERIC_STD.all; 

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Subtraction32BIT is
    Port ( SUBA : in  STD_LOGIC_VECTOR (31 downto 0);
           SUBB : in  STD_LOGIC_VECTOR (31 downto 0);
           SUBOUT : out  STD_LOGIC_VECTOR (31 downto 0) := (OTHERS => '0');
           SUBCOUT : out  STD_LOGIC := '0' ;
           SUBOVF : out  STD_LOGIC := '0');
end Subtraction32BIT;

architecture Behavioral of Subtraction32BIT is

--SIMILAR TO ADDITION
SIGNAL TMPOUT : STD_LOGIC_VECTOR (32 DOWNTO 0) := (OTHERS => '0') ;
SIGNAL TMPA : STD_LOGIC_VECTOR (32 DOWNTO 0) := (OTHERS => '0')  ;
SIGNAL TMPB : STD_LOGIC_VECTOR (32 DOWNTO 0) := (OTHERS => '0') ;

begin


TMPA(31 DOWNTO 0) <= SUBA(31 DOWNTO 0);
TMPB(31 DOWNTO 0) <= SUBB(31 DOWNTO 0);

TMPOUT <= TMPA - TMPB;

SUBOUT <= TMPOUT(31 DOWNTO 0) AFTER 10 NS ;
SUBCOUT <= TMPOUT(32) AFTER 10 NS;

--http://teaching.idallen.com/dat2343/10f/notes/040_overflow.txt
--Overflow in two's complement may occur, not when a bit is carried out
--out of the left column, but when one is carried into it and no matching
--carry out occurs. That is, overflow happens when there is a carry into
--the sign bit but no carry out of the sign bit.

--The OVERFLOW flag is the XOR of the carry coming into the sign bit (if
--any) with the carry going out of the sign bit (if any).  Overflow happens
--if the carry in does not equal the carry out.

--Different way
--https://www.youtube.com/watch?v=DKj8p2nfdA8
--ovf = ((NOT(ADDA(31))) AND (NOT(ADDA(31))) AND  TMPOUT(31)) OR ((ADDA(31)) AND (ADDA(31)) AND  NOT(TMPOUT(31)))
SUBOVF <= ((NOT(SUBA(31))) AND (NOT(SUBB(31))) AND  TMPOUT(31)) OR ((SUBA(31)) AND (SUBB(31)) AND  NOT(TMPOUT(31))) AFTER 10 NS;


end Behavioral;

