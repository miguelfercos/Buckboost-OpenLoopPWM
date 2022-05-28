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
		sel: in std_logic_vector(1 downto 0);
		PWM_H1: out std_logic;
		PWM_H1_sens: out std_logic;
		PWM_L1: out std_logic;
		PWM_L1_sens: out std_logic;
		PWM_H2: out std_logic;
		PWM_H2_sens: out std_logic;
		PWM_L2:out std_logic;
		PWM_L2_sens:out std_logic;
		wdg_out:out std_logic;
		set_btn:in std_logic;
		reset_btn:in std_logic;
		set_out: out std_logic;
		reset_out: out std_logic;
		wdg_reset:in std_logic;
		incdec: in std_logic; -- if '1' increments, if '0' decrements
		incdec_btn: in std_logic; -- button. when pressed, increments/decrements depending on incdec
		delay_incdec_btn: in std_logic; -- when pressed, increments/decrements delay
		d1d2:in std_logic
		);
 end component;

 signal Reset    : std_logic;
 signal Clk      : std_logic;
 signal PWM_L1,PWM_H1, PWM_L2, PWM_H2, PWM_L1_sens,PWM_H1_sens, PWM_L2_sens, PWM_H2_sens	: std_logic;
 signal sel : std_logic_vector(1 downto 0);
 signal wdg_out : std_logic;
 signal set_btn: std_logic;
 signal reset_btn: std_logic;
 signal set_out, reset_out: std_logic;
 signal wdg_reset:std_logic;
 signal incdec,incdec_btn,d1d2,delay_incdec_btn: std_logic;

 begin  -- TestBench

 UUT: PWMgeneration_top
   port map (
		reset =>reset,
		clk => clk ,
		sel => sel,
		PWM_H1 => PWM_H1 , 
		PWM_H1_sens => PWM_H1_sens ,
		PWM_L1 => PWM_L1 ,
		PWM_L1_sens => PWM_L1_sens ,
		PWM_H2 => PWM_H2 ,
		PWM_H2_sens =>  PWM_H2_sens ,
		PWM_L2 => PWM_L2,
		PWM_L2_sens => PWM_L2_sens,
		wdg_out => wdg_out,
		set_btn => set_btn,
		reset_btn =>reset_btn,
		set_out => set_out,
		reset_out =>reset_out,
		wdg_reset =>wdg_reset,
		incdec =>incdec,
		incdec_btn => incdec_btn,
		delay_incdec_btn => delay_incdec_btn,
		d1d2 => d1d2
    );


 Reset <= '0', '1' after 100 ns;

 sel <= "01","10" after 50100 us;
 p_clk : PROCESS
 BEGIN
    clk <= '1', '0' after 10 ns;
    wait for 20 ns;
 END PROCESS;
 
  inc_clk: process
  BEGIN
    incdec <= '0', '1' after 100 us;
    wait for 200 us;
 END PROCESS;


reset_btn <= '1';
set_btn <= '1';
wdg_reset <= '1', '0' after 20 ms;



end TestBench;
