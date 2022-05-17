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
		wdg_out:out std_logic;
		set_btn:in std_logic;
		reset_btn:in std_logic;
		set_out: out std_logic;
		wdg_reset:in std_logic;
		reset_out: out std_logic;
		inc : in std_logic;
		dec : in std_logic
		);
 end component;

 signal Reset    : std_logic;
 signal Clk      : std_logic;
 signal PWM_L1,PWM_H1, PWM_L2, PWM_H2	: std_logic;
 signal sel : std_logic;
 signal wdg_out : std_logic;
 signal set_btn: std_logic;
 signal reset_btn: std_logic;
 signal set_out, reset_out: std_logic;
 signal wdg_reset:std_logic;
 signal inc,dec: std_logic;

 begin  -- TestBench

 UUT: PWMgeneration_top
   port map (
       reset    => Reset,
       clk     => Clk,
       PWM_L1 => PWM_L1,
		 PWM_H1 => PWM_H1,
		 PWM_H2 => PWM_H2,
		 PWM_L2 => PWM_L2,
		 sel => sel,
		 wdg_out => wdg_out,
		 set_btn => set_btn,
		 reset_btn => reset_btn,
		 set_out => set_out,
		 reset_out => reset_out,
		 wdg_reset => wdg_reset,
     inc => inc,
     dec => dec
    );


 Reset <= '0', '1' after 100 ns;

 sel <= '0','1' after 50100 us;
 p_clk : PROCESS
 BEGIN
    clk <= '1', '0' after 10 ns;
    wait for 20 ns;
 END PROCESS;
 
  inc_clk: process
  BEGIN
    inc <= '0', '1' after 100 us;
    wait for 200 us;
 END PROCESS;

--inc <= '0','1' after 1 ms, '0' after 1100us, '1' after 2 ms , '0' after 2100 us, '1' after 2200 us; 
dec <= '0','1'  after 3 ms,'0' after 4 ms,'1'  after 5 ms;--,'0' after 5 ms,'1'  after 6 ms,'0' after 7 ms;

reset_btn <= '1';
set_btn <= '1';
wdg_reset <= '1', '0' after 20 ms;



end TestBench;
