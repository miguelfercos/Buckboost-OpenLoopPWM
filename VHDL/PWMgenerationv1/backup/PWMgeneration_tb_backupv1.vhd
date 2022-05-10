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
		PWM_H: out std_logic;
		PWM_L: out std_logic
		);
 end component;
 
 signal Reset    : std_logic;
 signal Clk      : std_logic;
 signal PWM_L,PWM_H	: std_logic;
 
 begin  -- TestBench

 UUT: PWMgeneration_top
   port map (
       reset    => Reset,
       clk     => Clk,
       PWM_L=> PWM_L,
		 PWM_H=> PWM_H
    );


 Reset <= '1', '0' after 100 ns;
 
 p_clk : PROCESS
 BEGIN
    clk <= '1', '0' after 20 ns;
    wait for 40 ns;
 END PROCESS;
 
 

end TestBench;