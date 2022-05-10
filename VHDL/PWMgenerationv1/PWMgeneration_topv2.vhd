LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;
use IEEE.STD_logic_unsigned.all;

entity PWMgeneration_top is
	port(
		reset : in std_logic;
		clk: in std_logic;
		sel: in std_logic;
		set_onoff: in std_logic;
		reset_onoff: in std_logic;
		PWM_H1: out std_logic;
		PWM_L1: out std_logic;
		PWM_H2: out std_logic;
		PWM_L2:out std_logic;
		DCDC_SET: out std_logic;
		DCDC_RESET: out std_logic;
		DCDC_WDG: out std_logic
		);
end PWMgeneration_top;

architecture beh of PWMgeneration_top is
type state_type is (idle,buck1,buck2,boost1,boost2);
signal est_act, est_sig: state_type := idle;
constant period : integer := 278; --to get 180khz from 50 mhz internal clock
constant half_period : integer := 139; --for wdg signal
constant dutybuck : integer := 190;   --235 for vinmax=120V, 235 for vinmax=160
constant dutyboost : integer := 65;  --65 for vinmax=80V, 117 for vinmax=62V
constant deadtime1_buck : integer:=7; 
constant deadtime2_buck : integer:=2;
constant deadtime1_boost : integer:=7; 
constant deadtime2_boost : integer:=2;
signal countactual1, countdead1 : integer := 0;
signal countsig1: integer:=0;
signal wdg_count,wdg_count_sig: integer:=0;
signal wdg_sig: std_logic:='0';
signal PWM_H1_sig, PWM_L1_sig , PWM_H2_sig, PWM_L2_sig: std_logic:='0';
begin

CLK_process: process (Clk,reset)
begin
if (reset='0') then
	PWM_H1<=PWM_H1_sig;
	PWM_L1<=PWM_L1_sig;
	PWM_H2<=PWM_H2_sig;
	PWM_L2<=PWM_L2_sig;
	countactual1<=0;
	est_act<=idle;
	DCDC_RESET<='0';
	DCDC_SET<='0';
	DCDC_WDG<='0';
	wdg_count<=0;

elsif clk'event and clk='1' then

	countactual1<=countsig1;
	PWM_H1<=PWM_H1_sig;
	PWM_L1<=PWM_L1_sig;
	PWM_H2<=PWM_H2_sig;
	PWM_L2<=PWM_L2_sig;
	est_act<=est_sig;
	DCDC_RESET<=reset_onoff;
	DCDC_SET<=set_onoff;
	DCDC_WDG<=wdg_sig;
	wdg_count<=wdg_count_sig;
	
end if;
end process;

state_process: process(est_act,countactual1,sel)
begin
		est_sig<=est_act;
		countsig1<=countactual1;
		case est_act is
			when idle =>
				PWM_H1_sig<='0';
				PWM_L1_sig<='0';
				PWM_H2_sig<='0';
				PWM_L2_sig<='0';
				if (sel='0') then
					est_sig<=buck1;
				else
					est_sig<=boost1;
				end if;

				when buck1 =>
				PWM_H1_sig<='1';
				PWM_L1_sig<='0';
				PWM_H2_sig<='1';
				PWM_L2_sig<='0';
				if (countactual1 >= dutybuck-deadtime1_buck) then
					PWM_H1_sig<='0';
					PWM_L1_sig<='0';
					PWM_H2_sig<='1';
					PWM_L2_sig<='0';
					if (countactual1>=dutybuck) then
						est_sig<= buck2;
						countsig1<=countactual1+1;
						--countsig1<=0;
					else
					countsig1<=countactual1+1;
					end if;
				else
				countsig1 <= countactual1 +1;
			end if;

				when buck2 =>
				PWM_H1_sig<='0';
				PWM_L1_sig<='1';
				PWM_H2_sig<='1';
				PWM_L2_sig<='0';
				if (countactual1 >= period-deadtime2_buck) then
					PWM_H1_sig<='0';
					PWM_L1_sig<='0';
					PWM_H2_sig<='1';
					PWM_L2_sig<='0';
					if (countactual1>=period) then
						est_sig<= buck1;
						countsig1<=0;
					else
					countsig1<=countactual1+1;
					end if;
				else
				countsig1 <= countactual1 +1;
				end if;


				when boost1 =>
				PWM_H1_sig<='1';
				PWM_L1_sig<='0';
				PWM_H2_sig<='0';
				PWM_L2_sig<='1';
				if (countactual1 >= dutyboost-deadtime1_boost) then
					PWM_H1_sig<='1';
					PWM_L1_sig<='0';
					PWM_H2_sig<='0';
					PWM_L2_sig<='0';
					if (countactual1>=dutyboost) then
						est_sig<= boost2;
						countsig1<=countactual1+1;
					else
					countsig1<=countactual1+1;
					end if;
				else
				countsig1 <= countactual1 +1;
				end if;

				when boost2 =>
				PWM_H1_sig<='1';
				PWM_L1_sig<='0';
				PWM_H2_sig<='1';
				PWM_L2_sig<='0';
				if (countactual1 >= period-deadtime2_boost) then
					PWM_H1_sig<='1';
					PWM_L1_sig<='0';
					PWM_H2_sig<='0';
					PWM_L2_sig<='0';
					if (countactual1>=period) then
						est_sig<= boost1;
						countsig1<=0;
					else
					countsig1<=countactual1+1;
					end if;
				else
				countsig1 <= countactual1 +1;
				end if;


		end case;

	end process;
wdg:process(wdg_count)
begin
wdg_count_sig<=wdg_count+1;
if (wdg_count >= half_period) then
	wdg_sig<=not wdg_sig;
elsif (wdg_count >=period) then
	wdg_count_sig<=0;
	wdg_sig <= '0';

end if;
end process;
end;
