LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;
use IEEE.STD_logic_unsigned.all;

entity PWMgeneration_top is
	port(
		reset : in std_logic;
		clk: in std_logic;
		PWM_H: out std_logic;
		PWM_L: out std_logic
		);
end PWMgeneration_top;

architecture beh of PWMgeneration_top is
type state_type is (d1on,d2on,deadtime);
signal est_act, est_sig: state_type := d1on;
constant Period : integer := 278;
constant dutyfinal : integer := 100;
constant deadtimefinal : integer:=3;
signal countactual : integer := 0;
signal countsig: integer:=0;
signal PWM_H_sig, PWM_L_sig : std_logic:='0';
signal flag,flagdt: std_logic:= '0';
begin

CLK_process: process (Clk,reset)
begin
if (reset='1') then
	countactual<=0;
	PWM_L<='0';
	PWM_H<='0';

elsif clk'event and clk='1' then
	
	countactual<=countsig;
	countactual<=countactual+1;
	PWM_H<=PWM_H_sig;
	PWM_L<=PWM_L_sig;
	est_act<=est_sig;
end if;
end process;

state_process: process(est_act,countactual)
begin
	
		case est_act is
			when d1on =>
				PWM_H_sig<='1';
				PWM_L_sig<='0';
				if (countactual>=dutyfinal) then
					flag<='1';
					countsig<=0;
					est_sig<=deadtime;
				end if;
		when deadtime =>
			--flagdt<=not flagdt;
			PWM_H_sig<='0';
			PWM_L_sig<='0';
			if (countactual>= deadtimefinal) then
				countsig<=0;
				if (est_act=d1on) then
					est_sig<=d2on;
				elsif (est_act=d2on) then
					est_sig<=d1on;
				else 
					est_sig<=deadtime;
				end if;
			end if;
		when d2on =>
			PWM_H_sig<='0';
			PWM_L_sig<='0';
			--flag<=not flag;

			if (countactual>=period - deadtimefinal - dutyfinal) then
				countsig<=0;
				est_sig<=deadtime;
			end if;
		end case;
		
	end process;
end;
