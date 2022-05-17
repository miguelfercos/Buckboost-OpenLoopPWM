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
		inc:in std_logic;
		dec:in std_logic
		);
end PWMgeneration_top;

architecture RTL of PWMgeneration_top is 

signal duty_cycle : integer range 0 to 279:=65;
signal reset_btn_inv : std_logic;
signal set_btn_inv : std_logic;
signal inc_not,dec_not : std_logic;

component PWM
port(
		reset : in std_logic;
		clk: in std_logic;
		sel: in std_logic;
		PWM_H1: out std_logic;
		PWM_L1: out std_logic;
		PWM_H2: out std_logic;
		PWM_L2:out std_logic;
		duty: in integer range 0 to 279
);
end component;

component set_reset
port(clk: in std_logic;
set_btn:in std_logic;
reset_btn:in std_logic;
set_out: out std_logic;
reset_out: out std_logic
);
end component;

component watchdog
	port(clk: in std_logic;
	wdg_reset:in std_logic;
	wdg_out:out std_logic
	);
end component;

component incdec_duty
 port(
 		reset : in std_logic;
		inc:in std_logic;
		dec:in std_logic;
		clk: in std_logic;
		sel: in std_logic;
		duty: out integer range 0 to 279
 );
end component;




begin

reset_btn_inv<= not reset_btn; -- added so that set_btn and reset_btn work with the slide switches instead of
set_btn_inv <= not set_btn; -- the push buttons. same with  inc and dec but the opposite.
inc_not <= not inc;
dec_not <= not dec;

PWMtest: PWM
port map(
		reset=>reset,
		clk=>clk,
		sel=>sel,
		duty=>duty_cycle,
		PWM_H1=>PWM_H1,
		PWM_L1=>PWM_L1,
		PWM_H2=>PWM_H2,
		PWM_L2=>PWM_L2
);

set_reset_test: set_reset
port map(
clk=>clk,
set_btn=>set_btn_inv,
reset_btn=>reset_btn_inv,
set_out=>set_out,
reset_out=>reset_out
);

watchdog_test: watchdog
port map(
clk=>clk,
	wdg_reset=>wdg_reset,
	wdg_out=>wdg_out
);

incdecdutytest: incdec_duty
port map(
		reset=>reset,
		inc=>inc_not,
		dec=>dec_not,
		sel=>sel,
		clk=>clk,
		duty=>duty_cycle
);

end RTL;
