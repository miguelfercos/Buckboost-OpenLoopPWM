LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;

entity PWMgeneration_tb is
end PWMgeneration_tb;


architecture TestBench of PWMgeneration_tb is

 component PWMgeneration_top
   port(
			reset : in std_logic;
		clk: in std_logic;
		sel: in std_logic;
		PWM_H1: out std_logic;
		PWM_L1: out std_logic;
		PWM_H2: out std_logic;
		PWM_L2:out std_logic;
		set_onoff: in std_logic;
		reset_onoff: in std_logic;
		dcdc_set:out std_logic;
		dcdc_reset: out std_logic;
		dcdc_wdg: out std_logic
		);
 end component;
 
 signal Reset    : std_logic;
 signal Clk      : std_logic;
 signal PWM_L1,PWM_H1, PWM_L2, PWM_H2	: std_logic;
 signal sel : std_logic;
 signal set_onoff, reset_onoff : std_logic;
 signal dcdc_set,dcdc_reset,dcdc_wdg: std_logic;
 
 begin  -- TestBench

 UUT: PWMgeneration_top
   port map (
       reset    => Reset,
       clk     => Clk,
       PWM_L1=> PWM_L1,
		 PWM_H1=> PWM_H1,
		 PWM_H2=> PWM_H2,
		 PWM_L2 => PWM_L2, 
		 sel => sel,
		 set_onoff => set_onoff,
		 reset_onoff => reset_onoff,
		 dcdc_set => dcdc_set,
		 dcdc_reset => dcdc_reset,
		 dcdc_wdg => dcdc_wdg
    );


 Reset <= '0', '1' after 100 ns,'0' after 10100 ns,'1' after 10110 ns;
 
 sel <= '0','1' after 10 us;
 set_onoff <='0','1' after 1 us;
 reset_onoff<= '0', '1' after 1 us;
 p_clk : PROCESS
 BEGIN
    clk <= '1', '0' after 10 ns;
    wait for 20 ns;
 END PROCESS;
 
 

end TestBench;