Library ieee;
use ieee.std_logic_1164.all;

entity latch1 is 
	port (A: in std_logic_vector(7 downto 0);
	      Resetn, Clock: in std_logic;
			Q : out std_logic_vector(7 downto 0));
end latch1;

architecture behavior of latch1 is 
begin 
	process (Resetn, Clock)
	Begin
		if Resetn ='0' Then
			Q <= "00000000";
		Elsif Clock'EVENT AND Clock='1' Then
				Q<=A;
	End if;
end process;
end behavior;