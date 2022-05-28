-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "05/27/2022 17:45:56"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
LIBRARY STD;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE STD.STANDARD.ALL;

ENTITY 	incdec_duty IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	incdec : IN std_logic;
	incdec_btn : IN std_logic;
	delay_incdec_btn : IN std_logic;
	d1d2 : IN std_logic;
	delay_out : OUT STD.STANDARD.integer range 0 TO 260;
	sel : IN std_logic_vector(1 DOWNTO 0);
	d1 : OUT STD.STANDARD.integer range 0 TO 279;
	d2 : OUT STD.STANDARD.integer range 0 TO 279
	);
END incdec_duty;

-- Design Ports Information
-- delay_out[0]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- delay_out[1]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- delay_out[2]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- delay_out[3]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- delay_out[4]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- delay_out[5]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- delay_out[6]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- delay_out[7]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- delay_out[8]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1[0]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1[1]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1[2]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1[3]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1[4]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1[5]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1[6]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1[7]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1[8]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2[0]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2[1]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2[2]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2[3]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2[4]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2[5]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2[6]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2[7]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2[8]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- incdec	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sel[0]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sel[1]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- d1d2	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- delay_incdec_btn	=>  Location: PIN_A7,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- incdec_btn	=>  Location: PIN_B8,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF incdec_duty IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_incdec : std_logic;
SIGNAL ww_incdec_btn : std_logic;
SIGNAL ww_delay_incdec_btn : std_logic;
SIGNAL ww_d1d2 : std_logic;
SIGNAL ww_delay_out : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_sel : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_d1 : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_d2 : std_logic_vector(8 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \delay_out[0]~output_o\ : std_logic;
SIGNAL \delay_out[1]~output_o\ : std_logic;
SIGNAL \delay_out[2]~output_o\ : std_logic;
SIGNAL \delay_out[3]~output_o\ : std_logic;
SIGNAL \delay_out[4]~output_o\ : std_logic;
SIGNAL \delay_out[5]~output_o\ : std_logic;
SIGNAL \delay_out[6]~output_o\ : std_logic;
SIGNAL \delay_out[7]~output_o\ : std_logic;
SIGNAL \delay_out[8]~output_o\ : std_logic;
SIGNAL \d1[0]~output_o\ : std_logic;
SIGNAL \d1[1]~output_o\ : std_logic;
SIGNAL \d1[2]~output_o\ : std_logic;
SIGNAL \d1[3]~output_o\ : std_logic;
SIGNAL \d1[4]~output_o\ : std_logic;
SIGNAL \d1[5]~output_o\ : std_logic;
SIGNAL \d1[6]~output_o\ : std_logic;
SIGNAL \d1[7]~output_o\ : std_logic;
SIGNAL \d1[8]~output_o\ : std_logic;
SIGNAL \d2[0]~output_o\ : std_logic;
SIGNAL \d2[1]~output_o\ : std_logic;
SIGNAL \d2[2]~output_o\ : std_logic;
SIGNAL \d2[3]~output_o\ : std_logic;
SIGNAL \d2[4]~output_o\ : std_logic;
SIGNAL \d2[5]~output_o\ : std_logic;
SIGNAL \d2[6]~output_o\ : std_logic;
SIGNAL \d2[7]~output_o\ : std_logic;
SIGNAL \d2[8]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \delay_incdec_btn~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \Add4~1\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \incdec~input_o\ : std_logic;
SIGNAL \delay_sig[1]~7_combout\ : std_logic;
SIGNAL \delay_prev[1]~feeder_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Add5~1\ : std_logic;
SIGNAL \Add5~2_combout\ : std_logic;
SIGNAL \delay_sig[1]~6_combout\ : std_logic;
SIGNAL \delay_sig[1]~8_combout\ : std_logic;
SIGNAL \Add4~3\ : std_logic;
SIGNAL \Add4~4_combout\ : std_logic;
SIGNAL \delay_sig[2]~9_combout\ : std_logic;
SIGNAL \Add5~3\ : std_logic;
SIGNAL \Add5~4_combout\ : std_logic;
SIGNAL \delay_sig[2]~10_combout\ : std_logic;
SIGNAL \delay_sig[2]~28_combout\ : std_logic;
SIGNAL \Add4~5\ : std_logic;
SIGNAL \Add4~6_combout\ : std_logic;
SIGNAL \Add5~5\ : std_logic;
SIGNAL \Add5~6_combout\ : std_logic;
SIGNAL \delay_sig[3]~11_combout\ : std_logic;
SIGNAL \delay_sig[3]~12_combout\ : std_logic;
SIGNAL \delay_sig[3]~13_combout\ : std_logic;
SIGNAL \Add4~7\ : std_logic;
SIGNAL \Add4~8_combout\ : std_logic;
SIGNAL \delay_sig[4]~15_combout\ : std_logic;
SIGNAL \Add5~7\ : std_logic;
SIGNAL \Add5~8_combout\ : std_logic;
SIGNAL \delay_sig[4]~14_combout\ : std_logic;
SIGNAL \delay_sig[4]~16_combout\ : std_logic;
SIGNAL \LessThan5~0_combout\ : std_logic;
SIGNAL \Add4~9\ : std_logic;
SIGNAL \Add4~10_combout\ : std_logic;
SIGNAL \Add5~9\ : std_logic;
SIGNAL \Add5~10_combout\ : std_logic;
SIGNAL \delay_sig[5]~17_combout\ : std_logic;
SIGNAL \delay_sig[5]~19_combout\ : std_logic;
SIGNAL \Add4~11\ : std_logic;
SIGNAL \Add4~12_combout\ : std_logic;
SIGNAL \Add5~11\ : std_logic;
SIGNAL \Add5~12_combout\ : std_logic;
SIGNAL \delay_sig[6]~20_combout\ : std_logic;
SIGNAL \delay_sig[6]~21_combout\ : std_logic;
SIGNAL \LessThan4~1_combout\ : std_logic;
SIGNAL \LessThan5~1_combout\ : std_logic;
SIGNAL \delay_sig[5]~18_combout\ : std_logic;
SIGNAL \Add5~13\ : std_logic;
SIGNAL \Add5~14_combout\ : std_logic;
SIGNAL \Add4~13\ : std_logic;
SIGNAL \Add4~14_combout\ : std_logic;
SIGNAL \delay_sig[7]~22_combout\ : std_logic;
SIGNAL \delay_sig[7]~23_combout\ : std_logic;
SIGNAL \Add4~15\ : std_logic;
SIGNAL \Add4~16_combout\ : std_logic;
SIGNAL \delay_sig[8]~24_combout\ : std_logic;
SIGNAL \Add5~15\ : std_logic;
SIGNAL \Add5~16_combout\ : std_logic;
SIGNAL \delay_sig[8]~25_combout\ : std_logic;
SIGNAL \delay_sig[8]~26_combout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \LessThan4~2_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \delay_sig[0]~4_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \delay_sig[0]~5_combout\ : std_logic;
SIGNAL \delay_sig[0]~27_combout\ : std_logic;
SIGNAL \delay_out[0]~reg0_q\ : std_logic;
SIGNAL \delay_out[1]~reg0_q\ : std_logic;
SIGNAL \delay_out[2]~reg0feeder_combout\ : std_logic;
SIGNAL \delay_out[2]~reg0_q\ : std_logic;
SIGNAL \delay_out[3]~reg0feeder_combout\ : std_logic;
SIGNAL \delay_out[3]~reg0_q\ : std_logic;
SIGNAL \delay_out[4]~reg0_q\ : std_logic;
SIGNAL \delay_out[5]~reg0_q\ : std_logic;
SIGNAL \delay_out[6]~reg0_q\ : std_logic;
SIGNAL \delay_out[7]~reg0feeder_combout\ : std_logic;
SIGNAL \delay_out[7]~reg0_q\ : std_logic;
SIGNAL \delay_out[8]~reg0_q\ : std_logic;
SIGNAL \incdec_btn~input_o\ : std_logic;
SIGNAL \sel[0]~input_o\ : std_logic;
SIGNAL \sel[1]~input_o\ : std_logic;
SIGNAL \d1_sig[0]~0_combout\ : std_logic;
SIGNAL \d1d2~input_o\ : std_logic;
SIGNAL \d1_sig[0]~2_combout\ : std_logic;
SIGNAL \d1_sig[3]~1_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \d1[8]~9_combout\ : std_logic;
SIGNAL \d1[3]~1_combout\ : std_logic;
SIGNAL \d1_sig[5]~19_combout\ : std_logic;
SIGNAL \d1_sig[1]~8_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \d1_sig[1]~7_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \d1_sig[1]~6_combout\ : std_logic;
SIGNAL \d1_sig[1]~9_combout\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \d1_sig[2]~10_combout\ : std_logic;
SIGNAL \d1_sig[2]~11_combout\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \d1_sig[3]~13_combout\ : std_logic;
SIGNAL \d1_sig[3]~12_combout\ : std_logic;
SIGNAL \d1_sig[3]~14_combout\ : std_logic;
SIGNAL \d1[3]~3_combout\ : std_logic;
SIGNAL \d1[3]~reg0_emulated_q\ : std_logic;
SIGNAL \d1[3]~2_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \d1_sig[5]~18_combout\ : std_logic;
SIGNAL \d1_sig[5]~20_combout\ : std_logic;
SIGNAL \d1[5]~5_combout\ : std_logic;
SIGNAL \d1[5]~reg0_emulated_q\ : std_logic;
SIGNAL \d1[5]~4_combout\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \d1_sig[6]~21_combout\ : std_logic;
SIGNAL \d1_sig[6]~22_combout\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \d1_sig[7]~23_combout\ : std_logic;
SIGNAL \d1_sig[7]~24_combout\ : std_logic;
SIGNAL \d1[7]~7_combout\ : std_logic;
SIGNAL \d1[7]~reg0_emulated_q\ : std_logic;
SIGNAL \d1[7]~6_combout\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \d1_sig[8]~25_combout\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \d1_sig[8]~26_combout\ : std_logic;
SIGNAL \d1_sig[8]~27_combout\ : std_logic;
SIGNAL \d1[8]~11_combout\ : std_logic;
SIGNAL \d1[8]~reg0_emulated_q\ : std_logic;
SIGNAL \d1[8]~10_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \LessThan3~1_combout\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \d1_sig[4]~16_combout\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \d1_sig[4]~15_combout\ : std_logic;
SIGNAL \d1_sig[4]~17_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \d1_sig[0]~3_combout\ : std_logic;
SIGNAL \d1_sig[0]~4_combout\ : std_logic;
SIGNAL \d1_sig[0]~5_combout\ : std_logic;
SIGNAL \d1[0]~reg0feeder_combout\ : std_logic;
SIGNAL \d1[0]~reg0_q\ : std_logic;
SIGNAL \d1[1]~reg0_q\ : std_logic;
SIGNAL \d1[2]~reg0feeder_combout\ : std_logic;
SIGNAL \d1[2]~reg0_q\ : std_logic;
SIGNAL \d1[4]~reg0feeder_combout\ : std_logic;
SIGNAL \d1[4]~reg0_q\ : std_logic;
SIGNAL \d1[6]~reg0_q\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \d2[0]~1_combout\ : std_logic;
SIGNAL \d2_sig[0]~2_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \d2_sig[3]~11_combout\ : std_logic;
SIGNAL \d2[1]~5_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \d2_sig[1]~6_combout\ : std_logic;
SIGNAL \d2_sig[1]~7_combout\ : std_logic;
SIGNAL \d2_sig[1]~8_combout\ : std_logic;
SIGNAL \d2[1]~7_combout\ : std_logic;
SIGNAL \d2[1]~reg0_emulated_q\ : std_logic;
SIGNAL \d2[1]~6_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \d2_sig[2]~9_combout\ : std_logic;
SIGNAL \d2_sig[2]~10_combout\ : std_logic;
SIGNAL \d2[2]~9_combout\ : std_logic;
SIGNAL \d2[2]~reg0_emulated_q\ : std_logic;
SIGNAL \d2[2]~8_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \d2_sig[3]~12_combout\ : std_logic;
SIGNAL \d2_sig[3]~13_combout\ : std_logic;
SIGNAL \d2_sig[3]~27_combout\ : std_logic;
SIGNAL \d2_sig[3]~14_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \d2_sig[4]~15_combout\ : std_logic;
SIGNAL \d2_sig[4]~16_combout\ : std_logic;
SIGNAL \d2[4]~11_combout\ : std_logic;
SIGNAL \d2[4]~reg0_emulated_q\ : std_logic;
SIGNAL \d2[4]~10_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \d2_sig[5]~17_combout\ : std_logic;
SIGNAL \d2_sig[5]~19_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \d2_sig[6]~20_combout\ : std_logic;
SIGNAL \d2_sig[6]~21_combout\ : std_logic;
SIGNAL \d2[6]~13_combout\ : std_logic;
SIGNAL \d2[6]~reg0_emulated_q\ : std_logic;
SIGNAL \d2[6]~12_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \d2_sig[8]~25_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \d2_sig[8]~24_combout\ : std_logic;
SIGNAL \d2_sig[8]~26_combout\ : std_logic;
SIGNAL \d2[8]~15_combout\ : std_logic;
SIGNAL \d2[8]~reg0_emulated_q\ : std_logic;
SIGNAL \d2[8]~14_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \d2_sig[5]~18_combout\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \d2_sig[7]~22_combout\ : std_logic;
SIGNAL \d2_sig[7]~23_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \d2_sig[0]~3_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \d2_sig[0]~4_combout\ : std_logic;
SIGNAL \d2_sig[0]~5_combout\ : std_logic;
SIGNAL \d2[0]~3_combout\ : std_logic;
SIGNAL \d2[0]~reg0_emulated_q\ : std_logic;
SIGNAL \d2[0]~2_combout\ : std_logic;
SIGNAL \d2[3]~reg0feeder_combout\ : std_logic;
SIGNAL \d2[3]~reg0_q\ : std_logic;
SIGNAL \d2[5]~reg0feeder_combout\ : std_logic;
SIGNAL \d2[5]~reg0_q\ : std_logic;
SIGNAL \d2[7]~reg0feeder_combout\ : std_logic;
SIGNAL \d2[7]~reg0_q\ : std_logic;
SIGNAL delay_act : std_logic_vector(8 DOWNTO 0);
SIGNAL delay_prev : std_logic_vector(1 DOWNTO 0);
SIGNAL d1_act : std_logic_vector(8 DOWNTO 0);
SIGNAL incdec_prev : std_logic_vector(1 DOWNTO 0);
SIGNAL d2_act : std_logic_vector(8 DOWNTO 0);
SIGNAL \ALT_INV_d1[4]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_d1[2]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_d1[1]~reg0_q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_incdec <= incdec;
ww_incdec_btn <= incdec_btn;
ww_delay_incdec_btn <= delay_incdec_btn;
ww_d1d2 <= d1d2;
delay_out <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_delay_out));
ww_sel <= sel;
d1 <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_d1));
d2 <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_d2));
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_d1[4]~reg0_q\ <= NOT \d1[4]~reg0_q\;
\ALT_INV_d1[2]~reg0_q\ <= NOT \d1[2]~reg0_q\;
\ALT_INV_d1[1]~reg0_q\ <= NOT \d1[1]~reg0_q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y42_N8
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X34_Y39_N23
\delay_out[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \delay_out[0]~reg0_q\,
	devoe => ww_devoe,
	o => \delay_out[0]~output_o\);

-- Location: IOOBUF_X31_Y39_N16
\delay_out[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \delay_out[1]~reg0_q\,
	devoe => ww_devoe,
	o => \delay_out[1]~output_o\);

-- Location: IOOBUF_X36_Y39_N23
\delay_out[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \delay_out[2]~reg0_q\,
	devoe => ww_devoe,
	o => \delay_out[2]~output_o\);

-- Location: IOOBUF_X34_Y39_N16
\delay_out[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \delay_out[3]~reg0_q\,
	devoe => ww_devoe,
	o => \delay_out[3]~output_o\);

-- Location: IOOBUF_X29_Y39_N9
\delay_out[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \delay_out[4]~reg0_q\,
	devoe => ww_devoe,
	o => \delay_out[4]~output_o\);

-- Location: IOOBUF_X31_Y39_N30
\delay_out[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \delay_out[5]~reg0_q\,
	devoe => ww_devoe,
	o => \delay_out[5]~output_o\);

-- Location: IOOBUF_X31_Y39_N23
\delay_out[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \delay_out[6]~reg0_q\,
	devoe => ww_devoe,
	o => \delay_out[6]~output_o\);

-- Location: IOOBUF_X36_Y39_N30
\delay_out[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \delay_out[7]~reg0_q\,
	devoe => ww_devoe,
	o => \delay_out[7]~output_o\);

-- Location: IOOBUF_X31_Y39_N9
\delay_out[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \delay_out[8]~reg0_q\,
	devoe => ww_devoe,
	o => \delay_out[8]~output_o\);

-- Location: IOOBUF_X78_Y41_N9
\d1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d1[0]~reg0_q\,
	devoe => ww_devoe,
	o => \d1[0]~output_o\);

-- Location: IOOBUF_X29_Y39_N2
\d1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_d1[1]~reg0_q\,
	devoe => ww_devoe,
	o => \d1[1]~output_o\);

-- Location: IOOBUF_X78_Y40_N9
\d1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_d1[2]~reg0_q\,
	devoe => ww_devoe,
	o => \d1[2]~output_o\);

-- Location: IOOBUF_X78_Y40_N2
\d1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d1[3]~2_combout\,
	devoe => ww_devoe,
	o => \d1[3]~output_o\);

-- Location: IOOBUF_X78_Y40_N23
\d1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_d1[4]~reg0_q\,
	devoe => ww_devoe,
	o => \d1[4]~output_o\);

-- Location: IOOBUF_X78_Y40_N16
\d1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d1[5]~4_combout\,
	devoe => ww_devoe,
	o => \d1[5]~output_o\);

-- Location: IOOBUF_X34_Y39_N30
\d1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d1[6]~reg0_q\,
	devoe => ww_devoe,
	o => \d1[6]~output_o\);

-- Location: IOOBUF_X31_Y39_N2
\d1[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d1[7]~6_combout\,
	devoe => ww_devoe,
	o => \d1[7]~output_o\);

-- Location: IOOBUF_X78_Y41_N16
\d1[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d1[8]~10_combout\,
	devoe => ww_devoe,
	o => \d1[8]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\d2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d2[0]~2_combout\,
	devoe => ww_devoe,
	o => \d2[0]~output_o\);

-- Location: IOOBUF_X78_Y45_N2
\d2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d2[1]~6_combout\,
	devoe => ww_devoe,
	o => \d2[1]~output_o\);

-- Location: IOOBUF_X78_Y45_N23
\d2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d2[2]~8_combout\,
	devoe => ww_devoe,
	o => \d2[2]~output_o\);

-- Location: IOOBUF_X34_Y39_N9
\d2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d2[3]~reg0_q\,
	devoe => ww_devoe,
	o => \d2[3]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\d2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d2[4]~10_combout\,
	devoe => ww_devoe,
	o => \d2[4]~output_o\);

-- Location: IOOBUF_X36_Y39_N16
\d2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d2[5]~reg0_q\,
	devoe => ww_devoe,
	o => \d2[5]~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\d2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d2[6]~12_combout\,
	devoe => ww_devoe,
	o => \d2[6]~output_o\);

-- Location: IOOBUF_X34_Y39_N2
\d2[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d2[7]~reg0_q\,
	devoe => ww_devoe,
	o => \d2[7]~output_o\);

-- Location: IOOBUF_X78_Y45_N9
\d2[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d2[8]~14_combout\,
	devoe => ww_devoe,
	o => \d2[8]~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G19
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X49_Y54_N29
\delay_incdec_btn~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_delay_incdec_btn,
	o => \delay_incdec_btn~input_o\);

-- Location: IOIBUF_X69_Y54_N1
\reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X50_Y39_N3
\delay_prev[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \delay_incdec_btn~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_prev(0));

-- Location: FF_X51_Y39_N23
\delay_act[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_sig[0]~27_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_act(0));

-- Location: LCCOMB_X50_Y39_N12
\Add4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = delay_act(0) $ (VCC)
-- \Add4~1\ = CARRY(delay_act(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => delay_act(0),
	datad => VCC,
	combout => \Add4~0_combout\,
	cout => \Add4~1\);

-- Location: LCCOMB_X50_Y39_N14
\Add4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = (delay_act(1) & (!\Add4~1\)) # (!delay_act(1) & ((\Add4~1\) # (GND)))
-- \Add4~3\ = CARRY((!\Add4~1\) # (!delay_act(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_act(1),
	datad => VCC,
	cin => \Add4~1\,
	combout => \Add4~2_combout\,
	cout => \Add4~3\);

-- Location: IOIBUF_X51_Y54_N1
\incdec~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_incdec,
	o => \incdec~input_o\);

-- Location: LCCOMB_X50_Y39_N10
\delay_sig[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_sig[1]~7_combout\ = (\incdec~input_o\ & ((\Add4~2_combout\) # (!\LessThan4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan4~2_combout\,
	datab => \Add4~2_combout\,
	datad => \incdec~input_o\,
	combout => \delay_sig[1]~7_combout\);

-- Location: LCCOMB_X51_Y39_N10
\delay_prev[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_prev[1]~feeder_combout\ = delay_prev(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => delay_prev(0),
	combout => \delay_prev[1]~feeder_combout\);

-- Location: FF_X51_Y39_N11
\delay_prev[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_prev[1]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_prev(1));

-- Location: LCCOMB_X51_Y39_N4
\Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (delay_prev(0) & !delay_prev(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_prev(0),
	datad => delay_prev(1),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X50_Y38_N6
\Add5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = delay_act(0) $ (VCC)
-- \Add5~1\ = CARRY(delay_act(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_act(0),
	datad => VCC,
	combout => \Add5~0_combout\,
	cout => \Add5~1\);

-- Location: LCCOMB_X50_Y38_N8
\Add5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~2_combout\ = (delay_act(1) & (\Add5~1\ & VCC)) # (!delay_act(1) & (!\Add5~1\))
-- \Add5~3\ = CARRY((!delay_act(1) & !\Add5~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_act(1),
	datad => VCC,
	cin => \Add5~1\,
	combout => \Add5~2_combout\,
	cout => \Add5~3\);

-- Location: LCCOMB_X51_Y39_N6
\delay_sig[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_sig[1]~6_combout\ = (\Add5~2_combout\ & (\LessThan5~1_combout\ & !\incdec~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~2_combout\,
	datab => \LessThan5~1_combout\,
	datad => \incdec~input_o\,
	combout => \delay_sig[1]~6_combout\);

-- Location: LCCOMB_X51_Y39_N26
\delay_sig[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_sig[1]~8_combout\ = (\Equal1~0_combout\ & ((\delay_sig[1]~7_combout\) # ((\delay_sig[1]~6_combout\)))) # (!\Equal1~0_combout\ & (((delay_act(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay_sig[1]~7_combout\,
	datab => \Equal1~0_combout\,
	datac => delay_act(1),
	datad => \delay_sig[1]~6_combout\,
	combout => \delay_sig[1]~8_combout\);

-- Location: FF_X51_Y39_N27
\delay_act[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_sig[1]~8_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_act(1));

-- Location: LCCOMB_X50_Y39_N16
\Add4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~4_combout\ = (delay_act(2) & ((GND) # (!\Add4~3\))) # (!delay_act(2) & (\Add4~3\ $ (GND)))
-- \Add4~5\ = CARRY((delay_act(2)) # (!\Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_act(2),
	datad => VCC,
	cin => \Add4~3\,
	combout => \Add4~4_combout\,
	cout => \Add4~5\);

-- Location: LCCOMB_X50_Y39_N0
\delay_sig[2]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_sig[2]~9_combout\ = (\Add4~4_combout\) # (!\LessThan4~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan4~2_combout\,
	datad => \Add4~4_combout\,
	combout => \delay_sig[2]~9_combout\);

-- Location: LCCOMB_X50_Y38_N10
\Add5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~4_combout\ = (delay_act(2) & (\Add5~3\ $ (GND))) # (!delay_act(2) & (!\Add5~3\ & VCC))
-- \Add5~5\ = CARRY((delay_act(2) & !\Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_act(2),
	datad => VCC,
	cin => \Add5~3\,
	combout => \Add5~4_combout\,
	cout => \Add5~5\);

-- Location: LCCOMB_X51_Y39_N8
\delay_sig[2]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_sig[2]~10_combout\ = (\incdec~input_o\ & (\delay_sig[2]~9_combout\)) # (!\incdec~input_o\ & (((\LessThan5~1_combout\ & \Add5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay_sig[2]~9_combout\,
	datab => \LessThan5~1_combout\,
	datac => \Add5~4_combout\,
	datad => \incdec~input_o\,
	combout => \delay_sig[2]~10_combout\);

-- Location: LCCOMB_X51_Y39_N16
\delay_sig[2]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_sig[2]~28_combout\ = (delay_prev(0) & ((delay_prev(1) & ((delay_act(2)))) # (!delay_prev(1) & (\delay_sig[2]~10_combout\)))) # (!delay_prev(0) & (((delay_act(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_prev(0),
	datab => \delay_sig[2]~10_combout\,
	datac => delay_act(2),
	datad => delay_prev(1),
	combout => \delay_sig[2]~28_combout\);

-- Location: FF_X51_Y39_N17
\delay_act[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_sig[2]~28_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_act(2));

-- Location: LCCOMB_X50_Y39_N18
\Add4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~6_combout\ = (delay_act(3) & (!\Add4~5\)) # (!delay_act(3) & ((\Add4~5\) # (GND)))
-- \Add4~7\ = CARRY((!\Add4~5\) # (!delay_act(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_act(3),
	datad => VCC,
	cin => \Add4~5\,
	combout => \Add4~6_combout\,
	cout => \Add4~7\);

-- Location: LCCOMB_X50_Y38_N12
\Add5~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~6_combout\ = (delay_act(3) & (\Add5~5\ & VCC)) # (!delay_act(3) & (!\Add5~5\))
-- \Add5~7\ = CARRY((!delay_act(3) & !\Add5~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_act(3),
	datad => VCC,
	cin => \Add5~5\,
	combout => \Add5~6_combout\,
	cout => \Add5~7\);

-- Location: LCCOMB_X50_Y41_N10
\delay_sig[3]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_sig[3]~11_combout\ = (\incdec~input_o\ & (\Add4~6_combout\)) # (!\incdec~input_o\ & ((\Add5~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add4~6_combout\,
	datac => \incdec~input_o\,
	datad => \Add5~6_combout\,
	combout => \delay_sig[3]~11_combout\);

-- Location: LCCOMB_X51_Y40_N0
\delay_sig[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_sig[3]~12_combout\ = (\incdec~input_o\ & (\LessThan4~2_combout\)) # (!\incdec~input_o\ & ((\LessThan5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan4~2_combout\,
	datac => \incdec~input_o\,
	datad => \LessThan5~1_combout\,
	combout => \delay_sig[3]~12_combout\);

-- Location: LCCOMB_X50_Y41_N8
\delay_sig[3]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_sig[3]~13_combout\ = (\Equal1~0_combout\ & ((\delay_sig[3]~11_combout\) # ((!\delay_sig[3]~12_combout\)))) # (!\Equal1~0_combout\ & (((delay_act(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay_sig[3]~11_combout\,
	datab => \Equal1~0_combout\,
	datac => delay_act(3),
	datad => \delay_sig[3]~12_combout\,
	combout => \delay_sig[3]~13_combout\);

-- Location: FF_X50_Y41_N9
\delay_act[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_sig[3]~13_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_act(3));

-- Location: LCCOMB_X50_Y39_N20
\Add4~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~8_combout\ = (delay_act(4) & (\Add4~7\ $ (GND))) # (!delay_act(4) & (!\Add4~7\ & VCC))
-- \Add4~9\ = CARRY((delay_act(4) & !\Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_act(4),
	datad => VCC,
	cin => \Add4~7\,
	combout => \Add4~8_combout\,
	cout => \Add4~9\);

-- Location: LCCOMB_X50_Y39_N2
\delay_sig[4]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_sig[4]~15_combout\ = (\incdec~input_o\ & ((\Add4~8_combout\) # (!\LessThan4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan4~2_combout\,
	datab => \Add4~8_combout\,
	datad => \incdec~input_o\,
	combout => \delay_sig[4]~15_combout\);

-- Location: LCCOMB_X50_Y38_N14
\Add5~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~8_combout\ = (delay_act(4) & ((GND) # (!\Add5~7\))) # (!delay_act(4) & (\Add5~7\ $ (GND)))
-- \Add5~9\ = CARRY((delay_act(4)) # (!\Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_act(4),
	datad => VCC,
	cin => \Add5~7\,
	combout => \Add5~8_combout\,
	cout => \Add5~9\);

-- Location: LCCOMB_X50_Y38_N28
\delay_sig[4]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_sig[4]~14_combout\ = (\LessThan5~1_combout\ & (\Add5~8_combout\ & !\incdec~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan5~1_combout\,
	datac => \Add5~8_combout\,
	datad => \incdec~input_o\,
	combout => \delay_sig[4]~14_combout\);

-- Location: LCCOMB_X50_Y39_N30
\delay_sig[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_sig[4]~16_combout\ = (\Equal1~0_combout\ & ((\delay_sig[4]~15_combout\) # ((\delay_sig[4]~14_combout\)))) # (!\Equal1~0_combout\ & (((delay_act(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \delay_sig[4]~15_combout\,
	datac => delay_act(4),
	datad => \delay_sig[4]~14_combout\,
	combout => \delay_sig[4]~16_combout\);

-- Location: FF_X50_Y39_N31
\delay_act[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_sig[4]~16_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_act(4));

-- Location: LCCOMB_X50_Y38_N0
\LessThan5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan5~0_combout\ = (delay_act(3) & (delay_act(4) & (delay_act(2) & delay_act(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_act(3),
	datab => delay_act(4),
	datac => delay_act(2),
	datad => delay_act(1),
	combout => \LessThan5~0_combout\);

-- Location: LCCOMB_X50_Y39_N22
\Add4~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~10_combout\ = (delay_act(5) & (!\Add4~9\)) # (!delay_act(5) & ((\Add4~9\) # (GND)))
-- \Add4~11\ = CARRY((!\Add4~9\) # (!delay_act(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_act(5),
	datad => VCC,
	cin => \Add4~9\,
	combout => \Add4~10_combout\,
	cout => \Add4~11\);

-- Location: LCCOMB_X50_Y38_N16
\Add5~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~10_combout\ = (delay_act(5) & (\Add5~9\ & VCC)) # (!delay_act(5) & (!\Add5~9\))
-- \Add5~11\ = CARRY((!delay_act(5) & !\Add5~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_act(5),
	datad => VCC,
	cin => \Add5~9\,
	combout => \Add5~10_combout\,
	cout => \Add5~11\);

-- Location: LCCOMB_X50_Y39_N4
\delay_sig[5]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_sig[5]~17_combout\ = (\incdec~input_o\ & (\Add4~10_combout\)) # (!\incdec~input_o\ & ((\Add5~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~10_combout\,
	datab => \Add5~10_combout\,
	datad => \incdec~input_o\,
	combout => \delay_sig[5]~17_combout\);

-- Location: LCCOMB_X51_Y39_N14
\delay_sig[5]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_sig[5]~19_combout\ = (\delay_sig[5]~18_combout\ & ((\delay_sig[5]~17_combout\) # ((!\Equal1~0_combout\ & delay_act(5))))) # (!\delay_sig[5]~18_combout\ & (!\Equal1~0_combout\ & (delay_act(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay_sig[5]~18_combout\,
	datab => \Equal1~0_combout\,
	datac => delay_act(5),
	datad => \delay_sig[5]~17_combout\,
	combout => \delay_sig[5]~19_combout\);

-- Location: FF_X51_Y39_N15
\delay_act[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_sig[5]~19_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_act(5));

-- Location: LCCOMB_X50_Y39_N24
\Add4~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~12_combout\ = (delay_act(6) & (\Add4~11\ $ (GND))) # (!delay_act(6) & (!\Add4~11\ & VCC))
-- \Add4~13\ = CARRY((delay_act(6) & !\Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_act(6),
	datad => VCC,
	cin => \Add4~11\,
	combout => \Add4~12_combout\,
	cout => \Add4~13\);

-- Location: LCCOMB_X50_Y38_N18
\Add5~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~12_combout\ = (delay_act(6) & ((GND) # (!\Add5~11\))) # (!delay_act(6) & (\Add5~11\ $ (GND)))
-- \Add5~13\ = CARRY((delay_act(6)) # (!\Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_act(6),
	datad => VCC,
	cin => \Add5~11\,
	combout => \Add5~12_combout\,
	cout => \Add5~13\);

-- Location: LCCOMB_X51_Y39_N0
\delay_sig[6]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_sig[6]~20_combout\ = (\incdec~input_o\ & (\Add4~12_combout\)) # (!\incdec~input_o\ & ((\Add5~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~12_combout\,
	datab => \Add5~12_combout\,
	datad => \incdec~input_o\,
	combout => \delay_sig[6]~20_combout\);

-- Location: LCCOMB_X51_Y40_N30
\delay_sig[6]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_sig[6]~21_combout\ = (\delay_sig[5]~18_combout\ & ((\delay_sig[6]~20_combout\) # ((!\Equal1~0_combout\ & delay_act(6))))) # (!\delay_sig[5]~18_combout\ & (!\Equal1~0_combout\ & (delay_act(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay_sig[5]~18_combout\,
	datab => \Equal1~0_combout\,
	datac => delay_act(6),
	datad => \delay_sig[6]~20_combout\,
	combout => \delay_sig[6]~21_combout\);

-- Location: FF_X51_Y40_N31
\delay_act[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_sig[6]~21_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_act(6));

-- Location: LCCOMB_X50_Y38_N26
\LessThan4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan4~1_combout\ = (!delay_act(7) & (!delay_act(5) & !delay_act(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_act(7),
	datab => delay_act(5),
	datad => delay_act(6),
	combout => \LessThan4~1_combout\);

-- Location: LCCOMB_X50_Y38_N2
\LessThan5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan5~1_combout\ = (delay_act(8)) # (((\LessThan5~0_combout\ & delay_act(0))) # (!\LessThan4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_act(8),
	datab => \LessThan5~0_combout\,
	datac => \LessThan4~1_combout\,
	datad => delay_act(0),
	combout => \LessThan5~1_combout\);

-- Location: LCCOMB_X51_Y39_N18
\delay_sig[5]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_sig[5]~18_combout\ = (\Equal1~0_combout\ & ((\incdec~input_o\ & (\LessThan4~2_combout\)) # (!\incdec~input_o\ & ((\LessThan5~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan4~2_combout\,
	datab => \LessThan5~1_combout\,
	datac => \Equal1~0_combout\,
	datad => \incdec~input_o\,
	combout => \delay_sig[5]~18_combout\);

-- Location: LCCOMB_X50_Y38_N20
\Add5~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~14_combout\ = (delay_act(7) & (\Add5~13\ & VCC)) # (!delay_act(7) & (!\Add5~13\))
-- \Add5~15\ = CARRY((!delay_act(7) & !\Add5~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_act(7),
	datad => VCC,
	cin => \Add5~13\,
	combout => \Add5~14_combout\,
	cout => \Add5~15\);

-- Location: LCCOMB_X50_Y39_N26
\Add4~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~14_combout\ = (delay_act(7) & (!\Add4~13\)) # (!delay_act(7) & ((\Add4~13\) # (GND)))
-- \Add4~15\ = CARRY((!\Add4~13\) # (!delay_act(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_act(7),
	datad => VCC,
	cin => \Add4~13\,
	combout => \Add4~14_combout\,
	cout => \Add4~15\);

-- Location: LCCOMB_X51_Y39_N20
\delay_sig[7]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_sig[7]~22_combout\ = (\incdec~input_o\ & ((\Add4~14_combout\))) # (!\incdec~input_o\ & (\Add5~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add5~14_combout\,
	datac => \Add4~14_combout\,
	datad => \incdec~input_o\,
	combout => \delay_sig[7]~22_combout\);

-- Location: LCCOMB_X51_Y39_N28
\delay_sig[7]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_sig[7]~23_combout\ = (\delay_sig[5]~18_combout\ & ((\delay_sig[7]~22_combout\) # ((!\Equal1~0_combout\ & delay_act(7))))) # (!\delay_sig[5]~18_combout\ & (!\Equal1~0_combout\ & (delay_act(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay_sig[5]~18_combout\,
	datab => \Equal1~0_combout\,
	datac => delay_act(7),
	datad => \delay_sig[7]~22_combout\,
	combout => \delay_sig[7]~23_combout\);

-- Location: FF_X51_Y39_N29
\delay_act[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_sig[7]~23_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_act(7));

-- Location: LCCOMB_X50_Y39_N28
\Add4~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~16_combout\ = \Add4~15\ $ (!delay_act(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => delay_act(8),
	cin => \Add4~15\,
	combout => \Add4~16_combout\);

-- Location: LCCOMB_X50_Y39_N6
\delay_sig[8]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_sig[8]~24_combout\ = (\Add4~16_combout\ & (\LessThan4~2_combout\ & \incdec~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add4~16_combout\,
	datac => \LessThan4~2_combout\,
	datad => \incdec~input_o\,
	combout => \delay_sig[8]~24_combout\);

-- Location: LCCOMB_X50_Y38_N22
\Add5~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~16_combout\ = delay_act(8) $ (\Add5~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_act(8),
	cin => \Add5~15\,
	combout => \Add5~16_combout\);

-- Location: LCCOMB_X50_Y38_N30
\delay_sig[8]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_sig[8]~25_combout\ = (!\incdec~input_o\ & ((\Add5~16_combout\) # (!\LessThan5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan5~1_combout\,
	datac => \Add5~16_combout\,
	datad => \incdec~input_o\,
	combout => \delay_sig[8]~25_combout\);

-- Location: LCCOMB_X50_Y39_N8
\delay_sig[8]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_sig[8]~26_combout\ = (\Equal1~0_combout\ & ((\delay_sig[8]~24_combout\) # ((\delay_sig[8]~25_combout\)))) # (!\Equal1~0_combout\ & (((delay_act(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay_sig[8]~24_combout\,
	datab => \delay_sig[8]~25_combout\,
	datac => delay_act(8),
	datad => \Equal1~0_combout\,
	combout => \delay_sig[8]~26_combout\);

-- Location: FF_X50_Y39_N9
\delay_act[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_sig[8]~26_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_act(8));

-- Location: LCCOMB_X50_Y38_N24
\LessThan4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = ((!delay_act(2) & (!delay_act(0) & !delay_act(1)))) # (!delay_act(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_act(3),
	datab => delay_act(2),
	datac => delay_act(0),
	datad => delay_act(1),
	combout => \LessThan4~0_combout\);

-- Location: LCCOMB_X50_Y38_N4
\LessThan4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan4~2_combout\ = ((\LessThan4~0_combout\ & (\LessThan4~1_combout\ & !delay_act(4)))) # (!delay_act(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_act(8),
	datab => \LessThan4~0_combout\,
	datac => \LessThan4~1_combout\,
	datad => delay_act(4),
	combout => \LessThan4~2_combout\);

-- Location: LCCOMB_X51_Y39_N12
\delay_sig[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_sig[0]~4_combout\ = (\LessThan4~2_combout\ & (\Add4~0_combout\ & \incdec~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan4~2_combout\,
	datab => \Add4~0_combout\,
	datad => \incdec~input_o\,
	combout => \delay_sig[0]~4_combout\);

-- Location: LCCOMB_X51_Y39_N24
\delay_sig[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_sig[0]~5_combout\ = (\delay_sig[0]~4_combout\) # ((!\incdec~input_o\ & ((\Add5~0_combout\) # (!\LessThan5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay_sig[0]~4_combout\,
	datab => \LessThan5~1_combout\,
	datac => \Add5~0_combout\,
	datad => \incdec~input_o\,
	combout => \delay_sig[0]~5_combout\);

-- Location: LCCOMB_X51_Y39_N22
\delay_sig[0]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_sig[0]~27_combout\ = (delay_prev(0) & ((delay_prev(1) & ((delay_act(0)))) # (!delay_prev(1) & (\delay_sig[0]~5_combout\)))) # (!delay_prev(0) & (((delay_act(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_prev(0),
	datab => \delay_sig[0]~5_combout\,
	datac => delay_act(0),
	datad => delay_prev(1),
	combout => \delay_sig[0]~27_combout\);

-- Location: FF_X51_Y39_N1
\delay_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \delay_sig[0]~27_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay_out[0]~reg0_q\);

-- Location: FF_X50_Y39_N29
\delay_out[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \delay_sig[1]~8_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay_out[1]~reg0_q\);

-- Location: LCCOMB_X51_Y39_N2
\delay_out[2]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_out[2]~reg0feeder_combout\ = \delay_sig[2]~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \delay_sig[2]~28_combout\,
	combout => \delay_out[2]~reg0feeder_combout\);

-- Location: FF_X51_Y39_N3
\delay_out[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_out[2]~reg0feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay_out[2]~reg0_q\);

-- Location: LCCOMB_X50_Y41_N24
\delay_out[3]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_out[3]~reg0feeder_combout\ = \delay_sig[3]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \delay_sig[3]~13_combout\,
	combout => \delay_out[3]~reg0feeder_combout\);

-- Location: FF_X50_Y41_N25
\delay_out[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_out[3]~reg0feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay_out[3]~reg0_q\);

-- Location: FF_X50_Y39_N1
\delay_out[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \delay_sig[4]~16_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay_out[4]~reg0_q\);

-- Location: FF_X50_Y39_N13
\delay_out[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \delay_sig[5]~19_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay_out[5]~reg0_q\);

-- Location: FF_X51_Y39_N13
\delay_out[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \delay_sig[6]~21_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay_out[6]~reg0_q\);

-- Location: LCCOMB_X51_Y40_N8
\delay_out[7]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_out[7]~reg0feeder_combout\ = \delay_sig[7]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \delay_sig[7]~23_combout\,
	combout => \delay_out[7]~reg0feeder_combout\);

-- Location: FF_X51_Y40_N9
\delay_out[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_out[7]~reg0feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay_out[7]~reg0_q\);

-- Location: FF_X50_Y39_N11
\delay_out[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \delay_sig[8]~26_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay_out[8]~reg0_q\);

-- Location: IOIBUF_X46_Y54_N29
\incdec_btn~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_incdec_btn,
	o => \incdec_btn~input_o\);

-- Location: FF_X52_Y45_N17
\incdec_prev[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \incdec_btn~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => incdec_prev(0));

-- Location: FF_X52_Y45_N15
\incdec_prev[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => incdec_prev(0),
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => incdec_prev(1));

-- Location: IOIBUF_X51_Y54_N29
\sel[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(0),
	o => \sel[0]~input_o\);

-- Location: IOIBUF_X51_Y54_N22
\sel[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(1),
	o => \sel[1]~input_o\);

-- Location: LCCOMB_X51_Y45_N26
\d1_sig[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d1_sig[0]~0_combout\ = (incdec_prev(1)) # (((!\sel[0]~input_o\ & !\sel[1]~input_o\)) # (!incdec_prev(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => incdec_prev(1),
	datab => \sel[0]~input_o\,
	datac => \sel[1]~input_o\,
	datad => incdec_prev(0),
	combout => \d1_sig[0]~0_combout\);

-- Location: FF_X55_Y40_N29
\d1_act[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1_sig[0]~5_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d1_act(0));

-- Location: IOIBUF_X54_Y54_N29
\d1d2~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d1d2,
	o => \d1d2~input_o\);

-- Location: LCCOMB_X51_Y41_N30
\d1_sig[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d1_sig[0]~2_combout\ = (\sel[1]~input_o\ & ((!\d1d2~input_o\) # (!\sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \sel[1]~input_o\,
	datac => \d1d2~input_o\,
	combout => \d1_sig[0]~2_combout\);

-- Location: LCCOMB_X51_Y41_N20
\d1_sig[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d1_sig[3]~1_combout\ = (!\incdec~input_o\ & (\sel[1]~input_o\ & ((!\sel[0]~input_o\) # (!\d1d2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incdec~input_o\,
	datab => \sel[1]~input_o\,
	datac => \d1d2~input_o\,
	datad => \sel[0]~input_o\,
	combout => \d1_sig[3]~1_combout\);

-- Location: LCCOMB_X56_Y40_N0
\Add3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = d1_act(0) $ (VCC)
-- \Add3~1\ = CARRY(d1_act(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => d1_act(0),
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X51_Y41_N0
\Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (!\sel[1]~input_o\ & \sel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel[1]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X51_Y41_N18
\d1[8]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d1[8]~9_combout\ = (\reset~input_o\ & ((\d1[8]~9_combout\))) # (!\reset~input_o\ & (\Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \Mux1~0_combout\,
	datad => \d1[8]~9_combout\,
	combout => \d1[8]~9_combout\);

-- Location: LCCOMB_X51_Y40_N18
\d1[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d1[3]~1_combout\ = (\reset~input_o\ & ((\d1[3]~1_combout\))) # (!\reset~input_o\ & (!\Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \Mux1~0_combout\,
	datad => \d1[3]~1_combout\,
	combout => \d1[3]~1_combout\);

-- Location: LCCOMB_X55_Y40_N0
\d1_sig[5]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d1_sig[5]~19_combout\ = (\d1_sig[0]~2_combout\ & ((\incdec~input_o\ & (\LessThan2~2_combout\)) # (!\incdec~input_o\ & ((\LessThan3~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incdec~input_o\,
	datab => \LessThan2~2_combout\,
	datac => \LessThan3~1_combout\,
	datad => \d1_sig[0]~2_combout\,
	combout => \d1_sig[5]~19_combout\);

-- Location: LCCOMB_X55_Y40_N12
\d1_sig[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d1_sig[1]~8_combout\ = (\d1_sig[0]~0_combout\) # ((\d1_sig[0]~2_combout\ & ((\LessThan2~2_combout\) # (!\incdec~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1_sig[0]~2_combout\,
	datab => \LessThan2~2_combout\,
	datac => \d1_sig[0]~0_combout\,
	datad => \incdec~input_o\,
	combout => \d1_sig[1]~8_combout\);

-- Location: LCCOMB_X56_Y40_N2
\Add3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (d1_act(1) & (!\Add3~1\)) # (!d1_act(1) & (\Add3~1\ & VCC))
-- \Add3~3\ = CARRY((d1_act(1) & !\Add3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => d1_act(1),
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X56_Y40_N26
\d1_sig[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d1_sig[1]~7_combout\ = (\LessThan3~1_combout\ & (!\incdec~input_o\ & !\d1_sig[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~1_combout\,
	datab => \incdec~input_o\,
	datac => \d1_sig[0]~0_combout\,
	combout => \d1_sig[1]~7_combout\);

-- Location: LCCOMB_X57_Y40_N4
\Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = d1_act(0) $ (VCC)
-- \Add2~1\ = CARRY(d1_act(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => d1_act(0),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X57_Y40_N6
\Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (d1_act(1) & ((\Add2~1\) # (GND))) # (!d1_act(1) & (!\Add2~1\))
-- \Add2~3\ = CARRY((d1_act(1)) # (!\Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => d1_act(1),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X56_Y40_N24
\d1_sig[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d1_sig[1]~6_combout\ = (\d1_sig[0]~0_combout\ & (((!d1_act(1))))) # (!\d1_sig[0]~0_combout\ & (\Add2~2_combout\ & (\incdec~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~2_combout\,
	datab => \incdec~input_o\,
	datac => \d1_sig[0]~0_combout\,
	datad => d1_act(1),
	combout => \d1_sig[1]~6_combout\);

-- Location: LCCOMB_X56_Y40_N20
\d1_sig[1]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d1_sig[1]~9_combout\ = (\d1_sig[1]~8_combout\ & (!\d1_sig[1]~6_combout\ & ((!\d1_sig[1]~7_combout\) # (!\Add3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1_sig[1]~8_combout\,
	datab => \Add3~2_combout\,
	datac => \d1_sig[1]~7_combout\,
	datad => \d1_sig[1]~6_combout\,
	combout => \d1_sig[1]~9_combout\);

-- Location: FF_X56_Y40_N21
\d1_act[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1_sig[1]~9_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d1_act(1));

-- Location: LCCOMB_X56_Y40_N4
\Add3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = (d1_act(2) & (!\Add3~3\ & VCC)) # (!d1_act(2) & (\Add3~3\ $ (GND)))
-- \Add3~5\ = CARRY((!d1_act(2) & !\Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => d1_act(2),
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X57_Y40_N8
\Add2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (d1_act(2) & (\Add2~3\ $ (GND))) # (!d1_act(2) & ((GND) # (!\Add2~3\)))
-- \Add2~5\ = CARRY((!\Add2~3\) # (!d1_act(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => d1_act(2),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X56_Y40_N28
\d1_sig[2]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d1_sig[2]~10_combout\ = (\d1_sig[0]~0_combout\ & (((!d1_act(2))))) # (!\d1_sig[0]~0_combout\ & (\incdec~input_o\ & (\Add2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1_sig[0]~0_combout\,
	datab => \incdec~input_o\,
	datac => \Add2~4_combout\,
	datad => d1_act(2),
	combout => \d1_sig[2]~10_combout\);

-- Location: LCCOMB_X56_Y40_N18
\d1_sig[2]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d1_sig[2]~11_combout\ = (\d1_sig[1]~8_combout\ & (!\d1_sig[2]~10_combout\ & ((!\d1_sig[1]~7_combout\) # (!\Add3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1_sig[1]~8_combout\,
	datab => \Add3~4_combout\,
	datac => \d1_sig[1]~7_combout\,
	datad => \d1_sig[2]~10_combout\,
	combout => \d1_sig[2]~11_combout\);

-- Location: FF_X56_Y40_N19
\d1_act[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1_sig[2]~11_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d1_act(2));

-- Location: LCCOMB_X56_Y40_N6
\Add3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (\d1[3]~2_combout\ & (\Add3~5\ & VCC)) # (!\d1[3]~2_combout\ & (!\Add3~5\))
-- \Add3~7\ = CARRY((!\d1[3]~2_combout\ & !\Add3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1[3]~2_combout\,
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X57_Y40_N10
\Add2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (\d1[3]~2_combout\ & (!\Add2~5\)) # (!\d1[3]~2_combout\ & ((\Add2~5\) # (GND)))
-- \Add2~7\ = CARRY((!\Add2~5\) # (!\d1[3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d1[3]~2_combout\,
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X55_Y40_N16
\d1_sig[3]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d1_sig[3]~13_combout\ = (\d1_sig[0]~2_combout\ & ((\incdec~input_o\ & ((\Add2~6_combout\))) # (!\incdec~input_o\ & (\Add3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incdec~input_o\,
	datab => \Add3~6_combout\,
	datac => \Add2~6_combout\,
	datad => \d1_sig[0]~2_combout\,
	combout => \d1_sig[3]~13_combout\);

-- Location: LCCOMB_X55_Y40_N6
\d1_sig[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d1_sig[3]~12_combout\ = (\d1_sig[0]~2_combout\ & ((\incdec~input_o\ & (!\LessThan2~2_combout\)) # (!\incdec~input_o\ & ((!\LessThan3~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incdec~input_o\,
	datab => \LessThan2~2_combout\,
	datac => \LessThan3~1_combout\,
	datad => \d1_sig[0]~2_combout\,
	combout => \d1_sig[3]~12_combout\);

-- Location: LCCOMB_X55_Y40_N2
\d1_sig[3]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d1_sig[3]~14_combout\ = (\d1_sig[3]~13_combout\) # ((\d1_sig[3]~12_combout\) # ((\sel[1]~input_o\ & !\d1_sig[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \d1_sig[3]~13_combout\,
	datac => \d1_sig[3]~12_combout\,
	datad => \d1_sig[0]~2_combout\,
	combout => \d1_sig[3]~14_combout\);

-- Location: LCCOMB_X51_Y40_N10
\d1[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d1[3]~3_combout\ = \d1[3]~1_combout\ $ (((\d1_sig[0]~0_combout\ & (\d1[3]~2_combout\)) # (!\d1_sig[0]~0_combout\ & ((\d1_sig[3]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1_sig[0]~0_combout\,
	datab => \d1[3]~1_combout\,
	datac => \d1[3]~2_combout\,
	datad => \d1_sig[3]~14_combout\,
	combout => \d1[3]~3_combout\);

-- Location: FF_X51_Y40_N11
\d1[3]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1[3]~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1[3]~reg0_emulated_q\);

-- Location: LCCOMB_X51_Y40_N28
\d1[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d1[3]~2_combout\ = (\reset~input_o\ & (\d1[3]~reg0_emulated_q\ $ ((\d1[3]~1_combout\)))) # (!\reset~input_o\ & (((!\Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1[3]~reg0_emulated_q\,
	datab => \d1[3]~1_combout\,
	datac => \Mux1~0_combout\,
	datad => \reset~input_o\,
	combout => \d1[3]~2_combout\);

-- Location: LCCOMB_X57_Y40_N12
\Add2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (d1_act(4) & (!\Add2~7\ & VCC)) # (!d1_act(4) & (\Add2~7\ $ (GND)))
-- \Add2~9\ = CARRY((!d1_act(4) & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => d1_act(4),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X57_Y40_N14
\Add2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (\d1[5]~4_combout\ & (!\Add2~9\)) # (!\d1[5]~4_combout\ & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!\d1[5]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1[5]~4_combout\,
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X56_Y40_N8
\Add3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (d1_act(4) & (\Add3~7\ $ (GND))) # (!d1_act(4) & ((GND) # (!\Add3~7\)))
-- \Add3~9\ = CARRY((!\Add3~7\) # (!d1_act(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => d1_act(4),
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X56_Y40_N10
\Add3~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (\d1[5]~4_combout\ & (\Add3~9\ & VCC)) # (!\d1[5]~4_combout\ & (!\Add3~9\))
-- \Add3~11\ = CARRY((!\d1[5]~4_combout\ & !\Add3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1[5]~4_combout\,
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCCOMB_X56_Y41_N24
\d1_sig[5]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d1_sig[5]~18_combout\ = (\incdec~input_o\ & (\Add2~10_combout\)) # (!\incdec~input_o\ & ((\Add3~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \incdec~input_o\,
	datac => \Add2~10_combout\,
	datad => \Add3~10_combout\,
	combout => \d1_sig[5]~18_combout\);

-- Location: LCCOMB_X56_Y41_N26
\d1_sig[5]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d1_sig[5]~20_combout\ = (\sel[1]~input_o\ & (((\d1_sig[5]~19_combout\ & \d1_sig[5]~18_combout\)) # (!\d1_sig[0]~2_combout\))) # (!\sel[1]~input_o\ & (((\d1_sig[5]~19_combout\ & \d1_sig[5]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \d1_sig[0]~2_combout\,
	datac => \d1_sig[5]~19_combout\,
	datad => \d1_sig[5]~18_combout\,
	combout => \d1_sig[5]~20_combout\);

-- Location: LCCOMB_X51_Y40_N22
\d1[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d1[5]~5_combout\ = \d1[3]~1_combout\ $ (((\d1_sig[0]~0_combout\ & ((\d1[5]~4_combout\))) # (!\d1_sig[0]~0_combout\ & (\d1_sig[5]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1_sig[5]~20_combout\,
	datab => \d1[3]~1_combout\,
	datac => \d1_sig[0]~0_combout\,
	datad => \d1[5]~4_combout\,
	combout => \d1[5]~5_combout\);

-- Location: FF_X51_Y40_N23
\d1[5]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1[5]~5_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1[5]~reg0_emulated_q\);

-- Location: LCCOMB_X51_Y40_N24
\d1[5]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d1[5]~4_combout\ = (\reset~input_o\ & ((\d1[3]~1_combout\ $ (\d1[5]~reg0_emulated_q\)))) # (!\reset~input_o\ & (!\Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datab => \d1[3]~1_combout\,
	datac => \d1[5]~reg0_emulated_q\,
	datad => \reset~input_o\,
	combout => \d1[5]~4_combout\);

-- Location: LCCOMB_X56_Y40_N12
\Add3~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = (d1_act(6) & ((GND) # (!\Add3~11\))) # (!d1_act(6) & (\Add3~11\ $ (GND)))
-- \Add3~13\ = CARRY((d1_act(6)) # (!\Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => d1_act(6),
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: LCCOMB_X57_Y40_N16
\Add2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (d1_act(6) & (\Add2~11\ $ (GND))) # (!d1_act(6) & (!\Add2~11\ & VCC))
-- \Add2~13\ = CARRY((d1_act(6) & !\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => d1_act(6),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X56_Y40_N22
\d1_sig[6]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d1_sig[6]~21_combout\ = (!\d1_sig[0]~0_combout\ & ((\incdec~input_o\ & ((\Add2~12_combout\))) # (!\incdec~input_o\ & (\Add3~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~12_combout\,
	datab => \incdec~input_o\,
	datac => \d1_sig[0]~0_combout\,
	datad => \Add2~12_combout\,
	combout => \d1_sig[6]~21_combout\);

-- Location: LCCOMB_X56_Y40_N30
\d1_sig[6]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d1_sig[6]~22_combout\ = (\d1_sig[6]~21_combout\ & ((\d1_sig[5]~19_combout\) # ((d1_act(6) & \d1_sig[0]~0_combout\)))) # (!\d1_sig[6]~21_combout\ & (((d1_act(6) & \d1_sig[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1_sig[6]~21_combout\,
	datab => \d1_sig[5]~19_combout\,
	datac => d1_act(6),
	datad => \d1_sig[0]~0_combout\,
	combout => \d1_sig[6]~22_combout\);

-- Location: FF_X56_Y40_N31
\d1_act[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1_sig[6]~22_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d1_act(6));

-- Location: LCCOMB_X56_Y40_N14
\Add3~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (\d1[7]~6_combout\ & (\Add3~13\ & VCC)) # (!\d1[7]~6_combout\ & (!\Add3~13\))
-- \Add3~15\ = CARRY((!\d1[7]~6_combout\ & !\Add3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d1[7]~6_combout\,
	datad => VCC,
	cin => \Add3~13\,
	combout => \Add3~14_combout\,
	cout => \Add3~15\);

-- Location: LCCOMB_X57_Y40_N18
\Add2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (\d1[7]~6_combout\ & (!\Add2~13\)) # (!\d1[7]~6_combout\ & ((\Add2~13\) # (GND)))
-- \Add2~15\ = CARRY((!\Add2~13\) # (!\d1[7]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d1[7]~6_combout\,
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X56_Y41_N12
\d1_sig[7]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d1_sig[7]~23_combout\ = (\incdec~input_o\ & ((\Add2~14_combout\))) # (!\incdec~input_o\ & (\Add3~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~14_combout\,
	datab => \incdec~input_o\,
	datad => \Add2~14_combout\,
	combout => \d1_sig[7]~23_combout\);

-- Location: LCCOMB_X56_Y41_N30
\d1_sig[7]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d1_sig[7]~24_combout\ = (\sel[1]~input_o\ & (((\d1_sig[5]~19_combout\ & \d1_sig[7]~23_combout\)) # (!\d1_sig[0]~2_combout\))) # (!\sel[1]~input_o\ & (((\d1_sig[5]~19_combout\ & \d1_sig[7]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \d1_sig[0]~2_combout\,
	datac => \d1_sig[5]~19_combout\,
	datad => \d1_sig[7]~23_combout\,
	combout => \d1_sig[7]~24_combout\);

-- Location: LCCOMB_X51_Y40_N26
\d1[7]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d1[7]~7_combout\ = \d1[3]~1_combout\ $ (((\d1_sig[0]~0_combout\ & ((\d1[7]~6_combout\))) # (!\d1_sig[0]~0_combout\ & (\d1_sig[7]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1_sig[0]~0_combout\,
	datab => \d1[3]~1_combout\,
	datac => \d1_sig[7]~24_combout\,
	datad => \d1[7]~6_combout\,
	combout => \d1[7]~7_combout\);

-- Location: FF_X51_Y40_N27
\d1[7]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1[7]~7_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1[7]~reg0_emulated_q\);

-- Location: LCCOMB_X51_Y40_N20
\d1[7]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d1[7]~6_combout\ = (\reset~input_o\ & ((\d1[3]~1_combout\ $ (\d1[7]~reg0_emulated_q\)))) # (!\reset~input_o\ & (!\Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datab => \d1[3]~1_combout\,
	datac => \d1[7]~reg0_emulated_q\,
	datad => \reset~input_o\,
	combout => \d1[7]~6_combout\);

-- Location: LCCOMB_X57_Y40_N20
\Add2~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = \d1[8]~10_combout\ $ (!\Add2~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1[8]~10_combout\,
	cin => \Add2~15\,
	combout => \Add2~16_combout\);

-- Location: LCCOMB_X55_Y40_N26
\d1_sig[8]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d1_sig[8]~25_combout\ = (\incdec~input_o\ & (\LessThan2~2_combout\ & (\Add2~16_combout\ & \d1_sig[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incdec~input_o\,
	datab => \LessThan2~2_combout\,
	datac => \Add2~16_combout\,
	datad => \d1_sig[0]~2_combout\,
	combout => \d1_sig[8]~25_combout\);

-- Location: LCCOMB_X56_Y40_N16
\Add3~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~16_combout\ = \Add3~15\ $ (\d1[8]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \d1[8]~10_combout\,
	cin => \Add3~15\,
	combout => \Add3~16_combout\);

-- Location: LCCOMB_X55_Y40_N4
\d1_sig[8]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d1_sig[8]~26_combout\ = ((\d1_sig[0]~2_combout\ & (\Add3~16_combout\ & !\incdec~input_o\))) # (!\sel[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1_sig[0]~2_combout\,
	datab => \Add3~16_combout\,
	datac => \incdec~input_o\,
	datad => \sel[1]~input_o\,
	combout => \d1_sig[8]~26_combout\);

-- Location: LCCOMB_X55_Y40_N22
\d1_sig[8]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d1_sig[8]~27_combout\ = (\d1_sig[8]~25_combout\) # ((\d1_sig[8]~26_combout\) # ((\d1_sig[3]~1_combout\ & !\LessThan3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1_sig[8]~25_combout\,
	datab => \d1_sig[3]~1_combout\,
	datac => \d1_sig[8]~26_combout\,
	datad => \LessThan3~1_combout\,
	combout => \d1_sig[8]~27_combout\);

-- Location: LCCOMB_X51_Y41_N16
\d1[8]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d1[8]~11_combout\ = \d1[8]~9_combout\ $ (((\d1_sig[0]~0_combout\ & (\d1[8]~10_combout\)) # (!\d1_sig[0]~0_combout\ & ((\d1_sig[8]~27_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1[8]~10_combout\,
	datab => \d1[8]~9_combout\,
	datac => \d1_sig[0]~0_combout\,
	datad => \d1_sig[8]~27_combout\,
	combout => \d1[8]~11_combout\);

-- Location: FF_X51_Y41_N17
\d1[8]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1[8]~11_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1[8]~reg0_emulated_q\);

-- Location: LCCOMB_X51_Y41_N10
\d1[8]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d1[8]~10_combout\ = (\reset~input_o\ & (\d1[8]~reg0_emulated_q\ $ (((\d1[8]~9_combout\))))) # (!\reset~input_o\ & (((\Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \d1[8]~reg0_emulated_q\,
	datac => \Mux1~0_combout\,
	datad => \d1[8]~9_combout\,
	combout => \d1[8]~10_combout\);

-- Location: LCCOMB_X57_Y40_N2
\LessThan2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (!\d1[5]~4_combout\ & (!\d1[7]~6_combout\ & !d1_act(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1[5]~4_combout\,
	datac => \d1[7]~6_combout\,
	datad => d1_act(6),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X57_Y40_N0
\LessThan3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = (!d1_act(1) & (!d1_act(2) & (!d1_act(4) & d1_act(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d1_act(1),
	datab => d1_act(2),
	datac => d1_act(4),
	datad => d1_act(0),
	combout => \LessThan3~0_combout\);

-- Location: LCCOMB_X57_Y40_N22
\LessThan3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan3~1_combout\ = (\d1[8]~10_combout\) # (((\LessThan3~0_combout\ & \d1[3]~2_combout\)) # (!\LessThan2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1[8]~10_combout\,
	datab => \LessThan2~0_combout\,
	datac => \LessThan3~0_combout\,
	datad => \d1[3]~2_combout\,
	combout => \LessThan3~1_combout\);

-- Location: LCCOMB_X55_Y40_N14
\d1_sig[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d1_sig[4]~16_combout\ = ((\LessThan3~1_combout\ & (\Add3~8_combout\ & !\incdec~input_o\))) # (!\d1_sig[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1_sig[0]~2_combout\,
	datab => \LessThan3~1_combout\,
	datac => \Add3~8_combout\,
	datad => \incdec~input_o\,
	combout => \d1_sig[4]~16_combout\);

-- Location: LCCOMB_X55_Y40_N20
\d1_sig[4]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d1_sig[4]~15_combout\ = (!\d1_sig[0]~0_combout\ & (\incdec~input_o\ & ((\Add2~8_combout\) # (!\LessThan2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1_sig[0]~0_combout\,
	datab => \LessThan2~2_combout\,
	datac => \Add2~8_combout\,
	datad => \incdec~input_o\,
	combout => \d1_sig[4]~15_combout\);

-- Location: LCCOMB_X55_Y40_N30
\d1_sig[4]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d1_sig[4]~17_combout\ = (!\d1_sig[4]~15_combout\ & ((\d1_sig[0]~0_combout\ & ((d1_act(4)))) # (!\d1_sig[0]~0_combout\ & (!\d1_sig[4]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1_sig[0]~0_combout\,
	datab => \d1_sig[4]~16_combout\,
	datac => d1_act(4),
	datad => \d1_sig[4]~15_combout\,
	combout => \d1_sig[4]~17_combout\);

-- Location: FF_X55_Y40_N31
\d1_act[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1_sig[4]~17_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d1_act(4));

-- Location: LCCOMB_X57_Y40_N24
\LessThan2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = ((d1_act(2) & (d1_act(1) & !d1_act(0)))) # (!\d1[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1[3]~2_combout\,
	datab => d1_act(2),
	datac => d1_act(1),
	datad => d1_act(0),
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X57_Y40_N26
\LessThan2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = ((d1_act(4) & (\LessThan2~0_combout\ & \LessThan2~1_combout\))) # (!\d1[8]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d1_act(4),
	datab => \LessThan2~0_combout\,
	datac => \d1[8]~10_combout\,
	datad => \LessThan2~1_combout\,
	combout => \LessThan2~2_combout\);

-- Location: LCCOMB_X55_Y40_N24
\d1_sig[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d1_sig[0]~3_combout\ = (\incdec~input_o\ & (((!\Add2~0_combout\)) # (!\LessThan2~2_combout\))) # (!\incdec~input_o\ & (((\LessThan3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incdec~input_o\,
	datab => \LessThan2~2_combout\,
	datac => \Add2~0_combout\,
	datad => \LessThan3~1_combout\,
	combout => \d1_sig[0]~3_combout\);

-- Location: LCCOMB_X55_Y40_N18
\d1_sig[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d1_sig[0]~4_combout\ = (\d1_sig[0]~2_combout\ & (((\d1_sig[3]~1_combout\ & \Add3~0_combout\)) # (!\d1_sig[0]~3_combout\))) # (!\d1_sig[0]~2_combout\ & (\d1_sig[3]~1_combout\ & (\Add3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1_sig[0]~2_combout\,
	datab => \d1_sig[3]~1_combout\,
	datac => \Add3~0_combout\,
	datad => \d1_sig[0]~3_combout\,
	combout => \d1_sig[0]~4_combout\);

-- Location: LCCOMB_X55_Y40_N28
\d1_sig[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d1_sig[0]~5_combout\ = (\d1_sig[0]~0_combout\ & (d1_act(0))) # (!\d1_sig[0]~0_combout\ & ((\d1_sig[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1_sig[0]~0_combout\,
	datac => d1_act(0),
	datad => \d1_sig[0]~4_combout\,
	combout => \d1_sig[0]~5_combout\);

-- Location: LCCOMB_X55_Y40_N8
\d1[0]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d1[0]~reg0feeder_combout\ = \d1_sig[0]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d1_sig[0]~5_combout\,
	combout => \d1[0]~reg0feeder_combout\);

-- Location: FF_X55_Y40_N9
\d1[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1[0]~reg0feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1[0]~reg0_q\);

-- Location: FF_X50_Y39_N5
\d1[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \d1_sig[1]~9_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1[1]~reg0_q\);

-- Location: LCCOMB_X58_Y40_N8
\d1[2]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d1[2]~reg0feeder_combout\ = \d1_sig[2]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d1_sig[2]~11_combout\,
	combout => \d1[2]~reg0feeder_combout\);

-- Location: FF_X58_Y40_N9
\d1[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1[2]~reg0feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1[2]~reg0_q\);

-- Location: LCCOMB_X55_Y40_N10
\d1[4]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d1[4]~reg0feeder_combout\ = \d1_sig[4]~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d1_sig[4]~17_combout\,
	combout => \d1[4]~reg0feeder_combout\);

-- Location: FF_X55_Y40_N11
\d1[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1[4]~reg0feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1[4]~reg0_q\);

-- Location: FF_X50_Y39_N15
\d1[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \d1_sig[6]~22_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1[6]~reg0_q\);

-- Location: LCCOMB_X51_Y45_N8
\Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\sel[1]~input_o\ & !\sel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sel[1]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X51_Y41_N28
\d2[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d2[0]~1_combout\ = (\reset~input_o\ & ((\d2[0]~1_combout\))) # (!\reset~input_o\ & (!\Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \Mux3~0_combout\,
	datad => \d2[0]~1_combout\,
	combout => \d2[0]~1_combout\);

-- Location: LCCOMB_X51_Y41_N2
\d2_sig[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d2_sig[0]~2_combout\ = (\sel[0]~input_o\ & ((\d1d2~input_o\) # (!\sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \sel[1]~input_o\,
	datac => \d1d2~input_o\,
	combout => \d2_sig[0]~2_combout\);

-- Location: LCCOMB_X50_Y45_N8
\Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = \d2[0]~2_combout\ $ (VCC)
-- \Add1~1\ = CARRY(\d2[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d2[0]~2_combout\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X50_Y41_N18
\d2_sig[3]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d2_sig[3]~11_combout\ = (\incdec~input_o\ & (\LessThan0~2_combout\)) # (!\incdec~input_o\ & ((\LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => \LessThan1~2_combout\,
	datac => \incdec~input_o\,
	combout => \d2_sig[3]~11_combout\);

-- Location: LCCOMB_X51_Y45_N6
\d2[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d2[1]~5_combout\ = (\reset~input_o\ & ((\d2[1]~5_combout\))) # (!\reset~input_o\ & (\Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \Mux3~0_combout\,
	datad => \d2[1]~5_combout\,
	combout => \d2[1]~5_combout\);

-- Location: LCCOMB_X50_Y45_N10
\Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\d2[1]~6_combout\ & (\Add1~1\ & VCC)) # (!\d2[1]~6_combout\ & (!\Add1~1\))
-- \Add1~3\ = CARRY((!\d2[1]~6_combout\ & !\Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d2[1]~6_combout\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X52_Y45_N12
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \d2[0]~2_combout\ $ (VCC)
-- \Add0~1\ = CARRY(\d2[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d2[0]~2_combout\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X52_Y45_N14
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\d2[1]~6_combout\ & (!\Add0~1\)) # (!\d2[1]~6_combout\ & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!\d2[1]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d2[1]~6_combout\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X51_Y45_N18
\d2_sig[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d2_sig[1]~6_combout\ = (\incdec~input_o\ & (\d2_sig[0]~2_combout\ & ((\Add0~2_combout\) # (!\LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incdec~input_o\,
	datab => \LessThan0~2_combout\,
	datac => \Add0~2_combout\,
	datad => \d2_sig[0]~2_combout\,
	combout => \d2_sig[1]~6_combout\);

-- Location: LCCOMB_X51_Y45_N4
\d2_sig[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d2_sig[1]~7_combout\ = (\d2_sig[0]~2_combout\ & (\LessThan1~2_combout\ & !\incdec~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2_sig[0]~2_combout\,
	datab => \LessThan1~2_combout\,
	datac => \incdec~input_o\,
	combout => \d2_sig[1]~7_combout\);

-- Location: LCCOMB_X51_Y45_N22
\d2_sig[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d2_sig[1]~8_combout\ = (\d2_sig[1]~6_combout\) # (((\Add1~2_combout\ & \d2_sig[1]~7_combout\)) # (!\sel[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \d2_sig[1]~6_combout\,
	datac => \d2_sig[1]~7_combout\,
	datad => \sel[0]~input_o\,
	combout => \d2_sig[1]~8_combout\);

-- Location: LCCOMB_X52_Y45_N30
\d2[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d2[1]~7_combout\ = \d2[1]~5_combout\ $ (((\d1_sig[0]~0_combout\ & (\d2[1]~6_combout\)) # (!\d1_sig[0]~0_combout\ & ((\d2_sig[1]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2[1]~6_combout\,
	datab => \d2_sig[1]~8_combout\,
	datac => \d1_sig[0]~0_combout\,
	datad => \d2[1]~5_combout\,
	combout => \d2[1]~7_combout\);

-- Location: FF_X52_Y45_N31
\d2[1]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d2[1]~7_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d2[1]~reg0_emulated_q\);

-- Location: LCCOMB_X52_Y45_N2
\d2[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d2[1]~6_combout\ = (\reset~input_o\ & ((\d2[1]~5_combout\ $ (\d2[1]~reg0_emulated_q\)))) # (!\reset~input_o\ & (\Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datab => \d2[1]~5_combout\,
	datac => \d2[1]~reg0_emulated_q\,
	datad => \reset~input_o\,
	combout => \d2[1]~6_combout\);

-- Location: LCCOMB_X50_Y45_N12
\Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (\d2[2]~8_combout\ & (\Add1~3\ $ (GND))) # (!\d2[2]~8_combout\ & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((\d2[2]~8_combout\ & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d2[2]~8_combout\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X52_Y45_N16
\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\d2[2]~8_combout\ & ((GND) # (!\Add0~3\))) # (!\d2[2]~8_combout\ & (\Add0~3\ $ (GND)))
-- \Add0~5\ = CARRY((\d2[2]~8_combout\) # (!\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d2[2]~8_combout\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X51_Y45_N16
\d2_sig[2]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d2_sig[2]~9_combout\ = (\d2_sig[0]~2_combout\ & (\incdec~input_o\ & ((\Add0~4_combout\) # (!\LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2_sig[0]~2_combout\,
	datab => \LessThan0~2_combout\,
	datac => \incdec~input_o\,
	datad => \Add0~4_combout\,
	combout => \d2_sig[2]~9_combout\);

-- Location: LCCOMB_X51_Y45_N10
\d2_sig[2]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d2_sig[2]~10_combout\ = (\d2_sig[2]~9_combout\) # (((\Add1~4_combout\ & \d2_sig[1]~7_combout\)) # (!\sel[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datab => \d2_sig[2]~9_combout\,
	datac => \d2_sig[1]~7_combout\,
	datad => \sel[0]~input_o\,
	combout => \d2_sig[2]~10_combout\);

-- Location: LCCOMB_X52_Y45_N8
\d2[2]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d2[2]~9_combout\ = \d2[1]~5_combout\ $ (((\d1_sig[0]~0_combout\ & ((\d2[2]~8_combout\))) # (!\d1_sig[0]~0_combout\ & (\d2_sig[2]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2_sig[2]~10_combout\,
	datab => \d2[1]~5_combout\,
	datac => \d1_sig[0]~0_combout\,
	datad => \d2[2]~8_combout\,
	combout => \d2[2]~9_combout\);

-- Location: FF_X52_Y45_N9
\d2[2]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d2[2]~9_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d2[2]~reg0_emulated_q\);

-- Location: LCCOMB_X52_Y45_N6
\d2[2]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d2[2]~8_combout\ = (\reset~input_o\ & ((\d2[1]~5_combout\ $ (\d2[2]~reg0_emulated_q\)))) # (!\reset~input_o\ & (\Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datab => \d2[1]~5_combout\,
	datac => \d2[2]~reg0_emulated_q\,
	datad => \reset~input_o\,
	combout => \d2[2]~8_combout\);

-- Location: LCCOMB_X50_Y45_N14
\Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (d2_act(3) & (\Add1~5\ & VCC)) # (!d2_act(3) & (!\Add1~5\))
-- \Add1~7\ = CARRY((!d2_act(3) & !\Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => d2_act(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X52_Y45_N18
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (d2_act(3) & (!\Add0~5\)) # (!d2_act(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!d2_act(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => d2_act(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X50_Y41_N4
\d2_sig[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d2_sig[3]~12_combout\ = (\incdec~input_o\ & ((\Add0~6_combout\))) # (!\incdec~input_o\ & (\Add1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datac => \incdec~input_o\,
	datad => \Add0~6_combout\,
	combout => \d2_sig[3]~12_combout\);

-- Location: LCCOMB_X50_Y41_N30
\d2_sig[3]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d2_sig[3]~13_combout\ = (\d1_sig[0]~0_combout\ & (((d2_act(3))))) # (!\d1_sig[0]~0_combout\ & (\d2_sig[0]~2_combout\ & ((\d2_sig[3]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2_sig[0]~2_combout\,
	datab => d2_act(3),
	datac => \d1_sig[0]~0_combout\,
	datad => \d2_sig[3]~12_combout\,
	combout => \d2_sig[3]~13_combout\);

-- Location: LCCOMB_X51_Y41_N24
\d2_sig[3]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d2_sig[3]~27_combout\ = (\sel[0]~input_o\ & (!\d1_sig[0]~0_combout\ & ((\d1d2~input_o\) # (!\sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \sel[1]~input_o\,
	datac => \d1d2~input_o\,
	datad => \d1_sig[0]~0_combout\,
	combout => \d2_sig[3]~27_combout\);

-- Location: LCCOMB_X50_Y41_N16
\d2_sig[3]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d2_sig[3]~14_combout\ = (\d2_sig[3]~13_combout\) # ((!\d2_sig[3]~11_combout\ & \d2_sig[3]~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2_sig[3]~13_combout\,
	datac => \d2_sig[3]~11_combout\,
	datad => \d2_sig[3]~27_combout\,
	combout => \d2_sig[3]~14_combout\);

-- Location: FF_X50_Y41_N17
\d2_act[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d2_sig[3]~14_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d2_act(3));

-- Location: LCCOMB_X50_Y45_N16
\Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (\d2[4]~10_combout\ & ((GND) # (!\Add1~7\))) # (!\d2[4]~10_combout\ & (\Add1~7\ $ (GND)))
-- \Add1~9\ = CARRY((\d2[4]~10_combout\) # (!\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d2[4]~10_combout\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X52_Y45_N20
\Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\d2[4]~10_combout\ & (\Add0~7\ $ (GND))) # (!\d2[4]~10_combout\ & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((\d2[4]~10_combout\ & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d2[4]~10_combout\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X51_Y45_N20
\d2_sig[4]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d2_sig[4]~15_combout\ = (\incdec~input_o\ & (\d2_sig[0]~2_combout\ & ((\Add0~8_combout\) # (!\LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incdec~input_o\,
	datab => \LessThan0~2_combout\,
	datac => \Add0~8_combout\,
	datad => \d2_sig[0]~2_combout\,
	combout => \d2_sig[4]~15_combout\);

-- Location: LCCOMB_X51_Y45_N14
\d2_sig[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d2_sig[4]~16_combout\ = (\d2_sig[4]~15_combout\) # (((\Add1~8_combout\ & \d2_sig[1]~7_combout\)) # (!\sel[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datab => \d2_sig[4]~15_combout\,
	datac => \d2_sig[1]~7_combout\,
	datad => \sel[0]~input_o\,
	combout => \d2_sig[4]~16_combout\);

-- Location: LCCOMB_X52_Y45_N4
\d2[4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d2[4]~11_combout\ = \d2[1]~5_combout\ $ (((\d1_sig[0]~0_combout\ & ((\d2[4]~10_combout\))) # (!\d1_sig[0]~0_combout\ & (\d2_sig[4]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2_sig[4]~16_combout\,
	datab => \d2[1]~5_combout\,
	datac => \d1_sig[0]~0_combout\,
	datad => \d2[4]~10_combout\,
	combout => \d2[4]~11_combout\);

-- Location: FF_X52_Y45_N5
\d2[4]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d2[4]~11_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d2[4]~reg0_emulated_q\);

-- Location: LCCOMB_X52_Y45_N10
\d2[4]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d2[4]~10_combout\ = (\reset~input_o\ & ((\d2[1]~5_combout\ $ (\d2[4]~reg0_emulated_q\)))) # (!\reset~input_o\ & (\Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datab => \d2[1]~5_combout\,
	datac => \d2[4]~reg0_emulated_q\,
	datad => \reset~input_o\,
	combout => \d2[4]~10_combout\);

-- Location: LCCOMB_X52_Y45_N22
\Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (d2_act(5) & (!\Add0~9\)) # (!d2_act(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!d2_act(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => d2_act(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X50_Y45_N18
\Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (d2_act(5) & (\Add1~9\ & VCC)) # (!d2_act(5) & (!\Add1~9\))
-- \Add1~11\ = CARRY((!d2_act(5) & !\Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => d2_act(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X50_Y41_N0
\d2_sig[5]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d2_sig[5]~17_combout\ = (\incdec~input_o\ & (\Add0~10_combout\)) # (!\incdec~input_o\ & ((\Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \incdec~input_o\,
	datac => \Add1~10_combout\,
	combout => \d2_sig[5]~17_combout\);

-- Location: LCCOMB_X50_Y41_N14
\d2_sig[5]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d2_sig[5]~19_combout\ = (\d1_sig[0]~0_combout\ & ((d2_act(5)) # ((\d2_sig[5]~18_combout\ & \d2_sig[5]~17_combout\)))) # (!\d1_sig[0]~0_combout\ & (\d2_sig[5]~18_combout\ & ((\d2_sig[5]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1_sig[0]~0_combout\,
	datab => \d2_sig[5]~18_combout\,
	datac => d2_act(5),
	datad => \d2_sig[5]~17_combout\,
	combout => \d2_sig[5]~19_combout\);

-- Location: FF_X50_Y41_N15
\d2_act[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d2_sig[5]~19_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d2_act(5));

-- Location: LCCOMB_X50_Y45_N20
\Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (\d2[6]~12_combout\ & ((GND) # (!\Add1~11\))) # (!\d2[6]~12_combout\ & (\Add1~11\ $ (GND)))
-- \Add1~13\ = CARRY((\d2[6]~12_combout\) # (!\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d2[6]~12_combout\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X52_Y45_N24
\Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (\d2[6]~12_combout\ & (\Add0~11\ $ (GND))) # (!\d2[6]~12_combout\ & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((\d2[6]~12_combout\ & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d2[6]~12_combout\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X51_Y45_N0
\d2_sig[6]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d2_sig[6]~20_combout\ = (\d2_sig[0]~2_combout\ & ((\incdec~input_o\ & ((\Add0~12_combout\))) # (!\incdec~input_o\ & (\Add1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2_sig[0]~2_combout\,
	datab => \Add1~12_combout\,
	datac => \incdec~input_o\,
	datad => \Add0~12_combout\,
	combout => \d2_sig[6]~20_combout\);

-- Location: LCCOMB_X51_Y41_N14
\d2_sig[6]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d2_sig[6]~21_combout\ = (\d2_sig[3]~11_combout\ & ((\d2_sig[6]~20_combout\) # ((!\d2_sig[0]~2_combout\ & \sel[0]~input_o\)))) # (!\d2_sig[3]~11_combout\ & (!\d2_sig[0]~2_combout\ & ((\sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2_sig[3]~11_combout\,
	datab => \d2_sig[0]~2_combout\,
	datac => \d2_sig[6]~20_combout\,
	datad => \sel[0]~input_o\,
	combout => \d2_sig[6]~21_combout\);

-- Location: LCCOMB_X51_Y41_N8
\d2[6]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d2[6]~13_combout\ = \d2[0]~1_combout\ $ (((\d1_sig[0]~0_combout\ & (\d2[6]~12_combout\)) # (!\d1_sig[0]~0_combout\ & ((\d2_sig[6]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2[6]~12_combout\,
	datab => \d2[0]~1_combout\,
	datac => \d2_sig[6]~21_combout\,
	datad => \d1_sig[0]~0_combout\,
	combout => \d2[6]~13_combout\);

-- Location: FF_X51_Y41_N9
\d2[6]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d2[6]~13_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d2[6]~reg0_emulated_q\);

-- Location: LCCOMB_X51_Y41_N26
\d2[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d2[6]~12_combout\ = (\reset~input_o\ & (\d2[0]~1_combout\ $ (((\d2[6]~reg0_emulated_q\))))) # (!\reset~input_o\ & (((!\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \d2[0]~1_combout\,
	datac => \Mux3~0_combout\,
	datad => \d2[6]~reg0_emulated_q\,
	combout => \d2[6]~12_combout\);

-- Location: LCCOMB_X50_Y45_N30
\LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!d2_act(7) & (!\d2[6]~12_combout\ & (!d2_act(5) & !\d2[4]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d2_act(7),
	datab => \d2[6]~12_combout\,
	datac => d2_act(5),
	datad => \d2[4]~10_combout\,
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X50_Y45_N26
\LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!\d2[2]~8_combout\ & (!\d2[0]~2_combout\ & !\d2[1]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d2[2]~8_combout\,
	datac => \d2[0]~2_combout\,
	datad => \d2[1]~6_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X52_Y45_N26
\Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (d2_act(7) & (!\Add0~13\)) # (!d2_act(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!d2_act(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => d2_act(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X52_Y45_N28
\Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = \Add0~15\ $ (!\d2[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \d2[8]~14_combout\,
	cin => \Add0~15\,
	combout => \Add0~16_combout\);

-- Location: LCCOMB_X51_Y45_N2
\d2_sig[8]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d2_sig[8]~25_combout\ = (\d2_sig[0]~2_combout\ & (\LessThan0~2_combout\ & (\incdec~input_o\ & \Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2_sig[0]~2_combout\,
	datab => \LessThan0~2_combout\,
	datac => \incdec~input_o\,
	datad => \Add0~16_combout\,
	combout => \d2_sig[8]~25_combout\);

-- Location: LCCOMB_X50_Y45_N22
\Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (d2_act(7) & (\Add1~13\ & VCC)) # (!d2_act(7) & (!\Add1~13\))
-- \Add1~15\ = CARRY((!d2_act(7) & !\Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => d2_act(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X50_Y45_N24
\Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = \Add1~15\ $ (\d2[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \d2[8]~14_combout\,
	cin => \Add1~15\,
	combout => \Add1~16_combout\);

-- Location: LCCOMB_X50_Y45_N6
\d2_sig[8]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d2_sig[8]~24_combout\ = (\d2_sig[0]~2_combout\ & (!\incdec~input_o\ & ((\Add1~16_combout\) # (!\LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2_sig[0]~2_combout\,
	datab => \Add1~16_combout\,
	datac => \incdec~input_o\,
	datad => \LessThan1~2_combout\,
	combout => \d2_sig[8]~24_combout\);

-- Location: LCCOMB_X51_Y45_N12
\d2_sig[8]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d2_sig[8]~26_combout\ = (\d2_sig[8]~25_combout\) # ((\d2_sig[8]~24_combout\) # (!\sel[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d2_sig[8]~25_combout\,
	datac => \d2_sig[8]~24_combout\,
	datad => \sel[0]~input_o\,
	combout => \d2_sig[8]~26_combout\);

-- Location: LCCOMB_X52_Y45_N0
\d2[8]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d2[8]~15_combout\ = \d2[1]~5_combout\ $ (((\d1_sig[0]~0_combout\ & ((\d2[8]~14_combout\))) # (!\d1_sig[0]~0_combout\ & (\d2_sig[8]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2_sig[8]~26_combout\,
	datab => \d2[8]~14_combout\,
	datac => \d1_sig[0]~0_combout\,
	datad => \d2[1]~5_combout\,
	combout => \d2[8]~15_combout\);

-- Location: FF_X52_Y45_N1
\d2[8]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d2[8]~15_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d2[8]~reg0_emulated_q\);

-- Location: LCCOMB_X51_Y45_N24
\d2[8]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d2[8]~14_combout\ = (\reset~input_o\ & (\d2[1]~5_combout\ $ ((\d2[8]~reg0_emulated_q\)))) # (!\reset~input_o\ & (((\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2[1]~5_combout\,
	datab => \d2[8]~reg0_emulated_q\,
	datac => \Mux3~0_combout\,
	datad => \reset~input_o\,
	combout => \d2[8]~14_combout\);

-- Location: LCCOMB_X50_Y45_N4
\LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ((\LessThan0~0_combout\ & ((\LessThan0~1_combout\) # (!d2_act(3))))) # (!\d2[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => d2_act(3),
	datac => \LessThan0~1_combout\,
	datad => \d2[8]~14_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X50_Y41_N2
\d2_sig[5]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d2_sig[5]~18_combout\ = (\d2_sig[3]~27_combout\ & ((\incdec~input_o\ & (\LessThan0~2_combout\)) # (!\incdec~input_o\ & ((\LessThan1~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => \LessThan1~2_combout\,
	datac => \incdec~input_o\,
	datad => \d2_sig[3]~27_combout\,
	combout => \d2_sig[5]~18_combout\);

-- Location: LCCOMB_X50_Y41_N12
\d2_sig[7]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d2_sig[7]~22_combout\ = (\incdec~input_o\ & ((\Add0~14_combout\))) # (!\incdec~input_o\ & (\Add1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \incdec~input_o\,
	datac => \Add1~14_combout\,
	datad => \Add0~14_combout\,
	combout => \d2_sig[7]~22_combout\);

-- Location: LCCOMB_X50_Y41_N20
\d2_sig[7]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d2_sig[7]~23_combout\ = (\d1_sig[0]~0_combout\ & ((d2_act(7)) # ((\d2_sig[5]~18_combout\ & \d2_sig[7]~22_combout\)))) # (!\d1_sig[0]~0_combout\ & (\d2_sig[5]~18_combout\ & ((\d2_sig[7]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1_sig[0]~0_combout\,
	datab => \d2_sig[5]~18_combout\,
	datac => d2_act(7),
	datad => \d2_sig[7]~22_combout\,
	combout => \d2_sig[7]~23_combout\);

-- Location: FF_X50_Y41_N21
\d2_act[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d2_sig[7]~23_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d2_act(7));

-- Location: LCCOMB_X50_Y45_N0
\LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (d2_act(7)) # ((\d2[6]~12_combout\) # ((d2_act(5)) # (\d2[8]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d2_act(7),
	datab => \d2[6]~12_combout\,
	datac => d2_act(5),
	datad => \d2[8]~14_combout\,
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X50_Y45_N2
\LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (\d2[1]~6_combout\ & (d2_act(3) & (\d2[2]~8_combout\ & \d2[4]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2[1]~6_combout\,
	datab => d2_act(3),
	datac => \d2[2]~8_combout\,
	datad => \d2[4]~10_combout\,
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X50_Y45_N28
\LessThan1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (\LessThan1~0_combout\) # ((\d2[0]~2_combout\ & \LessThan1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan1~0_combout\,
	datac => \d2[0]~2_combout\,
	datad => \LessThan1~1_combout\,
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X51_Y45_N28
\d2_sig[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d2_sig[0]~3_combout\ = (!\incdec~input_o\ & (\d2_sig[0]~2_combout\ & ((\Add1~0_combout\) # (!\LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \LessThan1~2_combout\,
	datac => \incdec~input_o\,
	datad => \d2_sig[0]~2_combout\,
	combout => \d2_sig[0]~3_combout\);

-- Location: LCCOMB_X51_Y45_N30
\d2_sig[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d2_sig[0]~4_combout\ = (\incdec~input_o\ & (\LessThan0~2_combout\ & (\Add0~0_combout\ & \d2_sig[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incdec~input_o\,
	datab => \LessThan0~2_combout\,
	datac => \Add0~0_combout\,
	datad => \d2_sig[0]~2_combout\,
	combout => \d2_sig[0]~4_combout\);

-- Location: LCCOMB_X51_Y41_N4
\d2_sig[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d2_sig[0]~5_combout\ = (\d2_sig[0]~3_combout\) # ((\d2_sig[0]~4_combout\) # ((\sel[0]~input_o\ & !\d2_sig[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \d2_sig[0]~2_combout\,
	datac => \d2_sig[0]~3_combout\,
	datad => \d2_sig[0]~4_combout\,
	combout => \d2_sig[0]~5_combout\);

-- Location: LCCOMB_X51_Y41_N12
\d2[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d2[0]~3_combout\ = \d2[0]~1_combout\ $ (((\d1_sig[0]~0_combout\ & (\d2[0]~2_combout\)) # (!\d1_sig[0]~0_combout\ & ((\d2_sig[0]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2[0]~2_combout\,
	datab => \d2[0]~1_combout\,
	datac => \d2_sig[0]~5_combout\,
	datad => \d1_sig[0]~0_combout\,
	combout => \d2[0]~3_combout\);

-- Location: FF_X51_Y41_N13
\d2[0]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d2[0]~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d2[0]~reg0_emulated_q\);

-- Location: LCCOMB_X51_Y41_N6
\d2[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d2[0]~2_combout\ = (\reset~input_o\ & (\d2[0]~reg0_emulated_q\ $ (((\d2[0]~1_combout\))))) # (!\reset~input_o\ & (((!\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2[0]~reg0_emulated_q\,
	datab => \Mux3~0_combout\,
	datac => \reset~input_o\,
	datad => \d2[0]~1_combout\,
	combout => \d2[0]~2_combout\);

-- Location: LCCOMB_X50_Y41_N26
\d2[3]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d2[3]~reg0feeder_combout\ = \d2_sig[3]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d2_sig[3]~14_combout\,
	combout => \d2[3]~reg0feeder_combout\);

-- Location: FF_X50_Y41_N27
\d2[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d2[3]~reg0feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d2[3]~reg0_q\);

-- Location: LCCOMB_X50_Y41_N28
\d2[5]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d2[5]~reg0feeder_combout\ = \d2_sig[5]~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d2_sig[5]~19_combout\,
	combout => \d2[5]~reg0feeder_combout\);

-- Location: FF_X50_Y41_N29
\d2[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d2[5]~reg0feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d2[5]~reg0_q\);

-- Location: LCCOMB_X50_Y41_N22
\d2[7]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d2[7]~reg0feeder_combout\ = \d2_sig[7]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d2_sig[7]~23_combout\,
	combout => \d2[7]~reg0feeder_combout\);

-- Location: FF_X50_Y41_N23
\d2[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d2[7]~reg0feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d2[7]~reg0_q\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_delay_out(0) <= \delay_out[0]~output_o\;

ww_delay_out(1) <= \delay_out[1]~output_o\;

ww_delay_out(2) <= \delay_out[2]~output_o\;

ww_delay_out(3) <= \delay_out[3]~output_o\;

ww_delay_out(4) <= \delay_out[4]~output_o\;

ww_delay_out(5) <= \delay_out[5]~output_o\;

ww_delay_out(6) <= \delay_out[6]~output_o\;

ww_delay_out(7) <= \delay_out[7]~output_o\;

ww_delay_out(8) <= \delay_out[8]~output_o\;

ww_d1(0) <= \d1[0]~output_o\;

ww_d1(1) <= \d1[1]~output_o\;

ww_d1(2) <= \d1[2]~output_o\;

ww_d1(3) <= \d1[3]~output_o\;

ww_d1(4) <= \d1[4]~output_o\;

ww_d1(5) <= \d1[5]~output_o\;

ww_d1(6) <= \d1[6]~output_o\;

ww_d1(7) <= \d1[7]~output_o\;

ww_d1(8) <= \d1[8]~output_o\;

ww_d2(0) <= \d2[0]~output_o\;

ww_d2(1) <= \d2[1]~output_o\;

ww_d2(2) <= \d2[2]~output_o\;

ww_d2(3) <= \d2[3]~output_o\;

ww_d2(4) <= \d2[4]~output_o\;

ww_d2(5) <= \d2[5]~output_o\;

ww_d2(6) <= \d2[6]~output_o\;

ww_d2(7) <= \d2[7]~output_o\;

ww_d2(8) <= \d2[8]~output_o\;
END structure;


