library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;

entity ALU is
port(Clock: in std_logic;
	  A,B : in unsigned(7 downto 0);
	  student_id : in unsigned(3 downto 0);
	  OP : in unsigned (15 downto 0);
	  Neg: out std_logic;
	  R1: out unsigned(3 downto 0);
	  R2: out unsigned (3 downto 0));
end ALU;

architecture calculation of ALU is
signal Reg1,Reg2,Result: unsigned (7 downto 0) := (others=>'0');
signal Reg4 : unsigned (0 to 7);

begin 
Reg1 <= A;
Reg2 <= B;

process(Clock, OP)
begin	
	if(Clock'event and clock = '1') THEN
		case OP is
			when "0000000000000001" => 
			Result <= Reg1 + Reg2;
			when "0000000000000010" =>
			Result <= Reg1 - Reg2;
			if Reg2 > Reg1 Then
				Neg <= '1';
				End if;
			when "0000000000000100" => 
			Result <= (NOT(Reg1));
			when "0000000000001000" => 
			Result <= (NOT(A OR B));
			when "0000000000010000" => 
			Result <= (NOT(A AND B));
			when "0000000000100000" => 
			Result <= (A OR B);
			when "0000000001000000" => 
			Result <= (A XOR B);
			when "0000000010000000" => 
			Result <= (A AND B);
			when "0000000100000000" => 
			Result <= (NOT (A XOR B));
			when others =>
			Result <= "00000000";
		end case;
	end if;
end process;
R1 <= Result(3 downto 0);
R2 <= Result(7 downto 4);
end calculation;