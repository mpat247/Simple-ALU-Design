--problem 2.c)

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;

entity ALU3 is
port(Clock: in std_logic;
	  A,B : in unsigned(7 downto 0);
	  student_id : in unsigned(3 downto 0);
	  OP : in unsigned (15 downto 0);
	  Neg: out std_logic;
	  R1: out unsigned(3 downto 0);
	  R2: out unsigned (3 downto 0));
end ALU3;

architecture calculation of ALU3 is
signal Reg1, Reg2, Result: unsigned (3 downto 0) := (others=>'0');
signal Reg4 : unsigned (0 to 7);
signal sum : unsigned (8 downto 0);
signal temp : unsigned (7 downto 0);
signal rreg2 : unsigned (7 downto 0);

begin 

process(Clock, OP, A, B)
begin	
	if(Clock'event and clock = '1') THEN
		case OP is
			when "0000000000000001" => 
				if ( student_id mod 2 = 0 )
				then
				Result <= "1111";
				else
				Result <= "0000";
				end if;
			when "0000000000000010" =>
				if ( student_id mod 2 = 0 )
				then
				Result <= "1111";
				else
				Result <= "0000";
				end if;
			when "0000000000000100" => 
				if ( student_id mod 2 = 0 )
				then
				Result <= "1111";
				else
				Result <= "0000";
				end if;
			when "0000000000001000" => 
				if ( student_id mod 2 = 0 )
				then
				Result <= "1111";
				else
				Result <= "0000";
				end if;
			when "0000000000010000" => 
				if ( student_id mod 2 = 0 )
				then
				Result <= "1111";
				else
				Result <= "0000";
				end if;
			when "0000000000100000" => 
				if ( student_id mod 2 = 0 )
				then
				Result <= "1111";
				else
				Result <= "0000";
				end if;
			when "0000000001000000" =>
				if ( student_id mod 2 = 0 )
				then
				Result <= "1111";
				else
				Result <= "0000";
				end if;
			when "0000000010000000" => 
				if ( student_id mod 2 = 0 )
				then
				Result <= "1111";
				else
				Result <= "0000";
				end if;
			when "0000000100000000" => 
				if ( student_id mod 2 = 0 )
				then
				Result <= "1111";
				else
				Result <= "0000";
				end if;
			when others =>
			Result <= "0000";
		end case;
	end if;
end process;
R1 <= Result(3 downto 0);

end calculation;