--problem 2.c)

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;

entity ALU2 is
port(Clock: in std_logic;
	  A,B : in unsigned(7 downto 0);
	  student_id : in unsigned(3 downto 0);
	  OP : in unsigned (15 downto 0);
	  Neg: out std_logic;
	  R1: out unsigned(3 downto 0);
	  R2: out unsigned (3 downto 0));
end ALU2;

architecture calculation of ALU2 is
signal Reg1, Reg2, Result: unsigned (7 downto 0) := (others=>'0');
signal Reg4 : unsigned (0 to 7);
signal sum : unsigned (8 downto 0);
signal temp : unsigned (7 downto 0);
signal rreg2 : unsigned (7 downto 0);

begin 
Reg1 <= A;
Reg2 <= B;

process(Clock, OP, A, B)
begin	
	if(Clock'event and clock = '1') THEN
		case OP is
			--difference between A and B
			when "0000000000000001" => 
				if ( A < B )
				then
				neg <= '1';
				Result <= B - A;
				else
				neg <= '0';
				Result <= A - B;
				end if;
			--2's Complement of B
			when "0000000000000010" =>
				neg <= '0';
				Result <= (1 + not(B));
			--Swapping lower 4 bits of A with 4 lower bits of B
			when "0000000000000100" => 
				neg <= '0' ;
				temp(0) <= B(0);
				temp(1) <= B(1);
				temp(2) <= B(2);
				temp(3) <= B(3);
				temp(4) <= A(4);
				temp(5) <= A(5);
				temp(6) <= A(6);
				temp(7) <= A(7);
				Result <= temp;
			--null on the output
			when "0000000000001000" => 
				neg <= '0' ;
				Result <= null ;
			--decrement by 5
			when "0000000000010000" => 
				neg <= '0';
				Result <= B - "0101" ;
			--invert bit significance order of A
			when "0000000000100000" => 
				neg <= '0' ;
				temp(0) <= A(7);
				temp(1) <= A(6);
				temp(2) <= A(5);
				temp(3) <= A(4);
				temp(4) <= A(3);
				temp(5) <= A(2);
				temp(6) <= A(1);
				temp(7) <= A(0);
				Result <= temp;
			--shift B to left by 2 digits. input = 1
			when "0000000001000000" =>
				neg <= '0' ;
				Result <= B sll 3 ;
			--increment a by 3
			when "0000000010000000" => 
				neg <= '0';
				Result <= A - "011" ;
			--invert all bits of b
			when "0000000100000000" => 
				neg <= '0' ;
				Result <= not(B);
			when others =>
			Result <= "00000000";
		end case;
	end if;
end process;
R1 <= Result(3 downto 0);
R2 <= Result(7 downto 4);
end calculation;