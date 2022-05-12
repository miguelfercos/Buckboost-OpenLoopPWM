LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;
use IEEE.STD_logic_unsigned.all;

entity PWMgeneration_top is
	port(
		reset : in std_logic;
		clk: in std_logic;
		sel: in std_logic;
		PWM_H1: out std_logic;
		PWM_L1: out std_logic;
		PWM_H2: out std_logic;
		PWM_L2:out std_logic;
		wdg_out:out std_logic;
		set_btn:in std_logic;
		reset_btn:in std_logic;
		set_out: out std_logic;
		reset_out: out std_logic;
		wdg_reset:in std_logic;
		incduty:in std_logic;
		decduty:in std_logic
		);
end PWMgeneration_top;

architecture beh of PWMgeneration_top is
type state_type is (idle, buck1,buck2,boost1softs,boost2softs, boost1,boost2);
signal est_act, est_sig: state_type := idle;
constant period : integer := 278;
constant half_period : integer:= period/2;
constant dutybuck_start : integer := 190;   --235 for vinmax=120V, 190 for vinmax=150 referred to high side switch d= 0.85 approx
constant dutyboost_start: integer := 65;  --65 for vinmax=80V, 117 for vinmax=62V. referred to low side switch. d=0.20 approx
constant softstart_duty_final: integer := 265;
constant deadtime1_buck : integer:= 7;
constant deadtime2_buck : integer:= 2;
constant deadtime1_boost : integer:= 7;
constant deadtime2_boost : integer:= 2;
signal countactual1: integer:= 0;
signal countsig1: integer:= 0;
signal softstart_duty_act,softstart_duty_sig: integer:=15;
signal countwdg_act,countwdg_sig : integer:=0;
signal countreset_act, countset_act, countset_sig, countreset_sig : integer range 0 to 279:=0;
signal PWM_H1_sig, PWM_L1_sig , PWM_H2_sig, PWM_L2_sig: std_logic:='0';
signal set_flag, reset_flag : std_logic :='0';
signal dutybuck,dutybuck_sig,dutyboost,dutyboost_sig: integer range 0 to 279:=0;
begin

CLK_process: process (Clk,reset)
begin
if (reset='0') then
	PWM_H1<='0';
	PWM_L1<='0';
	PWM_H2<='0';
	PWM_L2<='0';
	countactual1<=0;
	est_act<=idle;
	softstart_duty_act <= 15;

elsif rising_edge(Clk) then

	countactual1<=countsig1;
	PWM_H1<=PWM_H1_sig;
	PWM_L1<=PWM_L1_sig;
	PWM_H2<=PWM_H2_sig;
	PWM_L2<=PWM_L2_sig;
	est_act<=est_sig;
	softstart_duty_act<= softstart_duty_sig;
end if;
end process;

CLK_wdg_process : process (Clk)
begin
if (wdg_reset ='0') then
countwdg_act<=0;
elsif (clk'event and clk='1') then
countwdg_act <= countwdg_sig;
end if;
end process;

state_process: process(est_act,countactual1,sel,softstart_duty_act,dutybuck,dutyboost)
begin
		est_sig<=est_act;
		countsig1<=countactual1;
		softstart_duty_sig<=softstart_duty_act;
		case est_act is
			when idle =>
				PWM_H1_sig<='0';
				PWM_L1_sig<='0';
				PWM_H2_sig<='0';
				PWM_L2_sig<='0';

				softstart_duty_sig<=15;
				if (sel='0') then
					est_sig <= buck1;
				else
					est_sig <= boost1softs;
					end if;

			when buck1 =>
				PWM_H1_sig<='0';
				PWM_L1_sig<='1';
				PWM_H2_sig<='1';
				PWM_L2_sig<='0';

				if (countactual1 >= period-deadtime2_buck-softstart_duty_act-deadtime1_buck) then
					PWM_H1_sig <='0';
					PWM_L1_sig <='0';
					PWM_H2_sig <='1';
					PWM_L2_sig <='0';
					if (countactual1 >= period - softstart_duty_act- deadtime1_buck) then
						est_sig <= buck2;
						countsig1 <= countactual1+1;
						--countsig1<=0;
					else
					countsig1 <= countactual1+1;
					end if;
				else
				countsig1 <= countactual1 +1;
			end if;

			when buck2 =>
					PWM_H1_sig<='1';
					PWM_L1_sig<='0';
					PWM_H2_sig<='1';
					PWM_L2_sig<='0';
				if (countactual1 >= period-deadtime1_buck) then
					PWM_H1_sig<='0';
					PWM_L1_sig<='0';
					PWM_H2_sig<='1';
					PWM_L2_sig<='0';
					if (countactual1 >= period) then
						countsig1 <= 0;
						est_sig<= buck1;
						if (softstart_duty_act >= dutybuck) then
							softstart_duty_sig <= dutybuck;
						else
							softstart_duty_sig <= softstart_duty_act + 1;
						end if;
					else
						countsig1<=countactual1 + 1;
					end if;
				else
					countsig1 <= countactual1 + 1;
				end if;


				when boost1softs =>
					PWM_H1_sig<='0';
					PWM_L1_sig<='1';
					PWM_H2_sig<='1';
					PWM_L2_sig<='0';

				if (countactual1 >= period-deadtime2_buck-softstart_duty_act-deadtime1_buck) then
					PWM_H1_sig <='0';
					PWM_L1_sig <='0';
					PWM_H2_sig <='1';
					PWM_L2_sig <='0';
					if (countactual1 >= period - softstart_duty_act- deadtime1_buck) then
						est_sig <= boost2softs;
						countsig1 <= countactual1+1;
						--countsig1<=0;
					else
						countsig1 <= countactual1+1;
					end if;
				else
					countsig1 <= countactual1 +1;
				end if;


				when boost2softs =>
					PWM_H1_sig<='1';
					PWM_L1_sig<='0';
					PWM_H2_sig<='1';
					PWM_L2_sig<='0';
				if (countactual1 >= period-deadtime1_buck) then
					PWM_H1_sig<='0';
					PWM_L1_sig<='0';
					PWM_H2_sig<='1';
					PWM_L2_sig<='0';
					if (countactual1 >= period) then
						countsig1 <= 0;

						if (softstart_duty_act >=  softstart_duty_final) then
							softstart_duty_sig <= 15;
							est_sig <= boost2;
						else
							softstart_duty_sig <= softstart_duty_act + 1;
							est_sig <= boost1softs;
						end if;
					else
						countsig1<=countactual1 + 1;
					end if;
				else
					countsig1 <= countactual1 + 1;
				end if;

				when boost1 =>
				PWM_H1_sig<='1';
				PWM_L1_sig<='0';
				PWM_H2_sig<='0';
				PWM_L2_sig<='1';
				if (countactual1 >= softstart_duty_act-deadtime1_boost) then
					PWM_H1_sig<='1';
					PWM_L1_sig<='0';
					PWM_H2_sig<='0';
					PWM_L2_sig<='0';
					if (countactual1 >= softstart_duty_act) then
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
						if (softstart_duty_act>= dutyboost) then
						softstart_duty_sig<= softstart_duty_act;
						else
						softstart_duty_sig<=softstart_duty_act+1;
						end if;
					else
					countsig1<=countactual1+1;
					end if;
				else
				countsig1 <= countactual1 +1;
				end if;

		end case;

	end process;


	wdg_process: process(countwdg_act)
	begin
	if (countwdg_act < half_period) then
		wdg_out <= '1';
	else
		wdg_out <='0';
	end if;

	if (countwdg_act >= period) then
		countwdg_sig <= 0;
	else
		countwdg_sig <= countwdg_act+1;
	end if;
	end process;


	set_process: process(set_btn, countset_act)
	begin
		if ((set_btn)='0') then
			set_flag <='1';
			countset_sig <= countset_act+1;
			set_out <= '1';
		else
			if (countset_act)<500000 and set_flag ='1'then
			set_out <='1';
			countset_sig <= countset_act+1;
			set_flag <='1';
			else
			set_out <='0';
			countset_sig <= 0;
			set_flag <='0';
		end if;
		end if;
	end process;

	reset_process: process(reset_btn,countreset_act)
	begin
		if ((reset_btn)='0') then

			countreset_sig <= countreset_act+1;
			reset_out <= '1';
			reset_flag <= '1';
		else
			if (countreset_act)<500000 and reset_flag ='1' then
			reset_out <='1';
			countreset_sig <= countreset_act+1;
			reset_flag <='1';
			else
			reset_out <='0';
			countreset_sig <= 0;
			reset_flag <='0';
		end if;
		end if;
		end process;

CLK_set_reset_process : process (Clk)
begin
if (clk'event and clk='1') then
countset_act <= countset_sig;
countreset_act <= countreset_sig;
end if;
end process;

CLK_incdec_process: process(clk)
begin
if (clk'event and clk='1') then
dutyboost <= dutyboost_sig;
dutybuck <= dutybuck_sig;
end if;
end process;


Increase_decrease_duty : process (incduty,decduty,sel)
begin

if(incduty='0') then
dutybuck_sig<=dutybuck_start;
dutyboost_sig<=dutyboost_start;

elsif (incduty'event and incduty='1') then -- I want to increment
	if (sel='0') then --buck
		if(dutybuck > period+deadtime1_boost+deadtime2_boost) then --reached end
			dutybuck_sig<=dutybuck_start;
			dutyboost_sig<=dutyboost_start;
		else --not reached end
			dutybuck_sig<=dutybuck_start;
			dutyboost_sig<=dutyboost+20;
		end if;
	else --boost
		if(dutyboost > period+deadtime1_boost+deadtime2_boost) then --reached end
			dutybuck_sig<=dutybuck_start;
			dutyboost_sig<=dutyboost_start;
		else --not reached end
			dutybuck_sig<=dutybuck_start;
			dutyboost_sig<=dutyboost+20;
		end if;
	end if;

elsif (decduty'event and decduty='1') then -- I want to decrement

if (sel='0') then --buck
	if(dutybuck > period+deadtime1_boost+deadtime2_boost) then --reached end
		dutybuck_sig<=dutybuck_start;
		dutyboost_sig<=dutyboost_start;
	else --not reached end
		dutybuck_sig<=dutybuck_start;
		dutyboost_sig<=dutyboost-20;
	end if;
else --boost
	if(dutyboost > period+deadtime1_boost+deadtime2_boost) then --reached end
		dutybuck_sig<=dutybuck_start;
		dutyboost_sig<=dutyboost_start;
	else --not reached end
		dutybuck_sig<=dutybuck_start;
		dutyboost_sig<=dutyboost-20;
	end if;
end if;
end if;


end process;





end;
