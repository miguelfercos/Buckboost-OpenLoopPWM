LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;
use IEEE.STD_logic_unsigned.all;
 
 
 
 entity incdec_duty is
 port(
 		inc:in std_logic;
		dec:in std_logic;
		clk: in std_logic;
		reset: in std_logic;
		sel: in std_logic;
		duty: out integer range 0 to 279
 );
 end incdec_Duty;
 
 architecture behavior of incdec_duty is
constant duty_start: integer:=20;
constant dutybuck: integer := 190; --190;   --235 for vinmax=120V, 190 for vinmax=150 referred to high side switch d= 0.85 approx
constant dutyboost: integer := 65;--65;  --65 for vinmax=80V, 117 for vinmax=62V. referred to low side switch.

--signal dutybuck,dutybuck_sig: integer range 0 to 279:=dutybuck_start;
--signal dutyboost,dutyboost_sig: integer range 0 to 279:=dutyboost_Start;
signal duty_act,duty_sig: integer range 0 to 279:=65; 
signal inc_prev,dec_prev: std_logic_vector (1 downto 0); 
signal flag_inc: integer:=0;

 
constant period : integer := 278;
constant deadtime1_buck : integer:= 7;
constant deadtime2_buck : integer:= 2;
constant deadtime1_boost : integer:= 7;
constant deadtime2_boost : integer:= 2;

 
 begin
 
 CLK_incdec_process: process(reset,clk)
 begin
if (reset='0') then 
inc_prev<="00";
dec_prev<="00";

if (sel='0') then --buck
duty <=dutybuck;
duty_act<=dutybuck;
else --boost
duty <= dutyboost;
duty<=dutyboost;
end if;

elsif(clk'event and clk='1') then
-- dutyboost <= dutyboost_sig;
-- dutybuck <= dutybuck_sig;
duty <= duty_sig;
duty_act<=duty_sig;
inc_prev<=inc_prev(0)& inc;
dec_prev<=dec_prev(0)& dec;

 end if;
 end process;

Increase_duty : process (inc_prev,dec_prev,duty_act)
begin
if(inc_prev="01") then
			if(duty_act > period-deadtime1_boost-deadtime2_boost) then --reached end. Restart count
			duty_sig<=duty_start;
			

			else --not reached end. Continue countin
				duty_sig<=duty_act+5;
				flag_inc<= flag_inc+1;
			end if;


elsif (dec_prev="01") then
		
			if(duty_act < deadtime1_boost+deadtime2_boost) then --reached end. Restart count
				duty_sig<=duty_start;
			else --not reached end. Continue countin
				duty_sig<=duty_act-5;
			end if;
		

else
		duty_sig<=duty_act;

end if;
end process;

end behavior;