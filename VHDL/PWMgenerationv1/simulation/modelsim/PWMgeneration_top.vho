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

-- DATE "05/18/2022 12:42:18"

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
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	PWMgeneration_top IS
    PORT (
	reset : IN std_logic;
	clk : IN std_logic;
	sel : IN std_logic;
	PWM_H1 : BUFFER std_logic;
	PWM_H1_sens : BUFFER std_logic;
	PWM_L1 : BUFFER std_logic;
	PWM_L1_sens : BUFFER std_logic;
	PWM_H2 : BUFFER std_logic;
	PWM_H2_sens : BUFFER std_logic;
	PWM_L2 : BUFFER std_logic;
	PWM_L2_sens : BUFFER std_logic;
	wdg_out : BUFFER std_logic;
	set_btn : IN std_logic;
	reset_btn : IN std_logic;
	set_out : BUFFER std_logic;
	reset_out : BUFFER std_logic;
	wdg_reset : IN std_logic;
	inc : IN std_logic;
	dec : IN std_logic
	);
END PWMgeneration_top;

-- Design Ports Information
-- PWM_H1	=>  Location: PIN_V10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- PWM_H1_sens	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- PWM_L1	=>  Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- PWM_L1_sens	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWM_H2	=>  Location: PIN_AB3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- PWM_H2_sens	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWM_L2	=>  Location: PIN_AB2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- PWM_L2_sens	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wdg_out	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- set_out	=>  Location: PIN_W10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- reset_out	=>  Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- set_btn	=>  Location: PIN_A13,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- reset_btn	=>  Location: PIN_B12,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- clk	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- wdg_reset	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sel	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dec	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- inc	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF PWMgeneration_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_sel : std_logic;
SIGNAL ww_PWM_H1 : std_logic;
SIGNAL ww_PWM_H1_sens : std_logic;
SIGNAL ww_PWM_L1 : std_logic;
SIGNAL ww_PWM_L1_sens : std_logic;
SIGNAL ww_PWM_H2 : std_logic;
SIGNAL ww_PWM_H2_sens : std_logic;
SIGNAL ww_PWM_L2 : std_logic;
SIGNAL ww_PWM_L2_sens : std_logic;
SIGNAL ww_wdg_out : std_logic;
SIGNAL ww_set_btn : std_logic;
SIGNAL ww_reset_btn : std_logic;
SIGNAL ww_set_out : std_logic;
SIGNAL ww_reset_out : std_logic;
SIGNAL ww_wdg_reset : std_logic;
SIGNAL ww_inc : std_logic;
SIGNAL ww_dec : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \PWM_H1~output_o\ : std_logic;
SIGNAL \PWM_H1_sens~output_o\ : std_logic;
SIGNAL \PWM_L1~output_o\ : std_logic;
SIGNAL \PWM_L1_sens~output_o\ : std_logic;
SIGNAL \PWM_H2~output_o\ : std_logic;
SIGNAL \PWM_H2_sens~output_o\ : std_logic;
SIGNAL \PWM_L2~output_o\ : std_logic;
SIGNAL \PWM_L2_sens~output_o\ : std_logic;
SIGNAL \wdg_out~output_o\ : std_logic;
SIGNAL \set_out~output_o\ : std_logic;
SIGNAL \reset_out~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inc~input_o\ : std_logic;
SIGNAL \incdecdutytest|inc_prev[0]~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \incdecdutytest|Equal0~0_combout\ : std_logic;
SIGNAL \sel~input_o\ : std_logic;
SIGNAL \incdecdutytest|duty[7]~2_combout\ : std_logic;
SIGNAL \dec~input_o\ : std_logic;
SIGNAL \incdecdutytest|dec_prev[0]~0_combout\ : std_logic;
SIGNAL \incdecdutytest|Equal1~0_combout\ : std_logic;
SIGNAL \incdecdutytest|duty[6]~6_combout\ : std_logic;
SIGNAL \incdecdutytest|LessThan0~0_combout\ : std_logic;
SIGNAL \incdecdutytest|LessThan0~1_combout\ : std_logic;
SIGNAL \incdecdutytest|Add0~0_combout\ : std_logic;
SIGNAL \incdecdutytest|duty_sig[0]~38_combout\ : std_logic;
SIGNAL \incdecdutytest|Add1~0_combout\ : std_logic;
SIGNAL \incdecdutytest|duty_sig[0]~28_combout\ : std_logic;
SIGNAL \incdecdutytest|duty[0]~20_combout\ : std_logic;
SIGNAL \incdecdutytest|duty[0]~_emulated_q\ : std_logic;
SIGNAL \incdecdutytest|duty[0]~19_combout\ : std_logic;
SIGNAL \incdecdutytest|Add0~1\ : std_logic;
SIGNAL \incdecdutytest|Add0~3\ : std_logic;
SIGNAL \incdecdutytest|Add0~5\ : std_logic;
SIGNAL \incdecdutytest|Add0~7\ : std_logic;
SIGNAL \incdecdutytest|Add0~8_combout\ : std_logic;
SIGNAL \incdecdutytest|duty_sig[4]~25_combout\ : std_logic;
SIGNAL \incdecdutytest|Add1~7\ : std_logic;
SIGNAL \incdecdutytest|Add1~8_combout\ : std_logic;
SIGNAL \incdecdutytest|duty_sig[4]~32_combout\ : std_logic;
SIGNAL \incdecdutytest|duty[4]~12_combout\ : std_logic;
SIGNAL \incdecdutytest|duty[1]~29_combout\ : std_logic;
SIGNAL \incdecdutytest|duty[4]~_emulated_q\ : std_logic;
SIGNAL \incdecdutytest|duty[4]~11_combout\ : std_logic;
SIGNAL \incdecdutytest|Add0~9\ : std_logic;
SIGNAL \incdecdutytest|Add0~11\ : std_logic;
SIGNAL \incdecdutytest|Add0~12_combout\ : std_logic;
SIGNAL \incdecdutytest|duty_sig[6]~30_combout\ : std_logic;
SIGNAL \incdecdutytest|Add1~9\ : std_logic;
SIGNAL \incdecdutytest|Add1~11\ : std_logic;
SIGNAL \incdecdutytest|Add1~12_combout\ : std_logic;
SIGNAL \incdecdutytest|duty_sig[6]~24_combout\ : std_logic;
SIGNAL \incdecdutytest|duty[6]~8_combout\ : std_logic;
SIGNAL \incdecdutytest|duty[6]~_emulated_q\ : std_logic;
SIGNAL \incdecdutytest|duty[6]~7_combout\ : std_logic;
SIGNAL \incdecdutytest|Add1~13\ : std_logic;
SIGNAL \incdecdutytest|Add1~14_combout\ : std_logic;
SIGNAL \incdecdutytest|Add0~13\ : std_logic;
SIGNAL \incdecdutytest|Add0~14_combout\ : std_logic;
SIGNAL \incdecdutytest|duty_sig[7]~29_combout\ : std_logic;
SIGNAL \incdecdutytest|duty_sig[3]~23_combout\ : std_logic;
SIGNAL \incdecdutytest|duty[7]~4_combout\ : std_logic;
SIGNAL \incdecdutytest|duty[7]~_emulated_q\ : std_logic;
SIGNAL \incdecdutytest|duty[7]~3_combout\ : std_logic;
SIGNAL \incdecdutytest|Add1~15\ : std_logic;
SIGNAL \incdecdutytest|Add1~16_combout\ : std_logic;
SIGNAL \incdecdutytest|duty_sig~20_combout\ : std_logic;
SIGNAL \incdecdutytest|duty[8]~0_combout\ : std_logic;
SIGNAL \incdecdutytest|Add0~15\ : std_logic;
SIGNAL \incdecdutytest|Add0~16_combout\ : std_logic;
SIGNAL \incdecdutytest|duty_sig~21_combout\ : std_logic;
SIGNAL \incdecdutytest|LessThan1~2_combout\ : std_logic;
SIGNAL \incdecdutytest|Add1~1\ : std_logic;
SIGNAL \incdecdutytest|Add1~2_combout\ : std_logic;
SIGNAL \incdecdutytest|duty_sig[1]~37_combout\ : std_logic;
SIGNAL \incdecdutytest|Add0~2_combout\ : std_logic;
SIGNAL \incdecdutytest|duty_sig[1]~27_combout\ : std_logic;
SIGNAL \incdecdutytest|duty[1]~18_combout\ : std_logic;
SIGNAL \incdecdutytest|duty[1]~_emulated_q\ : std_logic;
SIGNAL \incdecdutytest|duty[1]~17_combout\ : std_logic;
SIGNAL \incdecdutytest|LessThan1~0_combout\ : std_logic;
SIGNAL \incdecdutytest|duty_sig[3]~22_combout\ : std_logic;
SIGNAL \incdecdutytest|Add0~10_combout\ : std_logic;
SIGNAL \incdecdutytest|Add1~10_combout\ : std_logic;
SIGNAL \incdecdutytest|duty_sig[5]~31_combout\ : std_logic;
SIGNAL \incdecdutytest|duty[5]~10_combout\ : std_logic;
SIGNAL \incdecdutytest|duty[5]~_emulated_q\ : std_logic;
SIGNAL \incdecdutytest|duty[5]~9_combout\ : std_logic;
SIGNAL \incdecdutytest|LessThan1~1_combout\ : std_logic;
SIGNAL \incdecdutytest|Add0~4_combout\ : std_logic;
SIGNAL \incdecdutytest|duty_sig[2]~26_combout\ : std_logic;
SIGNAL \incdecdutytest|Add1~3\ : std_logic;
SIGNAL \incdecdutytest|Add1~4_combout\ : std_logic;
SIGNAL \incdecdutytest|duty_sig[2]~36_combout\ : std_logic;
SIGNAL \incdecdutytest|duty[2]~16_combout\ : std_logic;
SIGNAL \incdecdutytest|duty[2]~_emulated_q\ : std_logic;
SIGNAL \incdecdutytest|duty[2]~15_combout\ : std_logic;
SIGNAL \incdecdutytest|Add1~5\ : std_logic;
SIGNAL \incdecdutytest|Add1~6_combout\ : std_logic;
SIGNAL \incdecdutytest|duty_sig[3]~33_combout\ : std_logic;
SIGNAL \incdecdutytest|duty_sig[3]~35_combout\ : std_logic;
SIGNAL \incdecdutytest|Add0~6_combout\ : std_logic;
SIGNAL \incdecdutytest|duty_sig[3]~34_combout\ : std_logic;
SIGNAL \incdecdutytest|duty[3]~14_combout\ : std_logic;
SIGNAL \incdecdutytest|duty[3]~_emulated_q\ : std_logic;
SIGNAL \incdecdutytest|duty[3]~13_combout\ : std_logic;
SIGNAL \PWMtest|Add5~0_combout\ : std_logic;
SIGNAL \PWMtest|Selector34~0_combout\ : std_logic;
SIGNAL \PWMtest|countactual1[0]~33_combout\ : std_logic;
SIGNAL \PWMtest|Selector39~0_combout\ : std_logic;
SIGNAL \PWMtest|est_act.idle~feeder_combout\ : std_logic;
SIGNAL \PWMtest|est_act.idle~q\ : std_logic;
SIGNAL \PWMtest|Add5~19\ : std_logic;
SIGNAL \PWMtest|Add5~20_combout\ : std_logic;
SIGNAL \PWMtest|Selector24~0_combout\ : std_logic;
SIGNAL \PWMtest|LessThan2~0_combout\ : std_logic;
SIGNAL \PWMtest|LessThan2~2_combout\ : std_logic;
SIGNAL \PWMtest|LessThan3~7_combout\ : std_logic;
SIGNAL \PWMtest|LessThan2~1_combout\ : std_logic;
SIGNAL \PWMtest|est_sig~8_combout\ : std_logic;
SIGNAL \PWMtest|LessThan3~5_combout\ : std_logic;
SIGNAL \PWMtest|LessThan3~1_combout\ : std_logic;
SIGNAL \PWMtest|LessThan3~0_combout\ : std_logic;
SIGNAL \PWMtest|LessThan3~2_combout\ : std_logic;
SIGNAL \PWMtest|LessThan3~3_combout\ : std_logic;
SIGNAL \PWMtest|LessThan3~4_combout\ : std_logic;
SIGNAL \PWMtest|LessThan3~6_combout\ : std_logic;
SIGNAL \PWMtest|est_sig~9_combout\ : std_logic;
SIGNAL \PWMtest|Selector38~0_combout\ : std_logic;
SIGNAL \PWMtest|Selector38~1_combout\ : std_logic;
SIGNAL \PWMtest|Add5~7\ : std_logic;
SIGNAL \PWMtest|Add5~8_combout\ : std_logic;
SIGNAL \PWMtest|Selector30~0_combout\ : std_logic;
SIGNAL \PWMtest|Add5~9\ : std_logic;
SIGNAL \PWMtest|Add5~10_combout\ : std_logic;
SIGNAL \PWMtest|Selector29~0_combout\ : std_logic;
SIGNAL \PWMtest|Add5~11\ : std_logic;
SIGNAL \PWMtest|Add5~12_combout\ : std_logic;
SIGNAL \PWMtest|Selector28~0_combout\ : std_logic;
SIGNAL \PWMtest|Add1~1_cout\ : std_logic;
SIGNAL \PWMtest|Add1~3\ : std_logic;
SIGNAL \PWMtest|Add1~5\ : std_logic;
SIGNAL \PWMtest|Add1~7\ : std_logic;
SIGNAL \PWMtest|Add1~9\ : std_logic;
SIGNAL \PWMtest|Add1~11\ : std_logic;
SIGNAL \PWMtest|Add1~13\ : std_logic;
SIGNAL \PWMtest|Add1~15\ : std_logic;
SIGNAL \PWMtest|Add1~17\ : std_logic;
SIGNAL \PWMtest|Add1~19\ : std_logic;
SIGNAL \PWMtest|Add1~21\ : std_logic;
SIGNAL \PWMtest|Add1~23\ : std_logic;
SIGNAL \PWMtest|Add1~25\ : std_logic;
SIGNAL \PWMtest|Add1~27\ : std_logic;
SIGNAL \PWMtest|Add1~29\ : std_logic;
SIGNAL \PWMtest|Add1~31\ : std_logic;
SIGNAL \PWMtest|Add1~33\ : std_logic;
SIGNAL \PWMtest|Add1~35\ : std_logic;
SIGNAL \PWMtest|Add1~37\ : std_logic;
SIGNAL \PWMtest|Add1~39\ : std_logic;
SIGNAL \PWMtest|Add1~41\ : std_logic;
SIGNAL \PWMtest|Add1~43\ : std_logic;
SIGNAL \PWMtest|Add1~45\ : std_logic;
SIGNAL \PWMtest|Add1~47\ : std_logic;
SIGNAL \PWMtest|Add1~49\ : std_logic;
SIGNAL \PWMtest|Add1~51\ : std_logic;
SIGNAL \PWMtest|Add1~53\ : std_logic;
SIGNAL \PWMtest|Add1~55\ : std_logic;
SIGNAL \PWMtest|Add1~57\ : std_logic;
SIGNAL \PWMtest|Add1~59\ : std_logic;
SIGNAL \PWMtest|Add1~60_combout\ : std_logic;
SIGNAL \PWMtest|Add1~58_combout\ : std_logic;
SIGNAL \PWMtest|Add1~56_combout\ : std_logic;
SIGNAL \PWMtest|Add1~54_combout\ : std_logic;
SIGNAL \PWMtest|Add1~52_combout\ : std_logic;
SIGNAL \PWMtest|Add1~50_combout\ : std_logic;
SIGNAL \PWMtest|Add1~48_combout\ : std_logic;
SIGNAL \PWMtest|Add1~46_combout\ : std_logic;
SIGNAL \PWMtest|Add1~44_combout\ : std_logic;
SIGNAL \PWMtest|Add1~42_combout\ : std_logic;
SIGNAL \PWMtest|Add1~40_combout\ : std_logic;
SIGNAL \PWMtest|Add1~38_combout\ : std_logic;
SIGNAL \PWMtest|Add1~36_combout\ : std_logic;
SIGNAL \PWMtest|Add1~34_combout\ : std_logic;
SIGNAL \PWMtest|Add1~32_combout\ : std_logic;
SIGNAL \PWMtest|Add1~30_combout\ : std_logic;
SIGNAL \PWMtest|Add1~28_combout\ : std_logic;
SIGNAL \PWMtest|Add1~26_combout\ : std_logic;
SIGNAL \PWMtest|Add1~24_combout\ : std_logic;
SIGNAL \PWMtest|Add1~22_combout\ : std_logic;
SIGNAL \PWMtest|Add1~20_combout\ : std_logic;
SIGNAL \PWMtest|Add1~18_combout\ : std_logic;
SIGNAL \PWMtest|Add1~16_combout\ : std_logic;
SIGNAL \PWMtest|Add1~14_combout\ : std_logic;
SIGNAL \PWMtest|Add1~12_combout\ : std_logic;
SIGNAL \PWMtest|Add1~10_combout\ : std_logic;
SIGNAL \PWMtest|Add1~8_combout\ : std_logic;
SIGNAL \PWMtest|Add1~6_combout\ : std_logic;
SIGNAL \PWMtest|Add1~4_combout\ : std_logic;
SIGNAL \PWMtest|Add1~2_combout\ : std_logic;
SIGNAL \PWMtest|LessThan0~1_cout\ : std_logic;
SIGNAL \PWMtest|LessThan0~3_cout\ : std_logic;
SIGNAL \PWMtest|LessThan0~5_cout\ : std_logic;
SIGNAL \PWMtest|LessThan0~7_cout\ : std_logic;
SIGNAL \PWMtest|LessThan0~9_cout\ : std_logic;
SIGNAL \PWMtest|LessThan0~11_cout\ : std_logic;
SIGNAL \PWMtest|LessThan0~13_cout\ : std_logic;
SIGNAL \PWMtest|LessThan0~15_cout\ : std_logic;
SIGNAL \PWMtest|LessThan0~17_cout\ : std_logic;
SIGNAL \PWMtest|LessThan0~19_cout\ : std_logic;
SIGNAL \PWMtest|LessThan0~21_cout\ : std_logic;
SIGNAL \PWMtest|LessThan0~23_cout\ : std_logic;
SIGNAL \PWMtest|LessThan0~25_cout\ : std_logic;
SIGNAL \PWMtest|LessThan0~27_cout\ : std_logic;
SIGNAL \PWMtest|LessThan0~29_cout\ : std_logic;
SIGNAL \PWMtest|LessThan0~31_cout\ : std_logic;
SIGNAL \PWMtest|LessThan0~33_cout\ : std_logic;
SIGNAL \PWMtest|LessThan0~35_cout\ : std_logic;
SIGNAL \PWMtest|LessThan0~37_cout\ : std_logic;
SIGNAL \PWMtest|LessThan0~39_cout\ : std_logic;
SIGNAL \PWMtest|LessThan0~41_cout\ : std_logic;
SIGNAL \PWMtest|LessThan0~43_cout\ : std_logic;
SIGNAL \PWMtest|LessThan0~45_cout\ : std_logic;
SIGNAL \PWMtest|LessThan0~47_cout\ : std_logic;
SIGNAL \PWMtest|LessThan0~49_cout\ : std_logic;
SIGNAL \PWMtest|LessThan0~51_cout\ : std_logic;
SIGNAL \PWMtest|LessThan0~53_cout\ : std_logic;
SIGNAL \PWMtest|LessThan0~55_cout\ : std_logic;
SIGNAL \PWMtest|LessThan0~57_cout\ : std_logic;
SIGNAL \PWMtest|LessThan0~59_cout\ : std_logic;
SIGNAL \PWMtest|LessThan0~61_cout\ : std_logic;
SIGNAL \PWMtest|LessThan0~62_combout\ : std_logic;
SIGNAL \PWMtest|Add3~1_cout\ : std_logic;
SIGNAL \PWMtest|Add3~3\ : std_logic;
SIGNAL \PWMtest|Add3~5\ : std_logic;
SIGNAL \PWMtest|Add3~7\ : std_logic;
SIGNAL \PWMtest|Add3~9\ : std_logic;
SIGNAL \PWMtest|Add3~11\ : std_logic;
SIGNAL \PWMtest|Add3~13\ : std_logic;
SIGNAL \PWMtest|Add3~15\ : std_logic;
SIGNAL \PWMtest|Add3~17\ : std_logic;
SIGNAL \PWMtest|Add3~19\ : std_logic;
SIGNAL \PWMtest|Add3~21\ : std_logic;
SIGNAL \PWMtest|Add3~23\ : std_logic;
SIGNAL \PWMtest|Add3~25\ : std_logic;
SIGNAL \PWMtest|Add3~27\ : std_logic;
SIGNAL \PWMtest|Add3~29\ : std_logic;
SIGNAL \PWMtest|Add3~31\ : std_logic;
SIGNAL \PWMtest|Add3~33\ : std_logic;
SIGNAL \PWMtest|Add3~35\ : std_logic;
SIGNAL \PWMtest|Add3~37\ : std_logic;
SIGNAL \PWMtest|Add3~39\ : std_logic;
SIGNAL \PWMtest|Add3~41\ : std_logic;
SIGNAL \PWMtest|Add3~43\ : std_logic;
SIGNAL \PWMtest|Add3~45\ : std_logic;
SIGNAL \PWMtest|Add3~47\ : std_logic;
SIGNAL \PWMtest|Add3~49\ : std_logic;
SIGNAL \PWMtest|Add3~51\ : std_logic;
SIGNAL \PWMtest|Add3~53\ : std_logic;
SIGNAL \PWMtest|Add3~54_combout\ : std_logic;
SIGNAL \PWMtest|Add3~52_combout\ : std_logic;
SIGNAL \PWMtest|Add3~50_combout\ : std_logic;
SIGNAL \PWMtest|Add3~48_combout\ : std_logic;
SIGNAL \PWMtest|Add3~46_combout\ : std_logic;
SIGNAL \PWMtest|Add3~44_combout\ : std_logic;
SIGNAL \PWMtest|Add3~42_combout\ : std_logic;
SIGNAL \PWMtest|Add3~40_combout\ : std_logic;
SIGNAL \PWMtest|Add3~38_combout\ : std_logic;
SIGNAL \PWMtest|Add3~36_combout\ : std_logic;
SIGNAL \PWMtest|Add3~34_combout\ : std_logic;
SIGNAL \PWMtest|Add3~32_combout\ : std_logic;
SIGNAL \PWMtest|Add3~30_combout\ : std_logic;
SIGNAL \PWMtest|Add3~28_combout\ : std_logic;
SIGNAL \PWMtest|Add3~26_combout\ : std_logic;
SIGNAL \PWMtest|Add3~24_combout\ : std_logic;
SIGNAL \PWMtest|Add3~22_combout\ : std_logic;
SIGNAL \PWMtest|Add3~20_combout\ : std_logic;
SIGNAL \PWMtest|Add3~18_combout\ : std_logic;
SIGNAL \PWMtest|Add3~16_combout\ : std_logic;
SIGNAL \PWMtest|Add3~14_combout\ : std_logic;
SIGNAL \PWMtest|Add3~12_combout\ : std_logic;
SIGNAL \PWMtest|Add3~10_combout\ : std_logic;
SIGNAL \PWMtest|Add3~8_combout\ : std_logic;
SIGNAL \PWMtest|Add3~6_combout\ : std_logic;
SIGNAL \PWMtest|Add3~4_combout\ : std_logic;
SIGNAL \PWMtest|Add3~2_combout\ : std_logic;
SIGNAL \PWMtest|LessThan1~1_cout\ : std_logic;
SIGNAL \PWMtest|LessThan1~3_cout\ : std_logic;
SIGNAL \PWMtest|LessThan1~5_cout\ : std_logic;
SIGNAL \PWMtest|LessThan1~7_cout\ : std_logic;
SIGNAL \PWMtest|LessThan1~9_cout\ : std_logic;
SIGNAL \PWMtest|LessThan1~11_cout\ : std_logic;
SIGNAL \PWMtest|LessThan1~13_cout\ : std_logic;
SIGNAL \PWMtest|LessThan1~15_cout\ : std_logic;
SIGNAL \PWMtest|LessThan1~17_cout\ : std_logic;
SIGNAL \PWMtest|LessThan1~19_cout\ : std_logic;
SIGNAL \PWMtest|LessThan1~21_cout\ : std_logic;
SIGNAL \PWMtest|LessThan1~23_cout\ : std_logic;
SIGNAL \PWMtest|LessThan1~25_cout\ : std_logic;
SIGNAL \PWMtest|LessThan1~27_cout\ : std_logic;
SIGNAL \PWMtest|LessThan1~29_cout\ : std_logic;
SIGNAL \PWMtest|LessThan1~31_cout\ : std_logic;
SIGNAL \PWMtest|LessThan1~33_cout\ : std_logic;
SIGNAL \PWMtest|LessThan1~35_cout\ : std_logic;
SIGNAL \PWMtest|LessThan1~37_cout\ : std_logic;
SIGNAL \PWMtest|LessThan1~39_cout\ : std_logic;
SIGNAL \PWMtest|LessThan1~41_cout\ : std_logic;
SIGNAL \PWMtest|LessThan1~43_cout\ : std_logic;
SIGNAL \PWMtest|LessThan1~45_cout\ : std_logic;
SIGNAL \PWMtest|LessThan1~47_cout\ : std_logic;
SIGNAL \PWMtest|LessThan1~49_cout\ : std_logic;
SIGNAL \PWMtest|LessThan1~51_cout\ : std_logic;
SIGNAL \PWMtest|LessThan1~53_cout\ : std_logic;
SIGNAL \PWMtest|LessThan1~55_cout\ : std_logic;
SIGNAL \PWMtest|LessThan1~57_cout\ : std_logic;
SIGNAL \PWMtest|LessThan1~59_cout\ : std_logic;
SIGNAL \PWMtest|LessThan1~61_cout\ : std_logic;
SIGNAL \PWMtest|LessThan1~62_combout\ : std_logic;
SIGNAL \PWMtest|Selector38~2_combout\ : std_logic;
SIGNAL \PWMtest|est_act.boost1softs~q\ : std_logic;
SIGNAL \PWMtest|Selector36~0_combout\ : std_logic;
SIGNAL \PWMtest|Selector36~1_combout\ : std_logic;
SIGNAL \PWMtest|est_act.buck1~q\ : std_logic;
SIGNAL \PWMtest|Selector1~2_combout\ : std_logic;
SIGNAL \PWMtest|softstart_duty_act[11]~6_combout\ : std_logic;
SIGNAL \PWMtest|softstart_duty_act[11]~3_combout\ : std_logic;
SIGNAL \PWMtest|Selector37~1_combout\ : std_logic;
SIGNAL \PWMtest|Selector37~2_combout\ : std_logic;
SIGNAL \PWMtest|Selector37~3_combout\ : std_logic;
SIGNAL \PWMtest|softstart_duty_act[11]~4_combout\ : std_logic;
SIGNAL \PWMtest|softstart_duty_act[11]~10_combout\ : std_logic;
SIGNAL \PWMtest|Add5~21\ : std_logic;
SIGNAL \PWMtest|Add5~22_combout\ : std_logic;
SIGNAL \PWMtest|Selector23~0_combout\ : std_logic;
SIGNAL \PWMtest|Add5~23\ : std_logic;
SIGNAL \PWMtest|Add5~24_combout\ : std_logic;
SIGNAL \PWMtest|Selector22~0_combout\ : std_logic;
SIGNAL \PWMtest|Add5~25\ : std_logic;
SIGNAL \PWMtest|Add5~26_combout\ : std_logic;
SIGNAL \PWMtest|Selector21~0_combout\ : std_logic;
SIGNAL \PWMtest|Add5~27\ : std_logic;
SIGNAL \PWMtest|Add5~28_combout\ : std_logic;
SIGNAL \PWMtest|Selector20~0_combout\ : std_logic;
SIGNAL \PWMtest|Add5~29\ : std_logic;
SIGNAL \PWMtest|Add5~30_combout\ : std_logic;
SIGNAL \PWMtest|Selector19~0_combout\ : std_logic;
SIGNAL \PWMtest|Add5~31\ : std_logic;
SIGNAL \PWMtest|Add5~32_combout\ : std_logic;
SIGNAL \PWMtest|Selector18~0_combout\ : std_logic;
SIGNAL \PWMtest|Add5~33\ : std_logic;
SIGNAL \PWMtest|Add5~34_combout\ : std_logic;
SIGNAL \PWMtest|Selector17~0_combout\ : std_logic;
SIGNAL \PWMtest|Add5~35\ : std_logic;
SIGNAL \PWMtest|Add5~36_combout\ : std_logic;
SIGNAL \PWMtest|Selector16~0_combout\ : std_logic;
SIGNAL \PWMtest|Add5~37\ : std_logic;
SIGNAL \PWMtest|Add5~38_combout\ : std_logic;
SIGNAL \PWMtest|Selector15~0_combout\ : std_logic;
SIGNAL \PWMtest|Add5~39\ : std_logic;
SIGNAL \PWMtest|Add5~40_combout\ : std_logic;
SIGNAL \PWMtest|Selector14~0_combout\ : std_logic;
SIGNAL \PWMtest|Add5~41\ : std_logic;
SIGNAL \PWMtest|Add5~42_combout\ : std_logic;
SIGNAL \PWMtest|Selector13~0_combout\ : std_logic;
SIGNAL \PWMtest|Add5~43\ : std_logic;
SIGNAL \PWMtest|Add5~44_combout\ : std_logic;
SIGNAL \PWMtest|Selector12~0_combout\ : std_logic;
SIGNAL \PWMtest|Add5~45\ : std_logic;
SIGNAL \PWMtest|Add5~46_combout\ : std_logic;
SIGNAL \PWMtest|Selector11~0_combout\ : std_logic;
SIGNAL \PWMtest|Add5~47\ : std_logic;
SIGNAL \PWMtest|Add5~48_combout\ : std_logic;
SIGNAL \PWMtest|Selector10~0_combout\ : std_logic;
SIGNAL \PWMtest|Add5~49\ : std_logic;
SIGNAL \PWMtest|Add5~50_combout\ : std_logic;
SIGNAL \PWMtest|Selector9~0_combout\ : std_logic;
SIGNAL \PWMtest|Add5~51\ : std_logic;
SIGNAL \PWMtest|Add5~52_combout\ : std_logic;
SIGNAL \PWMtest|Selector8~0_combout\ : std_logic;
SIGNAL \PWMtest|Add5~53\ : std_logic;
SIGNAL \PWMtest|Add5~54_combout\ : std_logic;
SIGNAL \PWMtest|Selector7~0_combout\ : std_logic;
SIGNAL \PWMtest|Add5~55\ : std_logic;
SIGNAL \PWMtest|Add5~56_combout\ : std_logic;
SIGNAL \PWMtest|Selector6~0_combout\ : std_logic;
SIGNAL \PWMtest|Add5~57\ : std_logic;
SIGNAL \PWMtest|Add5~58_combout\ : std_logic;
SIGNAL \PWMtest|Selector5~0_combout\ : std_logic;
SIGNAL \PWMtest|Add5~59\ : std_logic;
SIGNAL \PWMtest|Add5~60_combout\ : std_logic;
SIGNAL \PWMtest|Selector4~0_combout\ : std_logic;
SIGNAL \PWMtest|LessThan7~1_cout\ : std_logic;
SIGNAL \PWMtest|LessThan7~3_cout\ : std_logic;
SIGNAL \PWMtest|LessThan7~5_cout\ : std_logic;
SIGNAL \PWMtest|LessThan7~7_cout\ : std_logic;
SIGNAL \PWMtest|LessThan7~9_cout\ : std_logic;
SIGNAL \PWMtest|LessThan7~11_cout\ : std_logic;
SIGNAL \PWMtest|LessThan7~13_cout\ : std_logic;
SIGNAL \PWMtest|LessThan7~15_cout\ : std_logic;
SIGNAL \PWMtest|LessThan7~17_cout\ : std_logic;
SIGNAL \PWMtest|LessThan7~19_cout\ : std_logic;
SIGNAL \PWMtest|LessThan7~21_cout\ : std_logic;
SIGNAL \PWMtest|LessThan7~23_cout\ : std_logic;
SIGNAL \PWMtest|LessThan7~25_cout\ : std_logic;
SIGNAL \PWMtest|LessThan7~27_cout\ : std_logic;
SIGNAL \PWMtest|LessThan7~29_cout\ : std_logic;
SIGNAL \PWMtest|LessThan7~31_cout\ : std_logic;
SIGNAL \PWMtest|LessThan7~33_cout\ : std_logic;
SIGNAL \PWMtest|LessThan7~35_cout\ : std_logic;
SIGNAL \PWMtest|LessThan7~37_cout\ : std_logic;
SIGNAL \PWMtest|LessThan7~39_cout\ : std_logic;
SIGNAL \PWMtest|LessThan7~41_cout\ : std_logic;
SIGNAL \PWMtest|LessThan7~43_cout\ : std_logic;
SIGNAL \PWMtest|LessThan7~45_cout\ : std_logic;
SIGNAL \PWMtest|LessThan7~47_cout\ : std_logic;
SIGNAL \PWMtest|LessThan7~49_cout\ : std_logic;
SIGNAL \PWMtest|LessThan7~51_cout\ : std_logic;
SIGNAL \PWMtest|LessThan7~53_cout\ : std_logic;
SIGNAL \PWMtest|LessThan7~55_cout\ : std_logic;
SIGNAL \PWMtest|LessThan7~57_cout\ : std_logic;
SIGNAL \PWMtest|LessThan7~59_cout\ : std_logic;
SIGNAL \PWMtest|LessThan7~61_cout\ : std_logic;
SIGNAL \PWMtest|LessThan7~62_combout\ : std_logic;
SIGNAL \PWMtest|Selector39~1_combout\ : std_logic;
SIGNAL \PWMtest|Selector39~2_combout\ : std_logic;
SIGNAL \PWMtest|Selector39~3_combout\ : std_logic;
SIGNAL \PWMtest|est_act.boost2softs~q\ : std_logic;
SIGNAL \PWMtest|countactual1[24]~32_combout\ : std_logic;
SIGNAL \PWMtest|countactual1[24]~53_combout\ : std_logic;
SIGNAL \PWMtest|countactual1[0]~34\ : std_logic;
SIGNAL \PWMtest|countactual1[1]~35_combout\ : std_logic;
SIGNAL \PWMtest|countactual1[1]~36\ : std_logic;
SIGNAL \PWMtest|countactual1[2]~37_combout\ : std_logic;
SIGNAL \PWMtest|countactual1[2]~38\ : std_logic;
SIGNAL \PWMtest|countactual1[3]~39_combout\ : std_logic;
SIGNAL \PWMtest|countactual1[3]~40\ : std_logic;
SIGNAL \PWMtest|countactual1[4]~41_combout\ : std_logic;
SIGNAL \PWMtest|countactual1[4]~42\ : std_logic;
SIGNAL \PWMtest|countactual1[5]~43_combout\ : std_logic;
SIGNAL \PWMtest|countactual1[5]~44\ : std_logic;
SIGNAL \PWMtest|countactual1[6]~45_combout\ : std_logic;
SIGNAL \PWMtest|countactual1[6]~46\ : std_logic;
SIGNAL \PWMtest|countactual1[7]~47_combout\ : std_logic;
SIGNAL \PWMtest|countactual1[7]~48\ : std_logic;
SIGNAL \PWMtest|countactual1[8]~49_combout\ : std_logic;
SIGNAL \PWMtest|countactual1[8]~50\ : std_logic;
SIGNAL \PWMtest|countactual1[9]~51_combout\ : std_logic;
SIGNAL \PWMtest|countactual1[9]~52\ : std_logic;
SIGNAL \PWMtest|countactual1[10]~54_combout\ : std_logic;
SIGNAL \PWMtest|countactual1[10]~55\ : std_logic;
SIGNAL \PWMtest|countactual1[11]~56_combout\ : std_logic;
SIGNAL \PWMtest|countactual1[11]~57\ : std_logic;
SIGNAL \PWMtest|countactual1[12]~58_combout\ : std_logic;
SIGNAL \PWMtest|countactual1[12]~59\ : std_logic;
SIGNAL \PWMtest|countactual1[13]~60_combout\ : std_logic;
SIGNAL \PWMtest|countactual1[13]~61\ : std_logic;
SIGNAL \PWMtest|countactual1[14]~62_combout\ : std_logic;
SIGNAL \PWMtest|countactual1[14]~63\ : std_logic;
SIGNAL \PWMtest|countactual1[15]~64_combout\ : std_logic;
SIGNAL \PWMtest|countactual1[15]~65\ : std_logic;
SIGNAL \PWMtest|countactual1[16]~66_combout\ : std_logic;
SIGNAL \PWMtest|countactual1[16]~67\ : std_logic;
SIGNAL \PWMtest|countactual1[17]~68_combout\ : std_logic;
SIGNAL \PWMtest|countactual1[17]~69\ : std_logic;
SIGNAL \PWMtest|countactual1[18]~70_combout\ : std_logic;
SIGNAL \PWMtest|countactual1[18]~71\ : std_logic;
SIGNAL \PWMtest|countactual1[19]~72_combout\ : std_logic;
SIGNAL \PWMtest|countactual1[19]~73\ : std_logic;
SIGNAL \PWMtest|countactual1[20]~74_combout\ : std_logic;
SIGNAL \PWMtest|countactual1[20]~75\ : std_logic;
SIGNAL \PWMtest|countactual1[21]~76_combout\ : std_logic;
SIGNAL \PWMtest|countactual1[21]~77\ : std_logic;
SIGNAL \PWMtest|countactual1[22]~78_combout\ : std_logic;
SIGNAL \PWMtest|countactual1[22]~79\ : std_logic;
SIGNAL \PWMtest|countactual1[23]~80_combout\ : std_logic;
SIGNAL \PWMtest|countactual1[23]~81\ : std_logic;
SIGNAL \PWMtest|countactual1[24]~82_combout\ : std_logic;
SIGNAL \PWMtest|countactual1[24]~83\ : std_logic;
SIGNAL \PWMtest|countactual1[25]~84_combout\ : std_logic;
SIGNAL \PWMtest|countactual1[25]~85\ : std_logic;
SIGNAL \PWMtest|countactual1[26]~86_combout\ : std_logic;
SIGNAL \PWMtest|countactual1[26]~87\ : std_logic;
SIGNAL \PWMtest|countactual1[27]~88_combout\ : std_logic;
SIGNAL \PWMtest|countactual1[27]~89\ : std_logic;
SIGNAL \PWMtest|countactual1[28]~90_combout\ : std_logic;
SIGNAL \PWMtest|countactual1[28]~91\ : std_logic;
SIGNAL \PWMtest|countactual1[29]~92_combout\ : std_logic;
SIGNAL \PWMtest|countactual1[29]~93\ : std_logic;
SIGNAL \PWMtest|countactual1[30]~94_combout\ : std_logic;
SIGNAL \PWMtest|countactual1[30]~95\ : std_logic;
SIGNAL \PWMtest|countactual1[31]~96_combout\ : std_logic;
SIGNAL \PWMtest|Selector37~4_combout\ : std_logic;
SIGNAL \PWMtest|LessThan8~0_combout\ : std_logic;
SIGNAL \PWMtest|Selector41~0_combout\ : std_logic;
SIGNAL \PWMtest|Selector41~1_combout\ : std_logic;
SIGNAL \PWMtest|Selector41~2_combout\ : std_logic;
SIGNAL \PWMtest|est_act.boost2~q\ : std_logic;
SIGNAL \PWMtest|Selector37~5_combout\ : std_logic;
SIGNAL \PWMtest|Selector37~6_combout\ : std_logic;
SIGNAL \PWMtest|Selector37~7_combout\ : std_logic;
SIGNAL \PWMtest|Selector37~8_combout\ : std_logic;
SIGNAL \PWMtest|Selector37~9_combout\ : std_logic;
SIGNAL \PWMtest|Selector37~10_combout\ : std_logic;
SIGNAL \PWMtest|est_act.buck2~q\ : std_logic;
SIGNAL \PWMtest|softstart_duty_act[3]~5_combout\ : std_logic;
SIGNAL \PWMtest|softstart_duty_act[3]~9_combout\ : std_logic;
SIGNAL \PWMtest|Add5~1\ : std_logic;
SIGNAL \PWMtest|Add5~2_combout\ : std_logic;
SIGNAL \PWMtest|Selector33~0_combout\ : std_logic;
SIGNAL \PWMtest|Add5~3\ : std_logic;
SIGNAL \PWMtest|Add5~4_combout\ : std_logic;
SIGNAL \PWMtest|Selector32~0_combout\ : std_logic;
SIGNAL \PWMtest|Add5~5\ : std_logic;
SIGNAL \PWMtest|Add5~6_combout\ : std_logic;
SIGNAL \PWMtest|Selector31~0_combout\ : std_logic;
SIGNAL \PWMtest|LessThan5~0_combout\ : std_logic;
SIGNAL \PWMtest|LessThan5~1_combout\ : std_logic;
SIGNAL \PWMtest|LessThan5~2_combout\ : std_logic;
SIGNAL \PWMtest|LessThan5~3_combout\ : std_logic;
SIGNAL \PWMtest|softstart_duty_act[3]~8_combout\ : std_logic;
SIGNAL \PWMtest|Add5~13\ : std_logic;
SIGNAL \PWMtest|Add5~14_combout\ : std_logic;
SIGNAL \PWMtest|Selector27~0_combout\ : std_logic;
SIGNAL \PWMtest|Add5~15\ : std_logic;
SIGNAL \PWMtest|Add5~17\ : std_logic;
SIGNAL \PWMtest|Add5~18_combout\ : std_logic;
SIGNAL \PWMtest|Selector25~0_combout\ : std_logic;
SIGNAL \PWMtest|LessThan4~5_combout\ : std_logic;
SIGNAL \PWMtest|LessThan4~3_combout\ : std_logic;
SIGNAL \PWMtest|LessThan4~0_combout\ : std_logic;
SIGNAL \PWMtest|LessThan4~2_combout\ : std_logic;
SIGNAL \PWMtest|LessThan4~1_combout\ : std_logic;
SIGNAL \PWMtest|LessThan4~4_combout\ : std_logic;
SIGNAL \PWMtest|LessThan4~6_combout\ : std_logic;
SIGNAL \PWMtest|softstart_duty_act[3]~7_combout\ : std_logic;
SIGNAL \PWMtest|Add5~16_combout\ : std_logic;
SIGNAL \PWMtest|Selector26~0_combout\ : std_logic;
SIGNAL \PWMtest|LessThan4~8_cout\ : std_logic;
SIGNAL \PWMtest|LessThan4~10_cout\ : std_logic;
SIGNAL \PWMtest|LessThan4~12_cout\ : std_logic;
SIGNAL \PWMtest|LessThan4~14_cout\ : std_logic;
SIGNAL \PWMtest|LessThan4~16_cout\ : std_logic;
SIGNAL \PWMtest|LessThan4~18_cout\ : std_logic;
SIGNAL \PWMtest|LessThan4~20_cout\ : std_logic;
SIGNAL \PWMtest|LessThan4~22_cout\ : std_logic;
SIGNAL \PWMtest|LessThan4~23_combout\ : std_logic;
SIGNAL \PWMtest|softstart_duty_act[11]~2_combout\ : std_logic;
SIGNAL \PWMtest|Add5~61\ : std_logic;
SIGNAL \PWMtest|Add5~62_combout\ : std_logic;
SIGNAL \PWMtest|Selector3~0_combout\ : std_logic;
SIGNAL \PWMtest|Add6~1\ : std_logic;
SIGNAL \PWMtest|Add6~3\ : std_logic;
SIGNAL \PWMtest|Add6~5\ : std_logic;
SIGNAL \PWMtest|Add6~7\ : std_logic;
SIGNAL \PWMtest|Add6~9\ : std_logic;
SIGNAL \PWMtest|Add6~11\ : std_logic;
SIGNAL \PWMtest|Add6~13\ : std_logic;
SIGNAL \PWMtest|Add6~15\ : std_logic;
SIGNAL \PWMtest|Add6~17\ : std_logic;
SIGNAL \PWMtest|Add6~19\ : std_logic;
SIGNAL \PWMtest|Add6~21\ : std_logic;
SIGNAL \PWMtest|Add6~23\ : std_logic;
SIGNAL \PWMtest|Add6~25\ : std_logic;
SIGNAL \PWMtest|Add6~27\ : std_logic;
SIGNAL \PWMtest|Add6~29\ : std_logic;
SIGNAL \PWMtest|Add6~31\ : std_logic;
SIGNAL \PWMtest|Add6~33\ : std_logic;
SIGNAL \PWMtest|Add6~35\ : std_logic;
SIGNAL \PWMtest|Add6~37\ : std_logic;
SIGNAL \PWMtest|Add6~39\ : std_logic;
SIGNAL \PWMtest|Add6~41\ : std_logic;
SIGNAL \PWMtest|Add6~43\ : std_logic;
SIGNAL \PWMtest|Add6~45\ : std_logic;
SIGNAL \PWMtest|Add6~47\ : std_logic;
SIGNAL \PWMtest|Add6~49\ : std_logic;
SIGNAL \PWMtest|Add6~51\ : std_logic;
SIGNAL \PWMtest|Add6~53\ : std_logic;
SIGNAL \PWMtest|Add6~55\ : std_logic;
SIGNAL \PWMtest|Add6~57\ : std_logic;
SIGNAL \PWMtest|Add6~59\ : std_logic;
SIGNAL \PWMtest|Add6~60_combout\ : std_logic;
SIGNAL \PWMtest|Add6~58_combout\ : std_logic;
SIGNAL \PWMtest|Add6~56_combout\ : std_logic;
SIGNAL \PWMtest|Add6~54_combout\ : std_logic;
SIGNAL \PWMtest|Add6~52_combout\ : std_logic;
SIGNAL \PWMtest|Add6~50_combout\ : std_logic;
SIGNAL \PWMtest|Add6~48_combout\ : std_logic;
SIGNAL \PWMtest|Add6~46_combout\ : std_logic;
SIGNAL \PWMtest|Add6~44_combout\ : std_logic;
SIGNAL \PWMtest|Add6~42_combout\ : std_logic;
SIGNAL \PWMtest|Add6~40_combout\ : std_logic;
SIGNAL \PWMtest|Add6~38_combout\ : std_logic;
SIGNAL \PWMtest|Add6~36_combout\ : std_logic;
SIGNAL \PWMtest|Add6~34_combout\ : std_logic;
SIGNAL \PWMtest|Add6~32_combout\ : std_logic;
SIGNAL \PWMtest|Add6~30_combout\ : std_logic;
SIGNAL \PWMtest|Add6~28_combout\ : std_logic;
SIGNAL \PWMtest|Add6~26_combout\ : std_logic;
SIGNAL \PWMtest|Add6~24_combout\ : std_logic;
SIGNAL \PWMtest|Add6~22_combout\ : std_logic;
SIGNAL \PWMtest|Add6~20_combout\ : std_logic;
SIGNAL \PWMtest|Add6~18_combout\ : std_logic;
SIGNAL \PWMtest|Add6~16_combout\ : std_logic;
SIGNAL \PWMtest|Add6~14_combout\ : std_logic;
SIGNAL \PWMtest|Add6~12_combout\ : std_logic;
SIGNAL \PWMtest|Add6~10_combout\ : std_logic;
SIGNAL \PWMtest|Add6~8_combout\ : std_logic;
SIGNAL \PWMtest|Add6~6_combout\ : std_logic;
SIGNAL \PWMtest|Add6~4_combout\ : std_logic;
SIGNAL \PWMtest|Add6~2_combout\ : std_logic;
SIGNAL \PWMtest|Add6~0_combout\ : std_logic;
SIGNAL \PWMtest|LessThan6~1_cout\ : std_logic;
SIGNAL \PWMtest|LessThan6~3_cout\ : std_logic;
SIGNAL \PWMtest|LessThan6~5_cout\ : std_logic;
SIGNAL \PWMtest|LessThan6~7_cout\ : std_logic;
SIGNAL \PWMtest|LessThan6~9_cout\ : std_logic;
SIGNAL \PWMtest|LessThan6~11_cout\ : std_logic;
SIGNAL \PWMtest|LessThan6~13_cout\ : std_logic;
SIGNAL \PWMtest|LessThan6~15_cout\ : std_logic;
SIGNAL \PWMtest|LessThan6~17_cout\ : std_logic;
SIGNAL \PWMtest|LessThan6~19_cout\ : std_logic;
SIGNAL \PWMtest|LessThan6~21_cout\ : std_logic;
SIGNAL \PWMtest|LessThan6~23_cout\ : std_logic;
SIGNAL \PWMtest|LessThan6~25_cout\ : std_logic;
SIGNAL \PWMtest|LessThan6~27_cout\ : std_logic;
SIGNAL \PWMtest|LessThan6~29_cout\ : std_logic;
SIGNAL \PWMtest|LessThan6~31_cout\ : std_logic;
SIGNAL \PWMtest|LessThan6~33_cout\ : std_logic;
SIGNAL \PWMtest|LessThan6~35_cout\ : std_logic;
SIGNAL \PWMtest|LessThan6~37_cout\ : std_logic;
SIGNAL \PWMtest|LessThan6~39_cout\ : std_logic;
SIGNAL \PWMtest|LessThan6~41_cout\ : std_logic;
SIGNAL \PWMtest|LessThan6~43_cout\ : std_logic;
SIGNAL \PWMtest|LessThan6~45_cout\ : std_logic;
SIGNAL \PWMtest|LessThan6~47_cout\ : std_logic;
SIGNAL \PWMtest|LessThan6~49_cout\ : std_logic;
SIGNAL \PWMtest|LessThan6~51_cout\ : std_logic;
SIGNAL \PWMtest|LessThan6~53_cout\ : std_logic;
SIGNAL \PWMtest|LessThan6~55_cout\ : std_logic;
SIGNAL \PWMtest|LessThan6~57_cout\ : std_logic;
SIGNAL \PWMtest|LessThan6~59_cout\ : std_logic;
SIGNAL \PWMtest|LessThan6~61_cout\ : std_logic;
SIGNAL \PWMtest|LessThan6~62_combout\ : std_logic;
SIGNAL \PWMtest|est_sig~7_combout\ : std_logic;
SIGNAL \PWMtest|Selector40~0_combout\ : std_logic;
SIGNAL \PWMtest|Selector40~1_combout\ : std_logic;
SIGNAL \PWMtest|est_act.boost1~q\ : std_logic;
SIGNAL \PWMtest|WideOr2~0_combout\ : std_logic;
SIGNAL \PWMtest|LessThan2~3_combout\ : std_logic;
SIGNAL \PWMtest|Selector0~0_combout\ : std_logic;
SIGNAL \PWMtest|PWM_H1~q\ : std_logic;
SIGNAL \PWMtest|Selector1~3_combout\ : std_logic;
SIGNAL \PWMtest|PWM_L1~q\ : std_logic;
SIGNAL \PWMtest|WideOr2~1_combout\ : std_logic;
SIGNAL \PWMtest|Selector2~0_combout\ : std_logic;
SIGNAL \PWMtest|PWM_H2~q\ : std_logic;
SIGNAL \PWMtest|PWM_L2_sig~0_combout\ : std_logic;
SIGNAL \PWMtest|PWM_L2~q\ : std_logic;
SIGNAL \watchdog_test|countwdg_act[0]~32_combout\ : std_logic;
SIGNAL \wdg_reset~input_o\ : std_logic;
SIGNAL \watchdog_test|LessThan1~0_combout\ : std_logic;
SIGNAL \watchdog_test|LessThan1~1_combout\ : std_logic;
SIGNAL \watchdog_test|countwdg_act[30]~93\ : std_logic;
SIGNAL \watchdog_test|countwdg_act[31]~94_combout\ : std_logic;
SIGNAL \watchdog_test|LessThan1~2_combout\ : std_logic;
SIGNAL \watchdog_test|countwdg_act[0]~33\ : std_logic;
SIGNAL \watchdog_test|countwdg_act[1]~34_combout\ : std_logic;
SIGNAL \watchdog_test|countwdg_act[1]~35\ : std_logic;
SIGNAL \watchdog_test|countwdg_act[2]~36_combout\ : std_logic;
SIGNAL \watchdog_test|countwdg_act[2]~37\ : std_logic;
SIGNAL \watchdog_test|countwdg_act[3]~38_combout\ : std_logic;
SIGNAL \watchdog_test|countwdg_act[3]~39\ : std_logic;
SIGNAL \watchdog_test|countwdg_act[4]~40_combout\ : std_logic;
SIGNAL \watchdog_test|countwdg_act[4]~41\ : std_logic;
SIGNAL \watchdog_test|countwdg_act[5]~42_combout\ : std_logic;
SIGNAL \watchdog_test|countwdg_act[5]~43\ : std_logic;
SIGNAL \watchdog_test|countwdg_act[6]~44_combout\ : std_logic;
SIGNAL \watchdog_test|countwdg_act[6]~45\ : std_logic;
SIGNAL \watchdog_test|countwdg_act[7]~46_combout\ : std_logic;
SIGNAL \watchdog_test|countwdg_act[7]~47\ : std_logic;
SIGNAL \watchdog_test|countwdg_act[8]~48_combout\ : std_logic;
SIGNAL \watchdog_test|countwdg_act[8]~49\ : std_logic;
SIGNAL \watchdog_test|countwdg_act[9]~50_combout\ : std_logic;
SIGNAL \watchdog_test|countwdg_act[9]~51\ : std_logic;
SIGNAL \watchdog_test|countwdg_act[10]~52_combout\ : std_logic;
SIGNAL \watchdog_test|countwdg_act[10]~53\ : std_logic;
SIGNAL \watchdog_test|countwdg_act[11]~54_combout\ : std_logic;
SIGNAL \watchdog_test|countwdg_act[11]~55\ : std_logic;
SIGNAL \watchdog_test|countwdg_act[12]~56_combout\ : std_logic;
SIGNAL \watchdog_test|countwdg_act[12]~57\ : std_logic;
SIGNAL \watchdog_test|countwdg_act[13]~58_combout\ : std_logic;
SIGNAL \watchdog_test|countwdg_act[13]~59\ : std_logic;
SIGNAL \watchdog_test|countwdg_act[14]~60_combout\ : std_logic;
SIGNAL \watchdog_test|countwdg_act[14]~61\ : std_logic;
SIGNAL \watchdog_test|countwdg_act[15]~62_combout\ : std_logic;
SIGNAL \watchdog_test|countwdg_act[15]~63\ : std_logic;
SIGNAL \watchdog_test|countwdg_act[16]~64_combout\ : std_logic;
SIGNAL \watchdog_test|countwdg_act[16]~65\ : std_logic;
SIGNAL \watchdog_test|countwdg_act[17]~66_combout\ : std_logic;
SIGNAL \watchdog_test|countwdg_act[17]~67\ : std_logic;
SIGNAL \watchdog_test|countwdg_act[18]~68_combout\ : std_logic;
SIGNAL \watchdog_test|countwdg_act[18]~69\ : std_logic;
SIGNAL \watchdog_test|countwdg_act[19]~70_combout\ : std_logic;
SIGNAL \watchdog_test|countwdg_act[19]~71\ : std_logic;
SIGNAL \watchdog_test|countwdg_act[20]~72_combout\ : std_logic;
SIGNAL \watchdog_test|countwdg_act[20]~73\ : std_logic;
SIGNAL \watchdog_test|countwdg_act[21]~74_combout\ : std_logic;
SIGNAL \watchdog_test|countwdg_act[21]~75\ : std_logic;
SIGNAL \watchdog_test|countwdg_act[22]~76_combout\ : std_logic;
SIGNAL \watchdog_test|countwdg_act[22]~77\ : std_logic;
SIGNAL \watchdog_test|countwdg_act[23]~78_combout\ : std_logic;
SIGNAL \watchdog_test|countwdg_act[23]~79\ : std_logic;
SIGNAL \watchdog_test|countwdg_act[24]~80_combout\ : std_logic;
SIGNAL \watchdog_test|countwdg_act[24]~81\ : std_logic;
SIGNAL \watchdog_test|countwdg_act[25]~82_combout\ : std_logic;
SIGNAL \watchdog_test|countwdg_act[25]~83\ : std_logic;
SIGNAL \watchdog_test|countwdg_act[26]~84_combout\ : std_logic;
SIGNAL \watchdog_test|countwdg_act[26]~85\ : std_logic;
SIGNAL \watchdog_test|countwdg_act[27]~86_combout\ : std_logic;
SIGNAL \watchdog_test|countwdg_act[27]~87\ : std_logic;
SIGNAL \watchdog_test|countwdg_act[28]~88_combout\ : std_logic;
SIGNAL \watchdog_test|countwdg_act[28]~89\ : std_logic;
SIGNAL \watchdog_test|countwdg_act[29]~90_combout\ : std_logic;
SIGNAL \watchdog_test|countwdg_act[29]~91\ : std_logic;
SIGNAL \watchdog_test|countwdg_act[30]~92_combout\ : std_logic;
SIGNAL \watchdog_test|LessThan0~1_combout\ : std_logic;
SIGNAL \watchdog_test|LessThan0~0_combout\ : std_logic;
SIGNAL \watchdog_test|LessThan0~3_combout\ : std_logic;
SIGNAL \watchdog_test|LessThan0~2_combout\ : std_logic;
SIGNAL \watchdog_test|LessThan0~4_combout\ : std_logic;
SIGNAL \watchdog_test|LessThan0~5_combout\ : std_logic;
SIGNAL \watchdog_test|LessThan0~6_combout\ : std_logic;
SIGNAL \watchdog_test|LessThan0~8_combout\ : std_logic;
SIGNAL \watchdog_test|LessThan0~7_combout\ : std_logic;
SIGNAL \watchdog_test|LessThan0~9_combout\ : std_logic;
SIGNAL \watchdog_test|LessThan0~10_combout\ : std_logic;
SIGNAL \set_btn~input_o\ : std_logic;
SIGNAL \set_reset_test|countset_act[0]~19_combout\ : std_logic;
SIGNAL \set_reset_test|countset_act[0]~20\ : std_logic;
SIGNAL \set_reset_test|countset_act[1]~21_combout\ : std_logic;
SIGNAL \set_reset_test|countset_act[1]~22\ : std_logic;
SIGNAL \set_reset_test|countset_act[2]~23_combout\ : std_logic;
SIGNAL \set_reset_test|countset_act[2]~24\ : std_logic;
SIGNAL \set_reset_test|countset_act[3]~25_combout\ : std_logic;
SIGNAL \set_reset_test|countset_act[3]~26\ : std_logic;
SIGNAL \set_reset_test|countset_act[4]~27_combout\ : std_logic;
SIGNAL \set_reset_test|countset_act[4]~28\ : std_logic;
SIGNAL \set_reset_test|countset_act[5]~29_combout\ : std_logic;
SIGNAL \set_reset_test|countset_act[5]~30\ : std_logic;
SIGNAL \set_reset_test|countset_act[6]~31_combout\ : std_logic;
SIGNAL \set_reset_test|countset_act[6]~32\ : std_logic;
SIGNAL \set_reset_test|countset_act[7]~33_combout\ : std_logic;
SIGNAL \set_reset_test|countset_act[7]~34\ : std_logic;
SIGNAL \set_reset_test|countset_act[8]~35_combout\ : std_logic;
SIGNAL \set_reset_test|set_process~0_combout\ : std_logic;
SIGNAL \set_reset_test|countset_act[8]~36\ : std_logic;
SIGNAL \set_reset_test|countset_act[9]~37_combout\ : std_logic;
SIGNAL \set_reset_test|countset_act[9]~38\ : std_logic;
SIGNAL \set_reset_test|countset_act[10]~39_combout\ : std_logic;
SIGNAL \set_reset_test|countset_act[10]~40\ : std_logic;
SIGNAL \set_reset_test|countset_act[11]~41_combout\ : std_logic;
SIGNAL \set_reset_test|countset_act[11]~42\ : std_logic;
SIGNAL \set_reset_test|countset_act[12]~43_combout\ : std_logic;
SIGNAL \set_reset_test|countset_act[12]~44\ : std_logic;
SIGNAL \set_reset_test|countset_act[13]~45_combout\ : std_logic;
SIGNAL \set_reset_test|set_process~1_combout\ : std_logic;
SIGNAL \set_reset_test|countset_act[13]~46\ : std_logic;
SIGNAL \set_reset_test|countset_act[14]~47_combout\ : std_logic;
SIGNAL \set_reset_test|set_process~2_combout\ : std_logic;
SIGNAL \set_reset_test|countset_act[14]~48\ : std_logic;
SIGNAL \set_reset_test|countset_act[15]~49_combout\ : std_logic;
SIGNAL \set_reset_test|countset_act[15]~50\ : std_logic;
SIGNAL \set_reset_test|countset_act[16]~51_combout\ : std_logic;
SIGNAL \set_reset_test|countset_act[16]~52\ : std_logic;
SIGNAL \set_reset_test|countset_act[17]~53_combout\ : std_logic;
SIGNAL \set_reset_test|countset_act[17]~54\ : std_logic;
SIGNAL \set_reset_test|countset_act[18]~55_combout\ : std_logic;
SIGNAL \set_reset_test|set_process~3_combout\ : std_logic;
SIGNAL \set_reset_test|set_process~4_combout\ : std_logic;
SIGNAL \set_reset_test|set_out~0_combout\ : std_logic;
SIGNAL \reset_btn~input_o\ : std_logic;
SIGNAL \set_reset_test|countreset_act[0]~19_combout\ : std_logic;
SIGNAL \set_reset_test|countreset_act[0]~20\ : std_logic;
SIGNAL \set_reset_test|countreset_act[1]~21_combout\ : std_logic;
SIGNAL \set_reset_test|countreset_act[1]~22\ : std_logic;
SIGNAL \set_reset_test|countreset_act[2]~23_combout\ : std_logic;
SIGNAL \set_reset_test|countreset_act[2]~24\ : std_logic;
SIGNAL \set_reset_test|countreset_act[3]~25_combout\ : std_logic;
SIGNAL \set_reset_test|countreset_act[3]~26\ : std_logic;
SIGNAL \set_reset_test|countreset_act[4]~27_combout\ : std_logic;
SIGNAL \set_reset_test|countreset_act[4]~28\ : std_logic;
SIGNAL \set_reset_test|countreset_act[5]~29_combout\ : std_logic;
SIGNAL \set_reset_test|countreset_act[5]~30\ : std_logic;
SIGNAL \set_reset_test|countreset_act[6]~31_combout\ : std_logic;
SIGNAL \set_reset_test|countreset_act[6]~32\ : std_logic;
SIGNAL \set_reset_test|countreset_act[7]~33_combout\ : std_logic;
SIGNAL \set_reset_test|countreset_act[7]~34\ : std_logic;
SIGNAL \set_reset_test|countreset_act[8]~35_combout\ : std_logic;
SIGNAL \set_reset_test|countreset_act[8]~36\ : std_logic;
SIGNAL \set_reset_test|countreset_act[9]~37_combout\ : std_logic;
SIGNAL \set_reset_test|countreset_act[9]~38\ : std_logic;
SIGNAL \set_reset_test|countreset_act[10]~39_combout\ : std_logic;
SIGNAL \set_reset_test|countreset_act[10]~40\ : std_logic;
SIGNAL \set_reset_test|countreset_act[11]~41_combout\ : std_logic;
SIGNAL \set_reset_test|countreset_act[11]~42\ : std_logic;
SIGNAL \set_reset_test|countreset_act[12]~43_combout\ : std_logic;
SIGNAL \set_reset_test|countreset_act[12]~44\ : std_logic;
SIGNAL \set_reset_test|countreset_act[13]~45_combout\ : std_logic;
SIGNAL \set_reset_test|countreset_act[13]~46\ : std_logic;
SIGNAL \set_reset_test|countreset_act[14]~47_combout\ : std_logic;
SIGNAL \set_reset_test|countreset_act[14]~48\ : std_logic;
SIGNAL \set_reset_test|countreset_act[15]~49_combout\ : std_logic;
SIGNAL \set_reset_test|countreset_act[15]~50\ : std_logic;
SIGNAL \set_reset_test|countreset_act[16]~51_combout\ : std_logic;
SIGNAL \set_reset_test|countreset_act[16]~52\ : std_logic;
SIGNAL \set_reset_test|countreset_act[17]~53_combout\ : std_logic;
SIGNAL \set_reset_test|countreset_act[17]~54\ : std_logic;
SIGNAL \set_reset_test|countreset_act[18]~55_combout\ : std_logic;
SIGNAL \set_reset_test|reset_process~3_combout\ : std_logic;
SIGNAL \set_reset_test|reset_process~1_combout\ : std_logic;
SIGNAL \set_reset_test|reset_process~0_combout\ : std_logic;
SIGNAL \set_reset_test|reset_process~2_combout\ : std_logic;
SIGNAL \set_reset_test|reset_process~4_combout\ : std_logic;
SIGNAL \set_reset_test|reset_out~0_combout\ : std_logic;
SIGNAL \PWMtest|softstart_duty_act\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \watchdog_test|countwdg_act\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \PWMtest|countactual1\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \incdecdutytest|inc_prev\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \set_reset_test|countset_act\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \set_reset_test|countreset_act\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \incdecdutytest|duty\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \incdecdutytest|dec_prev\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \set_reset_test|ALT_INV_reset_out~0_combout\ : std_logic;
SIGNAL \set_reset_test|ALT_INV_set_out~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_reset <= reset;
ww_clk <= clk;
ww_sel <= sel;
PWM_H1 <= ww_PWM_H1;
PWM_H1_sens <= ww_PWM_H1_sens;
PWM_L1 <= ww_PWM_L1;
PWM_L1_sens <= ww_PWM_L1_sens;
PWM_H2 <= ww_PWM_H2;
PWM_H2_sens <= ww_PWM_H2_sens;
PWM_L2 <= ww_PWM_L2;
PWM_L2_sens <= ww_PWM_L2_sens;
wdg_out <= ww_wdg_out;
ww_set_btn <= set_btn;
ww_reset_btn <= reset_btn;
set_out <= ww_set_out;
reset_out <= ww_reset_out;
ww_wdg_reset <= wdg_reset;
ww_inc <= inc;
ww_dec <= dec;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\set_reset_test|ALT_INV_reset_out~0_combout\ <= NOT \set_reset_test|reset_out~0_combout\;
\set_reset_test|ALT_INV_set_out~0_combout\ <= NOT \set_reset_test|set_out~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y43_N24
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

-- Location: IOOBUF_X31_Y0_N23
\PWM_H1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PWMtest|PWM_H1~q\,
	devoe => ww_devoe,
	o => \PWM_H1~output_o\);

-- Location: IOOBUF_X46_Y0_N9
\PWM_H1_sens~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PWMtest|PWM_H1~q\,
	devoe => ww_devoe,
	o => \PWM_H1_sens~output_o\);

-- Location: IOOBUF_X31_Y0_N30
\PWM_L1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PWMtest|PWM_L1~q\,
	devoe => ww_devoe,
	o => \PWM_L1~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\PWM_L1_sens~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PWMtest|PWM_L1~q\,
	devoe => ww_devoe,
	o => \PWM_L1_sens~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\PWM_H2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PWMtest|PWM_H2~q\,
	devoe => ww_devoe,
	o => \PWM_H2~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\PWM_H2_sens~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PWMtest|PWM_H2~q\,
	devoe => ww_devoe,
	o => \PWM_H2_sens~output_o\);

-- Location: IOOBUF_X22_Y0_N16
\PWM_L2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PWMtest|PWM_L2~q\,
	devoe => ww_devoe,
	o => \PWM_L2~output_o\);

-- Location: IOOBUF_X38_Y0_N16
\PWM_L2_sens~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PWMtest|PWM_L2~q\,
	devoe => ww_devoe,
	o => \PWM_L2_sens~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\wdg_out~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \watchdog_test|LessThan0~10_combout\,
	devoe => ww_devoe,
	o => \wdg_out~output_o\);

-- Location: IOOBUF_X24_Y0_N30
\set_out~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \set_reset_test|set_out~0_combout\,
	devoe => ww_devoe,
	o => \set_out~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\reset_out~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \set_reset_test|reset_out~0_combout\,
	devoe => ww_devoe,
	o => \reset_out~output_o\);

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

-- Location: IOIBUF_X46_Y54_N29
\inc~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inc,
	o => \inc~input_o\);

-- Location: LCCOMB_X61_Y38_N14
\incdecdutytest|inc_prev[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \incdecdutytest|inc_prev[0]~0_combout\ = !\inc~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inc~input_o\,
	combout => \incdecdutytest|inc_prev[0]~0_combout\);

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

-- Location: FF_X61_Y38_N15
\incdecdutytest|inc_prev[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \incdecdutytest|inc_prev[0]~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \incdecdutytest|inc_prev\(0));

-- Location: FF_X61_Y38_N1
\incdecdutytest|inc_prev[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \incdecdutytest|inc_prev\(0),
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \incdecdutytest|inc_prev\(1));

-- Location: LCCOMB_X60_Y35_N10
\incdecdutytest|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \incdecdutytest|Equal0~0_combout\ = (\incdecdutytest|inc_prev\(0) & !\incdecdutytest|inc_prev\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \incdecdutytest|inc_prev\(0),
	datac => \incdecdutytest|inc_prev\(1),
	combout => \incdecdutytest|Equal0~0_combout\);

-- Location: IOIBUF_X51_Y54_N29
\sel~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel,
	o => \sel~input_o\);

-- Location: LCCOMB_X62_Y35_N20
\incdecdutytest|duty[7]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \incdecdutytest|duty[7]~2_combout\ = (\reset~input_o\ & ((\incdecdutytest|duty[7]~2_combout\))) # (!\reset~input_o\ & (!\sel~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \sel~input_o\,
	datad => \incdecdutytest|duty[7]~2_combout\,
	combout => \incdecdutytest|duty[7]~2_combout\);

-- Location: IOIBUF_X49_Y54_N29
\dec~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dec,
	o => \dec~input_o\);

-- Location: LCCOMB_X61_Y38_N4
\incdecdutytest|dec_prev[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \incdecdutytest|dec_prev[0]~0_combout\ = !\dec~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dec~input_o\,
	combout => \incdecdutytest|dec_prev[0]~0_combout\);

-- Location: FF_X61_Y38_N5
\incdecdutytest|dec_prev[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \incdecdutytest|dec_prev[0]~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \incdecdutytest|dec_prev\(0));

-- Location: FF_X61_Y38_N11
\incdecdutytest|dec_prev[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \incdecdutytest|dec_prev\(0),
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \incdecdutytest|dec_prev\(1));

-- Location: LCCOMB_X61_Y38_N10
\incdecdutytest|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \incdecdutytest|Equal1~0_combout\ = (\incdecdutytest|dec_prev\(1)) # (!\incdecdutytest|dec_prev\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \incdecdutytest|dec_prev\(0),
	datac => \incdecdutytest|dec_prev\(1),
	combout => \incdecdutytest|Equal1~0_combout\);

-- Location: LCCOMB_X62_Y35_N6
\incdecdutytest|duty[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \incdecdutytest|duty[6]~6_combout\ = (\reset~input_o\ & ((\incdecdutytest|duty[6]~6_combout\))) # (!\reset~input_o\ & (\sel~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel~input_o\,
	datac => \reset~input_o\,
	datad => \incdecdutytest|duty[6]~6_combout\,
	combout => \incdecdutytest|duty[6]~6_combout\);

-- Location: LCCOMB_X62_Y34_N28
\incdecdutytest|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \incdecdutytest|LessThan0~0_combout\ = (\incdecdutytest|duty[4]~11_combout\) # ((\incdecdutytest|duty[3]~13_combout\ & ((\incdecdutytest|duty[1]~17_combout\) # (\incdecdutytest|duty[2]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incdecdutytest|duty[1]~17_combout\,
	datab => \incdecdutytest|duty[3]~13_combout\,
	datac => \incdecdutytest|duty[4]~11_combout\,
	datad => \incdecdutytest|duty[2]~15_combout\,
	combout => \incdecdutytest|LessThan0~0_combout\);

-- Location: LCCOMB_X61_Y35_N6
\incdecdutytest|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \incdecdutytest|LessThan0~1_combout\ = (\incdecdutytest|duty\(8) & ((\incdecdutytest|LessThan0~0_combout\) # (!\incdecdutytest|LessThan1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \incdecdutytest|LessThan1~1_combout\,
	datac => \incdecdutytest|duty\(8),
	datad => \incdecdutytest|LessThan0~0_combout\,
	combout => \incdecdutytest|LessThan0~1_combout\);

-- Location: LCCOMB_X61_Y35_N10
\incdecdutytest|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \incdecdutytest|Add0~0_combout\ = \incdecdutytest|duty[0]~19_combout\ $ (VCC)
-- \incdecdutytest|Add0~1\ = CARRY(\incdecdutytest|duty[0]~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \incdecdutytest|duty[0]~19_combout\,
	datad => VCC,
	combout => \incdecdutytest|Add0~0_combout\,
	cout => \incdecdutytest|Add0~1\);

-- Location: LCCOMB_X60_Y35_N30
\incdecdutytest|duty_sig[0]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \incdecdutytest|duty_sig[0]~38_combout\ = (!\incdecdutytest|LessThan0~1_combout\ & (!\incdecdutytest|inc_prev\(1) & (\incdecdutytest|inc_prev\(0) & \incdecdutytest|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incdecdutytest|LessThan0~1_combout\,
	datab => \incdecdutytest|inc_prev\(1),
	datac => \incdecdutytest|inc_prev\(0),
	datad => \incdecdutytest|Add0~0_combout\,
	combout => \incdecdutytest|duty_sig[0]~38_combout\);

-- Location: LCCOMB_X63_Y35_N6
\incdecdutytest|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \incdecdutytest|Add1~0_combout\ = \incdecdutytest|duty[0]~19_combout\ $ (VCC)
-- \incdecdutytest|Add1~1\ = CARRY(\incdecdutytest|duty[0]~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \incdecdutytest|duty[0]~19_combout\,
	datad => VCC,
	combout => \incdecdutytest|Add1~0_combout\,
	cout => \incdecdutytest|Add1~1\);

-- Location: LCCOMB_X63_Y35_N26
\incdecdutytest|duty_sig[0]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \incdecdutytest|duty_sig[0]~28_combout\ = (\incdecdutytest|Equal1~0_combout\ & (\incdecdutytest|duty[0]~19_combout\)) # (!\incdecdutytest|Equal1~0_combout\ & (((\incdecdutytest|LessThan1~2_combout\) # (\incdecdutytest|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incdecdutytest|Equal1~0_combout\,
	datab => \incdecdutytest|duty[0]~19_combout\,
	datac => \incdecdutytest|LessThan1~2_combout\,
	datad => \incdecdutytest|Add1~0_combout\,
	combout => \incdecdutytest|duty_sig[0]~28_combout\);

-- Location: LCCOMB_X60_Y35_N14
\incdecdutytest|duty[0]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \incdecdutytest|duty[0]~20_combout\ = \incdecdutytest|duty[6]~6_combout\ $ (((\incdecdutytest|duty_sig[0]~38_combout\) # ((\incdecdutytest|duty_sig[0]~28_combout\ & !\incdecdutytest|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incdecdutytest|duty_sig[0]~38_combout\,
	datab => \incdecdutytest|duty[6]~6_combout\,
	datac => \incdecdutytest|duty_sig[0]~28_combout\,
	datad => \incdecdutytest|Equal0~0_combout\,
	combout => \incdecdutytest|duty[0]~20_combout\);

-- Location: FF_X60_Y35_N15
\incdecdutytest|duty[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \incdecdutytest|duty[0]~20_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \incdecdutytest|duty[0]~_emulated_q\);

-- Location: LCCOMB_X62_Y35_N18
\incdecdutytest|duty[0]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \incdecdutytest|duty[0]~19_combout\ = (\reset~input_o\ & (\incdecdutytest|duty[0]~_emulated_q\ $ (((\incdecdutytest|duty[6]~6_combout\))))) # (!\reset~input_o\ & (((\sel~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incdecdutytest|duty[0]~_emulated_q\,
	datab => \sel~input_o\,
	datac => \reset~input_o\,
	datad => \incdecdutytest|duty[6]~6_combout\,
	combout => \incdecdutytest|duty[0]~19_combout\);

-- Location: LCCOMB_X61_Y35_N12
\incdecdutytest|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \incdecdutytest|Add0~2_combout\ = (\incdecdutytest|duty[1]~17_combout\ & (!\incdecdutytest|Add0~1\)) # (!\incdecdutytest|duty[1]~17_combout\ & ((\incdecdutytest|Add0~1\) # (GND)))
-- \incdecdutytest|Add0~3\ = CARRY((!\incdecdutytest|Add0~1\) # (!\incdecdutytest|duty[1]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \incdecdutytest|duty[1]~17_combout\,
	datad => VCC,
	cin => \incdecdutytest|Add0~1\,
	combout => \incdecdutytest|Add0~2_combout\,
	cout => \incdecdutytest|Add0~3\);

-- Location: LCCOMB_X61_Y35_N14
\incdecdutytest|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \incdecdutytest|Add0~4_combout\ = (\incdecdutytest|duty[2]~15_combout\ & ((GND) # (!\incdecdutytest|Add0~3\))) # (!\incdecdutytest|duty[2]~15_combout\ & (\incdecdutytest|Add0~3\ $ (GND)))
-- \incdecdutytest|Add0~5\ = CARRY((\incdecdutytest|duty[2]~15_combout\) # (!\incdecdutytest|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \incdecdutytest|duty[2]~15_combout\,
	datad => VCC,
	cin => \incdecdutytest|Add0~3\,
	combout => \incdecdutytest|Add0~4_combout\,
	cout => \incdecdutytest|Add0~5\);

-- Location: LCCOMB_X61_Y35_N16
\incdecdutytest|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \incdecdutytest|Add0~6_combout\ = (\incdecdutytest|duty[3]~13_combout\ & (!\incdecdutytest|Add0~5\)) # (!\incdecdutytest|duty[3]~13_combout\ & ((\incdecdutytest|Add0~5\) # (GND)))
-- \incdecdutytest|Add0~7\ = CARRY((!\incdecdutytest|Add0~5\) # (!\incdecdutytest|duty[3]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \incdecdutytest|duty[3]~13_combout\,
	datad => VCC,
	cin => \incdecdutytest|Add0~5\,
	combout => \incdecdutytest|Add0~6_combout\,
	cout => \incdecdutytest|Add0~7\);

-- Location: LCCOMB_X61_Y35_N18
\incdecdutytest|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \incdecdutytest|Add0~8_combout\ = (\incdecdutytest|duty[4]~11_combout\ & (\incdecdutytest|Add0~7\ $ (GND))) # (!\incdecdutytest|duty[4]~11_combout\ & (!\incdecdutytest|Add0~7\ & VCC))
-- \incdecdutytest|Add0~9\ = CARRY((\incdecdutytest|duty[4]~11_combout\ & !\incdecdutytest|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \incdecdutytest|duty[4]~11_combout\,
	datad => VCC,
	cin => \incdecdutytest|Add0~7\,
	combout => \incdecdutytest|Add0~8_combout\,
	cout => \incdecdutytest|Add0~9\);

-- Location: LCCOMB_X61_Y35_N0
\incdecdutytest|duty_sig[4]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \incdecdutytest|duty_sig[4]~25_combout\ = (\incdecdutytest|Add0~8_combout\) # ((\incdecdutytest|duty\(8) & ((\incdecdutytest|LessThan0~0_combout\) # (!\incdecdutytest|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incdecdutytest|LessThan1~1_combout\,
	datab => \incdecdutytest|LessThan0~0_combout\,
	datac => \incdecdutytest|duty\(8),
	datad => \incdecdutytest|Add0~8_combout\,
	combout => \incdecdutytest|duty_sig[4]~25_combout\);

-- Location: LCCOMB_X63_Y35_N12
\incdecdutytest|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \incdecdutytest|Add1~6_combout\ = (\incdecdutytest|duty[3]~13_combout\ & (\incdecdutytest|Add1~5\ & VCC)) # (!\incdecdutytest|duty[3]~13_combout\ & (!\incdecdutytest|Add1~5\))
-- \incdecdutytest|Add1~7\ = CARRY((!\incdecdutytest|duty[3]~13_combout\ & !\incdecdutytest|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \incdecdutytest|duty[3]~13_combout\,
	datad => VCC,
	cin => \incdecdutytest|Add1~5\,
	combout => \incdecdutytest|Add1~6_combout\,
	cout => \incdecdutytest|Add1~7\);

-- Location: LCCOMB_X63_Y35_N14
\incdecdutytest|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \incdecdutytest|Add1~8_combout\ = (\incdecdutytest|duty[4]~11_combout\ & ((GND) # (!\incdecdutytest|Add1~7\))) # (!\incdecdutytest|duty[4]~11_combout\ & (\incdecdutytest|Add1~7\ $ (GND)))
-- \incdecdutytest|Add1~9\ = CARRY((\incdecdutytest|duty[4]~11_combout\) # (!\incdecdutytest|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \incdecdutytest|duty[4]~11_combout\,
	datad => VCC,
	cin => \incdecdutytest|Add1~7\,
	combout => \incdecdutytest|Add1~8_combout\,
	cout => \incdecdutytest|Add1~9\);

-- Location: LCCOMB_X63_Y35_N24
\incdecdutytest|duty_sig[4]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \incdecdutytest|duty_sig[4]~32_combout\ = (!\incdecdutytest|LessThan1~2_combout\ & (\incdecdutytest|Add1~8_combout\ & ((\incdecdutytest|inc_prev\(1)) # (!\incdecdutytest|inc_prev\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incdecdutytest|LessThan1~2_combout\,
	datab => \incdecdutytest|inc_prev\(1),
	datac => \incdecdutytest|Add1~8_combout\,
	datad => \incdecdutytest|inc_prev\(0),
	combout => \incdecdutytest|duty_sig[4]~32_combout\);

-- Location: LCCOMB_X62_Y35_N2
\incdecdutytest|duty[4]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \incdecdutytest|duty[4]~12_combout\ = \incdecdutytest|duty[7]~2_combout\ $ (((\incdecdutytest|duty_sig[4]~32_combout\) # ((\incdecdutytest|Equal0~0_combout\ & \incdecdutytest|duty_sig[4]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incdecdutytest|Equal0~0_combout\,
	datab => \incdecdutytest|duty[7]~2_combout\,
	datac => \incdecdutytest|duty_sig[4]~25_combout\,
	datad => \incdecdutytest|duty_sig[4]~32_combout\,
	combout => \incdecdutytest|duty[4]~12_combout\);

-- Location: LCCOMB_X61_Y38_N26
\incdecdutytest|duty[1]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \incdecdutytest|duty[1]~29_combout\ = (\incdecdutytest|dec_prev\(1) & (((\incdecdutytest|inc_prev\(0) & !\incdecdutytest|inc_prev\(1))))) # (!\incdecdutytest|dec_prev\(1) & ((\incdecdutytest|dec_prev\(0)) # ((\incdecdutytest|inc_prev\(0) & 
-- !\incdecdutytest|inc_prev\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incdecdutytest|dec_prev\(1),
	datab => \incdecdutytest|dec_prev\(0),
	datac => \incdecdutytest|inc_prev\(0),
	datad => \incdecdutytest|inc_prev\(1),
	combout => \incdecdutytest|duty[1]~29_combout\);

-- Location: FF_X62_Y35_N3
\incdecdutytest|duty[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \incdecdutytest|duty[4]~12_combout\,
	clrn => \reset~input_o\,
	ena => \incdecdutytest|duty[1]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \incdecdutytest|duty[4]~_emulated_q\);

-- Location: LCCOMB_X62_Y35_N4
\incdecdutytest|duty[4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \incdecdutytest|duty[4]~11_combout\ = (\reset~input_o\ & ((\incdecdutytest|duty[7]~2_combout\ $ (\incdecdutytest|duty[4]~_emulated_q\)))) # (!\reset~input_o\ & (!\sel~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~input_o\,
	datab => \incdecdutytest|duty[7]~2_combout\,
	datac => \reset~input_o\,
	datad => \incdecdutytest|duty[4]~_emulated_q\,
	combout => \incdecdutytest|duty[4]~11_combout\);

-- Location: LCCOMB_X61_Y35_N20
\incdecdutytest|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \incdecdutytest|Add0~10_combout\ = (\incdecdutytest|duty[5]~9_combout\ & (!\incdecdutytest|Add0~9\)) # (!\incdecdutytest|duty[5]~9_combout\ & ((\incdecdutytest|Add0~9\) # (GND)))
-- \incdecdutytest|Add0~11\ = CARRY((!\incdecdutytest|Add0~9\) # (!\incdecdutytest|duty[5]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \incdecdutytest|duty[5]~9_combout\,
	datad => VCC,
	cin => \incdecdutytest|Add0~9\,
	combout => \incdecdutytest|Add0~10_combout\,
	cout => \incdecdutytest|Add0~11\);

-- Location: LCCOMB_X61_Y35_N22
\incdecdutytest|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \incdecdutytest|Add0~12_combout\ = (\incdecdutytest|duty[6]~7_combout\ & (\incdecdutytest|Add0~11\ $ (GND))) # (!\incdecdutytest|duty[6]~7_combout\ & (!\incdecdutytest|Add0~11\ & VCC))
-- \incdecdutytest|Add0~13\ = CARRY((\incdecdutytest|duty[6]~7_combout\ & !\incdecdutytest|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \incdecdutytest|duty[6]~7_combout\,
	datad => VCC,
	cin => \incdecdutytest|Add0~11\,
	combout => \incdecdutytest|Add0~12_combout\,
	cout => \incdecdutytest|Add0~13\);

-- Location: LCCOMB_X60_Y35_N26
\incdecdutytest|duty_sig[6]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \incdecdutytest|duty_sig[6]~30_combout\ = (\incdecdutytest|Add0~12_combout\ & (!\incdecdutytest|inc_prev\(1) & (\incdecdutytest|inc_prev\(0) & !\incdecdutytest|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incdecdutytest|Add0~12_combout\,
	datab => \incdecdutytest|inc_prev\(1),
	datac => \incdecdutytest|inc_prev\(0),
	datad => \incdecdutytest|LessThan0~1_combout\,
	combout => \incdecdutytest|duty_sig[6]~30_combout\);

-- Location: LCCOMB_X63_Y35_N16
\incdecdutytest|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \incdecdutytest|Add1~10_combout\ = (\incdecdutytest|duty[5]~9_combout\ & (\incdecdutytest|Add1~9\ & VCC)) # (!\incdecdutytest|duty[5]~9_combout\ & (!\incdecdutytest|Add1~9\))
-- \incdecdutytest|Add1~11\ = CARRY((!\incdecdutytest|duty[5]~9_combout\ & !\incdecdutytest|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \incdecdutytest|duty[5]~9_combout\,
	datad => VCC,
	cin => \incdecdutytest|Add1~9\,
	combout => \incdecdutytest|Add1~10_combout\,
	cout => \incdecdutytest|Add1~11\);

-- Location: LCCOMB_X63_Y35_N18
\incdecdutytest|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \incdecdutytest|Add1~12_combout\ = (\incdecdutytest|duty[6]~7_combout\ & ((GND) # (!\incdecdutytest|Add1~11\))) # (!\incdecdutytest|duty[6]~7_combout\ & (\incdecdutytest|Add1~11\ $ (GND)))
-- \incdecdutytest|Add1~13\ = CARRY((\incdecdutytest|duty[6]~7_combout\) # (!\incdecdutytest|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \incdecdutytest|duty[6]~7_combout\,
	datad => VCC,
	cin => \incdecdutytest|Add1~11\,
	combout => \incdecdutytest|Add1~12_combout\,
	cout => \incdecdutytest|Add1~13\);

-- Location: LCCOMB_X63_Y35_N0
\incdecdutytest|duty_sig[6]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \incdecdutytest|duty_sig[6]~24_combout\ = (\incdecdutytest|Equal1~0_combout\ & (\incdecdutytest|duty[6]~7_combout\)) # (!\incdecdutytest|Equal1~0_combout\ & (((!\incdecdutytest|LessThan1~2_combout\ & \incdecdutytest|Add1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incdecdutytest|Equal1~0_combout\,
	datab => \incdecdutytest|duty[6]~7_combout\,
	datac => \incdecdutytest|LessThan1~2_combout\,
	datad => \incdecdutytest|Add1~12_combout\,
	combout => \incdecdutytest|duty_sig[6]~24_combout\);

-- Location: LCCOMB_X60_Y35_N4
\incdecdutytest|duty[6]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \incdecdutytest|duty[6]~8_combout\ = \incdecdutytest|duty[6]~6_combout\ $ (((\incdecdutytest|duty_sig[6]~30_combout\) # ((!\incdecdutytest|Equal0~0_combout\ & \incdecdutytest|duty_sig[6]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incdecdutytest|Equal0~0_combout\,
	datab => \incdecdutytest|duty[6]~6_combout\,
	datac => \incdecdutytest|duty_sig[6]~30_combout\,
	datad => \incdecdutytest|duty_sig[6]~24_combout\,
	combout => \incdecdutytest|duty[6]~8_combout\);

-- Location: FF_X60_Y35_N5
\incdecdutytest|duty[6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \incdecdutytest|duty[6]~8_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \incdecdutytest|duty[6]~_emulated_q\);

-- Location: LCCOMB_X62_Y35_N28
\incdecdutytest|duty[6]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \incdecdutytest|duty[6]~7_combout\ = (\reset~input_o\ & (\incdecdutytest|duty[6]~_emulated_q\ $ (((\incdecdutytest|duty[6]~6_combout\))))) # (!\reset~input_o\ & (((\sel~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incdecdutytest|duty[6]~_emulated_q\,
	datab => \sel~input_o\,
	datac => \reset~input_o\,
	datad => \incdecdutytest|duty[6]~6_combout\,
	combout => \incdecdutytest|duty[6]~7_combout\);

-- Location: LCCOMB_X63_Y35_N20
\incdecdutytest|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \incdecdutytest|Add1~14_combout\ = (\incdecdutytest|duty[7]~3_combout\ & (\incdecdutytest|Add1~13\ & VCC)) # (!\incdecdutytest|duty[7]~3_combout\ & (!\incdecdutytest|Add1~13\))
-- \incdecdutytest|Add1~15\ = CARRY((!\incdecdutytest|duty[7]~3_combout\ & !\incdecdutytest|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \incdecdutytest|duty[7]~3_combout\,
	datad => VCC,
	cin => \incdecdutytest|Add1~13\,
	combout => \incdecdutytest|Add1~14_combout\,
	cout => \incdecdutytest|Add1~15\);

-- Location: LCCOMB_X61_Y35_N24
\incdecdutytest|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \incdecdutytest|Add0~14_combout\ = (\incdecdutytest|duty[7]~3_combout\ & (!\incdecdutytest|Add0~13\)) # (!\incdecdutytest|duty[7]~3_combout\ & ((\incdecdutytest|Add0~13\) # (GND)))
-- \incdecdutytest|Add0~15\ = CARRY((!\incdecdutytest|Add0~13\) # (!\incdecdutytest|duty[7]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \incdecdutytest|duty[7]~3_combout\,
	datad => VCC,
	cin => \incdecdutytest|Add0~13\,
	combout => \incdecdutytest|Add0~14_combout\,
	cout => \incdecdutytest|Add0~15\);

-- Location: LCCOMB_X60_Y35_N16
\incdecdutytest|duty_sig[7]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \incdecdutytest|duty_sig[7]~29_combout\ = (\incdecdutytest|inc_prev\(1) & (\incdecdutytest|Add1~14_combout\)) # (!\incdecdutytest|inc_prev\(1) & ((\incdecdutytest|inc_prev\(0) & ((\incdecdutytest|Add0~14_combout\))) # (!\incdecdutytest|inc_prev\(0) & 
-- (\incdecdutytest|Add1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incdecdutytest|Add1~14_combout\,
	datab => \incdecdutytest|inc_prev\(1),
	datac => \incdecdutytest|inc_prev\(0),
	datad => \incdecdutytest|Add0~14_combout\,
	combout => \incdecdutytest|duty_sig[7]~29_combout\);

-- Location: LCCOMB_X61_Y35_N28
\incdecdutytest|duty_sig[3]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \incdecdutytest|duty_sig[3]~23_combout\ = (\incdecdutytest|Equal0~0_combout\ & (\incdecdutytest|duty\(8) & ((\incdecdutytest|LessThan0~0_combout\) # (!\incdecdutytest|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incdecdutytest|Equal0~0_combout\,
	datab => \incdecdutytest|LessThan1~1_combout\,
	datac => \incdecdutytest|duty\(8),
	datad => \incdecdutytest|LessThan0~0_combout\,
	combout => \incdecdutytest|duty_sig[3]~23_combout\);

-- Location: LCCOMB_X62_Y35_N16
\incdecdutytest|duty[7]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \incdecdutytest|duty[7]~4_combout\ = \incdecdutytest|duty[7]~2_combout\ $ (((!\incdecdutytest|duty_sig[3]~22_combout\ & (\incdecdutytest|duty_sig[7]~29_combout\ & !\incdecdutytest|duty_sig[3]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incdecdutytest|duty_sig[3]~22_combout\,
	datab => \incdecdutytest|duty_sig[7]~29_combout\,
	datac => \incdecdutytest|duty_sig[3]~23_combout\,
	datad => \incdecdutytest|duty[7]~2_combout\,
	combout => \incdecdutytest|duty[7]~4_combout\);

-- Location: FF_X62_Y35_N17
\incdecdutytest|duty[7]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \incdecdutytest|duty[7]~4_combout\,
	clrn => \reset~input_o\,
	ena => \incdecdutytest|duty[1]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \incdecdutytest|duty[7]~_emulated_q\);

-- Location: LCCOMB_X62_Y35_N26
\incdecdutytest|duty[7]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \incdecdutytest|duty[7]~3_combout\ = (\reset~input_o\ & (\incdecdutytest|duty[7]~2_combout\ $ (((\incdecdutytest|duty[7]~_emulated_q\))))) # (!\reset~input_o\ & (((!\sel~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incdecdutytest|duty[7]~2_combout\,
	datab => \sel~input_o\,
	datac => \reset~input_o\,
	datad => \incdecdutytest|duty[7]~_emulated_q\,
	combout => \incdecdutytest|duty[7]~3_combout\);

-- Location: LCCOMB_X63_Y35_N22
\incdecdutytest|Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \incdecdutytest|Add1~16_combout\ = \incdecdutytest|Add1~15\ $ (\incdecdutytest|duty\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \incdecdutytest|duty\(8),
	cin => \incdecdutytest|Add1~15\,
	combout => \incdecdutytest|Add1~16_combout\);

-- Location: LCCOMB_X62_Y34_N0
\incdecdutytest|duty_sig~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \incdecdutytest|duty_sig~20_combout\ = (\incdecdutytest|Add1~16_combout\) # ((\incdecdutytest|LessThan1~1_combout\ & (\incdecdutytest|LessThan1~0_combout\ & !\incdecdutytest|duty\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incdecdutytest|LessThan1~1_combout\,
	datab => \incdecdutytest|LessThan1~0_combout\,
	datac => \incdecdutytest|Add1~16_combout\,
	datad => \incdecdutytest|duty\(8),
	combout => \incdecdutytest|duty_sig~20_combout\);

-- Location: LCCOMB_X64_Y35_N8
\incdecdutytest|duty[8]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \incdecdutytest|duty[8]~0_combout\ = (\incdecdutytest|Equal1~0_combout\ & (\incdecdutytest|duty\(8))) # (!\incdecdutytest|Equal1~0_combout\ & ((\incdecdutytest|duty_sig~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incdecdutytest|Equal1~0_combout\,
	datac => \incdecdutytest|duty\(8),
	datad => \incdecdutytest|duty_sig~20_combout\,
	combout => \incdecdutytest|duty[8]~0_combout\);

-- Location: LCCOMB_X61_Y35_N26
\incdecdutytest|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \incdecdutytest|Add0~16_combout\ = \incdecdutytest|duty\(8) $ (!\incdecdutytest|Add0~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \incdecdutytest|duty\(8),
	cin => \incdecdutytest|Add0~15\,
	combout => \incdecdutytest|Add0~16_combout\);

-- Location: LCCOMB_X61_Y35_N8
\incdecdutytest|duty_sig~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \incdecdutytest|duty_sig~21_combout\ = (\incdecdutytest|Add0~16_combout\ & (((\incdecdutytest|LessThan1~1_combout\ & !\incdecdutytest|LessThan0~0_combout\)) # (!\incdecdutytest|duty\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incdecdutytest|Add0~16_combout\,
	datab => \incdecdutytest|LessThan1~1_combout\,
	datac => \incdecdutytest|duty\(8),
	datad => \incdecdutytest|LessThan0~0_combout\,
	combout => \incdecdutytest|duty_sig~21_combout\);

-- Location: FF_X64_Y35_N9
\incdecdutytest|duty[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \incdecdutytest|duty[8]~0_combout\,
	asdata => \incdecdutytest|duty_sig~21_combout\,
	clrn => \reset~input_o\,
	sload => \incdecdutytest|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \incdecdutytest|duty\(8));

-- Location: LCCOMB_X62_Y34_N30
\incdecdutytest|LessThan1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \incdecdutytest|LessThan1~2_combout\ = (\incdecdutytest|LessThan1~1_combout\ & (\incdecdutytest|LessThan1~0_combout\ & !\incdecdutytest|duty\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incdecdutytest|LessThan1~1_combout\,
	datac => \incdecdutytest|LessThan1~0_combout\,
	datad => \incdecdutytest|duty\(8),
	combout => \incdecdutytest|LessThan1~2_combout\);

-- Location: LCCOMB_X63_Y35_N8
\incdecdutytest|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \incdecdutytest|Add1~2_combout\ = (\incdecdutytest|duty[1]~17_combout\ & (\incdecdutytest|Add1~1\ & VCC)) # (!\incdecdutytest|duty[1]~17_combout\ & (!\incdecdutytest|Add1~1\))
-- \incdecdutytest|Add1~3\ = CARRY((!\incdecdutytest|duty[1]~17_combout\ & !\incdecdutytest|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \incdecdutytest|duty[1]~17_combout\,
	datad => VCC,
	cin => \incdecdutytest|Add1~1\,
	combout => \incdecdutytest|Add1~2_combout\,
	cout => \incdecdutytest|Add1~3\);

-- Location: LCCOMB_X63_Y35_N30
\incdecdutytest|duty_sig[1]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \incdecdutytest|duty_sig[1]~37_combout\ = (!\incdecdutytest|LessThan1~2_combout\ & (\incdecdutytest|Add1~2_combout\ & ((\incdecdutytest|inc_prev\(1)) # (!\incdecdutytest|inc_prev\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incdecdutytest|LessThan1~2_combout\,
	datab => \incdecdutytest|inc_prev\(1),
	datac => \incdecdutytest|Add1~2_combout\,
	datad => \incdecdutytest|inc_prev\(0),
	combout => \incdecdutytest|duty_sig[1]~37_combout\);

-- Location: LCCOMB_X61_Y35_N30
\incdecdutytest|duty_sig[1]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \incdecdutytest|duty_sig[1]~27_combout\ = (\incdecdutytest|Add0~2_combout\) # ((\incdecdutytest|duty\(8) & ((\incdecdutytest|LessThan0~0_combout\) # (!\incdecdutytest|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incdecdutytest|Add0~2_combout\,
	datab => \incdecdutytest|LessThan1~1_combout\,
	datac => \incdecdutytest|duty\(8),
	datad => \incdecdutytest|LessThan0~0_combout\,
	combout => \incdecdutytest|duty_sig[1]~27_combout\);

-- Location: LCCOMB_X62_Y35_N22
\incdecdutytest|duty[1]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \incdecdutytest|duty[1]~18_combout\ = \incdecdutytest|duty[7]~2_combout\ $ (((\incdecdutytest|duty_sig[1]~37_combout\) # ((\incdecdutytest|Equal0~0_combout\ & \incdecdutytest|duty_sig[1]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incdecdutytest|Equal0~0_combout\,
	datab => \incdecdutytest|duty[7]~2_combout\,
	datac => \incdecdutytest|duty_sig[1]~37_combout\,
	datad => \incdecdutytest|duty_sig[1]~27_combout\,
	combout => \incdecdutytest|duty[1]~18_combout\);

-- Location: FF_X62_Y35_N23
\incdecdutytest|duty[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \incdecdutytest|duty[1]~18_combout\,
	clrn => \reset~input_o\,
	ena => \incdecdutytest|duty[1]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \incdecdutytest|duty[1]~_emulated_q\);

-- Location: LCCOMB_X62_Y35_N0
\incdecdutytest|duty[1]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \incdecdutytest|duty[1]~17_combout\ = (\reset~input_o\ & (\incdecdutytest|duty[1]~_emulated_q\ $ (((\incdecdutytest|duty[7]~2_combout\))))) # (!\reset~input_o\ & (((!\sel~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incdecdutytest|duty[1]~_emulated_q\,
	datab => \sel~input_o\,
	datac => \reset~input_o\,
	datad => \incdecdutytest|duty[7]~2_combout\,
	combout => \incdecdutytest|duty[1]~17_combout\);

-- Location: LCCOMB_X62_Y34_N4
\incdecdutytest|LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \incdecdutytest|LessThan1~0_combout\ = (((!\incdecdutytest|duty[2]~15_combout\) # (!\incdecdutytest|duty[4]~11_combout\)) # (!\incdecdutytest|duty[3]~13_combout\)) # (!\incdecdutytest|duty[1]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incdecdutytest|duty[1]~17_combout\,
	datab => \incdecdutytest|duty[3]~13_combout\,
	datac => \incdecdutytest|duty[4]~11_combout\,
	datad => \incdecdutytest|duty[2]~15_combout\,
	combout => \incdecdutytest|LessThan1~0_combout\);

-- Location: LCCOMB_X61_Y35_N2
\incdecdutytest|duty_sig[3]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \incdecdutytest|duty_sig[3]~22_combout\ = (\incdecdutytest|LessThan1~0_combout\ & (\incdecdutytest|LessThan1~1_combout\ & (!\incdecdutytest|duty\(8) & !\incdecdutytest|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incdecdutytest|LessThan1~0_combout\,
	datab => \incdecdutytest|LessThan1~1_combout\,
	datac => \incdecdutytest|duty\(8),
	datad => \incdecdutytest|Equal0~0_combout\,
	combout => \incdecdutytest|duty_sig[3]~22_combout\);

-- Location: LCCOMB_X63_Y35_N4
\incdecdutytest|duty_sig[5]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \incdecdutytest|duty_sig[5]~31_combout\ = (\incdecdutytest|inc_prev\(0) & ((\incdecdutytest|inc_prev\(1) & ((\incdecdutytest|Add1~10_combout\))) # (!\incdecdutytest|inc_prev\(1) & (\incdecdutytest|Add0~10_combout\)))) # (!\incdecdutytest|inc_prev\(0) & 
-- (((\incdecdutytest|Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incdecdutytest|inc_prev\(0),
	datab => \incdecdutytest|inc_prev\(1),
	datac => \incdecdutytest|Add0~10_combout\,
	datad => \incdecdutytest|Add1~10_combout\,
	combout => \incdecdutytest|duty_sig[5]~31_combout\);

-- Location: LCCOMB_X62_Y35_N14
\incdecdutytest|duty[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \incdecdutytest|duty[5]~10_combout\ = \incdecdutytest|duty[7]~2_combout\ $ (((!\incdecdutytest|duty_sig[3]~22_combout\ & (!\incdecdutytest|duty_sig[3]~23_combout\ & \incdecdutytest|duty_sig[5]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incdecdutytest|duty_sig[3]~22_combout\,
	datab => \incdecdutytest|duty[7]~2_combout\,
	datac => \incdecdutytest|duty_sig[3]~23_combout\,
	datad => \incdecdutytest|duty_sig[5]~31_combout\,
	combout => \incdecdutytest|duty[5]~10_combout\);

-- Location: FF_X62_Y35_N15
\incdecdutytest|duty[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \incdecdutytest|duty[5]~10_combout\,
	clrn => \reset~input_o\,
	ena => \incdecdutytest|duty[1]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \incdecdutytest|duty[5]~_emulated_q\);

-- Location: LCCOMB_X62_Y35_N8
\incdecdutytest|duty[5]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \incdecdutytest|duty[5]~9_combout\ = (\reset~input_o\ & ((\incdecdutytest|duty[5]~_emulated_q\ $ (\incdecdutytest|duty[7]~2_combout\)))) # (!\reset~input_o\ & (!\sel~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~input_o\,
	datab => \incdecdutytest|duty[5]~_emulated_q\,
	datac => \reset~input_o\,
	datad => \incdecdutytest|duty[7]~2_combout\,
	combout => \incdecdutytest|duty[5]~9_combout\);

-- Location: LCCOMB_X62_Y34_N6
\incdecdutytest|LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \incdecdutytest|LessThan1~1_combout\ = (!\incdecdutytest|duty[5]~9_combout\ & (!\incdecdutytest|duty[7]~3_combout\ & !\incdecdutytest|duty[6]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \incdecdutytest|duty[5]~9_combout\,
	datac => \incdecdutytest|duty[7]~3_combout\,
	datad => \incdecdutytest|duty[6]~7_combout\,
	combout => \incdecdutytest|LessThan1~1_combout\);

-- Location: LCCOMB_X61_Y35_N4
\incdecdutytest|duty_sig[2]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \incdecdutytest|duty_sig[2]~26_combout\ = (\incdecdutytest|Add0~4_combout\) # ((\incdecdutytest|duty\(8) & ((\incdecdutytest|LessThan0~0_combout\) # (!\incdecdutytest|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incdecdutytest|LessThan1~1_combout\,
	datab => \incdecdutytest|LessThan0~0_combout\,
	datac => \incdecdutytest|duty\(8),
	datad => \incdecdutytest|Add0~4_combout\,
	combout => \incdecdutytest|duty_sig[2]~26_combout\);

-- Location: LCCOMB_X63_Y35_N10
\incdecdutytest|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \incdecdutytest|Add1~4_combout\ = (\incdecdutytest|duty[2]~15_combout\ & (\incdecdutytest|Add1~3\ $ (GND))) # (!\incdecdutytest|duty[2]~15_combout\ & (!\incdecdutytest|Add1~3\ & VCC))
-- \incdecdutytest|Add1~5\ = CARRY((\incdecdutytest|duty[2]~15_combout\ & !\incdecdutytest|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \incdecdutytest|duty[2]~15_combout\,
	datad => VCC,
	cin => \incdecdutytest|Add1~3\,
	combout => \incdecdutytest|Add1~4_combout\,
	cout => \incdecdutytest|Add1~5\);

-- Location: LCCOMB_X63_Y35_N28
\incdecdutytest|duty_sig[2]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \incdecdutytest|duty_sig[2]~36_combout\ = (!\incdecdutytest|LessThan1~2_combout\ & (\incdecdutytest|Add1~4_combout\ & ((\incdecdutytest|inc_prev\(1)) # (!\incdecdutytest|inc_prev\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incdecdutytest|inc_prev\(0),
	datab => \incdecdutytest|inc_prev\(1),
	datac => \incdecdutytest|LessThan1~2_combout\,
	datad => \incdecdutytest|Add1~4_combout\,
	combout => \incdecdutytest|duty_sig[2]~36_combout\);

-- Location: LCCOMB_X62_Y35_N10
\incdecdutytest|duty[2]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \incdecdutytest|duty[2]~16_combout\ = \incdecdutytest|duty[7]~2_combout\ $ (((\incdecdutytest|duty_sig[2]~36_combout\) # ((\incdecdutytest|Equal0~0_combout\ & \incdecdutytest|duty_sig[2]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incdecdutytest|Equal0~0_combout\,
	datab => \incdecdutytest|duty[7]~2_combout\,
	datac => \incdecdutytest|duty_sig[2]~26_combout\,
	datad => \incdecdutytest|duty_sig[2]~36_combout\,
	combout => \incdecdutytest|duty[2]~16_combout\);

-- Location: FF_X62_Y35_N11
\incdecdutytest|duty[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \incdecdutytest|duty[2]~16_combout\,
	clrn => \reset~input_o\,
	ena => \incdecdutytest|duty[1]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \incdecdutytest|duty[2]~_emulated_q\);

-- Location: LCCOMB_X62_Y35_N12
\incdecdutytest|duty[2]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \incdecdutytest|duty[2]~15_combout\ = (\reset~input_o\ & (\incdecdutytest|duty[2]~_emulated_q\ $ (((\incdecdutytest|duty[7]~2_combout\))))) # (!\reset~input_o\ & (((!\sel~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incdecdutytest|duty[2]~_emulated_q\,
	datab => \sel~input_o\,
	datac => \reset~input_o\,
	datad => \incdecdutytest|duty[7]~2_combout\,
	combout => \incdecdutytest|duty[2]~15_combout\);

-- Location: LCCOMB_X63_Y35_N2
\incdecdutytest|duty_sig[3]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \incdecdutytest|duty_sig[3]~33_combout\ = (\incdecdutytest|Add1~6_combout\ & ((\incdecdutytest|inc_prev\(1)) # (!\incdecdutytest|inc_prev\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incdecdutytest|inc_prev\(0),
	datac => \incdecdutytest|inc_prev\(1),
	datad => \incdecdutytest|Add1~6_combout\,
	combout => \incdecdutytest|duty_sig[3]~33_combout\);

-- Location: LCCOMB_X60_Y35_N12
\incdecdutytest|duty_sig[3]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \incdecdutytest|duty_sig[3]~35_combout\ = (\incdecdutytest|inc_prev\(0) & ((\incdecdutytest|inc_prev\(1) & ((\incdecdutytest|LessThan1~2_combout\))) # (!\incdecdutytest|inc_prev\(1) & (\incdecdutytest|LessThan0~1_combout\)))) # 
-- (!\incdecdutytest|inc_prev\(0) & (((\incdecdutytest|LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incdecdutytest|LessThan0~1_combout\,
	datab => \incdecdutytest|inc_prev\(0),
	datac => \incdecdutytest|inc_prev\(1),
	datad => \incdecdutytest|LessThan1~2_combout\,
	combout => \incdecdutytest|duty_sig[3]~35_combout\);

-- Location: LCCOMB_X61_Y38_N12
\incdecdutytest|duty_sig[3]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \incdecdutytest|duty_sig[3]~34_combout\ = (\incdecdutytest|Add0~6_combout\ & (!\incdecdutytest|inc_prev\(1) & \incdecdutytest|inc_prev\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incdecdutytest|Add0~6_combout\,
	datab => \incdecdutytest|inc_prev\(1),
	datac => \incdecdutytest|inc_prev\(0),
	combout => \incdecdutytest|duty_sig[3]~34_combout\);

-- Location: LCCOMB_X62_Y35_N30
\incdecdutytest|duty[3]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \incdecdutytest|duty[3]~14_combout\ = \incdecdutytest|duty[7]~2_combout\ $ (((\incdecdutytest|duty_sig[3]~33_combout\) # ((\incdecdutytest|duty_sig[3]~35_combout\) # (\incdecdutytest|duty_sig[3]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incdecdutytest|duty_sig[3]~33_combout\,
	datab => \incdecdutytest|duty[7]~2_combout\,
	datac => \incdecdutytest|duty_sig[3]~35_combout\,
	datad => \incdecdutytest|duty_sig[3]~34_combout\,
	combout => \incdecdutytest|duty[3]~14_combout\);

-- Location: FF_X62_Y35_N31
\incdecdutytest|duty[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \incdecdutytest|duty[3]~14_combout\,
	clrn => \reset~input_o\,
	ena => \incdecdutytest|duty[1]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \incdecdutytest|duty[3]~_emulated_q\);

-- Location: LCCOMB_X62_Y35_N24
\incdecdutytest|duty[3]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \incdecdutytest|duty[3]~13_combout\ = (\reset~input_o\ & (\incdecdutytest|duty[3]~_emulated_q\ $ (((\incdecdutytest|duty[7]~2_combout\))))) # (!\reset~input_o\ & (((!\sel~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incdecdutytest|duty[3]~_emulated_q\,
	datab => \reset~input_o\,
	datac => \sel~input_o\,
	datad => \incdecdutytest|duty[7]~2_combout\,
	combout => \incdecdutytest|duty[3]~13_combout\);

-- Location: LCCOMB_X62_Y38_N0
\PWMtest|Add5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add5~0_combout\ = \PWMtest|softstart_duty_act\(0) $ (GND)
-- \PWMtest|Add5~1\ = CARRY(!\PWMtest|softstart_duty_act\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(0),
	datad => VCC,
	combout => \PWMtest|Add5~0_combout\,
	cout => \PWMtest|Add5~1\);

-- Location: LCCOMB_X61_Y38_N16
\PWMtest|Selector34~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Selector34~0_combout\ = (!\PWMtest|softstart_duty_act[3]~8_combout\ & ((\PWMtest|softstart_duty_act[3]~7_combout\ & (!\PWMtest|Add5~0_combout\)) # (!\PWMtest|softstart_duty_act[3]~7_combout\ & ((!\incdecdutytest|duty[0]~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act[3]~7_combout\,
	datab => \PWMtest|softstart_duty_act[3]~8_combout\,
	datac => \PWMtest|Add5~0_combout\,
	datad => \incdecdutytest|duty[0]~19_combout\,
	combout => \PWMtest|Selector34~0_combout\);

-- Location: LCCOMB_X56_Y36_N0
\PWMtest|countactual1[0]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|countactual1[0]~33_combout\ = \PWMtest|countactual1\(0) $ (VCC)
-- \PWMtest|countactual1[0]~34\ = CARRY(\PWMtest|countactual1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|countactual1\(0),
	datad => VCC,
	combout => \PWMtest|countactual1[0]~33_combout\,
	cout => \PWMtest|countactual1[0]~34\);

-- Location: LCCOMB_X54_Y37_N30
\PWMtest|Selector39~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Selector39~0_combout\ = (\PWMtest|est_act.boost2softs~q\ & ((\PWMtest|est_act.boost1~q\) # ((!\PWMtest|Selector37~4_combout\) # (!\PWMtest|Selector37~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|est_act.boost2softs~q\,
	datab => \PWMtest|est_act.boost1~q\,
	datac => \PWMtest|Selector37~5_combout\,
	datad => \PWMtest|Selector37~4_combout\,
	combout => \PWMtest|Selector39~0_combout\);

-- Location: LCCOMB_X55_Y37_N26
\PWMtest|est_act.idle~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|est_act.idle~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \PWMtest|est_act.idle~feeder_combout\);

-- Location: FF_X55_Y37_N27
\PWMtest|est_act.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|est_act.idle~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|est_act.idle~q\);

-- Location: LCCOMB_X62_Y38_N18
\PWMtest|Add5~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add5~18_combout\ = (\PWMtest|softstart_duty_act\(9) & (!\PWMtest|Add5~17\)) # (!\PWMtest|softstart_duty_act\(9) & ((\PWMtest|Add5~17\) # (GND)))
-- \PWMtest|Add5~19\ = CARRY((!\PWMtest|Add5~17\) # (!\PWMtest|softstart_duty_act\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|softstart_duty_act\(9),
	datad => VCC,
	cin => \PWMtest|Add5~17\,
	combout => \PWMtest|Add5~18_combout\,
	cout => \PWMtest|Add5~19\);

-- Location: LCCOMB_X62_Y38_N20
\PWMtest|Add5~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add5~20_combout\ = (\PWMtest|softstart_duty_act\(10) & (\PWMtest|Add5~19\ $ (GND))) # (!\PWMtest|softstart_duty_act\(10) & (!\PWMtest|Add5~19\ & VCC))
-- \PWMtest|Add5~21\ = CARRY((\PWMtest|softstart_duty_act\(10) & !\PWMtest|Add5~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(10),
	datad => VCC,
	cin => \PWMtest|Add5~19\,
	combout => \PWMtest|Add5~20_combout\,
	cout => \PWMtest|Add5~21\);

-- Location: LCCOMB_X62_Y36_N12
\PWMtest|Selector24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Selector24~0_combout\ = (\PWMtest|Add5~20_combout\ & (\PWMtest|est_act.idle~q\ & ((\PWMtest|softstart_duty_act[11]~2_combout\) # (\PWMtest|softstart_duty_act\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|Add5~20_combout\,
	datab => \PWMtest|est_act.idle~q\,
	datac => \PWMtest|softstart_duty_act[11]~2_combout\,
	datad => \PWMtest|softstart_duty_act\(31),
	combout => \PWMtest|Selector24~0_combout\);

-- Location: LCCOMB_X57_Y38_N24
\PWMtest|LessThan2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan2~0_combout\ = (\PWMtest|countactual1\(2) & \PWMtest|countactual1\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(2),
	datac => \PWMtest|countactual1\(1),
	combout => \PWMtest|LessThan2~0_combout\);

-- Location: LCCOMB_X57_Y38_N20
\PWMtest|LessThan2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan2~2_combout\ = (!\PWMtest|countactual1\(6) & (!\PWMtest|countactual1\(7) & !\PWMtest|countactual1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(6),
	datac => \PWMtest|countactual1\(7),
	datad => \PWMtest|countactual1\(5),
	combout => \PWMtest|LessThan2~2_combout\);

-- Location: LCCOMB_X57_Y38_N30
\PWMtest|LessThan3~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan3~7_combout\ = (\PWMtest|LessThan2~2_combout\ & (((!\PWMtest|LessThan2~0_combout\ & !\PWMtest|countactual1\(3))) # (!\PWMtest|countactual1\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(4),
	datab => \PWMtest|LessThan2~0_combout\,
	datac => \PWMtest|LessThan2~2_combout\,
	datad => \PWMtest|countactual1\(3),
	combout => \PWMtest|LessThan3~7_combout\);

-- Location: LCCOMB_X57_Y38_N18
\PWMtest|LessThan2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan2~1_combout\ = (!\PWMtest|countactual1\(4) & (((!\PWMtest|LessThan2~0_combout\) # (!\PWMtest|countactual1\(0))) # (!\PWMtest|countactual1\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(4),
	datab => \PWMtest|countactual1\(3),
	datac => \PWMtest|countactual1\(0),
	datad => \PWMtest|LessThan2~0_combout\,
	combout => \PWMtest|LessThan2~1_combout\);

-- Location: LCCOMB_X56_Y37_N28
\PWMtest|est_sig~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|est_sig~8_combout\ = ((\PWMtest|LessThan3~7_combout\) # ((\PWMtest|LessThan2~2_combout\ & \PWMtest|LessThan2~1_combout\))) # (!\PWMtest|countactual1\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(8),
	datab => \PWMtest|LessThan3~7_combout\,
	datac => \PWMtest|LessThan2~2_combout\,
	datad => \PWMtest|LessThan2~1_combout\,
	combout => \PWMtest|est_sig~8_combout\);

-- Location: LCCOMB_X57_Y37_N26
\PWMtest|LessThan3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan3~5_combout\ = (!\PWMtest|countactual1\(28) & (!\PWMtest|countactual1\(27) & (!\PWMtest|countactual1\(26) & !\PWMtest|countactual1\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(28),
	datab => \PWMtest|countactual1\(27),
	datac => \PWMtest|countactual1\(26),
	datad => \PWMtest|countactual1\(25),
	combout => \PWMtest|LessThan3~5_combout\);

-- Location: LCCOMB_X57_Y37_N10
\PWMtest|LessThan3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan3~1_combout\ = (!\PWMtest|countactual1\(14) & (!\PWMtest|countactual1\(15) & (!\PWMtest|countactual1\(16) & !\PWMtest|countactual1\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(14),
	datab => \PWMtest|countactual1\(15),
	datac => \PWMtest|countactual1\(16),
	datad => \PWMtest|countactual1\(13),
	combout => \PWMtest|LessThan3~1_combout\);

-- Location: LCCOMB_X57_Y37_N24
\PWMtest|LessThan3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan3~0_combout\ = (!\PWMtest|countactual1\(11) & (!\PWMtest|countactual1\(9) & (!\PWMtest|countactual1\(10) & !\PWMtest|countactual1\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(11),
	datab => \PWMtest|countactual1\(9),
	datac => \PWMtest|countactual1\(10),
	datad => \PWMtest|countactual1\(12),
	combout => \PWMtest|LessThan3~0_combout\);

-- Location: LCCOMB_X57_Y37_N4
\PWMtest|LessThan3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan3~2_combout\ = (!\PWMtest|countactual1\(18) & (!\PWMtest|countactual1\(17) & (!\PWMtest|countactual1\(20) & !\PWMtest|countactual1\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(18),
	datab => \PWMtest|countactual1\(17),
	datac => \PWMtest|countactual1\(20),
	datad => \PWMtest|countactual1\(19),
	combout => \PWMtest|LessThan3~2_combout\);

-- Location: LCCOMB_X57_Y37_N6
\PWMtest|LessThan3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan3~3_combout\ = (!\PWMtest|countactual1\(22) & (!\PWMtest|countactual1\(21) & (!\PWMtest|countactual1\(23) & !\PWMtest|countactual1\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(22),
	datab => \PWMtest|countactual1\(21),
	datac => \PWMtest|countactual1\(23),
	datad => \PWMtest|countactual1\(24),
	combout => \PWMtest|LessThan3~3_combout\);

-- Location: LCCOMB_X57_Y37_N0
\PWMtest|LessThan3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan3~4_combout\ = (\PWMtest|LessThan3~1_combout\ & (\PWMtest|LessThan3~0_combout\ & (\PWMtest|LessThan3~2_combout\ & \PWMtest|LessThan3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|LessThan3~1_combout\,
	datab => \PWMtest|LessThan3~0_combout\,
	datac => \PWMtest|LessThan3~2_combout\,
	datad => \PWMtest|LessThan3~3_combout\,
	combout => \PWMtest|LessThan3~4_combout\);

-- Location: LCCOMB_X57_Y37_N28
\PWMtest|LessThan3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan3~6_combout\ = (\PWMtest|LessThan3~5_combout\ & (!\PWMtest|countactual1\(29) & (!\PWMtest|countactual1\(30) & \PWMtest|LessThan3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|LessThan3~5_combout\,
	datab => \PWMtest|countactual1\(29),
	datac => \PWMtest|countactual1\(30),
	datad => \PWMtest|LessThan3~4_combout\,
	combout => \PWMtest|LessThan3~6_combout\);

-- Location: LCCOMB_X56_Y37_N14
\PWMtest|est_sig~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|est_sig~9_combout\ = (\PWMtest|countactual1\(31)) # ((\PWMtest|est_sig~8_combout\ & \PWMtest|LessThan3~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|est_sig~8_combout\,
	datac => \PWMtest|countactual1\(31),
	datad => \PWMtest|LessThan3~6_combout\,
	combout => \PWMtest|est_sig~9_combout\);

-- Location: LCCOMB_X55_Y37_N30
\PWMtest|Selector38~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Selector38~0_combout\ = (\PWMtest|LessThan5~3_combout\ & (!\PWMtest|est_sig~9_combout\ & \PWMtest|est_act.boost2softs~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|LessThan5~3_combout\,
	datab => \PWMtest|est_sig~9_combout\,
	datac => \PWMtest|est_act.boost2softs~q\,
	combout => \PWMtest|Selector38~0_combout\);

-- Location: LCCOMB_X54_Y37_N22
\PWMtest|Selector38~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Selector38~1_combout\ = (\PWMtest|Selector38~0_combout\) # ((\sel~input_o\ & !\PWMtest|est_act.idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|Selector38~0_combout\,
	datab => \sel~input_o\,
	datad => \PWMtest|est_act.idle~q\,
	combout => \PWMtest|Selector38~1_combout\);

-- Location: LCCOMB_X62_Y38_N6
\PWMtest|Add5~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add5~6_combout\ = (\PWMtest|softstart_duty_act\(3) & ((\PWMtest|Add5~5\) # (GND))) # (!\PWMtest|softstart_duty_act\(3) & (!\PWMtest|Add5~5\))
-- \PWMtest|Add5~7\ = CARRY((\PWMtest|softstart_duty_act\(3)) # (!\PWMtest|Add5~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(3),
	datad => VCC,
	cin => \PWMtest|Add5~5\,
	combout => \PWMtest|Add5~6_combout\,
	cout => \PWMtest|Add5~7\);

-- Location: LCCOMB_X62_Y38_N8
\PWMtest|Add5~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add5~8_combout\ = (\PWMtest|softstart_duty_act\(4) & (\PWMtest|Add5~7\ $ (GND))) # (!\PWMtest|softstart_duty_act\(4) & (!\PWMtest|Add5~7\ & VCC))
-- \PWMtest|Add5~9\ = CARRY((\PWMtest|softstart_duty_act\(4) & !\PWMtest|Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|softstart_duty_act\(4),
	datad => VCC,
	cin => \PWMtest|Add5~7\,
	combout => \PWMtest|Add5~8_combout\,
	cout => \PWMtest|Add5~9\);

-- Location: LCCOMB_X61_Y38_N8
\PWMtest|Selector30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Selector30~0_combout\ = (!\PWMtest|softstart_duty_act[3]~8_combout\ & ((\PWMtest|softstart_duty_act[3]~7_combout\ & (\PWMtest|Add5~8_combout\)) # (!\PWMtest|softstart_duty_act[3]~7_combout\ & ((\incdecdutytest|duty[4]~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act[3]~7_combout\,
	datab => \PWMtest|softstart_duty_act[3]~8_combout\,
	datac => \PWMtest|Add5~8_combout\,
	datad => \incdecdutytest|duty[4]~11_combout\,
	combout => \PWMtest|Selector30~0_combout\);

-- Location: FF_X61_Y38_N9
\PWMtest|softstart_duty_act[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|Selector30~0_combout\,
	clrn => \reset~input_o\,
	ena => \PWMtest|softstart_duty_act[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|softstart_duty_act\(4));

-- Location: LCCOMB_X62_Y38_N10
\PWMtest|Add5~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add5~10_combout\ = (\PWMtest|softstart_duty_act\(5) & (!\PWMtest|Add5~9\)) # (!\PWMtest|softstart_duty_act\(5) & ((\PWMtest|Add5~9\) # (GND)))
-- \PWMtest|Add5~11\ = CARRY((!\PWMtest|Add5~9\) # (!\PWMtest|softstart_duty_act\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(5),
	datad => VCC,
	cin => \PWMtest|Add5~9\,
	combout => \PWMtest|Add5~10_combout\,
	cout => \PWMtest|Add5~11\);

-- Location: LCCOMB_X61_Y38_N22
\PWMtest|Selector29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Selector29~0_combout\ = (!\PWMtest|softstart_duty_act[3]~8_combout\ & ((\PWMtest|softstart_duty_act[3]~7_combout\ & (\PWMtest|Add5~10_combout\)) # (!\PWMtest|softstart_duty_act[3]~7_combout\ & ((\incdecdutytest|duty[5]~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act[3]~7_combout\,
	datab => \PWMtest|softstart_duty_act[3]~8_combout\,
	datac => \PWMtest|Add5~10_combout\,
	datad => \incdecdutytest|duty[5]~9_combout\,
	combout => \PWMtest|Selector29~0_combout\);

-- Location: FF_X61_Y38_N23
\PWMtest|softstart_duty_act[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|Selector29~0_combout\,
	clrn => \reset~input_o\,
	ena => \PWMtest|softstart_duty_act[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|softstart_duty_act\(5));

-- Location: LCCOMB_X62_Y38_N12
\PWMtest|Add5~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add5~12_combout\ = (\PWMtest|softstart_duty_act\(6) & (\PWMtest|Add5~11\ $ (GND))) # (!\PWMtest|softstart_duty_act\(6) & (!\PWMtest|Add5~11\ & VCC))
-- \PWMtest|Add5~13\ = CARRY((\PWMtest|softstart_duty_act\(6) & !\PWMtest|Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|softstart_duty_act\(6),
	datad => VCC,
	cin => \PWMtest|Add5~11\,
	combout => \PWMtest|Add5~12_combout\,
	cout => \PWMtest|Add5~13\);

-- Location: LCCOMB_X61_Y38_N28
\PWMtest|Selector28~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Selector28~0_combout\ = (!\PWMtest|softstart_duty_act[3]~8_combout\ & ((\PWMtest|softstart_duty_act[3]~7_combout\ & (\PWMtest|Add5~12_combout\)) # (!\PWMtest|softstart_duty_act[3]~7_combout\ & ((\incdecdutytest|duty[6]~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act[3]~7_combout\,
	datab => \PWMtest|softstart_duty_act[3]~8_combout\,
	datac => \PWMtest|Add5~12_combout\,
	datad => \incdecdutytest|duty[6]~7_combout\,
	combout => \PWMtest|Selector28~0_combout\);

-- Location: FF_X61_Y38_N29
\PWMtest|softstart_duty_act[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|Selector28~0_combout\,
	clrn => \reset~input_o\,
	ena => \PWMtest|softstart_duty_act[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|softstart_duty_act\(6));

-- Location: LCCOMB_X61_Y37_N2
\PWMtest|Add1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add1~1_cout\ = CARRY(\PWMtest|softstart_duty_act\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|softstart_duty_act\(1),
	datad => VCC,
	cout => \PWMtest|Add1~1_cout\);

-- Location: LCCOMB_X61_Y37_N4
\PWMtest|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add1~2_combout\ = (\PWMtest|softstart_duty_act\(2) & (\PWMtest|Add1~1_cout\ & VCC)) # (!\PWMtest|softstart_duty_act\(2) & (!\PWMtest|Add1~1_cout\))
-- \PWMtest|Add1~3\ = CARRY((!\PWMtest|softstart_duty_act\(2) & !\PWMtest|Add1~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|softstart_duty_act\(2),
	datad => VCC,
	cin => \PWMtest|Add1~1_cout\,
	combout => \PWMtest|Add1~2_combout\,
	cout => \PWMtest|Add1~3\);

-- Location: LCCOMB_X61_Y37_N6
\PWMtest|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add1~4_combout\ = (\PWMtest|softstart_duty_act\(3) & ((GND) # (!\PWMtest|Add1~3\))) # (!\PWMtest|softstart_duty_act\(3) & (\PWMtest|Add1~3\ $ (GND)))
-- \PWMtest|Add1~5\ = CARRY((\PWMtest|softstart_duty_act\(3)) # (!\PWMtest|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(3),
	datad => VCC,
	cin => \PWMtest|Add1~3\,
	combout => \PWMtest|Add1~4_combout\,
	cout => \PWMtest|Add1~5\);

-- Location: LCCOMB_X61_Y37_N8
\PWMtest|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add1~6_combout\ = (\PWMtest|softstart_duty_act\(4) & ((\PWMtest|Add1~5\) # (GND))) # (!\PWMtest|softstart_duty_act\(4) & (!\PWMtest|Add1~5\))
-- \PWMtest|Add1~7\ = CARRY((\PWMtest|softstart_duty_act\(4)) # (!\PWMtest|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|softstart_duty_act\(4),
	datad => VCC,
	cin => \PWMtest|Add1~5\,
	combout => \PWMtest|Add1~6_combout\,
	cout => \PWMtest|Add1~7\);

-- Location: LCCOMB_X61_Y37_N10
\PWMtest|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add1~8_combout\ = (\PWMtest|softstart_duty_act\(5) & (!\PWMtest|Add1~7\ & VCC)) # (!\PWMtest|softstart_duty_act\(5) & (\PWMtest|Add1~7\ $ (GND)))
-- \PWMtest|Add1~9\ = CARRY((!\PWMtest|softstart_duty_act\(5) & !\PWMtest|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(5),
	datad => VCC,
	cin => \PWMtest|Add1~7\,
	combout => \PWMtest|Add1~8_combout\,
	cout => \PWMtest|Add1~9\);

-- Location: LCCOMB_X61_Y37_N12
\PWMtest|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add1~10_combout\ = (\PWMtest|softstart_duty_act\(6) & ((\PWMtest|Add1~9\) # (GND))) # (!\PWMtest|softstart_duty_act\(6) & (!\PWMtest|Add1~9\))
-- \PWMtest|Add1~11\ = CARRY((\PWMtest|softstart_duty_act\(6)) # (!\PWMtest|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|softstart_duty_act\(6),
	datad => VCC,
	cin => \PWMtest|Add1~9\,
	combout => \PWMtest|Add1~10_combout\,
	cout => \PWMtest|Add1~11\);

-- Location: LCCOMB_X61_Y37_N14
\PWMtest|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add1~12_combout\ = (\PWMtest|softstart_duty_act\(7) & (!\PWMtest|Add1~11\ & VCC)) # (!\PWMtest|softstart_duty_act\(7) & (\PWMtest|Add1~11\ $ (GND)))
-- \PWMtest|Add1~13\ = CARRY((!\PWMtest|softstart_duty_act\(7) & !\PWMtest|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(7),
	datad => VCC,
	cin => \PWMtest|Add1~11\,
	combout => \PWMtest|Add1~12_combout\,
	cout => \PWMtest|Add1~13\);

-- Location: LCCOMB_X61_Y37_N16
\PWMtest|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add1~14_combout\ = (\PWMtest|softstart_duty_act\(8) & (!\PWMtest|Add1~13\)) # (!\PWMtest|softstart_duty_act\(8) & (\PWMtest|Add1~13\ & VCC))
-- \PWMtest|Add1~15\ = CARRY((\PWMtest|softstart_duty_act\(8) & !\PWMtest|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(8),
	datad => VCC,
	cin => \PWMtest|Add1~13\,
	combout => \PWMtest|Add1~14_combout\,
	cout => \PWMtest|Add1~15\);

-- Location: LCCOMB_X61_Y37_N18
\PWMtest|Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add1~16_combout\ = (\PWMtest|softstart_duty_act\(9) & (!\PWMtest|Add1~15\ & VCC)) # (!\PWMtest|softstart_duty_act\(9) & (\PWMtest|Add1~15\ $ (GND)))
-- \PWMtest|Add1~17\ = CARRY((!\PWMtest|softstart_duty_act\(9) & !\PWMtest|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(9),
	datad => VCC,
	cin => \PWMtest|Add1~15\,
	combout => \PWMtest|Add1~16_combout\,
	cout => \PWMtest|Add1~17\);

-- Location: LCCOMB_X61_Y37_N20
\PWMtest|Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add1~18_combout\ = (\PWMtest|softstart_duty_act\(10) & ((\PWMtest|Add1~17\) # (GND))) # (!\PWMtest|softstart_duty_act\(10) & (!\PWMtest|Add1~17\))
-- \PWMtest|Add1~19\ = CARRY((\PWMtest|softstart_duty_act\(10)) # (!\PWMtest|Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|softstart_duty_act\(10),
	datad => VCC,
	cin => \PWMtest|Add1~17\,
	combout => \PWMtest|Add1~18_combout\,
	cout => \PWMtest|Add1~19\);

-- Location: LCCOMB_X61_Y37_N22
\PWMtest|Add1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add1~20_combout\ = (\PWMtest|softstart_duty_act\(11) & (!\PWMtest|Add1~19\ & VCC)) # (!\PWMtest|softstart_duty_act\(11) & (\PWMtest|Add1~19\ $ (GND)))
-- \PWMtest|Add1~21\ = CARRY((!\PWMtest|softstart_duty_act\(11) & !\PWMtest|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(11),
	datad => VCC,
	cin => \PWMtest|Add1~19\,
	combout => \PWMtest|Add1~20_combout\,
	cout => \PWMtest|Add1~21\);

-- Location: LCCOMB_X61_Y37_N24
\PWMtest|Add1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add1~22_combout\ = (\PWMtest|softstart_duty_act\(12) & ((\PWMtest|Add1~21\) # (GND))) # (!\PWMtest|softstart_duty_act\(12) & (!\PWMtest|Add1~21\))
-- \PWMtest|Add1~23\ = CARRY((\PWMtest|softstart_duty_act\(12)) # (!\PWMtest|Add1~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(12),
	datad => VCC,
	cin => \PWMtest|Add1~21\,
	combout => \PWMtest|Add1~22_combout\,
	cout => \PWMtest|Add1~23\);

-- Location: LCCOMB_X61_Y37_N26
\PWMtest|Add1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add1~24_combout\ = (\PWMtest|softstart_duty_act\(13) & (!\PWMtest|Add1~23\ & VCC)) # (!\PWMtest|softstart_duty_act\(13) & (\PWMtest|Add1~23\ $ (GND)))
-- \PWMtest|Add1~25\ = CARRY((!\PWMtest|softstart_duty_act\(13) & !\PWMtest|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|softstart_duty_act\(13),
	datad => VCC,
	cin => \PWMtest|Add1~23\,
	combout => \PWMtest|Add1~24_combout\,
	cout => \PWMtest|Add1~25\);

-- Location: LCCOMB_X61_Y37_N28
\PWMtest|Add1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add1~26_combout\ = (\PWMtest|softstart_duty_act\(14) & ((\PWMtest|Add1~25\) # (GND))) # (!\PWMtest|softstart_duty_act\(14) & (!\PWMtest|Add1~25\))
-- \PWMtest|Add1~27\ = CARRY((\PWMtest|softstart_duty_act\(14)) # (!\PWMtest|Add1~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|softstart_duty_act\(14),
	datad => VCC,
	cin => \PWMtest|Add1~25\,
	combout => \PWMtest|Add1~26_combout\,
	cout => \PWMtest|Add1~27\);

-- Location: LCCOMB_X61_Y37_N30
\PWMtest|Add1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add1~28_combout\ = (\PWMtest|softstart_duty_act\(15) & (!\PWMtest|Add1~27\ & VCC)) # (!\PWMtest|softstart_duty_act\(15) & (\PWMtest|Add1~27\ $ (GND)))
-- \PWMtest|Add1~29\ = CARRY((!\PWMtest|softstart_duty_act\(15) & !\PWMtest|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(15),
	datad => VCC,
	cin => \PWMtest|Add1~27\,
	combout => \PWMtest|Add1~28_combout\,
	cout => \PWMtest|Add1~29\);

-- Location: LCCOMB_X61_Y36_N0
\PWMtest|Add1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add1~30_combout\ = (\PWMtest|softstart_duty_act\(16) & ((\PWMtest|Add1~29\) # (GND))) # (!\PWMtest|softstart_duty_act\(16) & (!\PWMtest|Add1~29\))
-- \PWMtest|Add1~31\ = CARRY((\PWMtest|softstart_duty_act\(16)) # (!\PWMtest|Add1~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(16),
	datad => VCC,
	cin => \PWMtest|Add1~29\,
	combout => \PWMtest|Add1~30_combout\,
	cout => \PWMtest|Add1~31\);

-- Location: LCCOMB_X61_Y36_N2
\PWMtest|Add1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add1~32_combout\ = (\PWMtest|softstart_duty_act\(17) & (!\PWMtest|Add1~31\ & VCC)) # (!\PWMtest|softstart_duty_act\(17) & (\PWMtest|Add1~31\ $ (GND)))
-- \PWMtest|Add1~33\ = CARRY((!\PWMtest|softstart_duty_act\(17) & !\PWMtest|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(17),
	datad => VCC,
	cin => \PWMtest|Add1~31\,
	combout => \PWMtest|Add1~32_combout\,
	cout => \PWMtest|Add1~33\);

-- Location: LCCOMB_X61_Y36_N4
\PWMtest|Add1~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add1~34_combout\ = (\PWMtest|softstart_duty_act\(18) & ((\PWMtest|Add1~33\) # (GND))) # (!\PWMtest|softstart_duty_act\(18) & (!\PWMtest|Add1~33\))
-- \PWMtest|Add1~35\ = CARRY((\PWMtest|softstart_duty_act\(18)) # (!\PWMtest|Add1~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(18),
	datad => VCC,
	cin => \PWMtest|Add1~33\,
	combout => \PWMtest|Add1~34_combout\,
	cout => \PWMtest|Add1~35\);

-- Location: LCCOMB_X61_Y36_N6
\PWMtest|Add1~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add1~36_combout\ = (\PWMtest|softstart_duty_act\(19) & (!\PWMtest|Add1~35\ & VCC)) # (!\PWMtest|softstart_duty_act\(19) & (\PWMtest|Add1~35\ $ (GND)))
-- \PWMtest|Add1~37\ = CARRY((!\PWMtest|softstart_duty_act\(19) & !\PWMtest|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|softstart_duty_act\(19),
	datad => VCC,
	cin => \PWMtest|Add1~35\,
	combout => \PWMtest|Add1~36_combout\,
	cout => \PWMtest|Add1~37\);

-- Location: LCCOMB_X61_Y36_N8
\PWMtest|Add1~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add1~38_combout\ = (\PWMtest|softstart_duty_act\(20) & ((\PWMtest|Add1~37\) # (GND))) # (!\PWMtest|softstart_duty_act\(20) & (!\PWMtest|Add1~37\))
-- \PWMtest|Add1~39\ = CARRY((\PWMtest|softstart_duty_act\(20)) # (!\PWMtest|Add1~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(20),
	datad => VCC,
	cin => \PWMtest|Add1~37\,
	combout => \PWMtest|Add1~38_combout\,
	cout => \PWMtest|Add1~39\);

-- Location: LCCOMB_X61_Y36_N10
\PWMtest|Add1~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add1~40_combout\ = (\PWMtest|softstart_duty_act\(21) & (!\PWMtest|Add1~39\ & VCC)) # (!\PWMtest|softstart_duty_act\(21) & (\PWMtest|Add1~39\ $ (GND)))
-- \PWMtest|Add1~41\ = CARRY((!\PWMtest|softstart_duty_act\(21) & !\PWMtest|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|softstart_duty_act\(21),
	datad => VCC,
	cin => \PWMtest|Add1~39\,
	combout => \PWMtest|Add1~40_combout\,
	cout => \PWMtest|Add1~41\);

-- Location: LCCOMB_X61_Y36_N12
\PWMtest|Add1~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add1~42_combout\ = (\PWMtest|softstart_duty_act\(22) & ((\PWMtest|Add1~41\) # (GND))) # (!\PWMtest|softstart_duty_act\(22) & (!\PWMtest|Add1~41\))
-- \PWMtest|Add1~43\ = CARRY((\PWMtest|softstart_duty_act\(22)) # (!\PWMtest|Add1~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|softstart_duty_act\(22),
	datad => VCC,
	cin => \PWMtest|Add1~41\,
	combout => \PWMtest|Add1~42_combout\,
	cout => \PWMtest|Add1~43\);

-- Location: LCCOMB_X61_Y36_N14
\PWMtest|Add1~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add1~44_combout\ = (\PWMtest|softstart_duty_act\(23) & (!\PWMtest|Add1~43\ & VCC)) # (!\PWMtest|softstart_duty_act\(23) & (\PWMtest|Add1~43\ $ (GND)))
-- \PWMtest|Add1~45\ = CARRY((!\PWMtest|softstart_duty_act\(23) & !\PWMtest|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(23),
	datad => VCC,
	cin => \PWMtest|Add1~43\,
	combout => \PWMtest|Add1~44_combout\,
	cout => \PWMtest|Add1~45\);

-- Location: LCCOMB_X61_Y36_N16
\PWMtest|Add1~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add1~46_combout\ = (\PWMtest|softstart_duty_act\(24) & ((\PWMtest|Add1~45\) # (GND))) # (!\PWMtest|softstart_duty_act\(24) & (!\PWMtest|Add1~45\))
-- \PWMtest|Add1~47\ = CARRY((\PWMtest|softstart_duty_act\(24)) # (!\PWMtest|Add1~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|softstart_duty_act\(24),
	datad => VCC,
	cin => \PWMtest|Add1~45\,
	combout => \PWMtest|Add1~46_combout\,
	cout => \PWMtest|Add1~47\);

-- Location: LCCOMB_X61_Y36_N18
\PWMtest|Add1~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add1~48_combout\ = (\PWMtest|softstart_duty_act\(25) & (!\PWMtest|Add1~47\ & VCC)) # (!\PWMtest|softstart_duty_act\(25) & (\PWMtest|Add1~47\ $ (GND)))
-- \PWMtest|Add1~49\ = CARRY((!\PWMtest|softstart_duty_act\(25) & !\PWMtest|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(25),
	datad => VCC,
	cin => \PWMtest|Add1~47\,
	combout => \PWMtest|Add1~48_combout\,
	cout => \PWMtest|Add1~49\);

-- Location: LCCOMB_X61_Y36_N20
\PWMtest|Add1~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add1~50_combout\ = (\PWMtest|softstart_duty_act\(26) & ((\PWMtest|Add1~49\) # (GND))) # (!\PWMtest|softstart_duty_act\(26) & (!\PWMtest|Add1~49\))
-- \PWMtest|Add1~51\ = CARRY((\PWMtest|softstart_duty_act\(26)) # (!\PWMtest|Add1~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(26),
	datad => VCC,
	cin => \PWMtest|Add1~49\,
	combout => \PWMtest|Add1~50_combout\,
	cout => \PWMtest|Add1~51\);

-- Location: LCCOMB_X61_Y36_N22
\PWMtest|Add1~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add1~52_combout\ = (\PWMtest|softstart_duty_act\(27) & (!\PWMtest|Add1~51\ & VCC)) # (!\PWMtest|softstart_duty_act\(27) & (\PWMtest|Add1~51\ $ (GND)))
-- \PWMtest|Add1~53\ = CARRY((!\PWMtest|softstart_duty_act\(27) & !\PWMtest|Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|softstart_duty_act\(27),
	datad => VCC,
	cin => \PWMtest|Add1~51\,
	combout => \PWMtest|Add1~52_combout\,
	cout => \PWMtest|Add1~53\);

-- Location: LCCOMB_X61_Y36_N24
\PWMtest|Add1~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add1~54_combout\ = (\PWMtest|softstart_duty_act\(28) & ((\PWMtest|Add1~53\) # (GND))) # (!\PWMtest|softstart_duty_act\(28) & (!\PWMtest|Add1~53\))
-- \PWMtest|Add1~55\ = CARRY((\PWMtest|softstart_duty_act\(28)) # (!\PWMtest|Add1~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|softstart_duty_act\(28),
	datad => VCC,
	cin => \PWMtest|Add1~53\,
	combout => \PWMtest|Add1~54_combout\,
	cout => \PWMtest|Add1~55\);

-- Location: LCCOMB_X61_Y36_N26
\PWMtest|Add1~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add1~56_combout\ = (\PWMtest|softstart_duty_act\(29) & (!\PWMtest|Add1~55\ & VCC)) # (!\PWMtest|softstart_duty_act\(29) & (\PWMtest|Add1~55\ $ (GND)))
-- \PWMtest|Add1~57\ = CARRY((!\PWMtest|softstart_duty_act\(29) & !\PWMtest|Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|softstart_duty_act\(29),
	datad => VCC,
	cin => \PWMtest|Add1~55\,
	combout => \PWMtest|Add1~56_combout\,
	cout => \PWMtest|Add1~57\);

-- Location: LCCOMB_X61_Y36_N28
\PWMtest|Add1~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add1~58_combout\ = (\PWMtest|softstart_duty_act\(30) & ((\PWMtest|Add1~57\) # (GND))) # (!\PWMtest|softstart_duty_act\(30) & (!\PWMtest|Add1~57\))
-- \PWMtest|Add1~59\ = CARRY((\PWMtest|softstart_duty_act\(30)) # (!\PWMtest|Add1~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(30),
	datad => VCC,
	cin => \PWMtest|Add1~57\,
	combout => \PWMtest|Add1~58_combout\,
	cout => \PWMtest|Add1~59\);

-- Location: LCCOMB_X61_Y36_N30
\PWMtest|Add1~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add1~60_combout\ = \PWMtest|Add1~59\ $ (\PWMtest|softstart_duty_act\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \PWMtest|softstart_duty_act\(31),
	cin => \PWMtest|Add1~59\,
	combout => \PWMtest|Add1~60_combout\);

-- Location: LCCOMB_X60_Y37_N0
\PWMtest|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan0~1_cout\ = CARRY((!\PWMtest|countactual1\(0) & \PWMtest|softstart_duty_act\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(0),
	datab => \PWMtest|softstart_duty_act\(0),
	datad => VCC,
	cout => \PWMtest|LessThan0~1_cout\);

-- Location: LCCOMB_X60_Y37_N2
\PWMtest|LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan0~3_cout\ = CARRY((\PWMtest|countactual1\(1) & ((\PWMtest|softstart_duty_act\(1)) # (!\PWMtest|LessThan0~1_cout\))) # (!\PWMtest|countactual1\(1) & (\PWMtest|softstart_duty_act\(1) & !\PWMtest|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(1),
	datab => \PWMtest|softstart_duty_act\(1),
	datad => VCC,
	cin => \PWMtest|LessThan0~1_cout\,
	cout => \PWMtest|LessThan0~3_cout\);

-- Location: LCCOMB_X60_Y37_N4
\PWMtest|LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan0~5_cout\ = CARRY((\PWMtest|countactual1\(2) & (\PWMtest|Add1~2_combout\ & !\PWMtest|LessThan0~3_cout\)) # (!\PWMtest|countactual1\(2) & ((\PWMtest|Add1~2_combout\) # (!\PWMtest|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(2),
	datab => \PWMtest|Add1~2_combout\,
	datad => VCC,
	cin => \PWMtest|LessThan0~3_cout\,
	cout => \PWMtest|LessThan0~5_cout\);

-- Location: LCCOMB_X60_Y37_N6
\PWMtest|LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan0~7_cout\ = CARRY((\PWMtest|Add1~4_combout\ & (\PWMtest|countactual1\(3) & !\PWMtest|LessThan0~5_cout\)) # (!\PWMtest|Add1~4_combout\ & ((\PWMtest|countactual1\(3)) # (!\PWMtest|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|Add1~4_combout\,
	datab => \PWMtest|countactual1\(3),
	datad => VCC,
	cin => \PWMtest|LessThan0~5_cout\,
	cout => \PWMtest|LessThan0~7_cout\);

-- Location: LCCOMB_X60_Y37_N8
\PWMtest|LessThan0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan0~9_cout\ = CARRY((\PWMtest|countactual1\(4) & (\PWMtest|Add1~6_combout\ & !\PWMtest|LessThan0~7_cout\)) # (!\PWMtest|countactual1\(4) & ((\PWMtest|Add1~6_combout\) # (!\PWMtest|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(4),
	datab => \PWMtest|Add1~6_combout\,
	datad => VCC,
	cin => \PWMtest|LessThan0~7_cout\,
	cout => \PWMtest|LessThan0~9_cout\);

-- Location: LCCOMB_X60_Y37_N10
\PWMtest|LessThan0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan0~11_cout\ = CARRY((\PWMtest|countactual1\(5) & ((!\PWMtest|LessThan0~9_cout\) # (!\PWMtest|Add1~8_combout\))) # (!\PWMtest|countactual1\(5) & (!\PWMtest|Add1~8_combout\ & !\PWMtest|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(5),
	datab => \PWMtest|Add1~8_combout\,
	datad => VCC,
	cin => \PWMtest|LessThan0~9_cout\,
	cout => \PWMtest|LessThan0~11_cout\);

-- Location: LCCOMB_X60_Y37_N12
\PWMtest|LessThan0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan0~13_cout\ = CARRY((\PWMtest|countactual1\(6) & (\PWMtest|Add1~10_combout\ & !\PWMtest|LessThan0~11_cout\)) # (!\PWMtest|countactual1\(6) & ((\PWMtest|Add1~10_combout\) # (!\PWMtest|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(6),
	datab => \PWMtest|Add1~10_combout\,
	datad => VCC,
	cin => \PWMtest|LessThan0~11_cout\,
	cout => \PWMtest|LessThan0~13_cout\);

-- Location: LCCOMB_X60_Y37_N14
\PWMtest|LessThan0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan0~15_cout\ = CARRY((\PWMtest|countactual1\(7) & ((!\PWMtest|LessThan0~13_cout\) # (!\PWMtest|Add1~12_combout\))) # (!\PWMtest|countactual1\(7) & (!\PWMtest|Add1~12_combout\ & !\PWMtest|LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(7),
	datab => \PWMtest|Add1~12_combout\,
	datad => VCC,
	cin => \PWMtest|LessThan0~13_cout\,
	cout => \PWMtest|LessThan0~15_cout\);

-- Location: LCCOMB_X60_Y37_N16
\PWMtest|LessThan0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan0~17_cout\ = CARRY((\PWMtest|countactual1\(8) & (\PWMtest|Add1~14_combout\ & !\PWMtest|LessThan0~15_cout\)) # (!\PWMtest|countactual1\(8) & ((\PWMtest|Add1~14_combout\) # (!\PWMtest|LessThan0~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(8),
	datab => \PWMtest|Add1~14_combout\,
	datad => VCC,
	cin => \PWMtest|LessThan0~15_cout\,
	cout => \PWMtest|LessThan0~17_cout\);

-- Location: LCCOMB_X60_Y37_N18
\PWMtest|LessThan0~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan0~19_cout\ = CARRY((\PWMtest|countactual1\(9) & ((!\PWMtest|LessThan0~17_cout\) # (!\PWMtest|Add1~16_combout\))) # (!\PWMtest|countactual1\(9) & (!\PWMtest|Add1~16_combout\ & !\PWMtest|LessThan0~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(9),
	datab => \PWMtest|Add1~16_combout\,
	datad => VCC,
	cin => \PWMtest|LessThan0~17_cout\,
	cout => \PWMtest|LessThan0~19_cout\);

-- Location: LCCOMB_X60_Y37_N20
\PWMtest|LessThan0~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan0~21_cout\ = CARRY((\PWMtest|countactual1\(10) & (\PWMtest|Add1~18_combout\ & !\PWMtest|LessThan0~19_cout\)) # (!\PWMtest|countactual1\(10) & ((\PWMtest|Add1~18_combout\) # (!\PWMtest|LessThan0~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(10),
	datab => \PWMtest|Add1~18_combout\,
	datad => VCC,
	cin => \PWMtest|LessThan0~19_cout\,
	cout => \PWMtest|LessThan0~21_cout\);

-- Location: LCCOMB_X60_Y37_N22
\PWMtest|LessThan0~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan0~23_cout\ = CARRY((\PWMtest|countactual1\(11) & ((!\PWMtest|LessThan0~21_cout\) # (!\PWMtest|Add1~20_combout\))) # (!\PWMtest|countactual1\(11) & (!\PWMtest|Add1~20_combout\ & !\PWMtest|LessThan0~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(11),
	datab => \PWMtest|Add1~20_combout\,
	datad => VCC,
	cin => \PWMtest|LessThan0~21_cout\,
	cout => \PWMtest|LessThan0~23_cout\);

-- Location: LCCOMB_X60_Y37_N24
\PWMtest|LessThan0~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan0~25_cout\ = CARRY((\PWMtest|countactual1\(12) & (\PWMtest|Add1~22_combout\ & !\PWMtest|LessThan0~23_cout\)) # (!\PWMtest|countactual1\(12) & ((\PWMtest|Add1~22_combout\) # (!\PWMtest|LessThan0~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(12),
	datab => \PWMtest|Add1~22_combout\,
	datad => VCC,
	cin => \PWMtest|LessThan0~23_cout\,
	cout => \PWMtest|LessThan0~25_cout\);

-- Location: LCCOMB_X60_Y37_N26
\PWMtest|LessThan0~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan0~27_cout\ = CARRY((\PWMtest|countactual1\(13) & ((!\PWMtest|LessThan0~25_cout\) # (!\PWMtest|Add1~24_combout\))) # (!\PWMtest|countactual1\(13) & (!\PWMtest|Add1~24_combout\ & !\PWMtest|LessThan0~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(13),
	datab => \PWMtest|Add1~24_combout\,
	datad => VCC,
	cin => \PWMtest|LessThan0~25_cout\,
	cout => \PWMtest|LessThan0~27_cout\);

-- Location: LCCOMB_X60_Y37_N28
\PWMtest|LessThan0~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan0~29_cout\ = CARRY((\PWMtest|countactual1\(14) & (\PWMtest|Add1~26_combout\ & !\PWMtest|LessThan0~27_cout\)) # (!\PWMtest|countactual1\(14) & ((\PWMtest|Add1~26_combout\) # (!\PWMtest|LessThan0~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(14),
	datab => \PWMtest|Add1~26_combout\,
	datad => VCC,
	cin => \PWMtest|LessThan0~27_cout\,
	cout => \PWMtest|LessThan0~29_cout\);

-- Location: LCCOMB_X60_Y37_N30
\PWMtest|LessThan0~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan0~31_cout\ = CARRY((\PWMtest|Add1~28_combout\ & (\PWMtest|countactual1\(15) & !\PWMtest|LessThan0~29_cout\)) # (!\PWMtest|Add1~28_combout\ & ((\PWMtest|countactual1\(15)) # (!\PWMtest|LessThan0~29_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|Add1~28_combout\,
	datab => \PWMtest|countactual1\(15),
	datad => VCC,
	cin => \PWMtest|LessThan0~29_cout\,
	cout => \PWMtest|LessThan0~31_cout\);

-- Location: LCCOMB_X60_Y36_N0
\PWMtest|LessThan0~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan0~33_cout\ = CARRY((\PWMtest|countactual1\(16) & (\PWMtest|Add1~30_combout\ & !\PWMtest|LessThan0~31_cout\)) # (!\PWMtest|countactual1\(16) & ((\PWMtest|Add1~30_combout\) # (!\PWMtest|LessThan0~31_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(16),
	datab => \PWMtest|Add1~30_combout\,
	datad => VCC,
	cin => \PWMtest|LessThan0~31_cout\,
	cout => \PWMtest|LessThan0~33_cout\);

-- Location: LCCOMB_X60_Y36_N2
\PWMtest|LessThan0~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan0~35_cout\ = CARRY((\PWMtest|Add1~32_combout\ & (\PWMtest|countactual1\(17) & !\PWMtest|LessThan0~33_cout\)) # (!\PWMtest|Add1~32_combout\ & ((\PWMtest|countactual1\(17)) # (!\PWMtest|LessThan0~33_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|Add1~32_combout\,
	datab => \PWMtest|countactual1\(17),
	datad => VCC,
	cin => \PWMtest|LessThan0~33_cout\,
	cout => \PWMtest|LessThan0~35_cout\);

-- Location: LCCOMB_X60_Y36_N4
\PWMtest|LessThan0~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan0~37_cout\ = CARRY((\PWMtest|Add1~34_combout\ & ((!\PWMtest|LessThan0~35_cout\) # (!\PWMtest|countactual1\(18)))) # (!\PWMtest|Add1~34_combout\ & (!\PWMtest|countactual1\(18) & !\PWMtest|LessThan0~35_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|Add1~34_combout\,
	datab => \PWMtest|countactual1\(18),
	datad => VCC,
	cin => \PWMtest|LessThan0~35_cout\,
	cout => \PWMtest|LessThan0~37_cout\);

-- Location: LCCOMB_X60_Y36_N6
\PWMtest|LessThan0~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan0~39_cout\ = CARRY((\PWMtest|Add1~36_combout\ & (\PWMtest|countactual1\(19) & !\PWMtest|LessThan0~37_cout\)) # (!\PWMtest|Add1~36_combout\ & ((\PWMtest|countactual1\(19)) # (!\PWMtest|LessThan0~37_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|Add1~36_combout\,
	datab => \PWMtest|countactual1\(19),
	datad => VCC,
	cin => \PWMtest|LessThan0~37_cout\,
	cout => \PWMtest|LessThan0~39_cout\);

-- Location: LCCOMB_X60_Y36_N8
\PWMtest|LessThan0~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan0~41_cout\ = CARRY((\PWMtest|countactual1\(20) & (\PWMtest|Add1~38_combout\ & !\PWMtest|LessThan0~39_cout\)) # (!\PWMtest|countactual1\(20) & ((\PWMtest|Add1~38_combout\) # (!\PWMtest|LessThan0~39_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(20),
	datab => \PWMtest|Add1~38_combout\,
	datad => VCC,
	cin => \PWMtest|LessThan0~39_cout\,
	cout => \PWMtest|LessThan0~41_cout\);

-- Location: LCCOMB_X60_Y36_N10
\PWMtest|LessThan0~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan0~43_cout\ = CARRY((\PWMtest|countactual1\(21) & ((!\PWMtest|LessThan0~41_cout\) # (!\PWMtest|Add1~40_combout\))) # (!\PWMtest|countactual1\(21) & (!\PWMtest|Add1~40_combout\ & !\PWMtest|LessThan0~41_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(21),
	datab => \PWMtest|Add1~40_combout\,
	datad => VCC,
	cin => \PWMtest|LessThan0~41_cout\,
	cout => \PWMtest|LessThan0~43_cout\);

-- Location: LCCOMB_X60_Y36_N12
\PWMtest|LessThan0~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan0~45_cout\ = CARRY((\PWMtest|countactual1\(22) & (\PWMtest|Add1~42_combout\ & !\PWMtest|LessThan0~43_cout\)) # (!\PWMtest|countactual1\(22) & ((\PWMtest|Add1~42_combout\) # (!\PWMtest|LessThan0~43_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(22),
	datab => \PWMtest|Add1~42_combout\,
	datad => VCC,
	cin => \PWMtest|LessThan0~43_cout\,
	cout => \PWMtest|LessThan0~45_cout\);

-- Location: LCCOMB_X60_Y36_N14
\PWMtest|LessThan0~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan0~47_cout\ = CARRY((\PWMtest|countactual1\(23) & ((!\PWMtest|LessThan0~45_cout\) # (!\PWMtest|Add1~44_combout\))) # (!\PWMtest|countactual1\(23) & (!\PWMtest|Add1~44_combout\ & !\PWMtest|LessThan0~45_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(23),
	datab => \PWMtest|Add1~44_combout\,
	datad => VCC,
	cin => \PWMtest|LessThan0~45_cout\,
	cout => \PWMtest|LessThan0~47_cout\);

-- Location: LCCOMB_X60_Y36_N16
\PWMtest|LessThan0~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan0~49_cout\ = CARRY((\PWMtest|countactual1\(24) & (\PWMtest|Add1~46_combout\ & !\PWMtest|LessThan0~47_cout\)) # (!\PWMtest|countactual1\(24) & ((\PWMtest|Add1~46_combout\) # (!\PWMtest|LessThan0~47_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(24),
	datab => \PWMtest|Add1~46_combout\,
	datad => VCC,
	cin => \PWMtest|LessThan0~47_cout\,
	cout => \PWMtest|LessThan0~49_cout\);

-- Location: LCCOMB_X60_Y36_N18
\PWMtest|LessThan0~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan0~51_cout\ = CARRY((\PWMtest|Add1~48_combout\ & (\PWMtest|countactual1\(25) & !\PWMtest|LessThan0~49_cout\)) # (!\PWMtest|Add1~48_combout\ & ((\PWMtest|countactual1\(25)) # (!\PWMtest|LessThan0~49_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|Add1~48_combout\,
	datab => \PWMtest|countactual1\(25),
	datad => VCC,
	cin => \PWMtest|LessThan0~49_cout\,
	cout => \PWMtest|LessThan0~51_cout\);

-- Location: LCCOMB_X60_Y36_N20
\PWMtest|LessThan0~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan0~53_cout\ = CARRY((\PWMtest|Add1~50_combout\ & ((!\PWMtest|LessThan0~51_cout\) # (!\PWMtest|countactual1\(26)))) # (!\PWMtest|Add1~50_combout\ & (!\PWMtest|countactual1\(26) & !\PWMtest|LessThan0~51_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|Add1~50_combout\,
	datab => \PWMtest|countactual1\(26),
	datad => VCC,
	cin => \PWMtest|LessThan0~51_cout\,
	cout => \PWMtest|LessThan0~53_cout\);

-- Location: LCCOMB_X60_Y36_N22
\PWMtest|LessThan0~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan0~55_cout\ = CARRY((\PWMtest|countactual1\(27) & ((!\PWMtest|LessThan0~53_cout\) # (!\PWMtest|Add1~52_combout\))) # (!\PWMtest|countactual1\(27) & (!\PWMtest|Add1~52_combout\ & !\PWMtest|LessThan0~53_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(27),
	datab => \PWMtest|Add1~52_combout\,
	datad => VCC,
	cin => \PWMtest|LessThan0~53_cout\,
	cout => \PWMtest|LessThan0~55_cout\);

-- Location: LCCOMB_X60_Y36_N24
\PWMtest|LessThan0~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan0~57_cout\ = CARRY((\PWMtest|countactual1\(28) & (\PWMtest|Add1~54_combout\ & !\PWMtest|LessThan0~55_cout\)) # (!\PWMtest|countactual1\(28) & ((\PWMtest|Add1~54_combout\) # (!\PWMtest|LessThan0~55_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(28),
	datab => \PWMtest|Add1~54_combout\,
	datad => VCC,
	cin => \PWMtest|LessThan0~55_cout\,
	cout => \PWMtest|LessThan0~57_cout\);

-- Location: LCCOMB_X60_Y36_N26
\PWMtest|LessThan0~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan0~59_cout\ = CARRY((\PWMtest|countactual1\(29) & ((!\PWMtest|LessThan0~57_cout\) # (!\PWMtest|Add1~56_combout\))) # (!\PWMtest|countactual1\(29) & (!\PWMtest|Add1~56_combout\ & !\PWMtest|LessThan0~57_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(29),
	datab => \PWMtest|Add1~56_combout\,
	datad => VCC,
	cin => \PWMtest|LessThan0~57_cout\,
	cout => \PWMtest|LessThan0~59_cout\);

-- Location: LCCOMB_X60_Y36_N28
\PWMtest|LessThan0~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan0~61_cout\ = CARRY((\PWMtest|countactual1\(30) & (\PWMtest|Add1~58_combout\ & !\PWMtest|LessThan0~59_cout\)) # (!\PWMtest|countactual1\(30) & ((\PWMtest|Add1~58_combout\) # (!\PWMtest|LessThan0~59_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(30),
	datab => \PWMtest|Add1~58_combout\,
	datad => VCC,
	cin => \PWMtest|LessThan0~59_cout\,
	cout => \PWMtest|LessThan0~61_cout\);

-- Location: LCCOMB_X60_Y36_N30
\PWMtest|LessThan0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan0~62_combout\ = (\PWMtest|Add1~60_combout\ & (\PWMtest|countactual1\(31) & \PWMtest|LessThan0~61_cout\)) # (!\PWMtest|Add1~60_combout\ & ((\PWMtest|countactual1\(31)) # (\PWMtest|LessThan0~61_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|Add1~60_combout\,
	datab => \PWMtest|countactual1\(31),
	cin => \PWMtest|LessThan0~61_cout\,
	combout => \PWMtest|LessThan0~62_combout\);

-- Location: LCCOMB_X58_Y36_N4
\PWMtest|Add3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add3~1_cout\ = CARRY(!\PWMtest|softstart_duty_act\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|softstart_duty_act\(4),
	datad => VCC,
	cout => \PWMtest|Add3~1_cout\);

-- Location: LCCOMB_X58_Y36_N6
\PWMtest|Add3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add3~2_combout\ = (\PWMtest|softstart_duty_act\(5) & ((\PWMtest|Add3~1_cout\) # (GND))) # (!\PWMtest|softstart_duty_act\(5) & (!\PWMtest|Add3~1_cout\))
-- \PWMtest|Add3~3\ = CARRY((\PWMtest|softstart_duty_act\(5)) # (!\PWMtest|Add3~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|softstart_duty_act\(5),
	datad => VCC,
	cin => \PWMtest|Add3~1_cout\,
	combout => \PWMtest|Add3~2_combout\,
	cout => \PWMtest|Add3~3\);

-- Location: LCCOMB_X58_Y36_N8
\PWMtest|Add3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add3~4_combout\ = (\PWMtest|softstart_duty_act\(6) & (!\PWMtest|Add3~3\ & VCC)) # (!\PWMtest|softstart_duty_act\(6) & (\PWMtest|Add3~3\ $ (GND)))
-- \PWMtest|Add3~5\ = CARRY((!\PWMtest|softstart_duty_act\(6) & !\PWMtest|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(6),
	datad => VCC,
	cin => \PWMtest|Add3~3\,
	combout => \PWMtest|Add3~4_combout\,
	cout => \PWMtest|Add3~5\);

-- Location: LCCOMB_X58_Y36_N10
\PWMtest|Add3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add3~6_combout\ = (\PWMtest|softstart_duty_act\(7) & ((\PWMtest|Add3~5\) # (GND))) # (!\PWMtest|softstart_duty_act\(7) & (!\PWMtest|Add3~5\))
-- \PWMtest|Add3~7\ = CARRY((\PWMtest|softstart_duty_act\(7)) # (!\PWMtest|Add3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(7),
	datad => VCC,
	cin => \PWMtest|Add3~5\,
	combout => \PWMtest|Add3~6_combout\,
	cout => \PWMtest|Add3~7\);

-- Location: LCCOMB_X58_Y36_N12
\PWMtest|Add3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add3~8_combout\ = (\PWMtest|softstart_duty_act\(8) & (\PWMtest|Add3~7\ $ (GND))) # (!\PWMtest|softstart_duty_act\(8) & ((GND) # (!\PWMtest|Add3~7\)))
-- \PWMtest|Add3~9\ = CARRY((!\PWMtest|Add3~7\) # (!\PWMtest|softstart_duty_act\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(8),
	datad => VCC,
	cin => \PWMtest|Add3~7\,
	combout => \PWMtest|Add3~8_combout\,
	cout => \PWMtest|Add3~9\);

-- Location: LCCOMB_X58_Y36_N14
\PWMtest|Add3~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add3~10_combout\ = (\PWMtest|softstart_duty_act\(9) & ((\PWMtest|Add3~9\) # (GND))) # (!\PWMtest|softstart_duty_act\(9) & (!\PWMtest|Add3~9\))
-- \PWMtest|Add3~11\ = CARRY((\PWMtest|softstart_duty_act\(9)) # (!\PWMtest|Add3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(9),
	datad => VCC,
	cin => \PWMtest|Add3~9\,
	combout => \PWMtest|Add3~10_combout\,
	cout => \PWMtest|Add3~11\);

-- Location: LCCOMB_X58_Y36_N16
\PWMtest|Add3~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add3~12_combout\ = (\PWMtest|softstart_duty_act\(10) & (!\PWMtest|Add3~11\ & VCC)) # (!\PWMtest|softstart_duty_act\(10) & (\PWMtest|Add3~11\ $ (GND)))
-- \PWMtest|Add3~13\ = CARRY((!\PWMtest|softstart_duty_act\(10) & !\PWMtest|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(10),
	datad => VCC,
	cin => \PWMtest|Add3~11\,
	combout => \PWMtest|Add3~12_combout\,
	cout => \PWMtest|Add3~13\);

-- Location: LCCOMB_X58_Y36_N18
\PWMtest|Add3~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add3~14_combout\ = (\PWMtest|softstart_duty_act\(11) & ((\PWMtest|Add3~13\) # (GND))) # (!\PWMtest|softstart_duty_act\(11) & (!\PWMtest|Add3~13\))
-- \PWMtest|Add3~15\ = CARRY((\PWMtest|softstart_duty_act\(11)) # (!\PWMtest|Add3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|softstart_duty_act\(11),
	datad => VCC,
	cin => \PWMtest|Add3~13\,
	combout => \PWMtest|Add3~14_combout\,
	cout => \PWMtest|Add3~15\);

-- Location: LCCOMB_X58_Y36_N20
\PWMtest|Add3~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add3~16_combout\ = (\PWMtest|softstart_duty_act\(12) & (!\PWMtest|Add3~15\ & VCC)) # (!\PWMtest|softstart_duty_act\(12) & (\PWMtest|Add3~15\ $ (GND)))
-- \PWMtest|Add3~17\ = CARRY((!\PWMtest|softstart_duty_act\(12) & !\PWMtest|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|softstart_duty_act\(12),
	datad => VCC,
	cin => \PWMtest|Add3~15\,
	combout => \PWMtest|Add3~16_combout\,
	cout => \PWMtest|Add3~17\);

-- Location: LCCOMB_X58_Y36_N22
\PWMtest|Add3~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add3~18_combout\ = (\PWMtest|softstart_duty_act\(13) & ((\PWMtest|Add3~17\) # (GND))) # (!\PWMtest|softstart_duty_act\(13) & (!\PWMtest|Add3~17\))
-- \PWMtest|Add3~19\ = CARRY((\PWMtest|softstart_duty_act\(13)) # (!\PWMtest|Add3~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|softstart_duty_act\(13),
	datad => VCC,
	cin => \PWMtest|Add3~17\,
	combout => \PWMtest|Add3~18_combout\,
	cout => \PWMtest|Add3~19\);

-- Location: LCCOMB_X58_Y36_N24
\PWMtest|Add3~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add3~20_combout\ = (\PWMtest|softstart_duty_act\(14) & (!\PWMtest|Add3~19\ & VCC)) # (!\PWMtest|softstart_duty_act\(14) & (\PWMtest|Add3~19\ $ (GND)))
-- \PWMtest|Add3~21\ = CARRY((!\PWMtest|softstart_duty_act\(14) & !\PWMtest|Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|softstart_duty_act\(14),
	datad => VCC,
	cin => \PWMtest|Add3~19\,
	combout => \PWMtest|Add3~20_combout\,
	cout => \PWMtest|Add3~21\);

-- Location: LCCOMB_X58_Y36_N26
\PWMtest|Add3~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add3~22_combout\ = (\PWMtest|softstart_duty_act\(15) & ((\PWMtest|Add3~21\) # (GND))) # (!\PWMtest|softstart_duty_act\(15) & (!\PWMtest|Add3~21\))
-- \PWMtest|Add3~23\ = CARRY((\PWMtest|softstart_duty_act\(15)) # (!\PWMtest|Add3~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(15),
	datad => VCC,
	cin => \PWMtest|Add3~21\,
	combout => \PWMtest|Add3~22_combout\,
	cout => \PWMtest|Add3~23\);

-- Location: LCCOMB_X58_Y36_N28
\PWMtest|Add3~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add3~24_combout\ = (\PWMtest|softstart_duty_act\(16) & (!\PWMtest|Add3~23\ & VCC)) # (!\PWMtest|softstart_duty_act\(16) & (\PWMtest|Add3~23\ $ (GND)))
-- \PWMtest|Add3~25\ = CARRY((!\PWMtest|softstart_duty_act\(16) & !\PWMtest|Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|softstart_duty_act\(16),
	datad => VCC,
	cin => \PWMtest|Add3~23\,
	combout => \PWMtest|Add3~24_combout\,
	cout => \PWMtest|Add3~25\);

-- Location: LCCOMB_X58_Y36_N30
\PWMtest|Add3~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add3~26_combout\ = (\PWMtest|softstart_duty_act\(17) & ((\PWMtest|Add3~25\) # (GND))) # (!\PWMtest|softstart_duty_act\(17) & (!\PWMtest|Add3~25\))
-- \PWMtest|Add3~27\ = CARRY((\PWMtest|softstart_duty_act\(17)) # (!\PWMtest|Add3~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|softstart_duty_act\(17),
	datad => VCC,
	cin => \PWMtest|Add3~25\,
	combout => \PWMtest|Add3~26_combout\,
	cout => \PWMtest|Add3~27\);

-- Location: LCCOMB_X58_Y35_N0
\PWMtest|Add3~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add3~28_combout\ = (\PWMtest|softstart_duty_act\(18) & (!\PWMtest|Add3~27\ & VCC)) # (!\PWMtest|softstart_duty_act\(18) & (\PWMtest|Add3~27\ $ (GND)))
-- \PWMtest|Add3~29\ = CARRY((!\PWMtest|softstart_duty_act\(18) & !\PWMtest|Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(18),
	datad => VCC,
	cin => \PWMtest|Add3~27\,
	combout => \PWMtest|Add3~28_combout\,
	cout => \PWMtest|Add3~29\);

-- Location: LCCOMB_X58_Y35_N2
\PWMtest|Add3~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add3~30_combout\ = (\PWMtest|softstart_duty_act\(19) & ((\PWMtest|Add3~29\) # (GND))) # (!\PWMtest|softstart_duty_act\(19) & (!\PWMtest|Add3~29\))
-- \PWMtest|Add3~31\ = CARRY((\PWMtest|softstart_duty_act\(19)) # (!\PWMtest|Add3~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(19),
	datad => VCC,
	cin => \PWMtest|Add3~29\,
	combout => \PWMtest|Add3~30_combout\,
	cout => \PWMtest|Add3~31\);

-- Location: LCCOMB_X58_Y35_N4
\PWMtest|Add3~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add3~32_combout\ = (\PWMtest|softstart_duty_act\(20) & (!\PWMtest|Add3~31\ & VCC)) # (!\PWMtest|softstart_duty_act\(20) & (\PWMtest|Add3~31\ $ (GND)))
-- \PWMtest|Add3~33\ = CARRY((!\PWMtest|softstart_duty_act\(20) & !\PWMtest|Add3~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|softstart_duty_act\(20),
	datad => VCC,
	cin => \PWMtest|Add3~31\,
	combout => \PWMtest|Add3~32_combout\,
	cout => \PWMtest|Add3~33\);

-- Location: LCCOMB_X58_Y35_N6
\PWMtest|Add3~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add3~34_combout\ = (\PWMtest|softstart_duty_act\(21) & ((\PWMtest|Add3~33\) # (GND))) # (!\PWMtest|softstart_duty_act\(21) & (!\PWMtest|Add3~33\))
-- \PWMtest|Add3~35\ = CARRY((\PWMtest|softstart_duty_act\(21)) # (!\PWMtest|Add3~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|softstart_duty_act\(21),
	datad => VCC,
	cin => \PWMtest|Add3~33\,
	combout => \PWMtest|Add3~34_combout\,
	cout => \PWMtest|Add3~35\);

-- Location: LCCOMB_X58_Y35_N8
\PWMtest|Add3~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add3~36_combout\ = (\PWMtest|softstart_duty_act\(22) & (!\PWMtest|Add3~35\ & VCC)) # (!\PWMtest|softstart_duty_act\(22) & (\PWMtest|Add3~35\ $ (GND)))
-- \PWMtest|Add3~37\ = CARRY((!\PWMtest|softstart_duty_act\(22) & !\PWMtest|Add3~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|softstart_duty_act\(22),
	datad => VCC,
	cin => \PWMtest|Add3~35\,
	combout => \PWMtest|Add3~36_combout\,
	cout => \PWMtest|Add3~37\);

-- Location: LCCOMB_X58_Y35_N10
\PWMtest|Add3~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add3~38_combout\ = (\PWMtest|softstart_duty_act\(23) & ((\PWMtest|Add3~37\) # (GND))) # (!\PWMtest|softstart_duty_act\(23) & (!\PWMtest|Add3~37\))
-- \PWMtest|Add3~39\ = CARRY((\PWMtest|softstart_duty_act\(23)) # (!\PWMtest|Add3~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(23),
	datad => VCC,
	cin => \PWMtest|Add3~37\,
	combout => \PWMtest|Add3~38_combout\,
	cout => \PWMtest|Add3~39\);

-- Location: LCCOMB_X58_Y35_N12
\PWMtest|Add3~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add3~40_combout\ = (\PWMtest|softstart_duty_act\(24) & (!\PWMtest|Add3~39\ & VCC)) # (!\PWMtest|softstart_duty_act\(24) & (\PWMtest|Add3~39\ $ (GND)))
-- \PWMtest|Add3~41\ = CARRY((!\PWMtest|softstart_duty_act\(24) & !\PWMtest|Add3~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(24),
	datad => VCC,
	cin => \PWMtest|Add3~39\,
	combout => \PWMtest|Add3~40_combout\,
	cout => \PWMtest|Add3~41\);

-- Location: LCCOMB_X58_Y35_N14
\PWMtest|Add3~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add3~42_combout\ = (\PWMtest|softstart_duty_act\(25) & ((\PWMtest|Add3~41\) # (GND))) # (!\PWMtest|softstart_duty_act\(25) & (!\PWMtest|Add3~41\))
-- \PWMtest|Add3~43\ = CARRY((\PWMtest|softstart_duty_act\(25)) # (!\PWMtest|Add3~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|softstart_duty_act\(25),
	datad => VCC,
	cin => \PWMtest|Add3~41\,
	combout => \PWMtest|Add3~42_combout\,
	cout => \PWMtest|Add3~43\);

-- Location: LCCOMB_X58_Y35_N16
\PWMtest|Add3~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add3~44_combout\ = (\PWMtest|softstart_duty_act\(26) & (!\PWMtest|Add3~43\ & VCC)) # (!\PWMtest|softstart_duty_act\(26) & (\PWMtest|Add3~43\ $ (GND)))
-- \PWMtest|Add3~45\ = CARRY((!\PWMtest|softstart_duty_act\(26) & !\PWMtest|Add3~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(26),
	datad => VCC,
	cin => \PWMtest|Add3~43\,
	combout => \PWMtest|Add3~44_combout\,
	cout => \PWMtest|Add3~45\);

-- Location: LCCOMB_X58_Y35_N18
\PWMtest|Add3~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add3~46_combout\ = (\PWMtest|softstart_duty_act\(27) & ((\PWMtest|Add3~45\) # (GND))) # (!\PWMtest|softstart_duty_act\(27) & (!\PWMtest|Add3~45\))
-- \PWMtest|Add3~47\ = CARRY((\PWMtest|softstart_duty_act\(27)) # (!\PWMtest|Add3~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(27),
	datad => VCC,
	cin => \PWMtest|Add3~45\,
	combout => \PWMtest|Add3~46_combout\,
	cout => \PWMtest|Add3~47\);

-- Location: LCCOMB_X58_Y35_N20
\PWMtest|Add3~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add3~48_combout\ = (\PWMtest|softstart_duty_act\(28) & (!\PWMtest|Add3~47\ & VCC)) # (!\PWMtest|softstart_duty_act\(28) & (\PWMtest|Add3~47\ $ (GND)))
-- \PWMtest|Add3~49\ = CARRY((!\PWMtest|softstart_duty_act\(28) & !\PWMtest|Add3~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|softstart_duty_act\(28),
	datad => VCC,
	cin => \PWMtest|Add3~47\,
	combout => \PWMtest|Add3~48_combout\,
	cout => \PWMtest|Add3~49\);

-- Location: LCCOMB_X58_Y35_N22
\PWMtest|Add3~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add3~50_combout\ = (\PWMtest|softstart_duty_act\(29) & ((\PWMtest|Add3~49\) # (GND))) # (!\PWMtest|softstart_duty_act\(29) & (!\PWMtest|Add3~49\))
-- \PWMtest|Add3~51\ = CARRY((\PWMtest|softstart_duty_act\(29)) # (!\PWMtest|Add3~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(29),
	datad => VCC,
	cin => \PWMtest|Add3~49\,
	combout => \PWMtest|Add3~50_combout\,
	cout => \PWMtest|Add3~51\);

-- Location: LCCOMB_X58_Y35_N24
\PWMtest|Add3~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add3~52_combout\ = (\PWMtest|softstart_duty_act\(30) & (!\PWMtest|Add3~51\ & VCC)) # (!\PWMtest|softstart_duty_act\(30) & (\PWMtest|Add3~51\ $ (GND)))
-- \PWMtest|Add3~53\ = CARRY((!\PWMtest|softstart_duty_act\(30) & !\PWMtest|Add3~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|softstart_duty_act\(30),
	datad => VCC,
	cin => \PWMtest|Add3~51\,
	combout => \PWMtest|Add3~52_combout\,
	cout => \PWMtest|Add3~53\);

-- Location: LCCOMB_X58_Y35_N26
\PWMtest|Add3~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add3~54_combout\ = \PWMtest|softstart_duty_act\(31) $ (!\PWMtest|Add3~53\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|softstart_duty_act\(31),
	cin => \PWMtest|Add3~53\,
	combout => \PWMtest|Add3~54_combout\);

-- Location: LCCOMB_X57_Y36_N0
\PWMtest|LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan1~1_cout\ = CARRY((\PWMtest|softstart_duty_act\(0) & !\PWMtest|countactual1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(0),
	datab => \PWMtest|countactual1\(0),
	datad => VCC,
	cout => \PWMtest|LessThan1~1_cout\);

-- Location: LCCOMB_X57_Y36_N2
\PWMtest|LessThan1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan1~3_cout\ = CARRY((\PWMtest|countactual1\(1) & ((!\PWMtest|LessThan1~1_cout\) # (!\PWMtest|softstart_duty_act\(1)))) # (!\PWMtest|countactual1\(1) & (!\PWMtest|softstart_duty_act\(1) & !\PWMtest|LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(1),
	datab => \PWMtest|softstart_duty_act\(1),
	datad => VCC,
	cin => \PWMtest|LessThan1~1_cout\,
	cout => \PWMtest|LessThan1~3_cout\);

-- Location: LCCOMB_X57_Y36_N4
\PWMtest|LessThan1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan1~5_cout\ = CARRY((\PWMtest|softstart_duty_act\(2) & ((!\PWMtest|LessThan1~3_cout\) # (!\PWMtest|countactual1\(2)))) # (!\PWMtest|softstart_duty_act\(2) & (!\PWMtest|countactual1\(2) & !\PWMtest|LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(2),
	datab => \PWMtest|countactual1\(2),
	datad => VCC,
	cin => \PWMtest|LessThan1~3_cout\,
	cout => \PWMtest|LessThan1~5_cout\);

-- Location: LCCOMB_X57_Y36_N6
\PWMtest|LessThan1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan1~7_cout\ = CARRY((\PWMtest|softstart_duty_act\(3) & (\PWMtest|countactual1\(3) & !\PWMtest|LessThan1~5_cout\)) # (!\PWMtest|softstart_duty_act\(3) & ((\PWMtest|countactual1\(3)) # (!\PWMtest|LessThan1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(3),
	datab => \PWMtest|countactual1\(3),
	datad => VCC,
	cin => \PWMtest|LessThan1~5_cout\,
	cout => \PWMtest|LessThan1~7_cout\);

-- Location: LCCOMB_X57_Y36_N8
\PWMtest|LessThan1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan1~9_cout\ = CARRY((\PWMtest|countactual1\(4) & (\PWMtest|softstart_duty_act\(4) & !\PWMtest|LessThan1~7_cout\)) # (!\PWMtest|countactual1\(4) & ((\PWMtest|softstart_duty_act\(4)) # (!\PWMtest|LessThan1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(4),
	datab => \PWMtest|softstart_duty_act\(4),
	datad => VCC,
	cin => \PWMtest|LessThan1~7_cout\,
	cout => \PWMtest|LessThan1~9_cout\);

-- Location: LCCOMB_X57_Y36_N10
\PWMtest|LessThan1~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan1~11_cout\ = CARRY((\PWMtest|Add3~2_combout\ & (\PWMtest|countactual1\(5) & !\PWMtest|LessThan1~9_cout\)) # (!\PWMtest|Add3~2_combout\ & ((\PWMtest|countactual1\(5)) # (!\PWMtest|LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|Add3~2_combout\,
	datab => \PWMtest|countactual1\(5),
	datad => VCC,
	cin => \PWMtest|LessThan1~9_cout\,
	cout => \PWMtest|LessThan1~11_cout\);

-- Location: LCCOMB_X57_Y36_N12
\PWMtest|LessThan1~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan1~13_cout\ = CARRY((\PWMtest|countactual1\(6) & (\PWMtest|Add3~4_combout\ & !\PWMtest|LessThan1~11_cout\)) # (!\PWMtest|countactual1\(6) & ((\PWMtest|Add3~4_combout\) # (!\PWMtest|LessThan1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(6),
	datab => \PWMtest|Add3~4_combout\,
	datad => VCC,
	cin => \PWMtest|LessThan1~11_cout\,
	cout => \PWMtest|LessThan1~13_cout\);

-- Location: LCCOMB_X57_Y36_N14
\PWMtest|LessThan1~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan1~15_cout\ = CARRY((\PWMtest|countactual1\(7) & ((!\PWMtest|LessThan1~13_cout\) # (!\PWMtest|Add3~6_combout\))) # (!\PWMtest|countactual1\(7) & (!\PWMtest|Add3~6_combout\ & !\PWMtest|LessThan1~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(7),
	datab => \PWMtest|Add3~6_combout\,
	datad => VCC,
	cin => \PWMtest|LessThan1~13_cout\,
	cout => \PWMtest|LessThan1~15_cout\);

-- Location: LCCOMB_X57_Y36_N16
\PWMtest|LessThan1~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan1~17_cout\ = CARRY((\PWMtest|countactual1\(8) & (\PWMtest|Add3~8_combout\ & !\PWMtest|LessThan1~15_cout\)) # (!\PWMtest|countactual1\(8) & ((\PWMtest|Add3~8_combout\) # (!\PWMtest|LessThan1~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(8),
	datab => \PWMtest|Add3~8_combout\,
	datad => VCC,
	cin => \PWMtest|LessThan1~15_cout\,
	cout => \PWMtest|LessThan1~17_cout\);

-- Location: LCCOMB_X57_Y36_N18
\PWMtest|LessThan1~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan1~19_cout\ = CARRY((\PWMtest|countactual1\(9) & ((!\PWMtest|LessThan1~17_cout\) # (!\PWMtest|Add3~10_combout\))) # (!\PWMtest|countactual1\(9) & (!\PWMtest|Add3~10_combout\ & !\PWMtest|LessThan1~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(9),
	datab => \PWMtest|Add3~10_combout\,
	datad => VCC,
	cin => \PWMtest|LessThan1~17_cout\,
	cout => \PWMtest|LessThan1~19_cout\);

-- Location: LCCOMB_X57_Y36_N20
\PWMtest|LessThan1~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan1~21_cout\ = CARRY((\PWMtest|countactual1\(10) & (\PWMtest|Add3~12_combout\ & !\PWMtest|LessThan1~19_cout\)) # (!\PWMtest|countactual1\(10) & ((\PWMtest|Add3~12_combout\) # (!\PWMtest|LessThan1~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(10),
	datab => \PWMtest|Add3~12_combout\,
	datad => VCC,
	cin => \PWMtest|LessThan1~19_cout\,
	cout => \PWMtest|LessThan1~21_cout\);

-- Location: LCCOMB_X57_Y36_N22
\PWMtest|LessThan1~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan1~23_cout\ = CARRY((\PWMtest|Add3~14_combout\ & (\PWMtest|countactual1\(11) & !\PWMtest|LessThan1~21_cout\)) # (!\PWMtest|Add3~14_combout\ & ((\PWMtest|countactual1\(11)) # (!\PWMtest|LessThan1~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|Add3~14_combout\,
	datab => \PWMtest|countactual1\(11),
	datad => VCC,
	cin => \PWMtest|LessThan1~21_cout\,
	cout => \PWMtest|LessThan1~23_cout\);

-- Location: LCCOMB_X57_Y36_N24
\PWMtest|LessThan1~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan1~25_cout\ = CARRY((\PWMtest|Add3~16_combout\ & ((!\PWMtest|LessThan1~23_cout\) # (!\PWMtest|countactual1\(12)))) # (!\PWMtest|Add3~16_combout\ & (!\PWMtest|countactual1\(12) & !\PWMtest|LessThan1~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|Add3~16_combout\,
	datab => \PWMtest|countactual1\(12),
	datad => VCC,
	cin => \PWMtest|LessThan1~23_cout\,
	cout => \PWMtest|LessThan1~25_cout\);

-- Location: LCCOMB_X57_Y36_N26
\PWMtest|LessThan1~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan1~27_cout\ = CARRY((\PWMtest|countactual1\(13) & ((!\PWMtest|LessThan1~25_cout\) # (!\PWMtest|Add3~18_combout\))) # (!\PWMtest|countactual1\(13) & (!\PWMtest|Add3~18_combout\ & !\PWMtest|LessThan1~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(13),
	datab => \PWMtest|Add3~18_combout\,
	datad => VCC,
	cin => \PWMtest|LessThan1~25_cout\,
	cout => \PWMtest|LessThan1~27_cout\);

-- Location: LCCOMB_X57_Y36_N28
\PWMtest|LessThan1~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan1~29_cout\ = CARRY((\PWMtest|countactual1\(14) & (\PWMtest|Add3~20_combout\ & !\PWMtest|LessThan1~27_cout\)) # (!\PWMtest|countactual1\(14) & ((\PWMtest|Add3~20_combout\) # (!\PWMtest|LessThan1~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(14),
	datab => \PWMtest|Add3~20_combout\,
	datad => VCC,
	cin => \PWMtest|LessThan1~27_cout\,
	cout => \PWMtest|LessThan1~29_cout\);

-- Location: LCCOMB_X57_Y36_N30
\PWMtest|LessThan1~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan1~31_cout\ = CARRY((\PWMtest|Add3~22_combout\ & (\PWMtest|countactual1\(15) & !\PWMtest|LessThan1~29_cout\)) # (!\PWMtest|Add3~22_combout\ & ((\PWMtest|countactual1\(15)) # (!\PWMtest|LessThan1~29_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|Add3~22_combout\,
	datab => \PWMtest|countactual1\(15),
	datad => VCC,
	cin => \PWMtest|LessThan1~29_cout\,
	cout => \PWMtest|LessThan1~31_cout\);

-- Location: LCCOMB_X57_Y35_N0
\PWMtest|LessThan1~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan1~33_cout\ = CARRY((\PWMtest|countactual1\(16) & (\PWMtest|Add3~24_combout\ & !\PWMtest|LessThan1~31_cout\)) # (!\PWMtest|countactual1\(16) & ((\PWMtest|Add3~24_combout\) # (!\PWMtest|LessThan1~31_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(16),
	datab => \PWMtest|Add3~24_combout\,
	datad => VCC,
	cin => \PWMtest|LessThan1~31_cout\,
	cout => \PWMtest|LessThan1~33_cout\);

-- Location: LCCOMB_X57_Y35_N2
\PWMtest|LessThan1~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan1~35_cout\ = CARRY((\PWMtest|countactual1\(17) & ((!\PWMtest|LessThan1~33_cout\) # (!\PWMtest|Add3~26_combout\))) # (!\PWMtest|countactual1\(17) & (!\PWMtest|Add3~26_combout\ & !\PWMtest|LessThan1~33_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(17),
	datab => \PWMtest|Add3~26_combout\,
	datad => VCC,
	cin => \PWMtest|LessThan1~33_cout\,
	cout => \PWMtest|LessThan1~35_cout\);

-- Location: LCCOMB_X57_Y35_N4
\PWMtest|LessThan1~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan1~37_cout\ = CARRY((\PWMtest|Add3~28_combout\ & ((!\PWMtest|LessThan1~35_cout\) # (!\PWMtest|countactual1\(18)))) # (!\PWMtest|Add3~28_combout\ & (!\PWMtest|countactual1\(18) & !\PWMtest|LessThan1~35_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|Add3~28_combout\,
	datab => \PWMtest|countactual1\(18),
	datad => VCC,
	cin => \PWMtest|LessThan1~35_cout\,
	cout => \PWMtest|LessThan1~37_cout\);

-- Location: LCCOMB_X57_Y35_N6
\PWMtest|LessThan1~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan1~39_cout\ = CARRY((\PWMtest|Add3~30_combout\ & (\PWMtest|countactual1\(19) & !\PWMtest|LessThan1~37_cout\)) # (!\PWMtest|Add3~30_combout\ & ((\PWMtest|countactual1\(19)) # (!\PWMtest|LessThan1~37_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|Add3~30_combout\,
	datab => \PWMtest|countactual1\(19),
	datad => VCC,
	cin => \PWMtest|LessThan1~37_cout\,
	cout => \PWMtest|LessThan1~39_cout\);

-- Location: LCCOMB_X57_Y35_N8
\PWMtest|LessThan1~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan1~41_cout\ = CARRY((\PWMtest|countactual1\(20) & (\PWMtest|Add3~32_combout\ & !\PWMtest|LessThan1~39_cout\)) # (!\PWMtest|countactual1\(20) & ((\PWMtest|Add3~32_combout\) # (!\PWMtest|LessThan1~39_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(20),
	datab => \PWMtest|Add3~32_combout\,
	datad => VCC,
	cin => \PWMtest|LessThan1~39_cout\,
	cout => \PWMtest|LessThan1~41_cout\);

-- Location: LCCOMB_X57_Y35_N10
\PWMtest|LessThan1~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan1~43_cout\ = CARRY((\PWMtest|Add3~34_combout\ & (\PWMtest|countactual1\(21) & !\PWMtest|LessThan1~41_cout\)) # (!\PWMtest|Add3~34_combout\ & ((\PWMtest|countactual1\(21)) # (!\PWMtest|LessThan1~41_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|Add3~34_combout\,
	datab => \PWMtest|countactual1\(21),
	datad => VCC,
	cin => \PWMtest|LessThan1~41_cout\,
	cout => \PWMtest|LessThan1~43_cout\);

-- Location: LCCOMB_X57_Y35_N12
\PWMtest|LessThan1~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan1~45_cout\ = CARRY((\PWMtest|countactual1\(22) & (\PWMtest|Add3~36_combout\ & !\PWMtest|LessThan1~43_cout\)) # (!\PWMtest|countactual1\(22) & ((\PWMtest|Add3~36_combout\) # (!\PWMtest|LessThan1~43_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(22),
	datab => \PWMtest|Add3~36_combout\,
	datad => VCC,
	cin => \PWMtest|LessThan1~43_cout\,
	cout => \PWMtest|LessThan1~45_cout\);

-- Location: LCCOMB_X57_Y35_N14
\PWMtest|LessThan1~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan1~47_cout\ = CARRY((\PWMtest|countactual1\(23) & ((!\PWMtest|LessThan1~45_cout\) # (!\PWMtest|Add3~38_combout\))) # (!\PWMtest|countactual1\(23) & (!\PWMtest|Add3~38_combout\ & !\PWMtest|LessThan1~45_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(23),
	datab => \PWMtest|Add3~38_combout\,
	datad => VCC,
	cin => \PWMtest|LessThan1~45_cout\,
	cout => \PWMtest|LessThan1~47_cout\);

-- Location: LCCOMB_X57_Y35_N16
\PWMtest|LessThan1~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan1~49_cout\ = CARRY((\PWMtest|countactual1\(24) & (\PWMtest|Add3~40_combout\ & !\PWMtest|LessThan1~47_cout\)) # (!\PWMtest|countactual1\(24) & ((\PWMtest|Add3~40_combout\) # (!\PWMtest|LessThan1~47_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(24),
	datab => \PWMtest|Add3~40_combout\,
	datad => VCC,
	cin => \PWMtest|LessThan1~47_cout\,
	cout => \PWMtest|LessThan1~49_cout\);

-- Location: LCCOMB_X57_Y35_N18
\PWMtest|LessThan1~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan1~51_cout\ = CARRY((\PWMtest|countactual1\(25) & ((!\PWMtest|LessThan1~49_cout\) # (!\PWMtest|Add3~42_combout\))) # (!\PWMtest|countactual1\(25) & (!\PWMtest|Add3~42_combout\ & !\PWMtest|LessThan1~49_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(25),
	datab => \PWMtest|Add3~42_combout\,
	datad => VCC,
	cin => \PWMtest|LessThan1~49_cout\,
	cout => \PWMtest|LessThan1~51_cout\);

-- Location: LCCOMB_X57_Y35_N20
\PWMtest|LessThan1~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan1~53_cout\ = CARRY((\PWMtest|countactual1\(26) & (\PWMtest|Add3~44_combout\ & !\PWMtest|LessThan1~51_cout\)) # (!\PWMtest|countactual1\(26) & ((\PWMtest|Add3~44_combout\) # (!\PWMtest|LessThan1~51_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(26),
	datab => \PWMtest|Add3~44_combout\,
	datad => VCC,
	cin => \PWMtest|LessThan1~51_cout\,
	cout => \PWMtest|LessThan1~53_cout\);

-- Location: LCCOMB_X57_Y35_N22
\PWMtest|LessThan1~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan1~55_cout\ = CARRY((\PWMtest|countactual1\(27) & ((!\PWMtest|LessThan1~53_cout\) # (!\PWMtest|Add3~46_combout\))) # (!\PWMtest|countactual1\(27) & (!\PWMtest|Add3~46_combout\ & !\PWMtest|LessThan1~53_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(27),
	datab => \PWMtest|Add3~46_combout\,
	datad => VCC,
	cin => \PWMtest|LessThan1~53_cout\,
	cout => \PWMtest|LessThan1~55_cout\);

-- Location: LCCOMB_X57_Y35_N24
\PWMtest|LessThan1~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan1~57_cout\ = CARRY((\PWMtest|Add3~48_combout\ & ((!\PWMtest|LessThan1~55_cout\) # (!\PWMtest|countactual1\(28)))) # (!\PWMtest|Add3~48_combout\ & (!\PWMtest|countactual1\(28) & !\PWMtest|LessThan1~55_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|Add3~48_combout\,
	datab => \PWMtest|countactual1\(28),
	datad => VCC,
	cin => \PWMtest|LessThan1~55_cout\,
	cout => \PWMtest|LessThan1~57_cout\);

-- Location: LCCOMB_X57_Y35_N26
\PWMtest|LessThan1~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan1~59_cout\ = CARRY((\PWMtest|countactual1\(29) & ((!\PWMtest|LessThan1~57_cout\) # (!\PWMtest|Add3~50_combout\))) # (!\PWMtest|countactual1\(29) & (!\PWMtest|Add3~50_combout\ & !\PWMtest|LessThan1~57_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(29),
	datab => \PWMtest|Add3~50_combout\,
	datad => VCC,
	cin => \PWMtest|LessThan1~57_cout\,
	cout => \PWMtest|LessThan1~59_cout\);

-- Location: LCCOMB_X57_Y35_N28
\PWMtest|LessThan1~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan1~61_cout\ = CARRY((\PWMtest|countactual1\(30) & (\PWMtest|Add3~52_combout\ & !\PWMtest|LessThan1~59_cout\)) # (!\PWMtest|countactual1\(30) & ((\PWMtest|Add3~52_combout\) # (!\PWMtest|LessThan1~59_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(30),
	datab => \PWMtest|Add3~52_combout\,
	datad => VCC,
	cin => \PWMtest|LessThan1~59_cout\,
	cout => \PWMtest|LessThan1~61_cout\);

-- Location: LCCOMB_X57_Y35_N30
\PWMtest|LessThan1~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan1~62_combout\ = (\PWMtest|countactual1\(31) & ((\PWMtest|LessThan1~61_cout\) # (!\PWMtest|Add3~54_combout\))) # (!\PWMtest|countactual1\(31) & (\PWMtest|LessThan1~61_cout\ & !\PWMtest|Add3~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|countactual1\(31),
	datad => \PWMtest|Add3~54_combout\,
	cin => \PWMtest|LessThan1~61_cout\,
	combout => \PWMtest|LessThan1~62_combout\);

-- Location: LCCOMB_X54_Y37_N12
\PWMtest|Selector38~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Selector38~2_combout\ = (\PWMtest|Selector38~1_combout\) # ((\PWMtest|est_act.boost1softs~q\ & ((\PWMtest|LessThan0~62_combout\) # (\PWMtest|LessThan1~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|Selector38~1_combout\,
	datab => \PWMtest|LessThan0~62_combout\,
	datac => \PWMtest|est_act.boost1softs~q\,
	datad => \PWMtest|LessThan1~62_combout\,
	combout => \PWMtest|Selector38~2_combout\);

-- Location: FF_X54_Y37_N13
\PWMtest|est_act.boost1softs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|Selector38~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|est_act.boost1softs~q\);

-- Location: LCCOMB_X54_Y37_N20
\PWMtest|Selector36~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Selector36~0_combout\ = (\PWMtest|est_sig~9_combout\ & (((!\sel~input_o\ & !\PWMtest|est_act.idle~q\)))) # (!\PWMtest|est_sig~9_combout\ & ((\PWMtest|est_act.buck2~q\) # ((!\sel~input_o\ & !\PWMtest|est_act.idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|est_sig~9_combout\,
	datab => \PWMtest|est_act.buck2~q\,
	datac => \sel~input_o\,
	datad => \PWMtest|est_act.idle~q\,
	combout => \PWMtest|Selector36~0_combout\);

-- Location: LCCOMB_X54_Y37_N2
\PWMtest|Selector36~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Selector36~1_combout\ = (\PWMtest|Selector36~0_combout\) # ((\PWMtest|est_act.buck1~q\ & ((\PWMtest|LessThan1~62_combout\) # (\PWMtest|LessThan0~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|LessThan1~62_combout\,
	datab => \PWMtest|Selector36~0_combout\,
	datac => \PWMtest|est_act.buck1~q\,
	datad => \PWMtest|LessThan0~62_combout\,
	combout => \PWMtest|Selector36~1_combout\);

-- Location: FF_X54_Y37_N3
\PWMtest|est_act.buck1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|Selector36~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|est_act.buck1~q\);

-- Location: LCCOMB_X55_Y37_N0
\PWMtest|Selector1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Selector1~2_combout\ = (!\PWMtest|est_act.boost1softs~q\ & !\PWMtest|est_act.buck1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|est_act.boost1softs~q\,
	datad => \PWMtest|est_act.buck1~q\,
	combout => \PWMtest|Selector1~2_combout\);

-- Location: LCCOMB_X55_Y37_N16
\PWMtest|softstart_duty_act[11]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|softstart_duty_act[11]~6_combout\ = (!\PWMtest|est_act.boost1~q\ & (\PWMtest|Selector1~2_combout\ & ((!\PWMtest|est_sig~9_combout\) # (!\PWMtest|est_act.boost2softs~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|est_act.boost1~q\,
	datab => \PWMtest|est_act.boost2softs~q\,
	datac => \PWMtest|est_sig~9_combout\,
	datad => \PWMtest|Selector1~2_combout\,
	combout => \PWMtest|softstart_duty_act[11]~6_combout\);

-- Location: LCCOMB_X56_Y37_N0
\PWMtest|softstart_duty_act[11]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|softstart_duty_act[11]~3_combout\ = (\PWMtest|est_act.boost2softs~q\ & (((\PWMtest|est_sig~8_combout\)))) # (!\PWMtest|est_act.boost2softs~q\ & (((\PWMtest|LessThan3~7_combout\)) # (!\PWMtest|countactual1\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|est_act.boost2softs~q\,
	datab => \PWMtest|countactual1\(8),
	datac => \PWMtest|LessThan3~7_combout\,
	datad => \PWMtest|est_sig~8_combout\,
	combout => \PWMtest|softstart_duty_act[11]~3_combout\);

-- Location: LCCOMB_X57_Y37_N30
\PWMtest|Selector37~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Selector37~1_combout\ = ((!\PWMtest|countactual1\(3) & !\PWMtest|countactual1\(2))) # (!\PWMtest|countactual1\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(4),
	datab => \PWMtest|countactual1\(3),
	datac => \PWMtest|countactual1\(2),
	combout => \PWMtest|Selector37~1_combout\);

-- Location: LCCOMB_X56_Y37_N6
\PWMtest|Selector37~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Selector37~2_combout\ = (\PWMtest|LessThan2~2_combout\ & ((\PWMtest|est_act.boost2~q\ & (\PWMtest|Selector37~1_combout\)) # (!\PWMtest|est_act.boost2~q\ & ((\PWMtest|LessThan2~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|est_act.boost2~q\,
	datab => \PWMtest|LessThan2~2_combout\,
	datac => \PWMtest|Selector37~1_combout\,
	datad => \PWMtest|LessThan2~1_combout\,
	combout => \PWMtest|Selector37~2_combout\);

-- Location: LCCOMB_X56_Y37_N16
\PWMtest|Selector37~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Selector37~3_combout\ = (\PWMtest|LessThan3~6_combout\ & ((\PWMtest|Selector37~2_combout\) # (!\PWMtest|countactual1\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|Selector37~2_combout\,
	datac => \PWMtest|countactual1\(8),
	datad => \PWMtest|LessThan3~6_combout\,
	combout => \PWMtest|Selector37~3_combout\);

-- Location: LCCOMB_X56_Y37_N10
\PWMtest|softstart_duty_act[11]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|softstart_duty_act[11]~4_combout\ = (\PWMtest|Selector37~3_combout\) # ((\PWMtest|countactual1\(31)) # ((\PWMtest|softstart_duty_act[11]~3_combout\ & \PWMtest|LessThan3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act[11]~3_combout\,
	datab => \PWMtest|Selector37~3_combout\,
	datac => \PWMtest|countactual1\(31),
	datad => \PWMtest|LessThan3~6_combout\,
	combout => \PWMtest|softstart_duty_act[11]~4_combout\);

-- Location: LCCOMB_X56_Y37_N30
\PWMtest|softstart_duty_act[11]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|softstart_duty_act[11]~10_combout\ = (\PWMtest|softstart_duty_act[11]~6_combout\ & (((!\PWMtest|est_act.buck2~q\ & !\PWMtest|est_act.boost2~q\)) # (!\PWMtest|softstart_duty_act[11]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|est_act.buck2~q\,
	datab => \PWMtest|est_act.boost2~q\,
	datac => \PWMtest|softstart_duty_act[11]~6_combout\,
	datad => \PWMtest|softstart_duty_act[11]~4_combout\,
	combout => \PWMtest|softstart_duty_act[11]~10_combout\);

-- Location: FF_X62_Y36_N13
\PWMtest|softstart_duty_act[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|Selector24~0_combout\,
	clrn => \reset~input_o\,
	ena => \PWMtest|softstart_duty_act[11]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|softstart_duty_act\(10));

-- Location: LCCOMB_X62_Y38_N22
\PWMtest|Add5~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add5~22_combout\ = (\PWMtest|softstart_duty_act\(11) & (!\PWMtest|Add5~21\)) # (!\PWMtest|softstart_duty_act\(11) & ((\PWMtest|Add5~21\) # (GND)))
-- \PWMtest|Add5~23\ = CARRY((!\PWMtest|Add5~21\) # (!\PWMtest|softstart_duty_act\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(11),
	datad => VCC,
	cin => \PWMtest|Add5~21\,
	combout => \PWMtest|Add5~22_combout\,
	cout => \PWMtest|Add5~23\);

-- Location: LCCOMB_X62_Y36_N2
\PWMtest|Selector23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Selector23~0_combout\ = (\PWMtest|est_act.idle~q\ & (\PWMtest|Add5~22_combout\ & ((\PWMtest|softstart_duty_act[11]~2_combout\) # (\PWMtest|softstart_duty_act\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act[11]~2_combout\,
	datab => \PWMtest|est_act.idle~q\,
	datac => \PWMtest|Add5~22_combout\,
	datad => \PWMtest|softstart_duty_act\(31),
	combout => \PWMtest|Selector23~0_combout\);

-- Location: FF_X62_Y36_N3
\PWMtest|softstart_duty_act[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|Selector23~0_combout\,
	clrn => \reset~input_o\,
	ena => \PWMtest|softstart_duty_act[11]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|softstart_duty_act\(11));

-- Location: LCCOMB_X62_Y38_N24
\PWMtest|Add5~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add5~24_combout\ = (\PWMtest|softstart_duty_act\(12) & (\PWMtest|Add5~23\ $ (GND))) # (!\PWMtest|softstart_duty_act\(12) & (!\PWMtest|Add5~23\ & VCC))
-- \PWMtest|Add5~25\ = CARRY((\PWMtest|softstart_duty_act\(12) & !\PWMtest|Add5~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|softstart_duty_act\(12),
	datad => VCC,
	cin => \PWMtest|Add5~23\,
	combout => \PWMtest|Add5~24_combout\,
	cout => \PWMtest|Add5~25\);

-- Location: LCCOMB_X62_Y36_N16
\PWMtest|Selector22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Selector22~0_combout\ = (\PWMtest|est_act.idle~q\ & (\PWMtest|Add5~24_combout\ & ((\PWMtest|softstart_duty_act[11]~2_combout\) # (\PWMtest|softstart_duty_act\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act[11]~2_combout\,
	datab => \PWMtest|est_act.idle~q\,
	datac => \PWMtest|Add5~24_combout\,
	datad => \PWMtest|softstart_duty_act\(31),
	combout => \PWMtest|Selector22~0_combout\);

-- Location: FF_X62_Y36_N17
\PWMtest|softstart_duty_act[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|Selector22~0_combout\,
	clrn => \reset~input_o\,
	ena => \PWMtest|softstart_duty_act[11]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|softstart_duty_act\(12));

-- Location: LCCOMB_X62_Y38_N26
\PWMtest|Add5~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add5~26_combout\ = (\PWMtest|softstart_duty_act\(13) & (!\PWMtest|Add5~25\)) # (!\PWMtest|softstart_duty_act\(13) & ((\PWMtest|Add5~25\) # (GND)))
-- \PWMtest|Add5~27\ = CARRY((!\PWMtest|Add5~25\) # (!\PWMtest|softstart_duty_act\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|softstart_duty_act\(13),
	datad => VCC,
	cin => \PWMtest|Add5~25\,
	combout => \PWMtest|Add5~26_combout\,
	cout => \PWMtest|Add5~27\);

-- Location: LCCOMB_X62_Y36_N14
\PWMtest|Selector21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Selector21~0_combout\ = (\PWMtest|Add5~26_combout\ & (\PWMtest|est_act.idle~q\ & ((\PWMtest|softstart_duty_act\(31)) # (\PWMtest|softstart_duty_act[11]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|Add5~26_combout\,
	datab => \PWMtest|softstart_duty_act\(31),
	datac => \PWMtest|softstart_duty_act[11]~2_combout\,
	datad => \PWMtest|est_act.idle~q\,
	combout => \PWMtest|Selector21~0_combout\);

-- Location: FF_X62_Y36_N15
\PWMtest|softstart_duty_act[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|Selector21~0_combout\,
	clrn => \reset~input_o\,
	ena => \PWMtest|softstart_duty_act[11]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|softstart_duty_act\(13));

-- Location: LCCOMB_X62_Y38_N28
\PWMtest|Add5~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add5~28_combout\ = (\PWMtest|softstart_duty_act\(14) & (\PWMtest|Add5~27\ $ (GND))) # (!\PWMtest|softstart_duty_act\(14) & (!\PWMtest|Add5~27\ & VCC))
-- \PWMtest|Add5~29\ = CARRY((\PWMtest|softstart_duty_act\(14) & !\PWMtest|Add5~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(14),
	datad => VCC,
	cin => \PWMtest|Add5~27\,
	combout => \PWMtest|Add5~28_combout\,
	cout => \PWMtest|Add5~29\);

-- Location: LCCOMB_X62_Y36_N4
\PWMtest|Selector20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Selector20~0_combout\ = (\PWMtest|Add5~28_combout\ & (\PWMtest|est_act.idle~q\ & ((\PWMtest|softstart_duty_act[11]~2_combout\) # (\PWMtest|softstart_duty_act\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|Add5~28_combout\,
	datab => \PWMtest|est_act.idle~q\,
	datac => \PWMtest|softstart_duty_act[11]~2_combout\,
	datad => \PWMtest|softstart_duty_act\(31),
	combout => \PWMtest|Selector20~0_combout\);

-- Location: FF_X62_Y36_N5
\PWMtest|softstart_duty_act[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|Selector20~0_combout\,
	clrn => \reset~input_o\,
	ena => \PWMtest|softstart_duty_act[11]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|softstart_duty_act\(14));

-- Location: LCCOMB_X62_Y38_N30
\PWMtest|Add5~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add5~30_combout\ = (\PWMtest|softstart_duty_act\(15) & (!\PWMtest|Add5~29\)) # (!\PWMtest|softstart_duty_act\(15) & ((\PWMtest|Add5~29\) # (GND)))
-- \PWMtest|Add5~31\ = CARRY((!\PWMtest|Add5~29\) # (!\PWMtest|softstart_duty_act\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(15),
	datad => VCC,
	cin => \PWMtest|Add5~29\,
	combout => \PWMtest|Add5~30_combout\,
	cout => \PWMtest|Add5~31\);

-- Location: LCCOMB_X60_Y35_N18
\PWMtest|Selector19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Selector19~0_combout\ = (\PWMtest|est_act.idle~q\ & (\PWMtest|Add5~30_combout\ & ((\PWMtest|softstart_duty_act[11]~2_combout\) # (\PWMtest|softstart_duty_act\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|est_act.idle~q\,
	datab => \PWMtest|softstart_duty_act[11]~2_combout\,
	datac => \PWMtest|softstart_duty_act\(31),
	datad => \PWMtest|Add5~30_combout\,
	combout => \PWMtest|Selector19~0_combout\);

-- Location: FF_X60_Y35_N19
\PWMtest|softstart_duty_act[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|Selector19~0_combout\,
	clrn => \reset~input_o\,
	ena => \PWMtest|softstart_duty_act[11]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|softstart_duty_act\(15));

-- Location: LCCOMB_X62_Y37_N0
\PWMtest|Add5~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add5~32_combout\ = (\PWMtest|softstart_duty_act\(16) & (\PWMtest|Add5~31\ $ (GND))) # (!\PWMtest|softstart_duty_act\(16) & (!\PWMtest|Add5~31\ & VCC))
-- \PWMtest|Add5~33\ = CARRY((\PWMtest|softstart_duty_act\(16) & !\PWMtest|Add5~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|softstart_duty_act\(16),
	datad => VCC,
	cin => \PWMtest|Add5~31\,
	combout => \PWMtest|Add5~32_combout\,
	cout => \PWMtest|Add5~33\);

-- Location: LCCOMB_X60_Y35_N8
\PWMtest|Selector18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Selector18~0_combout\ = (\PWMtest|est_act.idle~q\ & (\PWMtest|Add5~32_combout\ & ((\PWMtest|softstart_duty_act[11]~2_combout\) # (\PWMtest|softstart_duty_act\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|est_act.idle~q\,
	datab => \PWMtest|softstart_duty_act[11]~2_combout\,
	datac => \PWMtest|softstart_duty_act\(31),
	datad => \PWMtest|Add5~32_combout\,
	combout => \PWMtest|Selector18~0_combout\);

-- Location: FF_X60_Y35_N9
\PWMtest|softstart_duty_act[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|Selector18~0_combout\,
	clrn => \reset~input_o\,
	ena => \PWMtest|softstart_duty_act[11]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|softstart_duty_act\(16));

-- Location: LCCOMB_X62_Y37_N2
\PWMtest|Add5~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add5~34_combout\ = (\PWMtest|softstart_duty_act\(17) & (!\PWMtest|Add5~33\)) # (!\PWMtest|softstart_duty_act\(17) & ((\PWMtest|Add5~33\) # (GND)))
-- \PWMtest|Add5~35\ = CARRY((!\PWMtest|Add5~33\) # (!\PWMtest|softstart_duty_act\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|softstart_duty_act\(17),
	datad => VCC,
	cin => \PWMtest|Add5~33\,
	combout => \PWMtest|Add5~34_combout\,
	cout => \PWMtest|Add5~35\);

-- Location: LCCOMB_X60_Y35_N6
\PWMtest|Selector17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Selector17~0_combout\ = (\PWMtest|est_act.idle~q\ & (\PWMtest|Add5~34_combout\ & ((\PWMtest|softstart_duty_act\(31)) # (\PWMtest|softstart_duty_act[11]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|est_act.idle~q\,
	datab => \PWMtest|softstart_duty_act\(31),
	datac => \PWMtest|Add5~34_combout\,
	datad => \PWMtest|softstart_duty_act[11]~2_combout\,
	combout => \PWMtest|Selector17~0_combout\);

-- Location: FF_X60_Y35_N7
\PWMtest|softstart_duty_act[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|Selector17~0_combout\,
	clrn => \reset~input_o\,
	ena => \PWMtest|softstart_duty_act[11]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|softstart_duty_act\(17));

-- Location: LCCOMB_X62_Y37_N4
\PWMtest|Add5~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add5~36_combout\ = (\PWMtest|softstart_duty_act\(18) & (\PWMtest|Add5~35\ $ (GND))) # (!\PWMtest|softstart_duty_act\(18) & (!\PWMtest|Add5~35\ & VCC))
-- \PWMtest|Add5~37\ = CARRY((\PWMtest|softstart_duty_act\(18) & !\PWMtest|Add5~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|softstart_duty_act\(18),
	datad => VCC,
	cin => \PWMtest|Add5~35\,
	combout => \PWMtest|Add5~36_combout\,
	cout => \PWMtest|Add5~37\);

-- Location: LCCOMB_X60_Y35_N28
\PWMtest|Selector16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Selector16~0_combout\ = (\PWMtest|est_act.idle~q\ & (\PWMtest|Add5~36_combout\ & ((\PWMtest|softstart_duty_act[11]~2_combout\) # (\PWMtest|softstart_duty_act\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|est_act.idle~q\,
	datab => \PWMtest|softstart_duty_act[11]~2_combout\,
	datac => \PWMtest|softstart_duty_act\(31),
	datad => \PWMtest|Add5~36_combout\,
	combout => \PWMtest|Selector16~0_combout\);

-- Location: FF_X60_Y35_N29
\PWMtest|softstart_duty_act[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|Selector16~0_combout\,
	clrn => \reset~input_o\,
	ena => \PWMtest|softstart_duty_act[11]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|softstart_duty_act\(18));

-- Location: LCCOMB_X62_Y37_N6
\PWMtest|Add5~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add5~38_combout\ = (\PWMtest|softstart_duty_act\(19) & (!\PWMtest|Add5~37\)) # (!\PWMtest|softstart_duty_act\(19) & ((\PWMtest|Add5~37\) # (GND)))
-- \PWMtest|Add5~39\ = CARRY((!\PWMtest|Add5~37\) # (!\PWMtest|softstart_duty_act\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(19),
	datad => VCC,
	cin => \PWMtest|Add5~37\,
	combout => \PWMtest|Add5~38_combout\,
	cout => \PWMtest|Add5~39\);

-- Location: LCCOMB_X62_Y36_N26
\PWMtest|Selector15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Selector15~0_combout\ = (\PWMtest|est_act.idle~q\ & (\PWMtest|Add5~38_combout\ & ((\PWMtest|softstart_duty_act[11]~2_combout\) # (\PWMtest|softstart_duty_act\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act[11]~2_combout\,
	datab => \PWMtest|est_act.idle~q\,
	datac => \PWMtest|Add5~38_combout\,
	datad => \PWMtest|softstart_duty_act\(31),
	combout => \PWMtest|Selector15~0_combout\);

-- Location: FF_X62_Y36_N27
\PWMtest|softstart_duty_act[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|Selector15~0_combout\,
	clrn => \reset~input_o\,
	ena => \PWMtest|softstart_duty_act[11]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|softstart_duty_act\(19));

-- Location: LCCOMB_X62_Y37_N8
\PWMtest|Add5~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add5~40_combout\ = (\PWMtest|softstart_duty_act\(20) & (\PWMtest|Add5~39\ $ (GND))) # (!\PWMtest|softstart_duty_act\(20) & (!\PWMtest|Add5~39\ & VCC))
-- \PWMtest|Add5~41\ = CARRY((\PWMtest|softstart_duty_act\(20) & !\PWMtest|Add5~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(20),
	datad => VCC,
	cin => \PWMtest|Add5~39\,
	combout => \PWMtest|Add5~40_combout\,
	cout => \PWMtest|Add5~41\);

-- Location: LCCOMB_X61_Y37_N0
\PWMtest|Selector14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Selector14~0_combout\ = (\PWMtest|est_act.idle~q\ & (\PWMtest|Add5~40_combout\ & ((\PWMtest|softstart_duty_act[11]~2_combout\) # (\PWMtest|softstart_duty_act\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|est_act.idle~q\,
	datab => \PWMtest|softstart_duty_act[11]~2_combout\,
	datac => \PWMtest|Add5~40_combout\,
	datad => \PWMtest|softstart_duty_act\(31),
	combout => \PWMtest|Selector14~0_combout\);

-- Location: FF_X61_Y37_N1
\PWMtest|softstart_duty_act[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|Selector14~0_combout\,
	clrn => \reset~input_o\,
	ena => \PWMtest|softstart_duty_act[11]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|softstart_duty_act\(20));

-- Location: LCCOMB_X62_Y37_N10
\PWMtest|Add5~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add5~42_combout\ = (\PWMtest|softstart_duty_act\(21) & (!\PWMtest|Add5~41\)) # (!\PWMtest|softstart_duty_act\(21) & ((\PWMtest|Add5~41\) # (GND)))
-- \PWMtest|Add5~43\ = CARRY((!\PWMtest|Add5~41\) # (!\PWMtest|softstart_duty_act\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|softstart_duty_act\(21),
	datad => VCC,
	cin => \PWMtest|Add5~41\,
	combout => \PWMtest|Add5~42_combout\,
	cout => \PWMtest|Add5~43\);

-- Location: LCCOMB_X62_Y36_N0
\PWMtest|Selector13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Selector13~0_combout\ = (\PWMtest|est_act.idle~q\ & (\PWMtest|Add5~42_combout\ & ((\PWMtest|softstart_duty_act\(31)) # (\PWMtest|softstart_duty_act[11]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|est_act.idle~q\,
	datab => \PWMtest|softstart_duty_act\(31),
	datac => \PWMtest|softstart_duty_act[11]~2_combout\,
	datad => \PWMtest|Add5~42_combout\,
	combout => \PWMtest|Selector13~0_combout\);

-- Location: FF_X62_Y36_N1
\PWMtest|softstart_duty_act[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|Selector13~0_combout\,
	clrn => \reset~input_o\,
	ena => \PWMtest|softstart_duty_act[11]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|softstart_duty_act\(21));

-- Location: LCCOMB_X62_Y37_N12
\PWMtest|Add5~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add5~44_combout\ = (\PWMtest|softstart_duty_act\(22) & (\PWMtest|Add5~43\ $ (GND))) # (!\PWMtest|softstart_duty_act\(22) & (!\PWMtest|Add5~43\ & VCC))
-- \PWMtest|Add5~45\ = CARRY((\PWMtest|softstart_duty_act\(22) & !\PWMtest|Add5~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(22),
	datad => VCC,
	cin => \PWMtest|Add5~43\,
	combout => \PWMtest|Add5~44_combout\,
	cout => \PWMtest|Add5~45\);

-- Location: LCCOMB_X62_Y36_N22
\PWMtest|Selector12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Selector12~0_combout\ = (\PWMtest|est_act.idle~q\ & (\PWMtest|Add5~44_combout\ & ((\PWMtest|softstart_duty_act\(31)) # (\PWMtest|softstart_duty_act[11]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|est_act.idle~q\,
	datab => \PWMtest|softstart_duty_act\(31),
	datac => \PWMtest|softstart_duty_act[11]~2_combout\,
	datad => \PWMtest|Add5~44_combout\,
	combout => \PWMtest|Selector12~0_combout\);

-- Location: FF_X62_Y36_N23
\PWMtest|softstart_duty_act[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|Selector12~0_combout\,
	clrn => \reset~input_o\,
	ena => \PWMtest|softstart_duty_act[11]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|softstart_duty_act\(22));

-- Location: LCCOMB_X62_Y37_N14
\PWMtest|Add5~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add5~46_combout\ = (\PWMtest|softstart_duty_act\(23) & (!\PWMtest|Add5~45\)) # (!\PWMtest|softstart_duty_act\(23) & ((\PWMtest|Add5~45\) # (GND)))
-- \PWMtest|Add5~47\ = CARRY((!\PWMtest|Add5~45\) # (!\PWMtest|softstart_duty_act\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|softstart_duty_act\(23),
	datad => VCC,
	cin => \PWMtest|Add5~45\,
	combout => \PWMtest|Add5~46_combout\,
	cout => \PWMtest|Add5~47\);

-- Location: LCCOMB_X62_Y36_N20
\PWMtest|Selector11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Selector11~0_combout\ = (\PWMtest|Add5~46_combout\ & (\PWMtest|est_act.idle~q\ & ((\PWMtest|softstart_duty_act[11]~2_combout\) # (\PWMtest|softstart_duty_act\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|Add5~46_combout\,
	datab => \PWMtest|est_act.idle~q\,
	datac => \PWMtest|softstart_duty_act[11]~2_combout\,
	datad => \PWMtest|softstart_duty_act\(31),
	combout => \PWMtest|Selector11~0_combout\);

-- Location: FF_X62_Y36_N21
\PWMtest|softstart_duty_act[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|Selector11~0_combout\,
	clrn => \reset~input_o\,
	ena => \PWMtest|softstart_duty_act[11]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|softstart_duty_act\(23));

-- Location: LCCOMB_X62_Y37_N16
\PWMtest|Add5~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add5~48_combout\ = (\PWMtest|softstart_duty_act\(24) & (\PWMtest|Add5~47\ $ (GND))) # (!\PWMtest|softstart_duty_act\(24) & (!\PWMtest|Add5~47\ & VCC))
-- \PWMtest|Add5~49\ = CARRY((\PWMtest|softstart_duty_act\(24) & !\PWMtest|Add5~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|softstart_duty_act\(24),
	datad => VCC,
	cin => \PWMtest|Add5~47\,
	combout => \PWMtest|Add5~48_combout\,
	cout => \PWMtest|Add5~49\);

-- Location: LCCOMB_X62_Y36_N18
\PWMtest|Selector10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Selector10~0_combout\ = (\PWMtest|Add5~48_combout\ & (\PWMtest|est_act.idle~q\ & ((\PWMtest|softstart_duty_act\(31)) # (\PWMtest|softstart_duty_act[11]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|Add5~48_combout\,
	datab => \PWMtest|softstart_duty_act\(31),
	datac => \PWMtest|softstart_duty_act[11]~2_combout\,
	datad => \PWMtest|est_act.idle~q\,
	combout => \PWMtest|Selector10~0_combout\);

-- Location: FF_X62_Y36_N19
\PWMtest|softstart_duty_act[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|Selector10~0_combout\,
	clrn => \reset~input_o\,
	ena => \PWMtest|softstart_duty_act[11]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|softstart_duty_act\(24));

-- Location: LCCOMB_X62_Y37_N18
\PWMtest|Add5~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add5~50_combout\ = (\PWMtest|softstart_duty_act\(25) & (!\PWMtest|Add5~49\)) # (!\PWMtest|softstart_duty_act\(25) & ((\PWMtest|Add5~49\) # (GND)))
-- \PWMtest|Add5~51\ = CARRY((!\PWMtest|Add5~49\) # (!\PWMtest|softstart_duty_act\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|softstart_duty_act\(25),
	datad => VCC,
	cin => \PWMtest|Add5~49\,
	combout => \PWMtest|Add5~50_combout\,
	cout => \PWMtest|Add5~51\);

-- Location: LCCOMB_X60_Y35_N2
\PWMtest|Selector9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Selector9~0_combout\ = (\PWMtest|est_act.idle~q\ & (\PWMtest|Add5~50_combout\ & ((\PWMtest|softstart_duty_act[11]~2_combout\) # (\PWMtest|softstart_duty_act\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|est_act.idle~q\,
	datab => \PWMtest|softstart_duty_act[11]~2_combout\,
	datac => \PWMtest|softstart_duty_act\(31),
	datad => \PWMtest|Add5~50_combout\,
	combout => \PWMtest|Selector9~0_combout\);

-- Location: FF_X60_Y35_N3
\PWMtest|softstart_duty_act[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|Selector9~0_combout\,
	clrn => \reset~input_o\,
	ena => \PWMtest|softstart_duty_act[11]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|softstart_duty_act\(25));

-- Location: LCCOMB_X62_Y37_N20
\PWMtest|Add5~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add5~52_combout\ = (\PWMtest|softstart_duty_act\(26) & (\PWMtest|Add5~51\ $ (GND))) # (!\PWMtest|softstart_duty_act\(26) & (!\PWMtest|Add5~51\ & VCC))
-- \PWMtest|Add5~53\ = CARRY((\PWMtest|softstart_duty_act\(26) & !\PWMtest|Add5~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(26),
	datad => VCC,
	cin => \PWMtest|Add5~51\,
	combout => \PWMtest|Add5~52_combout\,
	cout => \PWMtest|Add5~53\);

-- Location: LCCOMB_X60_Y35_N24
\PWMtest|Selector8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Selector8~0_combout\ = (\PWMtest|est_act.idle~q\ & (\PWMtest|Add5~52_combout\ & ((\PWMtest|softstart_duty_act[11]~2_combout\) # (\PWMtest|softstart_duty_act\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|est_act.idle~q\,
	datab => \PWMtest|softstart_duty_act[11]~2_combout\,
	datac => \PWMtest|softstart_duty_act\(31),
	datad => \PWMtest|Add5~52_combout\,
	combout => \PWMtest|Selector8~0_combout\);

-- Location: FF_X60_Y35_N25
\PWMtest|softstart_duty_act[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|Selector8~0_combout\,
	clrn => \reset~input_o\,
	ena => \PWMtest|softstart_duty_act[11]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|softstart_duty_act\(26));

-- Location: LCCOMB_X62_Y37_N22
\PWMtest|Add5~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add5~54_combout\ = (\PWMtest|softstart_duty_act\(27) & (!\PWMtest|Add5~53\)) # (!\PWMtest|softstart_duty_act\(27) & ((\PWMtest|Add5~53\) # (GND)))
-- \PWMtest|Add5~55\ = CARRY((!\PWMtest|Add5~53\) # (!\PWMtest|softstart_duty_act\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(27),
	datad => VCC,
	cin => \PWMtest|Add5~53\,
	combout => \PWMtest|Add5~54_combout\,
	cout => \PWMtest|Add5~55\);

-- Location: LCCOMB_X62_Y36_N8
\PWMtest|Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Selector7~0_combout\ = (\PWMtest|Add5~54_combout\ & (\PWMtest|est_act.idle~q\ & ((\PWMtest|softstart_duty_act[11]~2_combout\) # (\PWMtest|softstart_duty_act\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|Add5~54_combout\,
	datab => \PWMtest|est_act.idle~q\,
	datac => \PWMtest|softstart_duty_act[11]~2_combout\,
	datad => \PWMtest|softstart_duty_act\(31),
	combout => \PWMtest|Selector7~0_combout\);

-- Location: FF_X62_Y36_N9
\PWMtest|softstart_duty_act[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|Selector7~0_combout\,
	clrn => \reset~input_o\,
	ena => \PWMtest|softstart_duty_act[11]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|softstart_duty_act\(27));

-- Location: LCCOMB_X62_Y37_N24
\PWMtest|Add5~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add5~56_combout\ = (\PWMtest|softstart_duty_act\(28) & (\PWMtest|Add5~55\ $ (GND))) # (!\PWMtest|softstart_duty_act\(28) & (!\PWMtest|Add5~55\ & VCC))
-- \PWMtest|Add5~57\ = CARRY((\PWMtest|softstart_duty_act\(28) & !\PWMtest|Add5~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|softstart_duty_act\(28),
	datad => VCC,
	cin => \PWMtest|Add5~55\,
	combout => \PWMtest|Add5~56_combout\,
	cout => \PWMtest|Add5~57\);

-- Location: LCCOMB_X62_Y36_N6
\PWMtest|Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Selector6~0_combout\ = (\PWMtest|est_act.idle~q\ & (\PWMtest|Add5~56_combout\ & ((\PWMtest|softstart_duty_act[11]~2_combout\) # (\PWMtest|softstart_duty_act\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act[11]~2_combout\,
	datab => \PWMtest|est_act.idle~q\,
	datac => \PWMtest|Add5~56_combout\,
	datad => \PWMtest|softstart_duty_act\(31),
	combout => \PWMtest|Selector6~0_combout\);

-- Location: FF_X62_Y36_N7
\PWMtest|softstart_duty_act[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|Selector6~0_combout\,
	clrn => \reset~input_o\,
	ena => \PWMtest|softstart_duty_act[11]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|softstart_duty_act\(28));

-- Location: LCCOMB_X62_Y37_N26
\PWMtest|Add5~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add5~58_combout\ = (\PWMtest|softstart_duty_act\(29) & (!\PWMtest|Add5~57\)) # (!\PWMtest|softstart_duty_act\(29) & ((\PWMtest|Add5~57\) # (GND)))
-- \PWMtest|Add5~59\ = CARRY((!\PWMtest|Add5~57\) # (!\PWMtest|softstart_duty_act\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|softstart_duty_act\(29),
	datad => VCC,
	cin => \PWMtest|Add5~57\,
	combout => \PWMtest|Add5~58_combout\,
	cout => \PWMtest|Add5~59\);

-- Location: LCCOMB_X62_Y36_N28
\PWMtest|Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Selector5~0_combout\ = (\PWMtest|est_act.idle~q\ & (\PWMtest|Add5~58_combout\ & ((\PWMtest|softstart_duty_act[11]~2_combout\) # (\PWMtest|softstart_duty_act\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act[11]~2_combout\,
	datab => \PWMtest|est_act.idle~q\,
	datac => \PWMtest|Add5~58_combout\,
	datad => \PWMtest|softstart_duty_act\(31),
	combout => \PWMtest|Selector5~0_combout\);

-- Location: FF_X62_Y36_N29
\PWMtest|softstart_duty_act[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|Selector5~0_combout\,
	clrn => \reset~input_o\,
	ena => \PWMtest|softstart_duty_act[11]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|softstart_duty_act\(29));

-- Location: LCCOMB_X62_Y37_N28
\PWMtest|Add5~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add5~60_combout\ = (\PWMtest|softstart_duty_act\(30) & (\PWMtest|Add5~59\ $ (GND))) # (!\PWMtest|softstart_duty_act\(30) & (!\PWMtest|Add5~59\ & VCC))
-- \PWMtest|Add5~61\ = CARRY((\PWMtest|softstart_duty_act\(30) & !\PWMtest|Add5~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(30),
	datad => VCC,
	cin => \PWMtest|Add5~59\,
	combout => \PWMtest|Add5~60_combout\,
	cout => \PWMtest|Add5~61\);

-- Location: LCCOMB_X62_Y36_N10
\PWMtest|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Selector4~0_combout\ = (\PWMtest|est_act.idle~q\ & (\PWMtest|Add5~60_combout\ & ((\PWMtest|softstart_duty_act[11]~2_combout\) # (\PWMtest|softstart_duty_act\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act[11]~2_combout\,
	datab => \PWMtest|est_act.idle~q\,
	datac => \PWMtest|Add5~60_combout\,
	datad => \PWMtest|softstart_duty_act\(31),
	combout => \PWMtest|Selector4~0_combout\);

-- Location: FF_X62_Y36_N11
\PWMtest|softstart_duty_act[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|Selector4~0_combout\,
	clrn => \reset~input_o\,
	ena => \PWMtest|softstart_duty_act[11]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|softstart_duty_act\(30));

-- Location: LCCOMB_X59_Y36_N0
\PWMtest|LessThan7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan7~1_cout\ = CARRY((!\PWMtest|softstart_duty_act\(0) & !\PWMtest|countactual1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(0),
	datab => \PWMtest|countactual1\(0),
	datad => VCC,
	cout => \PWMtest|LessThan7~1_cout\);

-- Location: LCCOMB_X59_Y36_N2
\PWMtest|LessThan7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan7~3_cout\ = CARRY((\PWMtest|softstart_duty_act\(1) & ((\PWMtest|countactual1\(1)) # (!\PWMtest|LessThan7~1_cout\))) # (!\PWMtest|softstart_duty_act\(1) & (\PWMtest|countactual1\(1) & !\PWMtest|LessThan7~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(1),
	datab => \PWMtest|countactual1\(1),
	datad => VCC,
	cin => \PWMtest|LessThan7~1_cout\,
	cout => \PWMtest|LessThan7~3_cout\);

-- Location: LCCOMB_X59_Y36_N4
\PWMtest|LessThan7~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan7~5_cout\ = CARRY((\PWMtest|softstart_duty_act\(2) & (!\PWMtest|countactual1\(2) & !\PWMtest|LessThan7~3_cout\)) # (!\PWMtest|softstart_duty_act\(2) & ((!\PWMtest|LessThan7~3_cout\) # (!\PWMtest|countactual1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(2),
	datab => \PWMtest|countactual1\(2),
	datad => VCC,
	cin => \PWMtest|LessThan7~3_cout\,
	cout => \PWMtest|LessThan7~5_cout\);

-- Location: LCCOMB_X59_Y36_N6
\PWMtest|LessThan7~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan7~7_cout\ = CARRY((\PWMtest|softstart_duty_act\(3) & ((\PWMtest|countactual1\(3)) # (!\PWMtest|LessThan7~5_cout\))) # (!\PWMtest|softstart_duty_act\(3) & (\PWMtest|countactual1\(3) & !\PWMtest|LessThan7~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(3),
	datab => \PWMtest|countactual1\(3),
	datad => VCC,
	cin => \PWMtest|LessThan7~5_cout\,
	cout => \PWMtest|LessThan7~7_cout\);

-- Location: LCCOMB_X59_Y36_N8
\PWMtest|LessThan7~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan7~9_cout\ = CARRY((\PWMtest|countactual1\(4) & (\PWMtest|softstart_duty_act\(4) & !\PWMtest|LessThan7~7_cout\)) # (!\PWMtest|countactual1\(4) & ((\PWMtest|softstart_duty_act\(4)) # (!\PWMtest|LessThan7~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(4),
	datab => \PWMtest|softstart_duty_act\(4),
	datad => VCC,
	cin => \PWMtest|LessThan7~7_cout\,
	cout => \PWMtest|LessThan7~9_cout\);

-- Location: LCCOMB_X59_Y36_N10
\PWMtest|LessThan7~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan7~11_cout\ = CARRY((\PWMtest|countactual1\(5) & ((!\PWMtest|LessThan7~9_cout\) # (!\PWMtest|softstart_duty_act\(5)))) # (!\PWMtest|countactual1\(5) & (!\PWMtest|softstart_duty_act\(5) & !\PWMtest|LessThan7~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(5),
	datab => \PWMtest|softstart_duty_act\(5),
	datad => VCC,
	cin => \PWMtest|LessThan7~9_cout\,
	cout => \PWMtest|LessThan7~11_cout\);

-- Location: LCCOMB_X59_Y36_N12
\PWMtest|LessThan7~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan7~13_cout\ = CARRY((\PWMtest|softstart_duty_act\(6) & ((!\PWMtest|LessThan7~11_cout\) # (!\PWMtest|countactual1\(6)))) # (!\PWMtest|softstart_duty_act\(6) & (!\PWMtest|countactual1\(6) & !\PWMtest|LessThan7~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(6),
	datab => \PWMtest|countactual1\(6),
	datad => VCC,
	cin => \PWMtest|LessThan7~11_cout\,
	cout => \PWMtest|LessThan7~13_cout\);

-- Location: LCCOMB_X59_Y36_N14
\PWMtest|LessThan7~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan7~15_cout\ = CARRY((\PWMtest|softstart_duty_act\(7) & (\PWMtest|countactual1\(7) & !\PWMtest|LessThan7~13_cout\)) # (!\PWMtest|softstart_duty_act\(7) & ((\PWMtest|countactual1\(7)) # (!\PWMtest|LessThan7~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(7),
	datab => \PWMtest|countactual1\(7),
	datad => VCC,
	cin => \PWMtest|LessThan7~13_cout\,
	cout => \PWMtest|LessThan7~15_cout\);

-- Location: LCCOMB_X59_Y36_N16
\PWMtest|LessThan7~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan7~17_cout\ = CARRY((\PWMtest|softstart_duty_act\(8) & ((!\PWMtest|LessThan7~15_cout\) # (!\PWMtest|countactual1\(8)))) # (!\PWMtest|softstart_duty_act\(8) & (!\PWMtest|countactual1\(8) & !\PWMtest|LessThan7~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(8),
	datab => \PWMtest|countactual1\(8),
	datad => VCC,
	cin => \PWMtest|LessThan7~15_cout\,
	cout => \PWMtest|LessThan7~17_cout\);

-- Location: LCCOMB_X59_Y36_N18
\PWMtest|LessThan7~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan7~19_cout\ = CARRY((\PWMtest|countactual1\(9) & ((!\PWMtest|LessThan7~17_cout\) # (!\PWMtest|softstart_duty_act\(9)))) # (!\PWMtest|countactual1\(9) & (!\PWMtest|softstart_duty_act\(9) & !\PWMtest|LessThan7~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(9),
	datab => \PWMtest|softstart_duty_act\(9),
	datad => VCC,
	cin => \PWMtest|LessThan7~17_cout\,
	cout => \PWMtest|LessThan7~19_cout\);

-- Location: LCCOMB_X59_Y36_N20
\PWMtest|LessThan7~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan7~21_cout\ = CARRY((\PWMtest|countactual1\(10) & (\PWMtest|softstart_duty_act\(10) & !\PWMtest|LessThan7~19_cout\)) # (!\PWMtest|countactual1\(10) & ((\PWMtest|softstart_duty_act\(10)) # (!\PWMtest|LessThan7~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(10),
	datab => \PWMtest|softstart_duty_act\(10),
	datad => VCC,
	cin => \PWMtest|LessThan7~19_cout\,
	cout => \PWMtest|LessThan7~21_cout\);

-- Location: LCCOMB_X59_Y36_N22
\PWMtest|LessThan7~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan7~23_cout\ = CARRY((\PWMtest|softstart_duty_act\(11) & (\PWMtest|countactual1\(11) & !\PWMtest|LessThan7~21_cout\)) # (!\PWMtest|softstart_duty_act\(11) & ((\PWMtest|countactual1\(11)) # (!\PWMtest|LessThan7~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(11),
	datab => \PWMtest|countactual1\(11),
	datad => VCC,
	cin => \PWMtest|LessThan7~21_cout\,
	cout => \PWMtest|LessThan7~23_cout\);

-- Location: LCCOMB_X59_Y36_N24
\PWMtest|LessThan7~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan7~25_cout\ = CARRY((\PWMtest|softstart_duty_act\(12) & ((!\PWMtest|LessThan7~23_cout\) # (!\PWMtest|countactual1\(12)))) # (!\PWMtest|softstart_duty_act\(12) & (!\PWMtest|countactual1\(12) & !\PWMtest|LessThan7~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(12),
	datab => \PWMtest|countactual1\(12),
	datad => VCC,
	cin => \PWMtest|LessThan7~23_cout\,
	cout => \PWMtest|LessThan7~25_cout\);

-- Location: LCCOMB_X59_Y36_N26
\PWMtest|LessThan7~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan7~27_cout\ = CARRY((\PWMtest|softstart_duty_act\(13) & (\PWMtest|countactual1\(13) & !\PWMtest|LessThan7~25_cout\)) # (!\PWMtest|softstart_duty_act\(13) & ((\PWMtest|countactual1\(13)) # (!\PWMtest|LessThan7~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(13),
	datab => \PWMtest|countactual1\(13),
	datad => VCC,
	cin => \PWMtest|LessThan7~25_cout\,
	cout => \PWMtest|LessThan7~27_cout\);

-- Location: LCCOMB_X59_Y36_N28
\PWMtest|LessThan7~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan7~29_cout\ = CARRY((\PWMtest|countactual1\(14) & (\PWMtest|softstart_duty_act\(14) & !\PWMtest|LessThan7~27_cout\)) # (!\PWMtest|countactual1\(14) & ((\PWMtest|softstart_duty_act\(14)) # (!\PWMtest|LessThan7~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(14),
	datab => \PWMtest|softstart_duty_act\(14),
	datad => VCC,
	cin => \PWMtest|LessThan7~27_cout\,
	cout => \PWMtest|LessThan7~29_cout\);

-- Location: LCCOMB_X59_Y36_N30
\PWMtest|LessThan7~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan7~31_cout\ = CARRY((\PWMtest|countactual1\(15) & ((!\PWMtest|LessThan7~29_cout\) # (!\PWMtest|softstart_duty_act\(15)))) # (!\PWMtest|countactual1\(15) & (!\PWMtest|softstart_duty_act\(15) & !\PWMtest|LessThan7~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(15),
	datab => \PWMtest|softstart_duty_act\(15),
	datad => VCC,
	cin => \PWMtest|LessThan7~29_cout\,
	cout => \PWMtest|LessThan7~31_cout\);

-- Location: LCCOMB_X59_Y35_N0
\PWMtest|LessThan7~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan7~33_cout\ = CARRY((\PWMtest|countactual1\(16) & (\PWMtest|softstart_duty_act\(16) & !\PWMtest|LessThan7~31_cout\)) # (!\PWMtest|countactual1\(16) & ((\PWMtest|softstart_duty_act\(16)) # (!\PWMtest|LessThan7~31_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(16),
	datab => \PWMtest|softstart_duty_act\(16),
	datad => VCC,
	cin => \PWMtest|LessThan7~31_cout\,
	cout => \PWMtest|LessThan7~33_cout\);

-- Location: LCCOMB_X59_Y35_N2
\PWMtest|LessThan7~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan7~35_cout\ = CARRY((\PWMtest|softstart_duty_act\(17) & (\PWMtest|countactual1\(17) & !\PWMtest|LessThan7~33_cout\)) # (!\PWMtest|softstart_duty_act\(17) & ((\PWMtest|countactual1\(17)) # (!\PWMtest|LessThan7~33_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(17),
	datab => \PWMtest|countactual1\(17),
	datad => VCC,
	cin => \PWMtest|LessThan7~33_cout\,
	cout => \PWMtest|LessThan7~35_cout\);

-- Location: LCCOMB_X59_Y35_N4
\PWMtest|LessThan7~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan7~37_cout\ = CARRY((\PWMtest|countactual1\(18) & (\PWMtest|softstart_duty_act\(18) & !\PWMtest|LessThan7~35_cout\)) # (!\PWMtest|countactual1\(18) & ((\PWMtest|softstart_duty_act\(18)) # (!\PWMtest|LessThan7~35_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(18),
	datab => \PWMtest|softstart_duty_act\(18),
	datad => VCC,
	cin => \PWMtest|LessThan7~35_cout\,
	cout => \PWMtest|LessThan7~37_cout\);

-- Location: LCCOMB_X59_Y35_N6
\PWMtest|LessThan7~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan7~39_cout\ = CARRY((\PWMtest|countactual1\(19) & ((!\PWMtest|LessThan7~37_cout\) # (!\PWMtest|softstart_duty_act\(19)))) # (!\PWMtest|countactual1\(19) & (!\PWMtest|softstart_duty_act\(19) & !\PWMtest|LessThan7~37_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(19),
	datab => \PWMtest|softstart_duty_act\(19),
	datad => VCC,
	cin => \PWMtest|LessThan7~37_cout\,
	cout => \PWMtest|LessThan7~39_cout\);

-- Location: LCCOMB_X59_Y35_N8
\PWMtest|LessThan7~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan7~41_cout\ = CARRY((\PWMtest|softstart_duty_act\(20) & ((!\PWMtest|LessThan7~39_cout\) # (!\PWMtest|countactual1\(20)))) # (!\PWMtest|softstart_duty_act\(20) & (!\PWMtest|countactual1\(20) & !\PWMtest|LessThan7~39_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(20),
	datab => \PWMtest|countactual1\(20),
	datad => VCC,
	cin => \PWMtest|LessThan7~39_cout\,
	cout => \PWMtest|LessThan7~41_cout\);

-- Location: LCCOMB_X59_Y35_N10
\PWMtest|LessThan7~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan7~43_cout\ = CARRY((\PWMtest|softstart_duty_act\(21) & (\PWMtest|countactual1\(21) & !\PWMtest|LessThan7~41_cout\)) # (!\PWMtest|softstart_duty_act\(21) & ((\PWMtest|countactual1\(21)) # (!\PWMtest|LessThan7~41_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(21),
	datab => \PWMtest|countactual1\(21),
	datad => VCC,
	cin => \PWMtest|LessThan7~41_cout\,
	cout => \PWMtest|LessThan7~43_cout\);

-- Location: LCCOMB_X59_Y35_N12
\PWMtest|LessThan7~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan7~45_cout\ = CARRY((\PWMtest|softstart_duty_act\(22) & ((!\PWMtest|LessThan7~43_cout\) # (!\PWMtest|countactual1\(22)))) # (!\PWMtest|softstart_duty_act\(22) & (!\PWMtest|countactual1\(22) & !\PWMtest|LessThan7~43_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(22),
	datab => \PWMtest|countactual1\(22),
	datad => VCC,
	cin => \PWMtest|LessThan7~43_cout\,
	cout => \PWMtest|LessThan7~45_cout\);

-- Location: LCCOMB_X59_Y35_N14
\PWMtest|LessThan7~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan7~47_cout\ = CARRY((\PWMtest|countactual1\(23) & ((!\PWMtest|LessThan7~45_cout\) # (!\PWMtest|softstart_duty_act\(23)))) # (!\PWMtest|countactual1\(23) & (!\PWMtest|softstart_duty_act\(23) & !\PWMtest|LessThan7~45_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(23),
	datab => \PWMtest|softstart_duty_act\(23),
	datad => VCC,
	cin => \PWMtest|LessThan7~45_cout\,
	cout => \PWMtest|LessThan7~47_cout\);

-- Location: LCCOMB_X59_Y35_N16
\PWMtest|LessThan7~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan7~49_cout\ = CARRY((\PWMtest|softstart_duty_act\(24) & ((!\PWMtest|LessThan7~47_cout\) # (!\PWMtest|countactual1\(24)))) # (!\PWMtest|softstart_duty_act\(24) & (!\PWMtest|countactual1\(24) & !\PWMtest|LessThan7~47_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(24),
	datab => \PWMtest|countactual1\(24),
	datad => VCC,
	cin => \PWMtest|LessThan7~47_cout\,
	cout => \PWMtest|LessThan7~49_cout\);

-- Location: LCCOMB_X59_Y35_N18
\PWMtest|LessThan7~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan7~51_cout\ = CARRY((\PWMtest|countactual1\(25) & ((!\PWMtest|LessThan7~49_cout\) # (!\PWMtest|softstart_duty_act\(25)))) # (!\PWMtest|countactual1\(25) & (!\PWMtest|softstart_duty_act\(25) & !\PWMtest|LessThan7~49_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(25),
	datab => \PWMtest|softstart_duty_act\(25),
	datad => VCC,
	cin => \PWMtest|LessThan7~49_cout\,
	cout => \PWMtest|LessThan7~51_cout\);

-- Location: LCCOMB_X59_Y35_N20
\PWMtest|LessThan7~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan7~53_cout\ = CARRY((\PWMtest|countactual1\(26) & (\PWMtest|softstart_duty_act\(26) & !\PWMtest|LessThan7~51_cout\)) # (!\PWMtest|countactual1\(26) & ((\PWMtest|softstart_duty_act\(26)) # (!\PWMtest|LessThan7~51_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(26),
	datab => \PWMtest|softstart_duty_act\(26),
	datad => VCC,
	cin => \PWMtest|LessThan7~51_cout\,
	cout => \PWMtest|LessThan7~53_cout\);

-- Location: LCCOMB_X59_Y35_N22
\PWMtest|LessThan7~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan7~55_cout\ = CARRY((\PWMtest|countactual1\(27) & ((!\PWMtest|LessThan7~53_cout\) # (!\PWMtest|softstart_duty_act\(27)))) # (!\PWMtest|countactual1\(27) & (!\PWMtest|softstart_duty_act\(27) & !\PWMtest|LessThan7~53_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(27),
	datab => \PWMtest|softstart_duty_act\(27),
	datad => VCC,
	cin => \PWMtest|LessThan7~53_cout\,
	cout => \PWMtest|LessThan7~55_cout\);

-- Location: LCCOMB_X59_Y35_N24
\PWMtest|LessThan7~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan7~57_cout\ = CARRY((\PWMtest|countactual1\(28) & (\PWMtest|softstart_duty_act\(28) & !\PWMtest|LessThan7~55_cout\)) # (!\PWMtest|countactual1\(28) & ((\PWMtest|softstart_duty_act\(28)) # (!\PWMtest|LessThan7~55_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(28),
	datab => \PWMtest|softstart_duty_act\(28),
	datad => VCC,
	cin => \PWMtest|LessThan7~55_cout\,
	cout => \PWMtest|LessThan7~57_cout\);

-- Location: LCCOMB_X59_Y35_N26
\PWMtest|LessThan7~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan7~59_cout\ = CARRY((\PWMtest|countactual1\(29) & ((!\PWMtest|LessThan7~57_cout\) # (!\PWMtest|softstart_duty_act\(29)))) # (!\PWMtest|countactual1\(29) & (!\PWMtest|softstart_duty_act\(29) & !\PWMtest|LessThan7~57_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(29),
	datab => \PWMtest|softstart_duty_act\(29),
	datad => VCC,
	cin => \PWMtest|LessThan7~57_cout\,
	cout => \PWMtest|LessThan7~59_cout\);

-- Location: LCCOMB_X59_Y35_N28
\PWMtest|LessThan7~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan7~61_cout\ = CARRY((\PWMtest|countactual1\(30) & (\PWMtest|softstart_duty_act\(30) & !\PWMtest|LessThan7~59_cout\)) # (!\PWMtest|countactual1\(30) & ((\PWMtest|softstart_duty_act\(30)) # (!\PWMtest|LessThan7~59_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(30),
	datab => \PWMtest|softstart_duty_act\(30),
	datad => VCC,
	cin => \PWMtest|LessThan7~59_cout\,
	cout => \PWMtest|LessThan7~61_cout\);

-- Location: LCCOMB_X59_Y35_N30
\PWMtest|LessThan7~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan7~62_combout\ = (\PWMtest|countactual1\(31) & ((\PWMtest|LessThan7~61_cout\) # (!\PWMtest|softstart_duty_act\(31)))) # (!\PWMtest|countactual1\(31) & (\PWMtest|LessThan7~61_cout\ & !\PWMtest|softstart_duty_act\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|countactual1\(31),
	datad => \PWMtest|softstart_duty_act\(31),
	cin => \PWMtest|LessThan7~61_cout\,
	combout => \PWMtest|LessThan7~62_combout\);

-- Location: LCCOMB_X54_Y37_N16
\PWMtest|Selector39~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Selector39~1_combout\ = (\PWMtest|est_act.idle~q\ & ((\PWMtest|LessThan6~62_combout\) # ((\PWMtest|LessThan7~62_combout\) # (!\PWMtest|est_act.boost1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|LessThan6~62_combout\,
	datab => \PWMtest|est_act.idle~q\,
	datac => \PWMtest|est_act.boost1~q\,
	datad => \PWMtest|LessThan7~62_combout\,
	combout => \PWMtest|Selector39~1_combout\);

-- Location: LCCOMB_X54_Y37_N26
\PWMtest|Selector39~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Selector39~2_combout\ = (\PWMtest|LessThan1~62_combout\ & (((\PWMtest|est_act.boost1softs~q\)))) # (!\PWMtest|LessThan1~62_combout\ & ((\PWMtest|est_act.boost1softs~q\ & ((\PWMtest|LessThan0~62_combout\))) # (!\PWMtest|est_act.boost1softs~q\ & 
-- (\PWMtest|est_act.buck1~q\ & !\PWMtest|LessThan0~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|LessThan1~62_combout\,
	datab => \PWMtest|est_act.buck1~q\,
	datac => \PWMtest|est_act.boost1softs~q\,
	datad => \PWMtest|LessThan0~62_combout\,
	combout => \PWMtest|Selector39~2_combout\);

-- Location: LCCOMB_X54_Y37_N6
\PWMtest|Selector39~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Selector39~3_combout\ = (\PWMtest|Selector39~2_combout\ & (\PWMtest|Selector39~0_combout\ & (\PWMtest|Selector39~1_combout\ & \PWMtest|est_act.boost1softs~q\))) # (!\PWMtest|Selector39~2_combout\ & ((\PWMtest|est_act.boost1softs~q\) # 
-- ((\PWMtest|Selector39~0_combout\ & \PWMtest|Selector39~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|Selector39~0_combout\,
	datab => \PWMtest|Selector39~1_combout\,
	datac => \PWMtest|Selector39~2_combout\,
	datad => \PWMtest|est_act.boost1softs~q\,
	combout => \PWMtest|Selector39~3_combout\);

-- Location: FF_X54_Y37_N7
\PWMtest|est_act.boost2softs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|Selector39~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|est_act.boost2softs~q\);

-- Location: LCCOMB_X56_Y37_N18
\PWMtest|countactual1[24]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|countactual1[24]~32_combout\ = (!\PWMtest|est_act.buck2~q\ & !\PWMtest|est_act.boost2softs~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWMtest|est_act.buck2~q\,
	datad => \PWMtest|est_act.boost2softs~q\,
	combout => \PWMtest|countactual1[24]~32_combout\);

-- Location: LCCOMB_X56_Y37_N4
\PWMtest|countactual1[24]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|countactual1[24]~53_combout\ = (\PWMtest|Selector37~4_combout\ & (!\PWMtest|Selector37~3_combout\ & ((\PWMtest|est_act.boost2~q\) # (!\PWMtest|countactual1[24]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|est_act.boost2~q\,
	datab => \PWMtest|Selector37~4_combout\,
	datac => \PWMtest|countactual1[24]~32_combout\,
	datad => \PWMtest|Selector37~3_combout\,
	combout => \PWMtest|countactual1[24]~53_combout\);

-- Location: FF_X56_Y36_N1
\PWMtest|countactual1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|countactual1[0]~33_combout\,
	clrn => \reset~input_o\,
	sclr => \PWMtest|countactual1[24]~53_combout\,
	ena => \PWMtest|est_act.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|countactual1\(0));

-- Location: LCCOMB_X56_Y36_N2
\PWMtest|countactual1[1]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|countactual1[1]~35_combout\ = (\PWMtest|countactual1\(1) & (!\PWMtest|countactual1[0]~34\)) # (!\PWMtest|countactual1\(1) & ((\PWMtest|countactual1[0]~34\) # (GND)))
-- \PWMtest|countactual1[1]~36\ = CARRY((!\PWMtest|countactual1[0]~34\) # (!\PWMtest|countactual1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|countactual1\(1),
	datad => VCC,
	cin => \PWMtest|countactual1[0]~34\,
	combout => \PWMtest|countactual1[1]~35_combout\,
	cout => \PWMtest|countactual1[1]~36\);

-- Location: FF_X56_Y36_N3
\PWMtest|countactual1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|countactual1[1]~35_combout\,
	clrn => \reset~input_o\,
	sclr => \PWMtest|countactual1[24]~53_combout\,
	ena => \PWMtest|est_act.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|countactual1\(1));

-- Location: LCCOMB_X56_Y36_N4
\PWMtest|countactual1[2]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|countactual1[2]~37_combout\ = (\PWMtest|countactual1\(2) & (\PWMtest|countactual1[1]~36\ $ (GND))) # (!\PWMtest|countactual1\(2) & (!\PWMtest|countactual1[1]~36\ & VCC))
-- \PWMtest|countactual1[2]~38\ = CARRY((\PWMtest|countactual1\(2) & !\PWMtest|countactual1[1]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|countactual1\(2),
	datad => VCC,
	cin => \PWMtest|countactual1[1]~36\,
	combout => \PWMtest|countactual1[2]~37_combout\,
	cout => \PWMtest|countactual1[2]~38\);

-- Location: FF_X56_Y36_N5
\PWMtest|countactual1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|countactual1[2]~37_combout\,
	clrn => \reset~input_o\,
	sclr => \PWMtest|countactual1[24]~53_combout\,
	ena => \PWMtest|est_act.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|countactual1\(2));

-- Location: LCCOMB_X56_Y36_N6
\PWMtest|countactual1[3]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|countactual1[3]~39_combout\ = (\PWMtest|countactual1\(3) & (!\PWMtest|countactual1[2]~38\)) # (!\PWMtest|countactual1\(3) & ((\PWMtest|countactual1[2]~38\) # (GND)))
-- \PWMtest|countactual1[3]~40\ = CARRY((!\PWMtest|countactual1[2]~38\) # (!\PWMtest|countactual1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(3),
	datad => VCC,
	cin => \PWMtest|countactual1[2]~38\,
	combout => \PWMtest|countactual1[3]~39_combout\,
	cout => \PWMtest|countactual1[3]~40\);

-- Location: FF_X56_Y36_N7
\PWMtest|countactual1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|countactual1[3]~39_combout\,
	clrn => \reset~input_o\,
	sclr => \PWMtest|countactual1[24]~53_combout\,
	ena => \PWMtest|est_act.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|countactual1\(3));

-- Location: LCCOMB_X56_Y36_N8
\PWMtest|countactual1[4]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|countactual1[4]~41_combout\ = (\PWMtest|countactual1\(4) & (\PWMtest|countactual1[3]~40\ $ (GND))) # (!\PWMtest|countactual1\(4) & (!\PWMtest|countactual1[3]~40\ & VCC))
-- \PWMtest|countactual1[4]~42\ = CARRY((\PWMtest|countactual1\(4) & !\PWMtest|countactual1[3]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|countactual1\(4),
	datad => VCC,
	cin => \PWMtest|countactual1[3]~40\,
	combout => \PWMtest|countactual1[4]~41_combout\,
	cout => \PWMtest|countactual1[4]~42\);

-- Location: FF_X56_Y36_N9
\PWMtest|countactual1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|countactual1[4]~41_combout\,
	clrn => \reset~input_o\,
	sclr => \PWMtest|countactual1[24]~53_combout\,
	ena => \PWMtest|est_act.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|countactual1\(4));

-- Location: LCCOMB_X56_Y36_N10
\PWMtest|countactual1[5]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|countactual1[5]~43_combout\ = (\PWMtest|countactual1\(5) & (!\PWMtest|countactual1[4]~42\)) # (!\PWMtest|countactual1\(5) & ((\PWMtest|countactual1[4]~42\) # (GND)))
-- \PWMtest|countactual1[5]~44\ = CARRY((!\PWMtest|countactual1[4]~42\) # (!\PWMtest|countactual1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(5),
	datad => VCC,
	cin => \PWMtest|countactual1[4]~42\,
	combout => \PWMtest|countactual1[5]~43_combout\,
	cout => \PWMtest|countactual1[5]~44\);

-- Location: FF_X56_Y36_N11
\PWMtest|countactual1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|countactual1[5]~43_combout\,
	clrn => \reset~input_o\,
	sclr => \PWMtest|countactual1[24]~53_combout\,
	ena => \PWMtest|est_act.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|countactual1\(5));

-- Location: LCCOMB_X56_Y36_N12
\PWMtest|countactual1[6]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|countactual1[6]~45_combout\ = (\PWMtest|countactual1\(6) & (\PWMtest|countactual1[5]~44\ $ (GND))) # (!\PWMtest|countactual1\(6) & (!\PWMtest|countactual1[5]~44\ & VCC))
-- \PWMtest|countactual1[6]~46\ = CARRY((\PWMtest|countactual1\(6) & !\PWMtest|countactual1[5]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(6),
	datad => VCC,
	cin => \PWMtest|countactual1[5]~44\,
	combout => \PWMtest|countactual1[6]~45_combout\,
	cout => \PWMtest|countactual1[6]~46\);

-- Location: FF_X56_Y36_N13
\PWMtest|countactual1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|countactual1[6]~45_combout\,
	clrn => \reset~input_o\,
	sclr => \PWMtest|countactual1[24]~53_combout\,
	ena => \PWMtest|est_act.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|countactual1\(6));

-- Location: LCCOMB_X56_Y36_N14
\PWMtest|countactual1[7]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|countactual1[7]~47_combout\ = (\PWMtest|countactual1\(7) & (!\PWMtest|countactual1[6]~46\)) # (!\PWMtest|countactual1\(7) & ((\PWMtest|countactual1[6]~46\) # (GND)))
-- \PWMtest|countactual1[7]~48\ = CARRY((!\PWMtest|countactual1[6]~46\) # (!\PWMtest|countactual1\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|countactual1\(7),
	datad => VCC,
	cin => \PWMtest|countactual1[6]~46\,
	combout => \PWMtest|countactual1[7]~47_combout\,
	cout => \PWMtest|countactual1[7]~48\);

-- Location: FF_X56_Y36_N15
\PWMtest|countactual1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|countactual1[7]~47_combout\,
	clrn => \reset~input_o\,
	sclr => \PWMtest|countactual1[24]~53_combout\,
	ena => \PWMtest|est_act.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|countactual1\(7));

-- Location: LCCOMB_X56_Y36_N16
\PWMtest|countactual1[8]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|countactual1[8]~49_combout\ = (\PWMtest|countactual1\(8) & (\PWMtest|countactual1[7]~48\ $ (GND))) # (!\PWMtest|countactual1\(8) & (!\PWMtest|countactual1[7]~48\ & VCC))
-- \PWMtest|countactual1[8]~50\ = CARRY((\PWMtest|countactual1\(8) & !\PWMtest|countactual1[7]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|countactual1\(8),
	datad => VCC,
	cin => \PWMtest|countactual1[7]~48\,
	combout => \PWMtest|countactual1[8]~49_combout\,
	cout => \PWMtest|countactual1[8]~50\);

-- Location: FF_X56_Y36_N17
\PWMtest|countactual1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|countactual1[8]~49_combout\,
	clrn => \reset~input_o\,
	sclr => \PWMtest|countactual1[24]~53_combout\,
	ena => \PWMtest|est_act.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|countactual1\(8));

-- Location: LCCOMB_X56_Y36_N18
\PWMtest|countactual1[9]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|countactual1[9]~51_combout\ = (\PWMtest|countactual1\(9) & (!\PWMtest|countactual1[8]~50\)) # (!\PWMtest|countactual1\(9) & ((\PWMtest|countactual1[8]~50\) # (GND)))
-- \PWMtest|countactual1[9]~52\ = CARRY((!\PWMtest|countactual1[8]~50\) # (!\PWMtest|countactual1\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|countactual1\(9),
	datad => VCC,
	cin => \PWMtest|countactual1[8]~50\,
	combout => \PWMtest|countactual1[9]~51_combout\,
	cout => \PWMtest|countactual1[9]~52\);

-- Location: FF_X56_Y36_N19
\PWMtest|countactual1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|countactual1[9]~51_combout\,
	clrn => \reset~input_o\,
	sclr => \PWMtest|countactual1[24]~53_combout\,
	ena => \PWMtest|est_act.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|countactual1\(9));

-- Location: LCCOMB_X56_Y36_N20
\PWMtest|countactual1[10]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|countactual1[10]~54_combout\ = (\PWMtest|countactual1\(10) & (\PWMtest|countactual1[9]~52\ $ (GND))) # (!\PWMtest|countactual1\(10) & (!\PWMtest|countactual1[9]~52\ & VCC))
-- \PWMtest|countactual1[10]~55\ = CARRY((\PWMtest|countactual1\(10) & !\PWMtest|countactual1[9]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|countactual1\(10),
	datad => VCC,
	cin => \PWMtest|countactual1[9]~52\,
	combout => \PWMtest|countactual1[10]~54_combout\,
	cout => \PWMtest|countactual1[10]~55\);

-- Location: FF_X56_Y36_N21
\PWMtest|countactual1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|countactual1[10]~54_combout\,
	clrn => \reset~input_o\,
	sclr => \PWMtest|countactual1[24]~53_combout\,
	ena => \PWMtest|est_act.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|countactual1\(10));

-- Location: LCCOMB_X56_Y36_N22
\PWMtest|countactual1[11]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|countactual1[11]~56_combout\ = (\PWMtest|countactual1\(11) & (!\PWMtest|countactual1[10]~55\)) # (!\PWMtest|countactual1\(11) & ((\PWMtest|countactual1[10]~55\) # (GND)))
-- \PWMtest|countactual1[11]~57\ = CARRY((!\PWMtest|countactual1[10]~55\) # (!\PWMtest|countactual1\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(11),
	datad => VCC,
	cin => \PWMtest|countactual1[10]~55\,
	combout => \PWMtest|countactual1[11]~56_combout\,
	cout => \PWMtest|countactual1[11]~57\);

-- Location: FF_X56_Y36_N23
\PWMtest|countactual1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|countactual1[11]~56_combout\,
	clrn => \reset~input_o\,
	sclr => \PWMtest|countactual1[24]~53_combout\,
	ena => \PWMtest|est_act.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|countactual1\(11));

-- Location: LCCOMB_X56_Y36_N24
\PWMtest|countactual1[12]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|countactual1[12]~58_combout\ = (\PWMtest|countactual1\(12) & (\PWMtest|countactual1[11]~57\ $ (GND))) # (!\PWMtest|countactual1\(12) & (!\PWMtest|countactual1[11]~57\ & VCC))
-- \PWMtest|countactual1[12]~59\ = CARRY((\PWMtest|countactual1\(12) & !\PWMtest|countactual1[11]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|countactual1\(12),
	datad => VCC,
	cin => \PWMtest|countactual1[11]~57\,
	combout => \PWMtest|countactual1[12]~58_combout\,
	cout => \PWMtest|countactual1[12]~59\);

-- Location: FF_X56_Y36_N25
\PWMtest|countactual1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|countactual1[12]~58_combout\,
	clrn => \reset~input_o\,
	sclr => \PWMtest|countactual1[24]~53_combout\,
	ena => \PWMtest|est_act.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|countactual1\(12));

-- Location: LCCOMB_X56_Y36_N26
\PWMtest|countactual1[13]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|countactual1[13]~60_combout\ = (\PWMtest|countactual1\(13) & (!\PWMtest|countactual1[12]~59\)) # (!\PWMtest|countactual1\(13) & ((\PWMtest|countactual1[12]~59\) # (GND)))
-- \PWMtest|countactual1[13]~61\ = CARRY((!\PWMtest|countactual1[12]~59\) # (!\PWMtest|countactual1\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(13),
	datad => VCC,
	cin => \PWMtest|countactual1[12]~59\,
	combout => \PWMtest|countactual1[13]~60_combout\,
	cout => \PWMtest|countactual1[13]~61\);

-- Location: FF_X56_Y36_N27
\PWMtest|countactual1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|countactual1[13]~60_combout\,
	clrn => \reset~input_o\,
	sclr => \PWMtest|countactual1[24]~53_combout\,
	ena => \PWMtest|est_act.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|countactual1\(13));

-- Location: LCCOMB_X56_Y36_N28
\PWMtest|countactual1[14]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|countactual1[14]~62_combout\ = (\PWMtest|countactual1\(14) & (\PWMtest|countactual1[13]~61\ $ (GND))) # (!\PWMtest|countactual1\(14) & (!\PWMtest|countactual1[13]~61\ & VCC))
-- \PWMtest|countactual1[14]~63\ = CARRY((\PWMtest|countactual1\(14) & !\PWMtest|countactual1[13]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|countactual1\(14),
	datad => VCC,
	cin => \PWMtest|countactual1[13]~61\,
	combout => \PWMtest|countactual1[14]~62_combout\,
	cout => \PWMtest|countactual1[14]~63\);

-- Location: FF_X56_Y36_N29
\PWMtest|countactual1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|countactual1[14]~62_combout\,
	clrn => \reset~input_o\,
	sclr => \PWMtest|countactual1[24]~53_combout\,
	ena => \PWMtest|est_act.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|countactual1\(14));

-- Location: LCCOMB_X56_Y36_N30
\PWMtest|countactual1[15]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|countactual1[15]~64_combout\ = (\PWMtest|countactual1\(15) & (!\PWMtest|countactual1[14]~63\)) # (!\PWMtest|countactual1\(15) & ((\PWMtest|countactual1[14]~63\) # (GND)))
-- \PWMtest|countactual1[15]~65\ = CARRY((!\PWMtest|countactual1[14]~63\) # (!\PWMtest|countactual1\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(15),
	datad => VCC,
	cin => \PWMtest|countactual1[14]~63\,
	combout => \PWMtest|countactual1[15]~64_combout\,
	cout => \PWMtest|countactual1[15]~65\);

-- Location: FF_X56_Y36_N31
\PWMtest|countactual1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|countactual1[15]~64_combout\,
	clrn => \reset~input_o\,
	sclr => \PWMtest|countactual1[24]~53_combout\,
	ena => \PWMtest|est_act.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|countactual1\(15));

-- Location: LCCOMB_X56_Y35_N0
\PWMtest|countactual1[16]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|countactual1[16]~66_combout\ = (\PWMtest|countactual1\(16) & (\PWMtest|countactual1[15]~65\ $ (GND))) # (!\PWMtest|countactual1\(16) & (!\PWMtest|countactual1[15]~65\ & VCC))
-- \PWMtest|countactual1[16]~67\ = CARRY((\PWMtest|countactual1\(16) & !\PWMtest|countactual1[15]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|countactual1\(16),
	datad => VCC,
	cin => \PWMtest|countactual1[15]~65\,
	combout => \PWMtest|countactual1[16]~66_combout\,
	cout => \PWMtest|countactual1[16]~67\);

-- Location: FF_X56_Y35_N1
\PWMtest|countactual1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|countactual1[16]~66_combout\,
	clrn => \reset~input_o\,
	sclr => \PWMtest|countactual1[24]~53_combout\,
	ena => \PWMtest|est_act.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|countactual1\(16));

-- Location: LCCOMB_X56_Y35_N2
\PWMtest|countactual1[17]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|countactual1[17]~68_combout\ = (\PWMtest|countactual1\(17) & (!\PWMtest|countactual1[16]~67\)) # (!\PWMtest|countactual1\(17) & ((\PWMtest|countactual1[16]~67\) # (GND)))
-- \PWMtest|countactual1[17]~69\ = CARRY((!\PWMtest|countactual1[16]~67\) # (!\PWMtest|countactual1\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|countactual1\(17),
	datad => VCC,
	cin => \PWMtest|countactual1[16]~67\,
	combout => \PWMtest|countactual1[17]~68_combout\,
	cout => \PWMtest|countactual1[17]~69\);

-- Location: FF_X56_Y35_N3
\PWMtest|countactual1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|countactual1[17]~68_combout\,
	clrn => \reset~input_o\,
	sclr => \PWMtest|countactual1[24]~53_combout\,
	ena => \PWMtest|est_act.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|countactual1\(17));

-- Location: LCCOMB_X56_Y35_N4
\PWMtest|countactual1[18]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|countactual1[18]~70_combout\ = (\PWMtest|countactual1\(18) & (\PWMtest|countactual1[17]~69\ $ (GND))) # (!\PWMtest|countactual1\(18) & (!\PWMtest|countactual1[17]~69\ & VCC))
-- \PWMtest|countactual1[18]~71\ = CARRY((\PWMtest|countactual1\(18) & !\PWMtest|countactual1[17]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|countactual1\(18),
	datad => VCC,
	cin => \PWMtest|countactual1[17]~69\,
	combout => \PWMtest|countactual1[18]~70_combout\,
	cout => \PWMtest|countactual1[18]~71\);

-- Location: FF_X56_Y35_N5
\PWMtest|countactual1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|countactual1[18]~70_combout\,
	clrn => \reset~input_o\,
	sclr => \PWMtest|countactual1[24]~53_combout\,
	ena => \PWMtest|est_act.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|countactual1\(18));

-- Location: LCCOMB_X56_Y35_N6
\PWMtest|countactual1[19]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|countactual1[19]~72_combout\ = (\PWMtest|countactual1\(19) & (!\PWMtest|countactual1[18]~71\)) # (!\PWMtest|countactual1\(19) & ((\PWMtest|countactual1[18]~71\) # (GND)))
-- \PWMtest|countactual1[19]~73\ = CARRY((!\PWMtest|countactual1[18]~71\) # (!\PWMtest|countactual1\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(19),
	datad => VCC,
	cin => \PWMtest|countactual1[18]~71\,
	combout => \PWMtest|countactual1[19]~72_combout\,
	cout => \PWMtest|countactual1[19]~73\);

-- Location: FF_X56_Y35_N7
\PWMtest|countactual1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|countactual1[19]~72_combout\,
	clrn => \reset~input_o\,
	sclr => \PWMtest|countactual1[24]~53_combout\,
	ena => \PWMtest|est_act.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|countactual1\(19));

-- Location: LCCOMB_X56_Y35_N8
\PWMtest|countactual1[20]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|countactual1[20]~74_combout\ = (\PWMtest|countactual1\(20) & (\PWMtest|countactual1[19]~73\ $ (GND))) # (!\PWMtest|countactual1\(20) & (!\PWMtest|countactual1[19]~73\ & VCC))
-- \PWMtest|countactual1[20]~75\ = CARRY((\PWMtest|countactual1\(20) & !\PWMtest|countactual1[19]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|countactual1\(20),
	datad => VCC,
	cin => \PWMtest|countactual1[19]~73\,
	combout => \PWMtest|countactual1[20]~74_combout\,
	cout => \PWMtest|countactual1[20]~75\);

-- Location: FF_X56_Y35_N9
\PWMtest|countactual1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|countactual1[20]~74_combout\,
	clrn => \reset~input_o\,
	sclr => \PWMtest|countactual1[24]~53_combout\,
	ena => \PWMtest|est_act.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|countactual1\(20));

-- Location: LCCOMB_X56_Y35_N10
\PWMtest|countactual1[21]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|countactual1[21]~76_combout\ = (\PWMtest|countactual1\(21) & (!\PWMtest|countactual1[20]~75\)) # (!\PWMtest|countactual1\(21) & ((\PWMtest|countactual1[20]~75\) # (GND)))
-- \PWMtest|countactual1[21]~77\ = CARRY((!\PWMtest|countactual1[20]~75\) # (!\PWMtest|countactual1\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(21),
	datad => VCC,
	cin => \PWMtest|countactual1[20]~75\,
	combout => \PWMtest|countactual1[21]~76_combout\,
	cout => \PWMtest|countactual1[21]~77\);

-- Location: FF_X56_Y35_N11
\PWMtest|countactual1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|countactual1[21]~76_combout\,
	clrn => \reset~input_o\,
	sclr => \PWMtest|countactual1[24]~53_combout\,
	ena => \PWMtest|est_act.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|countactual1\(21));

-- Location: LCCOMB_X56_Y35_N12
\PWMtest|countactual1[22]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|countactual1[22]~78_combout\ = (\PWMtest|countactual1\(22) & (\PWMtest|countactual1[21]~77\ $ (GND))) # (!\PWMtest|countactual1\(22) & (!\PWMtest|countactual1[21]~77\ & VCC))
-- \PWMtest|countactual1[22]~79\ = CARRY((\PWMtest|countactual1\(22) & !\PWMtest|countactual1[21]~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(22),
	datad => VCC,
	cin => \PWMtest|countactual1[21]~77\,
	combout => \PWMtest|countactual1[22]~78_combout\,
	cout => \PWMtest|countactual1[22]~79\);

-- Location: FF_X56_Y35_N13
\PWMtest|countactual1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|countactual1[22]~78_combout\,
	clrn => \reset~input_o\,
	sclr => \PWMtest|countactual1[24]~53_combout\,
	ena => \PWMtest|est_act.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|countactual1\(22));

-- Location: LCCOMB_X56_Y35_N14
\PWMtest|countactual1[23]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|countactual1[23]~80_combout\ = (\PWMtest|countactual1\(23) & (!\PWMtest|countactual1[22]~79\)) # (!\PWMtest|countactual1\(23) & ((\PWMtest|countactual1[22]~79\) # (GND)))
-- \PWMtest|countactual1[23]~81\ = CARRY((!\PWMtest|countactual1[22]~79\) # (!\PWMtest|countactual1\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|countactual1\(23),
	datad => VCC,
	cin => \PWMtest|countactual1[22]~79\,
	combout => \PWMtest|countactual1[23]~80_combout\,
	cout => \PWMtest|countactual1[23]~81\);

-- Location: FF_X56_Y35_N15
\PWMtest|countactual1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|countactual1[23]~80_combout\,
	clrn => \reset~input_o\,
	sclr => \PWMtest|countactual1[24]~53_combout\,
	ena => \PWMtest|est_act.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|countactual1\(23));

-- Location: LCCOMB_X56_Y35_N16
\PWMtest|countactual1[24]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|countactual1[24]~82_combout\ = (\PWMtest|countactual1\(24) & (\PWMtest|countactual1[23]~81\ $ (GND))) # (!\PWMtest|countactual1\(24) & (!\PWMtest|countactual1[23]~81\ & VCC))
-- \PWMtest|countactual1[24]~83\ = CARRY((\PWMtest|countactual1\(24) & !\PWMtest|countactual1[23]~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|countactual1\(24),
	datad => VCC,
	cin => \PWMtest|countactual1[23]~81\,
	combout => \PWMtest|countactual1[24]~82_combout\,
	cout => \PWMtest|countactual1[24]~83\);

-- Location: FF_X56_Y35_N17
\PWMtest|countactual1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|countactual1[24]~82_combout\,
	clrn => \reset~input_o\,
	sclr => \PWMtest|countactual1[24]~53_combout\,
	ena => \PWMtest|est_act.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|countactual1\(24));

-- Location: LCCOMB_X56_Y35_N18
\PWMtest|countactual1[25]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|countactual1[25]~84_combout\ = (\PWMtest|countactual1\(25) & (!\PWMtest|countactual1[24]~83\)) # (!\PWMtest|countactual1\(25) & ((\PWMtest|countactual1[24]~83\) # (GND)))
-- \PWMtest|countactual1[25]~85\ = CARRY((!\PWMtest|countactual1[24]~83\) # (!\PWMtest|countactual1\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|countactual1\(25),
	datad => VCC,
	cin => \PWMtest|countactual1[24]~83\,
	combout => \PWMtest|countactual1[25]~84_combout\,
	cout => \PWMtest|countactual1[25]~85\);

-- Location: FF_X56_Y35_N19
\PWMtest|countactual1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|countactual1[25]~84_combout\,
	clrn => \reset~input_o\,
	sclr => \PWMtest|countactual1[24]~53_combout\,
	ena => \PWMtest|est_act.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|countactual1\(25));

-- Location: LCCOMB_X56_Y35_N20
\PWMtest|countactual1[26]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|countactual1[26]~86_combout\ = (\PWMtest|countactual1\(26) & (\PWMtest|countactual1[25]~85\ $ (GND))) # (!\PWMtest|countactual1\(26) & (!\PWMtest|countactual1[25]~85\ & VCC))
-- \PWMtest|countactual1[26]~87\ = CARRY((\PWMtest|countactual1\(26) & !\PWMtest|countactual1[25]~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|countactual1\(26),
	datad => VCC,
	cin => \PWMtest|countactual1[25]~85\,
	combout => \PWMtest|countactual1[26]~86_combout\,
	cout => \PWMtest|countactual1[26]~87\);

-- Location: FF_X56_Y35_N21
\PWMtest|countactual1[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|countactual1[26]~86_combout\,
	clrn => \reset~input_o\,
	sclr => \PWMtest|countactual1[24]~53_combout\,
	ena => \PWMtest|est_act.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|countactual1\(26));

-- Location: LCCOMB_X56_Y35_N22
\PWMtest|countactual1[27]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|countactual1[27]~88_combout\ = (\PWMtest|countactual1\(27) & (!\PWMtest|countactual1[26]~87\)) # (!\PWMtest|countactual1\(27) & ((\PWMtest|countactual1[26]~87\) # (GND)))
-- \PWMtest|countactual1[27]~89\ = CARRY((!\PWMtest|countactual1[26]~87\) # (!\PWMtest|countactual1\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(27),
	datad => VCC,
	cin => \PWMtest|countactual1[26]~87\,
	combout => \PWMtest|countactual1[27]~88_combout\,
	cout => \PWMtest|countactual1[27]~89\);

-- Location: FF_X56_Y35_N23
\PWMtest|countactual1[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|countactual1[27]~88_combout\,
	clrn => \reset~input_o\,
	sclr => \PWMtest|countactual1[24]~53_combout\,
	ena => \PWMtest|est_act.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|countactual1\(27));

-- Location: LCCOMB_X56_Y35_N24
\PWMtest|countactual1[28]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|countactual1[28]~90_combout\ = (\PWMtest|countactual1\(28) & (\PWMtest|countactual1[27]~89\ $ (GND))) # (!\PWMtest|countactual1\(28) & (!\PWMtest|countactual1[27]~89\ & VCC))
-- \PWMtest|countactual1[28]~91\ = CARRY((\PWMtest|countactual1\(28) & !\PWMtest|countactual1[27]~89\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|countactual1\(28),
	datad => VCC,
	cin => \PWMtest|countactual1[27]~89\,
	combout => \PWMtest|countactual1[28]~90_combout\,
	cout => \PWMtest|countactual1[28]~91\);

-- Location: FF_X56_Y35_N25
\PWMtest|countactual1[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|countactual1[28]~90_combout\,
	clrn => \reset~input_o\,
	sclr => \PWMtest|countactual1[24]~53_combout\,
	ena => \PWMtest|est_act.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|countactual1\(28));

-- Location: LCCOMB_X56_Y35_N26
\PWMtest|countactual1[29]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|countactual1[29]~92_combout\ = (\PWMtest|countactual1\(29) & (!\PWMtest|countactual1[28]~91\)) # (!\PWMtest|countactual1\(29) & ((\PWMtest|countactual1[28]~91\) # (GND)))
-- \PWMtest|countactual1[29]~93\ = CARRY((!\PWMtest|countactual1[28]~91\) # (!\PWMtest|countactual1\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(29),
	datad => VCC,
	cin => \PWMtest|countactual1[28]~91\,
	combout => \PWMtest|countactual1[29]~92_combout\,
	cout => \PWMtest|countactual1[29]~93\);

-- Location: FF_X56_Y35_N27
\PWMtest|countactual1[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|countactual1[29]~92_combout\,
	clrn => \reset~input_o\,
	sclr => \PWMtest|countactual1[24]~53_combout\,
	ena => \PWMtest|est_act.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|countactual1\(29));

-- Location: LCCOMB_X56_Y35_N28
\PWMtest|countactual1[30]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|countactual1[30]~94_combout\ = (\PWMtest|countactual1\(30) & (\PWMtest|countactual1[29]~93\ $ (GND))) # (!\PWMtest|countactual1\(30) & (!\PWMtest|countactual1[29]~93\ & VCC))
-- \PWMtest|countactual1[30]~95\ = CARRY((\PWMtest|countactual1\(30) & !\PWMtest|countactual1[29]~93\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|countactual1\(30),
	datad => VCC,
	cin => \PWMtest|countactual1[29]~93\,
	combout => \PWMtest|countactual1[30]~94_combout\,
	cout => \PWMtest|countactual1[30]~95\);

-- Location: FF_X56_Y35_N29
\PWMtest|countactual1[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|countactual1[30]~94_combout\,
	clrn => \reset~input_o\,
	sclr => \PWMtest|countactual1[24]~53_combout\,
	ena => \PWMtest|est_act.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|countactual1\(30));

-- Location: LCCOMB_X56_Y35_N30
\PWMtest|countactual1[31]~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|countactual1[31]~96_combout\ = \PWMtest|countactual1\(31) $ (\PWMtest|countactual1[30]~95\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(31),
	cin => \PWMtest|countactual1[30]~95\,
	combout => \PWMtest|countactual1[31]~96_combout\);

-- Location: FF_X56_Y35_N31
\PWMtest|countactual1[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|countactual1[31]~96_combout\,
	clrn => \reset~input_o\,
	sclr => \PWMtest|countactual1[24]~53_combout\,
	ena => \PWMtest|est_act.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|countactual1\(31));

-- Location: LCCOMB_X56_Y37_N2
\PWMtest|Selector37~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Selector37~4_combout\ = (!\PWMtest|countactual1\(31) & (((\PWMtest|countactual1\(8) & !\PWMtest|LessThan3~7_combout\)) # (!\PWMtest|LessThan3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(31),
	datab => \PWMtest|countactual1\(8),
	datac => \PWMtest|LessThan3~7_combout\,
	datad => \PWMtest|LessThan3~6_combout\,
	combout => \PWMtest|Selector37~4_combout\);

-- Location: LCCOMB_X56_Y37_N12
\PWMtest|LessThan8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan8~0_combout\ = (\PWMtest|LessThan3~6_combout\ & (((\PWMtest|Selector37~1_combout\ & \PWMtest|LessThan2~2_combout\)) # (!\PWMtest|countactual1\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|Selector37~1_combout\,
	datab => \PWMtest|countactual1\(8),
	datac => \PWMtest|LessThan2~2_combout\,
	datad => \PWMtest|LessThan3~6_combout\,
	combout => \PWMtest|LessThan8~0_combout\);

-- Location: LCCOMB_X55_Y37_N24
\PWMtest|Selector41~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Selector41~0_combout\ = (!\PWMtest|LessThan5~3_combout\ & (!\PWMtest|est_sig~9_combout\ & \PWMtest|est_act.boost2softs~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|LessThan5~3_combout\,
	datab => \PWMtest|est_sig~9_combout\,
	datac => \PWMtest|est_act.boost2softs~q\,
	combout => \PWMtest|Selector41~0_combout\);

-- Location: LCCOMB_X55_Y37_N18
\PWMtest|Selector41~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Selector41~1_combout\ = (\PWMtest|Selector41~0_combout\) # ((\PWMtest|est_act.boost2~q\ & ((\PWMtest|LessThan8~0_combout\) # (!\PWMtest|Selector37~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|est_act.boost2~q\,
	datab => \PWMtest|Selector37~4_combout\,
	datac => \PWMtest|LessThan8~0_combout\,
	datad => \PWMtest|Selector41~0_combout\,
	combout => \PWMtest|Selector41~1_combout\);

-- Location: LCCOMB_X55_Y37_N12
\PWMtest|Selector41~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Selector41~2_combout\ = (\PWMtest|Selector41~1_combout\) # ((!\PWMtest|LessThan6~62_combout\ & (\PWMtest|est_act.boost1~q\ & !\PWMtest|LessThan7~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|Selector41~1_combout\,
	datab => \PWMtest|LessThan6~62_combout\,
	datac => \PWMtest|est_act.boost1~q\,
	datad => \PWMtest|LessThan7~62_combout\,
	combout => \PWMtest|Selector41~2_combout\);

-- Location: FF_X55_Y37_N13
\PWMtest|est_act.boost2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|Selector41~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|est_act.boost2~q\);

-- Location: LCCOMB_X56_Y37_N22
\PWMtest|Selector37~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Selector37~5_combout\ = (\PWMtest|est_act.boost2~q\ & (((!\PWMtest|countactual1[24]~32_combout\ & !\PWMtest|Selector37~3_combout\)) # (!\PWMtest|LessThan8~0_combout\))) # (!\PWMtest|est_act.boost2~q\ & (!\PWMtest|countactual1[24]~32_combout\ & 
-- ((!\PWMtest|Selector37~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|est_act.boost2~q\,
	datab => \PWMtest|countactual1[24]~32_combout\,
	datac => \PWMtest|LessThan8~0_combout\,
	datad => \PWMtest|Selector37~3_combout\,
	combout => \PWMtest|Selector37~5_combout\);

-- Location: LCCOMB_X54_Y37_N14
\PWMtest|Selector37~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Selector37~6_combout\ = (\PWMtest|est_act.idle~q\ & ((\PWMtest|LessThan1~62_combout\) # ((\PWMtest|LessThan0~62_combout\) # (!\PWMtest|est_act.buck1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|LessThan1~62_combout\,
	datab => \PWMtest|est_act.idle~q\,
	datac => \PWMtest|est_act.buck1~q\,
	datad => \PWMtest|LessThan0~62_combout\,
	combout => \PWMtest|Selector37~6_combout\);

-- Location: LCCOMB_X54_Y37_N8
\PWMtest|Selector37~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Selector37~7_combout\ = (\PWMtest|Selector37~6_combout\ & ((\PWMtest|LessThan6~62_combout\) # ((\PWMtest|LessThan7~62_combout\) # (!\PWMtest|est_act.boost1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|LessThan6~62_combout\,
	datab => \PWMtest|est_act.boost1~q\,
	datac => \PWMtest|Selector37~6_combout\,
	datad => \PWMtest|LessThan7~62_combout\,
	combout => \PWMtest|Selector37~7_combout\);

-- Location: LCCOMB_X54_Y37_N10
\PWMtest|Selector37~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Selector37~8_combout\ = ((\PWMtest|Selector37~5_combout\ & (!\PWMtest|est_act.boost1~q\ & \PWMtest|Selector37~4_combout\))) # (!\PWMtest|Selector37~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|Selector37~5_combout\,
	datab => \PWMtest|est_act.boost1~q\,
	datac => \PWMtest|Selector37~7_combout\,
	datad => \PWMtest|Selector37~4_combout\,
	combout => \PWMtest|Selector37~8_combout\);

-- Location: LCCOMB_X54_Y37_N4
\PWMtest|Selector37~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Selector37~9_combout\ = (\PWMtest|LessThan1~62_combout\ & (((\PWMtest|est_act.boost1softs~q\)))) # (!\PWMtest|LessThan1~62_combout\ & ((\PWMtest|est_act.boost1softs~q\ & ((\PWMtest|LessThan0~62_combout\))) # (!\PWMtest|est_act.boost1softs~q\ & 
-- (\PWMtest|est_act.buck1~q\ & !\PWMtest|LessThan0~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|LessThan1~62_combout\,
	datab => \PWMtest|est_act.buck1~q\,
	datac => \PWMtest|est_act.boost1softs~q\,
	datad => \PWMtest|LessThan0~62_combout\,
	combout => \PWMtest|Selector37~9_combout\);

-- Location: LCCOMB_X54_Y37_N28
\PWMtest|Selector37~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Selector37~10_combout\ = (\PWMtest|Selector37~9_combout\ & (((!\PWMtest|Selector37~8_combout\ & \PWMtest|est_act.buck2~q\)) # (!\PWMtest|est_act.boost1softs~q\))) # (!\PWMtest|Selector37~9_combout\ & (!\PWMtest|Selector37~8_combout\ & 
-- (\PWMtest|est_act.buck2~q\ & !\PWMtest|est_act.boost1softs~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|Selector37~8_combout\,
	datab => \PWMtest|Selector37~9_combout\,
	datac => \PWMtest|est_act.buck2~q\,
	datad => \PWMtest|est_act.boost1softs~q\,
	combout => \PWMtest|Selector37~10_combout\);

-- Location: FF_X54_Y37_N29
\PWMtest|est_act.buck2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|Selector37~10_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|est_act.buck2~q\);

-- Location: LCCOMB_X55_Y37_N6
\PWMtest|softstart_duty_act[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|softstart_duty_act[3]~5_combout\ = (!\PWMtest|est_act.buck2~q\ & !\PWMtest|est_act.boost2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWMtest|est_act.buck2~q\,
	datad => \PWMtest|est_act.boost2~q\,
	combout => \PWMtest|softstart_duty_act[3]~5_combout\);

-- Location: LCCOMB_X56_Y37_N20
\PWMtest|softstart_duty_act[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|softstart_duty_act[3]~9_combout\ = (\PWMtest|softstart_duty_act[11]~6_combout\ & ((\PWMtest|softstart_duty_act[3]~5_combout\) # ((!\PWMtest|Selector37~3_combout\ & \PWMtest|Selector37~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act[3]~5_combout\,
	datab => \PWMtest|Selector37~3_combout\,
	datac => \PWMtest|softstart_duty_act[11]~6_combout\,
	datad => \PWMtest|Selector37~4_combout\,
	combout => \PWMtest|softstart_duty_act[3]~9_combout\);

-- Location: FF_X61_Y38_N17
\PWMtest|softstart_duty_act[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|Selector34~0_combout\,
	clrn => \reset~input_o\,
	ena => \PWMtest|softstart_duty_act[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|softstart_duty_act\(0));

-- Location: LCCOMB_X62_Y38_N2
\PWMtest|Add5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add5~2_combout\ = (\PWMtest|softstart_duty_act\(1) & ((\PWMtest|Add5~1\) # (GND))) # (!\PWMtest|softstart_duty_act\(1) & (!\PWMtest|Add5~1\))
-- \PWMtest|Add5~3\ = CARRY((\PWMtest|softstart_duty_act\(1)) # (!\PWMtest|Add5~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|softstart_duty_act\(1),
	datad => VCC,
	cin => \PWMtest|Add5~1\,
	combout => \PWMtest|Add5~2_combout\,
	cout => \PWMtest|Add5~3\);

-- Location: LCCOMB_X61_Y38_N30
\PWMtest|Selector33~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Selector33~0_combout\ = (!\PWMtest|softstart_duty_act[3]~8_combout\ & ((\PWMtest|softstart_duty_act[3]~7_combout\ & (!\PWMtest|Add5~2_combout\)) # (!\PWMtest|softstart_duty_act[3]~7_combout\ & ((!\incdecdutytest|duty[1]~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act[3]~7_combout\,
	datab => \PWMtest|softstart_duty_act[3]~8_combout\,
	datac => \PWMtest|Add5~2_combout\,
	datad => \incdecdutytest|duty[1]~17_combout\,
	combout => \PWMtest|Selector33~0_combout\);

-- Location: FF_X61_Y38_N31
\PWMtest|softstart_duty_act[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|Selector33~0_combout\,
	clrn => \reset~input_o\,
	ena => \PWMtest|softstart_duty_act[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|softstart_duty_act\(1));

-- Location: LCCOMB_X62_Y38_N4
\PWMtest|Add5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add5~4_combout\ = (\PWMtest|softstart_duty_act\(2) & (!\PWMtest|Add5~3\ & VCC)) # (!\PWMtest|softstart_duty_act\(2) & (\PWMtest|Add5~3\ $ (GND)))
-- \PWMtest|Add5~5\ = CARRY((!\PWMtest|softstart_duty_act\(2) & !\PWMtest|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|softstart_duty_act\(2),
	datad => VCC,
	cin => \PWMtest|Add5~3\,
	combout => \PWMtest|Add5~4_combout\,
	cout => \PWMtest|Add5~5\);

-- Location: LCCOMB_X61_Y38_N20
\PWMtest|Selector32~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Selector32~0_combout\ = (!\PWMtest|softstart_duty_act[3]~8_combout\ & ((\PWMtest|softstart_duty_act[3]~7_combout\ & ((!\PWMtest|Add5~4_combout\))) # (!\PWMtest|softstart_duty_act[3]~7_combout\ & (!\incdecdutytest|duty[2]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act[3]~7_combout\,
	datab => \incdecdutytest|duty[2]~15_combout\,
	datac => \PWMtest|softstart_duty_act[3]~8_combout\,
	datad => \PWMtest|Add5~4_combout\,
	combout => \PWMtest|Selector32~0_combout\);

-- Location: FF_X61_Y38_N21
\PWMtest|softstart_duty_act[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|Selector32~0_combout\,
	clrn => \reset~input_o\,
	ena => \PWMtest|softstart_duty_act[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|softstart_duty_act\(2));

-- Location: LCCOMB_X61_Y38_N2
\PWMtest|Selector31~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Selector31~0_combout\ = (!\PWMtest|softstart_duty_act[3]~8_combout\ & ((\PWMtest|softstart_duty_act[3]~7_combout\ & ((!\PWMtest|Add5~6_combout\))) # (!\PWMtest|softstart_duty_act[3]~7_combout\ & (!\incdecdutytest|duty[3]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act[3]~7_combout\,
	datab => \PWMtest|softstart_duty_act[3]~8_combout\,
	datac => \incdecdutytest|duty[3]~13_combout\,
	datad => \PWMtest|Add5~6_combout\,
	combout => \PWMtest|Selector31~0_combout\);

-- Location: FF_X61_Y38_N3
\PWMtest|softstart_duty_act[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|Selector31~0_combout\,
	clrn => \reset~input_o\,
	ena => \PWMtest|softstart_duty_act[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|softstart_duty_act\(3));

-- Location: LCCOMB_X62_Y34_N8
\PWMtest|LessThan5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan5~0_combout\ = (\PWMtest|softstart_duty_act\(3)) # ((\PWMtest|softstart_duty_act\(0) & (\PWMtest|softstart_duty_act\(2) & \PWMtest|softstart_duty_act\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(3),
	datab => \PWMtest|softstart_duty_act\(0),
	datac => \PWMtest|softstart_duty_act\(2),
	datad => \PWMtest|softstart_duty_act\(1),
	combout => \PWMtest|LessThan5~0_combout\);

-- Location: LCCOMB_X59_Y38_N0
\PWMtest|LessThan5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan5~1_combout\ = (!\PWMtest|softstart_duty_act\(4) & (!\PWMtest|softstart_duty_act\(5) & (!\PWMtest|softstart_duty_act\(6) & !\PWMtest|softstart_duty_act\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(4),
	datab => \PWMtest|softstart_duty_act\(5),
	datac => \PWMtest|softstart_duty_act\(6),
	datad => \PWMtest|softstart_duty_act\(7),
	combout => \PWMtest|LessThan5~1_combout\);

-- Location: LCCOMB_X62_Y34_N2
\PWMtest|LessThan5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan5~2_combout\ = ((\PWMtest|LessThan5~0_combout\ & \PWMtest|LessThan5~1_combout\)) # (!\PWMtest|softstart_duty_act\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(8),
	datab => \PWMtest|LessThan5~0_combout\,
	datad => \PWMtest|LessThan5~1_combout\,
	combout => \PWMtest|LessThan5~2_combout\);

-- Location: LCCOMB_X55_Y37_N22
\PWMtest|LessThan5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan5~3_combout\ = (\PWMtest|softstart_duty_act\(31)) # ((\PWMtest|LessThan5~2_combout\ & \PWMtest|LessThan4~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|LessThan5~2_combout\,
	datac => \PWMtest|softstart_duty_act\(31),
	datad => \PWMtest|LessThan4~6_combout\,
	combout => \PWMtest|LessThan5~3_combout\);

-- Location: LCCOMB_X55_Y37_N4
\PWMtest|softstart_duty_act[3]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|softstart_duty_act[3]~8_combout\ = ((!\PWMtest|LessThan5~3_combout\ & \PWMtest|est_act.boost2softs~q\)) # (!\PWMtest|est_act.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|LessThan5~3_combout\,
	datab => \PWMtest|est_act.boost2softs~q\,
	datac => \PWMtest|est_act.idle~q\,
	combout => \PWMtest|softstart_duty_act[3]~8_combout\);

-- Location: LCCOMB_X62_Y38_N14
\PWMtest|Add5~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add5~14_combout\ = (\PWMtest|softstart_duty_act\(7) & (!\PWMtest|Add5~13\)) # (!\PWMtest|softstart_duty_act\(7) & ((\PWMtest|Add5~13\) # (GND)))
-- \PWMtest|Add5~15\ = CARRY((!\PWMtest|Add5~13\) # (!\PWMtest|softstart_duty_act\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|softstart_duty_act\(7),
	datad => VCC,
	cin => \PWMtest|Add5~13\,
	combout => \PWMtest|Add5~14_combout\,
	cout => \PWMtest|Add5~15\);

-- Location: LCCOMB_X61_Y38_N18
\PWMtest|Selector27~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Selector27~0_combout\ = (!\PWMtest|softstart_duty_act[3]~8_combout\ & ((\PWMtest|softstart_duty_act[3]~7_combout\ & (\PWMtest|Add5~14_combout\)) # (!\PWMtest|softstart_duty_act[3]~7_combout\ & ((\incdecdutytest|duty[7]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act[3]~7_combout\,
	datab => \PWMtest|softstart_duty_act[3]~8_combout\,
	datac => \PWMtest|Add5~14_combout\,
	datad => \incdecdutytest|duty[7]~3_combout\,
	combout => \PWMtest|Selector27~0_combout\);

-- Location: FF_X61_Y38_N19
\PWMtest|softstart_duty_act[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|Selector27~0_combout\,
	clrn => \reset~input_o\,
	ena => \PWMtest|softstart_duty_act[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|softstart_duty_act\(7));

-- Location: LCCOMB_X62_Y38_N16
\PWMtest|Add5~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add5~16_combout\ = (\PWMtest|softstart_duty_act\(8) & (\PWMtest|Add5~15\ $ (GND))) # (!\PWMtest|softstart_duty_act\(8) & (!\PWMtest|Add5~15\ & VCC))
-- \PWMtest|Add5~17\ = CARRY((\PWMtest|softstart_duty_act\(8) & !\PWMtest|Add5~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|softstart_duty_act\(8),
	datad => VCC,
	cin => \PWMtest|Add5~15\,
	combout => \PWMtest|Add5~16_combout\,
	cout => \PWMtest|Add5~17\);

-- Location: LCCOMB_X62_Y36_N30
\PWMtest|Selector25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Selector25~0_combout\ = (\PWMtest|Add5~18_combout\ & (\PWMtest|est_act.idle~q\ & ((\PWMtest|softstart_duty_act[11]~2_combout\) # (\PWMtest|softstart_duty_act\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|Add5~18_combout\,
	datab => \PWMtest|est_act.idle~q\,
	datac => \PWMtest|softstart_duty_act[11]~2_combout\,
	datad => \PWMtest|softstart_duty_act\(31),
	combout => \PWMtest|Selector25~0_combout\);

-- Location: FF_X62_Y36_N31
\PWMtest|softstart_duty_act[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|Selector25~0_combout\,
	clrn => \reset~input_o\,
	ena => \PWMtest|softstart_duty_act[11]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|softstart_duty_act\(9));

-- Location: LCCOMB_X58_Y36_N0
\PWMtest|LessThan4~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan4~5_combout\ = (!\PWMtest|softstart_duty_act\(14) & (!\PWMtest|softstart_duty_act\(13) & (!\PWMtest|softstart_duty_act\(11) & !\PWMtest|softstart_duty_act\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(14),
	datab => \PWMtest|softstart_duty_act\(13),
	datac => \PWMtest|softstart_duty_act\(11),
	datad => \PWMtest|softstart_duty_act\(12),
	combout => \PWMtest|LessThan4~5_combout\);

-- Location: LCCOMB_X60_Y35_N22
\PWMtest|LessThan4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan4~3_combout\ = (!\PWMtest|softstart_duty_act\(17) & (!\PWMtest|softstart_duty_act\(18) & (!\PWMtest|softstart_duty_act\(16) & !\PWMtest|softstart_duty_act\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(17),
	datab => \PWMtest|softstart_duty_act\(18),
	datac => \PWMtest|softstart_duty_act\(16),
	datad => \PWMtest|softstart_duty_act\(15),
	combout => \PWMtest|LessThan4~3_combout\);

-- Location: LCCOMB_X58_Y35_N28
\PWMtest|LessThan4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan4~0_combout\ = (!\PWMtest|softstart_duty_act\(29) & (!\PWMtest|softstart_duty_act\(30) & (!\PWMtest|softstart_duty_act\(27) & !\PWMtest|softstart_duty_act\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(29),
	datab => \PWMtest|softstart_duty_act\(30),
	datac => \PWMtest|softstart_duty_act\(27),
	datad => \PWMtest|softstart_duty_act\(28),
	combout => \PWMtest|LessThan4~0_combout\);

-- Location: LCCOMB_X58_Y35_N30
\PWMtest|LessThan4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan4~2_combout\ = (!\PWMtest|softstart_duty_act\(19) & (!\PWMtest|softstart_duty_act\(20) & (!\PWMtest|softstart_duty_act\(22) & !\PWMtest|softstart_duty_act\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(19),
	datab => \PWMtest|softstart_duty_act\(20),
	datac => \PWMtest|softstart_duty_act\(22),
	datad => \PWMtest|softstart_duty_act\(21),
	combout => \PWMtest|LessThan4~2_combout\);

-- Location: LCCOMB_X60_Y35_N20
\PWMtest|LessThan4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan4~1_combout\ = (!\PWMtest|softstart_duty_act\(26) & (!\PWMtest|softstart_duty_act\(25) & (!\PWMtest|softstart_duty_act\(24) & !\PWMtest|softstart_duty_act\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(26),
	datab => \PWMtest|softstart_duty_act\(25),
	datac => \PWMtest|softstart_duty_act\(24),
	datad => \PWMtest|softstart_duty_act\(23),
	combout => \PWMtest|LessThan4~1_combout\);

-- Location: LCCOMB_X60_Y35_N0
\PWMtest|LessThan4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan4~4_combout\ = (\PWMtest|LessThan4~3_combout\ & (\PWMtest|LessThan4~0_combout\ & (\PWMtest|LessThan4~2_combout\ & \PWMtest|LessThan4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|LessThan4~3_combout\,
	datab => \PWMtest|LessThan4~0_combout\,
	datac => \PWMtest|LessThan4~2_combout\,
	datad => \PWMtest|LessThan4~1_combout\,
	combout => \PWMtest|LessThan4~4_combout\);

-- Location: LCCOMB_X58_Y36_N2
\PWMtest|LessThan4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan4~6_combout\ = (!\PWMtest|softstart_duty_act\(9) & (\PWMtest|LessThan4~5_combout\ & (!\PWMtest|softstart_duty_act\(10) & \PWMtest|LessThan4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(9),
	datab => \PWMtest|LessThan4~5_combout\,
	datac => \PWMtest|softstart_duty_act\(10),
	datad => \PWMtest|LessThan4~4_combout\,
	combout => \PWMtest|LessThan4~6_combout\);

-- Location: LCCOMB_X55_Y37_N10
\PWMtest|softstart_duty_act[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|softstart_duty_act[3]~7_combout\ = (\PWMtest|softstart_duty_act\(31)) # ((\PWMtest|softstart_duty_act[3]~5_combout\) # ((\PWMtest|LessThan4~23_combout\ & \PWMtest|LessThan4~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|LessThan4~23_combout\,
	datab => \PWMtest|LessThan4~6_combout\,
	datac => \PWMtest|softstart_duty_act\(31),
	datad => \PWMtest|softstart_duty_act[3]~5_combout\,
	combout => \PWMtest|softstart_duty_act[3]~7_combout\);

-- Location: LCCOMB_X61_Y38_N24
\PWMtest|Selector26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Selector26~0_combout\ = (!\PWMtest|softstart_duty_act[3]~8_combout\ & ((\PWMtest|softstart_duty_act[3]~7_combout\ & (\PWMtest|Add5~16_combout\)) # (!\PWMtest|softstart_duty_act[3]~7_combout\ & ((\incdecdutytest|duty\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act[3]~7_combout\,
	datab => \PWMtest|Add5~16_combout\,
	datac => \PWMtest|softstart_duty_act[3]~8_combout\,
	datad => \incdecdutytest|duty\(8),
	combout => \PWMtest|Selector26~0_combout\);

-- Location: FF_X61_Y38_N25
\PWMtest|softstart_duty_act[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|Selector26~0_combout\,
	clrn => \reset~input_o\,
	ena => \PWMtest|softstart_duty_act[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|softstart_duty_act\(8));

-- Location: LCCOMB_X62_Y34_N10
\PWMtest|LessThan4~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan4~8_cout\ = CARRY((\incdecdutytest|duty[0]~19_combout\ & \PWMtest|softstart_duty_act\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \incdecdutytest|duty[0]~19_combout\,
	datab => \PWMtest|softstart_duty_act\(0),
	datad => VCC,
	cout => \PWMtest|LessThan4~8_cout\);

-- Location: LCCOMB_X62_Y34_N12
\PWMtest|LessThan4~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan4~10_cout\ = CARRY((\incdecdutytest|duty[1]~17_combout\ & (!\PWMtest|softstart_duty_act\(1) & !\PWMtest|LessThan4~8_cout\)) # (!\incdecdutytest|duty[1]~17_combout\ & ((!\PWMtest|LessThan4~8_cout\) # (!\PWMtest|softstart_duty_act\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \incdecdutytest|duty[1]~17_combout\,
	datab => \PWMtest|softstart_duty_act\(1),
	datad => VCC,
	cin => \PWMtest|LessThan4~8_cout\,
	cout => \PWMtest|LessThan4~10_cout\);

-- Location: LCCOMB_X62_Y34_N14
\PWMtest|LessThan4~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan4~12_cout\ = CARRY((\incdecdutytest|duty[2]~15_combout\ & ((\PWMtest|softstart_duty_act\(2)) # (!\PWMtest|LessThan4~10_cout\))) # (!\incdecdutytest|duty[2]~15_combout\ & (\PWMtest|softstart_duty_act\(2) & !\PWMtest|LessThan4~10_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \incdecdutytest|duty[2]~15_combout\,
	datab => \PWMtest|softstart_duty_act\(2),
	datad => VCC,
	cin => \PWMtest|LessThan4~10_cout\,
	cout => \PWMtest|LessThan4~12_cout\);

-- Location: LCCOMB_X62_Y34_N16
\PWMtest|LessThan4~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan4~14_cout\ = CARRY((\PWMtest|softstart_duty_act\(3) & (!\incdecdutytest|duty[3]~13_combout\ & !\PWMtest|LessThan4~12_cout\)) # (!\PWMtest|softstart_duty_act\(3) & ((!\PWMtest|LessThan4~12_cout\) # (!\incdecdutytest|duty[3]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(3),
	datab => \incdecdutytest|duty[3]~13_combout\,
	datad => VCC,
	cin => \PWMtest|LessThan4~12_cout\,
	cout => \PWMtest|LessThan4~14_cout\);

-- Location: LCCOMB_X62_Y34_N18
\PWMtest|LessThan4~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan4~16_cout\ = CARRY((\incdecdutytest|duty[4]~11_combout\ & ((!\PWMtest|LessThan4~14_cout\) # (!\PWMtest|softstart_duty_act\(4)))) # (!\incdecdutytest|duty[4]~11_combout\ & (!\PWMtest|softstart_duty_act\(4) & !\PWMtest|LessThan4~14_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \incdecdutytest|duty[4]~11_combout\,
	datab => \PWMtest|softstart_duty_act\(4),
	datad => VCC,
	cin => \PWMtest|LessThan4~14_cout\,
	cout => \PWMtest|LessThan4~16_cout\);

-- Location: LCCOMB_X62_Y34_N20
\PWMtest|LessThan4~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan4~18_cout\ = CARRY((\PWMtest|softstart_duty_act\(5) & ((!\PWMtest|LessThan4~16_cout\) # (!\incdecdutytest|duty[5]~9_combout\))) # (!\PWMtest|softstart_duty_act\(5) & (!\incdecdutytest|duty[5]~9_combout\ & !\PWMtest|LessThan4~16_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(5),
	datab => \incdecdutytest|duty[5]~9_combout\,
	datad => VCC,
	cin => \PWMtest|LessThan4~16_cout\,
	cout => \PWMtest|LessThan4~18_cout\);

-- Location: LCCOMB_X62_Y34_N22
\PWMtest|LessThan4~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan4~20_cout\ = CARRY((\PWMtest|softstart_duty_act\(6) & (\incdecdutytest|duty[6]~7_combout\ & !\PWMtest|LessThan4~18_cout\)) # (!\PWMtest|softstart_duty_act\(6) & ((\incdecdutytest|duty[6]~7_combout\) # (!\PWMtest|LessThan4~18_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(6),
	datab => \incdecdutytest|duty[6]~7_combout\,
	datad => VCC,
	cin => \PWMtest|LessThan4~18_cout\,
	cout => \PWMtest|LessThan4~20_cout\);

-- Location: LCCOMB_X62_Y34_N24
\PWMtest|LessThan4~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan4~22_cout\ = CARRY((\PWMtest|softstart_duty_act\(7) & ((!\PWMtest|LessThan4~20_cout\) # (!\incdecdutytest|duty[7]~3_combout\))) # (!\PWMtest|softstart_duty_act\(7) & (!\incdecdutytest|duty[7]~3_combout\ & !\PWMtest|LessThan4~20_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(7),
	datab => \incdecdutytest|duty[7]~3_combout\,
	datad => VCC,
	cin => \PWMtest|LessThan4~20_cout\,
	cout => \PWMtest|LessThan4~22_cout\);

-- Location: LCCOMB_X62_Y34_N26
\PWMtest|LessThan4~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan4~23_combout\ = (\PWMtest|softstart_duty_act\(8) & (!\PWMtest|LessThan4~22_cout\ & \incdecdutytest|duty\(8))) # (!\PWMtest|softstart_duty_act\(8) & ((\incdecdutytest|duty\(8)) # (!\PWMtest|LessThan4~22_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(8),
	datad => \incdecdutytest|duty\(8),
	cin => \PWMtest|LessThan4~22_cout\,
	combout => \PWMtest|LessThan4~23_combout\);

-- Location: LCCOMB_X55_Y37_N28
\PWMtest|softstart_duty_act[11]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|softstart_duty_act[11]~2_combout\ = (\PWMtest|LessThan4~6_combout\ & ((\PWMtest|est_act.boost2softs~q\ & ((\PWMtest|LessThan5~2_combout\))) # (!\PWMtest|est_act.boost2softs~q\ & (\PWMtest|LessThan4~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|LessThan4~23_combout\,
	datab => \PWMtest|LessThan4~6_combout\,
	datac => \PWMtest|est_act.boost2softs~q\,
	datad => \PWMtest|LessThan5~2_combout\,
	combout => \PWMtest|softstart_duty_act[11]~2_combout\);

-- Location: LCCOMB_X62_Y37_N30
\PWMtest|Add5~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add5~62_combout\ = \PWMtest|Add5~61\ $ (\PWMtest|softstart_duty_act\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \PWMtest|softstart_duty_act\(31),
	cin => \PWMtest|Add5~61\,
	combout => \PWMtest|Add5~62_combout\);

-- Location: LCCOMB_X62_Y36_N24
\PWMtest|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Selector3~0_combout\ = (\PWMtest|Add5~62_combout\ & (\PWMtest|est_act.idle~q\ & ((\PWMtest|softstart_duty_act[11]~2_combout\) # (\PWMtest|softstart_duty_act\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act[11]~2_combout\,
	datab => \PWMtest|Add5~62_combout\,
	datac => \PWMtest|softstart_duty_act\(31),
	datad => \PWMtest|est_act.idle~q\,
	combout => \PWMtest|Selector3~0_combout\);

-- Location: FF_X62_Y36_N25
\PWMtest|softstart_duty_act[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|Selector3~0_combout\,
	clrn => \reset~input_o\,
	ena => \PWMtest|softstart_duty_act[11]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|softstart_duty_act\(31));

-- Location: LCCOMB_X59_Y38_N2
\PWMtest|Add6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add6~0_combout\ = (\PWMtest|softstart_duty_act\(0) & (!\PWMtest|softstart_duty_act\(1) & VCC)) # (!\PWMtest|softstart_duty_act\(0) & (\PWMtest|softstart_duty_act\(1) $ (GND)))
-- \PWMtest|Add6~1\ = CARRY((!\PWMtest|softstart_duty_act\(0) & !\PWMtest|softstart_duty_act\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(0),
	datab => \PWMtest|softstart_duty_act\(1),
	datad => VCC,
	combout => \PWMtest|Add6~0_combout\,
	cout => \PWMtest|Add6~1\);

-- Location: LCCOMB_X59_Y38_N4
\PWMtest|Add6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add6~2_combout\ = (\PWMtest|softstart_duty_act\(2) & ((\PWMtest|Add6~1\) # (GND))) # (!\PWMtest|softstart_duty_act\(2) & (!\PWMtest|Add6~1\))
-- \PWMtest|Add6~3\ = CARRY((\PWMtest|softstart_duty_act\(2)) # (!\PWMtest|Add6~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|softstart_duty_act\(2),
	datad => VCC,
	cin => \PWMtest|Add6~1\,
	combout => \PWMtest|Add6~2_combout\,
	cout => \PWMtest|Add6~3\);

-- Location: LCCOMB_X59_Y38_N6
\PWMtest|Add6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add6~4_combout\ = (\PWMtest|softstart_duty_act\(3) & (\PWMtest|Add6~3\ $ (GND))) # (!\PWMtest|softstart_duty_act\(3) & ((GND) # (!\PWMtest|Add6~3\)))
-- \PWMtest|Add6~5\ = CARRY((!\PWMtest|Add6~3\) # (!\PWMtest|softstart_duty_act\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|softstart_duty_act\(3),
	datad => VCC,
	cin => \PWMtest|Add6~3\,
	combout => \PWMtest|Add6~4_combout\,
	cout => \PWMtest|Add6~5\);

-- Location: LCCOMB_X59_Y38_N8
\PWMtest|Add6~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add6~6_combout\ = (\PWMtest|softstart_duty_act\(4) & (\PWMtest|Add6~5\ & VCC)) # (!\PWMtest|softstart_duty_act\(4) & (!\PWMtest|Add6~5\))
-- \PWMtest|Add6~7\ = CARRY((!\PWMtest|softstart_duty_act\(4) & !\PWMtest|Add6~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(4),
	datad => VCC,
	cin => \PWMtest|Add6~5\,
	combout => \PWMtest|Add6~6_combout\,
	cout => \PWMtest|Add6~7\);

-- Location: LCCOMB_X59_Y38_N10
\PWMtest|Add6~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add6~8_combout\ = (\PWMtest|softstart_duty_act\(5) & ((GND) # (!\PWMtest|Add6~7\))) # (!\PWMtest|softstart_duty_act\(5) & (\PWMtest|Add6~7\ $ (GND)))
-- \PWMtest|Add6~9\ = CARRY((\PWMtest|softstart_duty_act\(5)) # (!\PWMtest|Add6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|softstart_duty_act\(5),
	datad => VCC,
	cin => \PWMtest|Add6~7\,
	combout => \PWMtest|Add6~8_combout\,
	cout => \PWMtest|Add6~9\);

-- Location: LCCOMB_X59_Y38_N12
\PWMtest|Add6~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add6~10_combout\ = (\PWMtest|softstart_duty_act\(6) & (\PWMtest|Add6~9\ & VCC)) # (!\PWMtest|softstart_duty_act\(6) & (!\PWMtest|Add6~9\))
-- \PWMtest|Add6~11\ = CARRY((!\PWMtest|softstart_duty_act\(6) & !\PWMtest|Add6~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(6),
	datad => VCC,
	cin => \PWMtest|Add6~9\,
	combout => \PWMtest|Add6~10_combout\,
	cout => \PWMtest|Add6~11\);

-- Location: LCCOMB_X59_Y38_N14
\PWMtest|Add6~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add6~12_combout\ = (\PWMtest|softstart_duty_act\(7) & ((GND) # (!\PWMtest|Add6~11\))) # (!\PWMtest|softstart_duty_act\(7) & (\PWMtest|Add6~11\ $ (GND)))
-- \PWMtest|Add6~13\ = CARRY((\PWMtest|softstart_duty_act\(7)) # (!\PWMtest|Add6~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|softstart_duty_act\(7),
	datad => VCC,
	cin => \PWMtest|Add6~11\,
	combout => \PWMtest|Add6~12_combout\,
	cout => \PWMtest|Add6~13\);

-- Location: LCCOMB_X59_Y38_N16
\PWMtest|Add6~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add6~14_combout\ = (\PWMtest|softstart_duty_act\(8) & (\PWMtest|Add6~13\ & VCC)) # (!\PWMtest|softstart_duty_act\(8) & (!\PWMtest|Add6~13\))
-- \PWMtest|Add6~15\ = CARRY((!\PWMtest|softstart_duty_act\(8) & !\PWMtest|Add6~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(8),
	datad => VCC,
	cin => \PWMtest|Add6~13\,
	combout => \PWMtest|Add6~14_combout\,
	cout => \PWMtest|Add6~15\);

-- Location: LCCOMB_X59_Y38_N18
\PWMtest|Add6~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add6~16_combout\ = (\PWMtest|softstart_duty_act\(9) & ((GND) # (!\PWMtest|Add6~15\))) # (!\PWMtest|softstart_duty_act\(9) & (\PWMtest|Add6~15\ $ (GND)))
-- \PWMtest|Add6~17\ = CARRY((\PWMtest|softstart_duty_act\(9)) # (!\PWMtest|Add6~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|softstart_duty_act\(9),
	datad => VCC,
	cin => \PWMtest|Add6~15\,
	combout => \PWMtest|Add6~16_combout\,
	cout => \PWMtest|Add6~17\);

-- Location: LCCOMB_X59_Y38_N20
\PWMtest|Add6~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add6~18_combout\ = (\PWMtest|softstart_duty_act\(10) & (\PWMtest|Add6~17\ & VCC)) # (!\PWMtest|softstart_duty_act\(10) & (!\PWMtest|Add6~17\))
-- \PWMtest|Add6~19\ = CARRY((!\PWMtest|softstart_duty_act\(10) & !\PWMtest|Add6~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(10),
	datad => VCC,
	cin => \PWMtest|Add6~17\,
	combout => \PWMtest|Add6~18_combout\,
	cout => \PWMtest|Add6~19\);

-- Location: LCCOMB_X59_Y38_N22
\PWMtest|Add6~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add6~20_combout\ = (\PWMtest|softstart_duty_act\(11) & ((GND) # (!\PWMtest|Add6~19\))) # (!\PWMtest|softstart_duty_act\(11) & (\PWMtest|Add6~19\ $ (GND)))
-- \PWMtest|Add6~21\ = CARRY((\PWMtest|softstart_duty_act\(11)) # (!\PWMtest|Add6~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(11),
	datad => VCC,
	cin => \PWMtest|Add6~19\,
	combout => \PWMtest|Add6~20_combout\,
	cout => \PWMtest|Add6~21\);

-- Location: LCCOMB_X59_Y38_N24
\PWMtest|Add6~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add6~22_combout\ = (\PWMtest|softstart_duty_act\(12) & (\PWMtest|Add6~21\ & VCC)) # (!\PWMtest|softstart_duty_act\(12) & (!\PWMtest|Add6~21\))
-- \PWMtest|Add6~23\ = CARRY((!\PWMtest|softstart_duty_act\(12) & !\PWMtest|Add6~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|softstart_duty_act\(12),
	datad => VCC,
	cin => \PWMtest|Add6~21\,
	combout => \PWMtest|Add6~22_combout\,
	cout => \PWMtest|Add6~23\);

-- Location: LCCOMB_X59_Y38_N26
\PWMtest|Add6~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add6~24_combout\ = (\PWMtest|softstart_duty_act\(13) & ((GND) # (!\PWMtest|Add6~23\))) # (!\PWMtest|softstart_duty_act\(13) & (\PWMtest|Add6~23\ $ (GND)))
-- \PWMtest|Add6~25\ = CARRY((\PWMtest|softstart_duty_act\(13)) # (!\PWMtest|Add6~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(13),
	datad => VCC,
	cin => \PWMtest|Add6~23\,
	combout => \PWMtest|Add6~24_combout\,
	cout => \PWMtest|Add6~25\);

-- Location: LCCOMB_X59_Y38_N28
\PWMtest|Add6~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add6~26_combout\ = (\PWMtest|softstart_duty_act\(14) & (\PWMtest|Add6~25\ & VCC)) # (!\PWMtest|softstart_duty_act\(14) & (!\PWMtest|Add6~25\))
-- \PWMtest|Add6~27\ = CARRY((!\PWMtest|softstart_duty_act\(14) & !\PWMtest|Add6~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|softstart_duty_act\(14),
	datad => VCC,
	cin => \PWMtest|Add6~25\,
	combout => \PWMtest|Add6~26_combout\,
	cout => \PWMtest|Add6~27\);

-- Location: LCCOMB_X59_Y38_N30
\PWMtest|Add6~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add6~28_combout\ = (\PWMtest|softstart_duty_act\(15) & ((GND) # (!\PWMtest|Add6~27\))) # (!\PWMtest|softstart_duty_act\(15) & (\PWMtest|Add6~27\ $ (GND)))
-- \PWMtest|Add6~29\ = CARRY((\PWMtest|softstart_duty_act\(15)) # (!\PWMtest|Add6~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(15),
	datad => VCC,
	cin => \PWMtest|Add6~27\,
	combout => \PWMtest|Add6~28_combout\,
	cout => \PWMtest|Add6~29\);

-- Location: LCCOMB_X59_Y37_N0
\PWMtest|Add6~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add6~30_combout\ = (\PWMtest|softstart_duty_act\(16) & (\PWMtest|Add6~29\ & VCC)) # (!\PWMtest|softstart_duty_act\(16) & (!\PWMtest|Add6~29\))
-- \PWMtest|Add6~31\ = CARRY((!\PWMtest|softstart_duty_act\(16) & !\PWMtest|Add6~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(16),
	datad => VCC,
	cin => \PWMtest|Add6~29\,
	combout => \PWMtest|Add6~30_combout\,
	cout => \PWMtest|Add6~31\);

-- Location: LCCOMB_X59_Y37_N2
\PWMtest|Add6~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add6~32_combout\ = (\PWMtest|softstart_duty_act\(17) & ((GND) # (!\PWMtest|Add6~31\))) # (!\PWMtest|softstart_duty_act\(17) & (\PWMtest|Add6~31\ $ (GND)))
-- \PWMtest|Add6~33\ = CARRY((\PWMtest|softstart_duty_act\(17)) # (!\PWMtest|Add6~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(17),
	datad => VCC,
	cin => \PWMtest|Add6~31\,
	combout => \PWMtest|Add6~32_combout\,
	cout => \PWMtest|Add6~33\);

-- Location: LCCOMB_X59_Y37_N4
\PWMtest|Add6~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add6~34_combout\ = (\PWMtest|softstart_duty_act\(18) & (\PWMtest|Add6~33\ & VCC)) # (!\PWMtest|softstart_duty_act\(18) & (!\PWMtest|Add6~33\))
-- \PWMtest|Add6~35\ = CARRY((!\PWMtest|softstart_duty_act\(18) & !\PWMtest|Add6~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|softstart_duty_act\(18),
	datad => VCC,
	cin => \PWMtest|Add6~33\,
	combout => \PWMtest|Add6~34_combout\,
	cout => \PWMtest|Add6~35\);

-- Location: LCCOMB_X59_Y37_N6
\PWMtest|Add6~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add6~36_combout\ = (\PWMtest|softstart_duty_act\(19) & ((GND) # (!\PWMtest|Add6~35\))) # (!\PWMtest|softstart_duty_act\(19) & (\PWMtest|Add6~35\ $ (GND)))
-- \PWMtest|Add6~37\ = CARRY((\PWMtest|softstart_duty_act\(19)) # (!\PWMtest|Add6~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|softstart_duty_act\(19),
	datad => VCC,
	cin => \PWMtest|Add6~35\,
	combout => \PWMtest|Add6~36_combout\,
	cout => \PWMtest|Add6~37\);

-- Location: LCCOMB_X59_Y37_N8
\PWMtest|Add6~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add6~38_combout\ = (\PWMtest|softstart_duty_act\(20) & (\PWMtest|Add6~37\ & VCC)) # (!\PWMtest|softstart_duty_act\(20) & (!\PWMtest|Add6~37\))
-- \PWMtest|Add6~39\ = CARRY((!\PWMtest|softstart_duty_act\(20) & !\PWMtest|Add6~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(20),
	datad => VCC,
	cin => \PWMtest|Add6~37\,
	combout => \PWMtest|Add6~38_combout\,
	cout => \PWMtest|Add6~39\);

-- Location: LCCOMB_X59_Y37_N10
\PWMtest|Add6~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add6~40_combout\ = (\PWMtest|softstart_duty_act\(21) & ((GND) # (!\PWMtest|Add6~39\))) # (!\PWMtest|softstart_duty_act\(21) & (\PWMtest|Add6~39\ $ (GND)))
-- \PWMtest|Add6~41\ = CARRY((\PWMtest|softstart_duty_act\(21)) # (!\PWMtest|Add6~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(21),
	datad => VCC,
	cin => \PWMtest|Add6~39\,
	combout => \PWMtest|Add6~40_combout\,
	cout => \PWMtest|Add6~41\);

-- Location: LCCOMB_X59_Y37_N12
\PWMtest|Add6~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add6~42_combout\ = (\PWMtest|softstart_duty_act\(22) & (\PWMtest|Add6~41\ & VCC)) # (!\PWMtest|softstart_duty_act\(22) & (!\PWMtest|Add6~41\))
-- \PWMtest|Add6~43\ = CARRY((!\PWMtest|softstart_duty_act\(22) & !\PWMtest|Add6~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(22),
	datad => VCC,
	cin => \PWMtest|Add6~41\,
	combout => \PWMtest|Add6~42_combout\,
	cout => \PWMtest|Add6~43\);

-- Location: LCCOMB_X59_Y37_N14
\PWMtest|Add6~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add6~44_combout\ = (\PWMtest|softstart_duty_act\(23) & ((GND) # (!\PWMtest|Add6~43\))) # (!\PWMtest|softstart_duty_act\(23) & (\PWMtest|Add6~43\ $ (GND)))
-- \PWMtest|Add6~45\ = CARRY((\PWMtest|softstart_duty_act\(23)) # (!\PWMtest|Add6~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|softstart_duty_act\(23),
	datad => VCC,
	cin => \PWMtest|Add6~43\,
	combout => \PWMtest|Add6~44_combout\,
	cout => \PWMtest|Add6~45\);

-- Location: LCCOMB_X59_Y37_N16
\PWMtest|Add6~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add6~46_combout\ = (\PWMtest|softstart_duty_act\(24) & (\PWMtest|Add6~45\ & VCC)) # (!\PWMtest|softstart_duty_act\(24) & (!\PWMtest|Add6~45\))
-- \PWMtest|Add6~47\ = CARRY((!\PWMtest|softstart_duty_act\(24) & !\PWMtest|Add6~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|softstart_duty_act\(24),
	datad => VCC,
	cin => \PWMtest|Add6~45\,
	combout => \PWMtest|Add6~46_combout\,
	cout => \PWMtest|Add6~47\);

-- Location: LCCOMB_X59_Y37_N18
\PWMtest|Add6~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add6~48_combout\ = (\PWMtest|softstart_duty_act\(25) & ((GND) # (!\PWMtest|Add6~47\))) # (!\PWMtest|softstart_duty_act\(25) & (\PWMtest|Add6~47\ $ (GND)))
-- \PWMtest|Add6~49\ = CARRY((\PWMtest|softstart_duty_act\(25)) # (!\PWMtest|Add6~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(25),
	datad => VCC,
	cin => \PWMtest|Add6~47\,
	combout => \PWMtest|Add6~48_combout\,
	cout => \PWMtest|Add6~49\);

-- Location: LCCOMB_X59_Y37_N20
\PWMtest|Add6~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add6~50_combout\ = (\PWMtest|softstart_duty_act\(26) & (\PWMtest|Add6~49\ & VCC)) # (!\PWMtest|softstart_duty_act\(26) & (!\PWMtest|Add6~49\))
-- \PWMtest|Add6~51\ = CARRY((!\PWMtest|softstart_duty_act\(26) & !\PWMtest|Add6~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|softstart_duty_act\(26),
	datad => VCC,
	cin => \PWMtest|Add6~49\,
	combout => \PWMtest|Add6~50_combout\,
	cout => \PWMtest|Add6~51\);

-- Location: LCCOMB_X59_Y37_N22
\PWMtest|Add6~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add6~52_combout\ = (\PWMtest|softstart_duty_act\(27) & ((GND) # (!\PWMtest|Add6~51\))) # (!\PWMtest|softstart_duty_act\(27) & (\PWMtest|Add6~51\ $ (GND)))
-- \PWMtest|Add6~53\ = CARRY((\PWMtest|softstart_duty_act\(27)) # (!\PWMtest|Add6~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|softstart_duty_act\(27),
	datad => VCC,
	cin => \PWMtest|Add6~51\,
	combout => \PWMtest|Add6~52_combout\,
	cout => \PWMtest|Add6~53\);

-- Location: LCCOMB_X59_Y37_N24
\PWMtest|Add6~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add6~54_combout\ = (\PWMtest|softstart_duty_act\(28) & (\PWMtest|Add6~53\ & VCC)) # (!\PWMtest|softstart_duty_act\(28) & (!\PWMtest|Add6~53\))
-- \PWMtest|Add6~55\ = CARRY((!\PWMtest|softstart_duty_act\(28) & !\PWMtest|Add6~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(28),
	datad => VCC,
	cin => \PWMtest|Add6~53\,
	combout => \PWMtest|Add6~54_combout\,
	cout => \PWMtest|Add6~55\);

-- Location: LCCOMB_X59_Y37_N26
\PWMtest|Add6~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add6~56_combout\ = (\PWMtest|softstart_duty_act\(29) & ((GND) # (!\PWMtest|Add6~55\))) # (!\PWMtest|softstart_duty_act\(29) & (\PWMtest|Add6~55\ $ (GND)))
-- \PWMtest|Add6~57\ = CARRY((\PWMtest|softstart_duty_act\(29)) # (!\PWMtest|Add6~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(29),
	datad => VCC,
	cin => \PWMtest|Add6~55\,
	combout => \PWMtest|Add6~56_combout\,
	cout => \PWMtest|Add6~57\);

-- Location: LCCOMB_X59_Y37_N28
\PWMtest|Add6~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add6~58_combout\ = (\PWMtest|softstart_duty_act\(30) & (\PWMtest|Add6~57\ & VCC)) # (!\PWMtest|softstart_duty_act\(30) & (!\PWMtest|Add6~57\))
-- \PWMtest|Add6~59\ = CARRY((!\PWMtest|softstart_duty_act\(30) & !\PWMtest|Add6~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|softstart_duty_act\(30),
	datad => VCC,
	cin => \PWMtest|Add6~57\,
	combout => \PWMtest|Add6~58_combout\,
	cout => \PWMtest|Add6~59\);

-- Location: LCCOMB_X59_Y37_N30
\PWMtest|Add6~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Add6~60_combout\ = \PWMtest|softstart_duty_act\(31) $ (\PWMtest|Add6~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(31),
	cin => \PWMtest|Add6~59\,
	combout => \PWMtest|Add6~60_combout\);

-- Location: LCCOMB_X58_Y38_N0
\PWMtest|LessThan6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan6~1_cout\ = CARRY((\PWMtest|softstart_duty_act\(0) & !\PWMtest|countactual1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|softstart_duty_act\(0),
	datab => \PWMtest|countactual1\(0),
	datad => VCC,
	cout => \PWMtest|LessThan6~1_cout\);

-- Location: LCCOMB_X58_Y38_N2
\PWMtest|LessThan6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan6~3_cout\ = CARRY((\PWMtest|Add6~0_combout\ & (\PWMtest|countactual1\(1) & !\PWMtest|LessThan6~1_cout\)) # (!\PWMtest|Add6~0_combout\ & ((\PWMtest|countactual1\(1)) # (!\PWMtest|LessThan6~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|Add6~0_combout\,
	datab => \PWMtest|countactual1\(1),
	datad => VCC,
	cin => \PWMtest|LessThan6~1_cout\,
	cout => \PWMtest|LessThan6~3_cout\);

-- Location: LCCOMB_X58_Y38_N4
\PWMtest|LessThan6~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan6~5_cout\ = CARRY((\PWMtest|Add6~2_combout\ & ((!\PWMtest|LessThan6~3_cout\) # (!\PWMtest|countactual1\(2)))) # (!\PWMtest|Add6~2_combout\ & (!\PWMtest|countactual1\(2) & !\PWMtest|LessThan6~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|Add6~2_combout\,
	datab => \PWMtest|countactual1\(2),
	datad => VCC,
	cin => \PWMtest|LessThan6~3_cout\,
	cout => \PWMtest|LessThan6~5_cout\);

-- Location: LCCOMB_X58_Y38_N6
\PWMtest|LessThan6~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan6~7_cout\ = CARRY((\PWMtest|countactual1\(3) & ((!\PWMtest|LessThan6~5_cout\) # (!\PWMtest|Add6~4_combout\))) # (!\PWMtest|countactual1\(3) & (!\PWMtest|Add6~4_combout\ & !\PWMtest|LessThan6~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(3),
	datab => \PWMtest|Add6~4_combout\,
	datad => VCC,
	cin => \PWMtest|LessThan6~5_cout\,
	cout => \PWMtest|LessThan6~7_cout\);

-- Location: LCCOMB_X58_Y38_N8
\PWMtest|LessThan6~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan6~9_cout\ = CARRY((\PWMtest|countactual1\(4) & (\PWMtest|Add6~6_combout\ & !\PWMtest|LessThan6~7_cout\)) # (!\PWMtest|countactual1\(4) & ((\PWMtest|Add6~6_combout\) # (!\PWMtest|LessThan6~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(4),
	datab => \PWMtest|Add6~6_combout\,
	datad => VCC,
	cin => \PWMtest|LessThan6~7_cout\,
	cout => \PWMtest|LessThan6~9_cout\);

-- Location: LCCOMB_X58_Y38_N10
\PWMtest|LessThan6~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan6~11_cout\ = CARRY((\PWMtest|countactual1\(5) & ((!\PWMtest|LessThan6~9_cout\) # (!\PWMtest|Add6~8_combout\))) # (!\PWMtest|countactual1\(5) & (!\PWMtest|Add6~8_combout\ & !\PWMtest|LessThan6~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(5),
	datab => \PWMtest|Add6~8_combout\,
	datad => VCC,
	cin => \PWMtest|LessThan6~9_cout\,
	cout => \PWMtest|LessThan6~11_cout\);

-- Location: LCCOMB_X58_Y38_N12
\PWMtest|LessThan6~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan6~13_cout\ = CARRY((\PWMtest|countactual1\(6) & (\PWMtest|Add6~10_combout\ & !\PWMtest|LessThan6~11_cout\)) # (!\PWMtest|countactual1\(6) & ((\PWMtest|Add6~10_combout\) # (!\PWMtest|LessThan6~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(6),
	datab => \PWMtest|Add6~10_combout\,
	datad => VCC,
	cin => \PWMtest|LessThan6~11_cout\,
	cout => \PWMtest|LessThan6~13_cout\);

-- Location: LCCOMB_X58_Y38_N14
\PWMtest|LessThan6~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan6~15_cout\ = CARRY((\PWMtest|countactual1\(7) & ((!\PWMtest|LessThan6~13_cout\) # (!\PWMtest|Add6~12_combout\))) # (!\PWMtest|countactual1\(7) & (!\PWMtest|Add6~12_combout\ & !\PWMtest|LessThan6~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(7),
	datab => \PWMtest|Add6~12_combout\,
	datad => VCC,
	cin => \PWMtest|LessThan6~13_cout\,
	cout => \PWMtest|LessThan6~15_cout\);

-- Location: LCCOMB_X58_Y38_N16
\PWMtest|LessThan6~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan6~17_cout\ = CARRY((\PWMtest|countactual1\(8) & (\PWMtest|Add6~14_combout\ & !\PWMtest|LessThan6~15_cout\)) # (!\PWMtest|countactual1\(8) & ((\PWMtest|Add6~14_combout\) # (!\PWMtest|LessThan6~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(8),
	datab => \PWMtest|Add6~14_combout\,
	datad => VCC,
	cin => \PWMtest|LessThan6~15_cout\,
	cout => \PWMtest|LessThan6~17_cout\);

-- Location: LCCOMB_X58_Y38_N18
\PWMtest|LessThan6~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan6~19_cout\ = CARRY((\PWMtest|countactual1\(9) & ((!\PWMtest|LessThan6~17_cout\) # (!\PWMtest|Add6~16_combout\))) # (!\PWMtest|countactual1\(9) & (!\PWMtest|Add6~16_combout\ & !\PWMtest|LessThan6~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(9),
	datab => \PWMtest|Add6~16_combout\,
	datad => VCC,
	cin => \PWMtest|LessThan6~17_cout\,
	cout => \PWMtest|LessThan6~19_cout\);

-- Location: LCCOMB_X58_Y38_N20
\PWMtest|LessThan6~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan6~21_cout\ = CARRY((\PWMtest|Add6~18_combout\ & ((!\PWMtest|LessThan6~19_cout\) # (!\PWMtest|countactual1\(10)))) # (!\PWMtest|Add6~18_combout\ & (!\PWMtest|countactual1\(10) & !\PWMtest|LessThan6~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|Add6~18_combout\,
	datab => \PWMtest|countactual1\(10),
	datad => VCC,
	cin => \PWMtest|LessThan6~19_cout\,
	cout => \PWMtest|LessThan6~21_cout\);

-- Location: LCCOMB_X58_Y38_N22
\PWMtest|LessThan6~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan6~23_cout\ = CARRY((\PWMtest|countactual1\(11) & ((!\PWMtest|LessThan6~21_cout\) # (!\PWMtest|Add6~20_combout\))) # (!\PWMtest|countactual1\(11) & (!\PWMtest|Add6~20_combout\ & !\PWMtest|LessThan6~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(11),
	datab => \PWMtest|Add6~20_combout\,
	datad => VCC,
	cin => \PWMtest|LessThan6~21_cout\,
	cout => \PWMtest|LessThan6~23_cout\);

-- Location: LCCOMB_X58_Y38_N24
\PWMtest|LessThan6~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan6~25_cout\ = CARRY((\PWMtest|countactual1\(12) & (\PWMtest|Add6~22_combout\ & !\PWMtest|LessThan6~23_cout\)) # (!\PWMtest|countactual1\(12) & ((\PWMtest|Add6~22_combout\) # (!\PWMtest|LessThan6~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(12),
	datab => \PWMtest|Add6~22_combout\,
	datad => VCC,
	cin => \PWMtest|LessThan6~23_cout\,
	cout => \PWMtest|LessThan6~25_cout\);

-- Location: LCCOMB_X58_Y38_N26
\PWMtest|LessThan6~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan6~27_cout\ = CARRY((\PWMtest|countactual1\(13) & ((!\PWMtest|LessThan6~25_cout\) # (!\PWMtest|Add6~24_combout\))) # (!\PWMtest|countactual1\(13) & (!\PWMtest|Add6~24_combout\ & !\PWMtest|LessThan6~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(13),
	datab => \PWMtest|Add6~24_combout\,
	datad => VCC,
	cin => \PWMtest|LessThan6~25_cout\,
	cout => \PWMtest|LessThan6~27_cout\);

-- Location: LCCOMB_X58_Y38_N28
\PWMtest|LessThan6~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan6~29_cout\ = CARRY((\PWMtest|countactual1\(14) & (\PWMtest|Add6~26_combout\ & !\PWMtest|LessThan6~27_cout\)) # (!\PWMtest|countactual1\(14) & ((\PWMtest|Add6~26_combout\) # (!\PWMtest|LessThan6~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(14),
	datab => \PWMtest|Add6~26_combout\,
	datad => VCC,
	cin => \PWMtest|LessThan6~27_cout\,
	cout => \PWMtest|LessThan6~29_cout\);

-- Location: LCCOMB_X58_Y38_N30
\PWMtest|LessThan6~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan6~31_cout\ = CARRY((\PWMtest|Add6~28_combout\ & (\PWMtest|countactual1\(15) & !\PWMtest|LessThan6~29_cout\)) # (!\PWMtest|Add6~28_combout\ & ((\PWMtest|countactual1\(15)) # (!\PWMtest|LessThan6~29_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|Add6~28_combout\,
	datab => \PWMtest|countactual1\(15),
	datad => VCC,
	cin => \PWMtest|LessThan6~29_cout\,
	cout => \PWMtest|LessThan6~31_cout\);

-- Location: LCCOMB_X58_Y37_N0
\PWMtest|LessThan6~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan6~33_cout\ = CARRY((\PWMtest|countactual1\(16) & (\PWMtest|Add6~30_combout\ & !\PWMtest|LessThan6~31_cout\)) # (!\PWMtest|countactual1\(16) & ((\PWMtest|Add6~30_combout\) # (!\PWMtest|LessThan6~31_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(16),
	datab => \PWMtest|Add6~30_combout\,
	datad => VCC,
	cin => \PWMtest|LessThan6~31_cout\,
	cout => \PWMtest|LessThan6~33_cout\);

-- Location: LCCOMB_X58_Y37_N2
\PWMtest|LessThan6~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan6~35_cout\ = CARRY((\PWMtest|Add6~32_combout\ & (\PWMtest|countactual1\(17) & !\PWMtest|LessThan6~33_cout\)) # (!\PWMtest|Add6~32_combout\ & ((\PWMtest|countactual1\(17)) # (!\PWMtest|LessThan6~33_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|Add6~32_combout\,
	datab => \PWMtest|countactual1\(17),
	datad => VCC,
	cin => \PWMtest|LessThan6~33_cout\,
	cout => \PWMtest|LessThan6~35_cout\);

-- Location: LCCOMB_X58_Y37_N4
\PWMtest|LessThan6~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan6~37_cout\ = CARRY((\PWMtest|Add6~34_combout\ & ((!\PWMtest|LessThan6~35_cout\) # (!\PWMtest|countactual1\(18)))) # (!\PWMtest|Add6~34_combout\ & (!\PWMtest|countactual1\(18) & !\PWMtest|LessThan6~35_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|Add6~34_combout\,
	datab => \PWMtest|countactual1\(18),
	datad => VCC,
	cin => \PWMtest|LessThan6~35_cout\,
	cout => \PWMtest|LessThan6~37_cout\);

-- Location: LCCOMB_X58_Y37_N6
\PWMtest|LessThan6~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan6~39_cout\ = CARRY((\PWMtest|Add6~36_combout\ & (\PWMtest|countactual1\(19) & !\PWMtest|LessThan6~37_cout\)) # (!\PWMtest|Add6~36_combout\ & ((\PWMtest|countactual1\(19)) # (!\PWMtest|LessThan6~37_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|Add6~36_combout\,
	datab => \PWMtest|countactual1\(19),
	datad => VCC,
	cin => \PWMtest|LessThan6~37_cout\,
	cout => \PWMtest|LessThan6~39_cout\);

-- Location: LCCOMB_X58_Y37_N8
\PWMtest|LessThan6~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan6~41_cout\ = CARRY((\PWMtest|countactual1\(20) & (\PWMtest|Add6~38_combout\ & !\PWMtest|LessThan6~39_cout\)) # (!\PWMtest|countactual1\(20) & ((\PWMtest|Add6~38_combout\) # (!\PWMtest|LessThan6~39_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(20),
	datab => \PWMtest|Add6~38_combout\,
	datad => VCC,
	cin => \PWMtest|LessThan6~39_cout\,
	cout => \PWMtest|LessThan6~41_cout\);

-- Location: LCCOMB_X58_Y37_N10
\PWMtest|LessThan6~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan6~43_cout\ = CARRY((\PWMtest|countactual1\(21) & ((!\PWMtest|LessThan6~41_cout\) # (!\PWMtest|Add6~40_combout\))) # (!\PWMtest|countactual1\(21) & (!\PWMtest|Add6~40_combout\ & !\PWMtest|LessThan6~41_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(21),
	datab => \PWMtest|Add6~40_combout\,
	datad => VCC,
	cin => \PWMtest|LessThan6~41_cout\,
	cout => \PWMtest|LessThan6~43_cout\);

-- Location: LCCOMB_X58_Y37_N12
\PWMtest|LessThan6~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan6~45_cout\ = CARRY((\PWMtest|countactual1\(22) & (\PWMtest|Add6~42_combout\ & !\PWMtest|LessThan6~43_cout\)) # (!\PWMtest|countactual1\(22) & ((\PWMtest|Add6~42_combout\) # (!\PWMtest|LessThan6~43_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(22),
	datab => \PWMtest|Add6~42_combout\,
	datad => VCC,
	cin => \PWMtest|LessThan6~43_cout\,
	cout => \PWMtest|LessThan6~45_cout\);

-- Location: LCCOMB_X58_Y37_N14
\PWMtest|LessThan6~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan6~47_cout\ = CARRY((\PWMtest|countactual1\(23) & ((!\PWMtest|LessThan6~45_cout\) # (!\PWMtest|Add6~44_combout\))) # (!\PWMtest|countactual1\(23) & (!\PWMtest|Add6~44_combout\ & !\PWMtest|LessThan6~45_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(23),
	datab => \PWMtest|Add6~44_combout\,
	datad => VCC,
	cin => \PWMtest|LessThan6~45_cout\,
	cout => \PWMtest|LessThan6~47_cout\);

-- Location: LCCOMB_X58_Y37_N16
\PWMtest|LessThan6~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan6~49_cout\ = CARRY((\PWMtest|countactual1\(24) & (\PWMtest|Add6~46_combout\ & !\PWMtest|LessThan6~47_cout\)) # (!\PWMtest|countactual1\(24) & ((\PWMtest|Add6~46_combout\) # (!\PWMtest|LessThan6~47_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(24),
	datab => \PWMtest|Add6~46_combout\,
	datad => VCC,
	cin => \PWMtest|LessThan6~47_cout\,
	cout => \PWMtest|LessThan6~49_cout\);

-- Location: LCCOMB_X58_Y37_N18
\PWMtest|LessThan6~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan6~51_cout\ = CARRY((\PWMtest|countactual1\(25) & ((!\PWMtest|LessThan6~49_cout\) # (!\PWMtest|Add6~48_combout\))) # (!\PWMtest|countactual1\(25) & (!\PWMtest|Add6~48_combout\ & !\PWMtest|LessThan6~49_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(25),
	datab => \PWMtest|Add6~48_combout\,
	datad => VCC,
	cin => \PWMtest|LessThan6~49_cout\,
	cout => \PWMtest|LessThan6~51_cout\);

-- Location: LCCOMB_X58_Y37_N20
\PWMtest|LessThan6~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan6~53_cout\ = CARRY((\PWMtest|Add6~50_combout\ & ((!\PWMtest|LessThan6~51_cout\) # (!\PWMtest|countactual1\(26)))) # (!\PWMtest|Add6~50_combout\ & (!\PWMtest|countactual1\(26) & !\PWMtest|LessThan6~51_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|Add6~50_combout\,
	datab => \PWMtest|countactual1\(26),
	datad => VCC,
	cin => \PWMtest|LessThan6~51_cout\,
	cout => \PWMtest|LessThan6~53_cout\);

-- Location: LCCOMB_X58_Y37_N22
\PWMtest|LessThan6~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan6~55_cout\ = CARRY((\PWMtest|countactual1\(27) & ((!\PWMtest|LessThan6~53_cout\) # (!\PWMtest|Add6~52_combout\))) # (!\PWMtest|countactual1\(27) & (!\PWMtest|Add6~52_combout\ & !\PWMtest|LessThan6~53_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(27),
	datab => \PWMtest|Add6~52_combout\,
	datad => VCC,
	cin => \PWMtest|LessThan6~53_cout\,
	cout => \PWMtest|LessThan6~55_cout\);

-- Location: LCCOMB_X58_Y37_N24
\PWMtest|LessThan6~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan6~57_cout\ = CARRY((\PWMtest|Add6~54_combout\ & ((!\PWMtest|LessThan6~55_cout\) # (!\PWMtest|countactual1\(28)))) # (!\PWMtest|Add6~54_combout\ & (!\PWMtest|countactual1\(28) & !\PWMtest|LessThan6~55_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|Add6~54_combout\,
	datab => \PWMtest|countactual1\(28),
	datad => VCC,
	cin => \PWMtest|LessThan6~55_cout\,
	cout => \PWMtest|LessThan6~57_cout\);

-- Location: LCCOMB_X58_Y37_N26
\PWMtest|LessThan6~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan6~59_cout\ = CARRY((\PWMtest|countactual1\(29) & ((!\PWMtest|LessThan6~57_cout\) # (!\PWMtest|Add6~56_combout\))) # (!\PWMtest|countactual1\(29) & (!\PWMtest|Add6~56_combout\ & !\PWMtest|LessThan6~57_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(29),
	datab => \PWMtest|Add6~56_combout\,
	datad => VCC,
	cin => \PWMtest|LessThan6~57_cout\,
	cout => \PWMtest|LessThan6~59_cout\);

-- Location: LCCOMB_X58_Y37_N28
\PWMtest|LessThan6~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan6~61_cout\ = CARRY((\PWMtest|countactual1\(30) & (\PWMtest|Add6~58_combout\ & !\PWMtest|LessThan6~59_cout\)) # (!\PWMtest|countactual1\(30) & ((\PWMtest|Add6~58_combout\) # (!\PWMtest|LessThan6~59_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(30),
	datab => \PWMtest|Add6~58_combout\,
	datad => VCC,
	cin => \PWMtest|LessThan6~59_cout\,
	cout => \PWMtest|LessThan6~61_cout\);

-- Location: LCCOMB_X58_Y37_N30
\PWMtest|LessThan6~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan6~62_combout\ = (\PWMtest|Add6~60_combout\ & (\PWMtest|LessThan6~61_cout\ & \PWMtest|countactual1\(31))) # (!\PWMtest|Add6~60_combout\ & ((\PWMtest|LessThan6~61_cout\) # (\PWMtest|countactual1\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|Add6~60_combout\,
	datad => \PWMtest|countactual1\(31),
	cin => \PWMtest|LessThan6~61_cout\,
	combout => \PWMtest|LessThan6~62_combout\);

-- Location: LCCOMB_X56_Y37_N8
\PWMtest|est_sig~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|est_sig~7_combout\ = (\PWMtest|LessThan3~7_combout\) # (((\PWMtest|Selector37~1_combout\ & \PWMtest|LessThan2~2_combout\)) # (!\PWMtest|countactual1\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|Selector37~1_combout\,
	datab => \PWMtest|LessThan3~7_combout\,
	datac => \PWMtest|LessThan2~2_combout\,
	datad => \PWMtest|countactual1\(8),
	combout => \PWMtest|est_sig~7_combout\);

-- Location: LCCOMB_X56_Y37_N26
\PWMtest|Selector40~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Selector40~0_combout\ = (\PWMtest|est_act.boost2~q\ & (!\PWMtest|countactual1\(31) & ((!\PWMtest|LessThan3~6_combout\) # (!\PWMtest|est_sig~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|est_act.boost2~q\,
	datab => \PWMtest|est_sig~7_combout\,
	datac => \PWMtest|countactual1\(31),
	datad => \PWMtest|LessThan3~6_combout\,
	combout => \PWMtest|Selector40~0_combout\);

-- Location: LCCOMB_X54_Y37_N0
\PWMtest|Selector40~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Selector40~1_combout\ = (\PWMtest|Selector40~0_combout\) # ((\PWMtest|est_act.boost1~q\ & ((\PWMtest|LessThan6~62_combout\) # (\PWMtest|LessThan7~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|LessThan6~62_combout\,
	datab => \PWMtest|Selector40~0_combout\,
	datac => \PWMtest|est_act.boost1~q\,
	datad => \PWMtest|LessThan7~62_combout\,
	combout => \PWMtest|Selector40~1_combout\);

-- Location: FF_X54_Y37_N1
\PWMtest|est_act.boost1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|Selector40~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|est_act.boost1~q\);

-- Location: LCCOMB_X55_Y37_N14
\PWMtest|WideOr2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|WideOr2~0_combout\ = (!\PWMtest|est_act.boost1~q\ & !\PWMtest|est_act.boost2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWMtest|est_act.boost1~q\,
	datad => \PWMtest|est_act.boost2~q\,
	combout => \PWMtest|WideOr2~0_combout\);

-- Location: LCCOMB_X56_Y37_N24
\PWMtest|LessThan2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|LessThan2~3_combout\ = (\PWMtest|LessThan3~6_combout\ & (((\PWMtest|LessThan2~2_combout\ & \PWMtest|LessThan2~1_combout\)) # (!\PWMtest|countactual1\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|countactual1\(8),
	datab => \PWMtest|LessThan3~6_combout\,
	datac => \PWMtest|LessThan2~2_combout\,
	datad => \PWMtest|LessThan2~1_combout\,
	combout => \PWMtest|LessThan2~3_combout\);

-- Location: LCCOMB_X55_Y37_N8
\PWMtest|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Selector0~0_combout\ = ((!\PWMtest|countactual1[24]~32_combout\ & ((\PWMtest|countactual1\(31)) # (\PWMtest|LessThan2~3_combout\)))) # (!\PWMtest|WideOr2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|WideOr2~0_combout\,
	datab => \PWMtest|countactual1[24]~32_combout\,
	datac => \PWMtest|countactual1\(31),
	datad => \PWMtest|LessThan2~3_combout\,
	combout => \PWMtest|Selector0~0_combout\);

-- Location: FF_X55_Y37_N9
\PWMtest|PWM_H1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|Selector0~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|PWM_H1~q\);

-- Location: LCCOMB_X54_Y37_N24
\PWMtest|Selector1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Selector1~3_combout\ = (\PWMtest|LessThan0~62_combout\ & ((\PWMtest|est_act.boost1softs~q\) # (\PWMtest|est_act.buck1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|est_act.boost1softs~q\,
	datab => \PWMtest|est_act.buck1~q\,
	datad => \PWMtest|LessThan0~62_combout\,
	combout => \PWMtest|Selector1~3_combout\);

-- Location: FF_X54_Y37_N25
\PWMtest|PWM_L1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|Selector1~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|PWM_L1~q\);

-- Location: LCCOMB_X55_Y37_N20
\PWMtest|WideOr2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|WideOr2~1_combout\ = (!\PWMtest|est_act.boost1~q\ & (\PWMtest|est_act.idle~q\ & !\PWMtest|est_act.boost2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|est_act.boost1~q\,
	datac => \PWMtest|est_act.idle~q\,
	datad => \PWMtest|est_act.boost2~q\,
	combout => \PWMtest|WideOr2~1_combout\);

-- Location: LCCOMB_X55_Y37_N2
\PWMtest|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|Selector2~0_combout\ = (\PWMtest|WideOr2~1_combout\) # ((\PWMtest|est_act.boost2~q\ & ((\PWMtest|countactual1\(31)) # (\PWMtest|LessThan8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMtest|est_act.boost2~q\,
	datab => \PWMtest|countactual1\(31),
	datac => \PWMtest|LessThan8~0_combout\,
	datad => \PWMtest|WideOr2~1_combout\,
	combout => \PWMtest|Selector2~0_combout\);

-- Location: FF_X55_Y37_N3
\PWMtest|PWM_H2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|Selector2~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|PWM_H2~q\);

-- Location: LCCOMB_X54_Y37_N18
\PWMtest|PWM_L2_sig~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMtest|PWM_L2_sig~0_combout\ = (\PWMtest|est_act.boost1~q\ & \PWMtest|LessThan6~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWMtest|est_act.boost1~q\,
	datac => \PWMtest|LessThan6~62_combout\,
	combout => \PWMtest|PWM_L2_sig~0_combout\);

-- Location: FF_X54_Y37_N19
\PWMtest|PWM_L2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWMtest|PWM_L2_sig~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMtest|PWM_L2~q\);

-- Location: LCCOMB_X51_Y53_N0
\watchdog_test|countwdg_act[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \watchdog_test|countwdg_act[0]~32_combout\ = \watchdog_test|countwdg_act\(0) $ (VCC)
-- \watchdog_test|countwdg_act[0]~33\ = CARRY(\watchdog_test|countwdg_act\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \watchdog_test|countwdg_act\(0),
	datad => VCC,
	combout => \watchdog_test|countwdg_act[0]~32_combout\,
	cout => \watchdog_test|countwdg_act[0]~33\);

-- Location: IOIBUF_X56_Y54_N1
\wdg_reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wdg_reset,
	o => \wdg_reset~input_o\);

-- Location: LCCOMB_X50_Y53_N28
\watchdog_test|LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \watchdog_test|LessThan1~0_combout\ = ((!\watchdog_test|countwdg_act\(3) & ((!\watchdog_test|countwdg_act\(2)) # (!\watchdog_test|countwdg_act\(1))))) # (!\watchdog_test|countwdg_act\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \watchdog_test|countwdg_act\(1),
	datab => \watchdog_test|countwdg_act\(2),
	datac => \watchdog_test|countwdg_act\(4),
	datad => \watchdog_test|countwdg_act\(3),
	combout => \watchdog_test|LessThan1~0_combout\);

-- Location: LCCOMB_X50_Y53_N6
\watchdog_test|LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \watchdog_test|LessThan1~1_combout\ = (!\watchdog_test|countwdg_act\(5) & (!\watchdog_test|countwdg_act\(6) & (!\watchdog_test|countwdg_act\(7) & \watchdog_test|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \watchdog_test|countwdg_act\(5),
	datab => \watchdog_test|countwdg_act\(6),
	datac => \watchdog_test|countwdg_act\(7),
	datad => \watchdog_test|LessThan1~0_combout\,
	combout => \watchdog_test|LessThan1~1_combout\);

-- Location: LCCOMB_X51_Y52_N28
\watchdog_test|countwdg_act[30]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \watchdog_test|countwdg_act[30]~92_combout\ = (\watchdog_test|countwdg_act\(30) & (\watchdog_test|countwdg_act[29]~91\ $ (GND))) # (!\watchdog_test|countwdg_act\(30) & (!\watchdog_test|countwdg_act[29]~91\ & VCC))
-- \watchdog_test|countwdg_act[30]~93\ = CARRY((\watchdog_test|countwdg_act\(30) & !\watchdog_test|countwdg_act[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \watchdog_test|countwdg_act\(30),
	datad => VCC,
	cin => \watchdog_test|countwdg_act[29]~91\,
	combout => \watchdog_test|countwdg_act[30]~92_combout\,
	cout => \watchdog_test|countwdg_act[30]~93\);

-- Location: LCCOMB_X51_Y52_N30
\watchdog_test|countwdg_act[31]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \watchdog_test|countwdg_act[31]~94_combout\ = \watchdog_test|countwdg_act\(31) $ (\watchdog_test|countwdg_act[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \watchdog_test|countwdg_act\(31),
	cin => \watchdog_test|countwdg_act[30]~93\,
	combout => \watchdog_test|countwdg_act[31]~94_combout\);

-- Location: FF_X51_Y52_N31
\watchdog_test|countwdg_act[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \watchdog_test|countwdg_act[31]~94_combout\,
	clrn => \wdg_reset~input_o\,
	sclr => \watchdog_test|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \watchdog_test|countwdg_act\(31));

-- Location: LCCOMB_X50_Y53_N16
\watchdog_test|LessThan1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \watchdog_test|LessThan1~2_combout\ = (!\watchdog_test|countwdg_act\(31) & (((\watchdog_test|countwdg_act\(8) & !\watchdog_test|LessThan1~1_combout\)) # (!\watchdog_test|LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \watchdog_test|LessThan0~6_combout\,
	datab => \watchdog_test|countwdg_act\(8),
	datac => \watchdog_test|LessThan1~1_combout\,
	datad => \watchdog_test|countwdg_act\(31),
	combout => \watchdog_test|LessThan1~2_combout\);

-- Location: FF_X51_Y53_N1
\watchdog_test|countwdg_act[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \watchdog_test|countwdg_act[0]~32_combout\,
	clrn => \wdg_reset~input_o\,
	sclr => \watchdog_test|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \watchdog_test|countwdg_act\(0));

-- Location: LCCOMB_X51_Y53_N2
\watchdog_test|countwdg_act[1]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \watchdog_test|countwdg_act[1]~34_combout\ = (\watchdog_test|countwdg_act\(1) & (!\watchdog_test|countwdg_act[0]~33\)) # (!\watchdog_test|countwdg_act\(1) & ((\watchdog_test|countwdg_act[0]~33\) # (GND)))
-- \watchdog_test|countwdg_act[1]~35\ = CARRY((!\watchdog_test|countwdg_act[0]~33\) # (!\watchdog_test|countwdg_act\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \watchdog_test|countwdg_act\(1),
	datad => VCC,
	cin => \watchdog_test|countwdg_act[0]~33\,
	combout => \watchdog_test|countwdg_act[1]~34_combout\,
	cout => \watchdog_test|countwdg_act[1]~35\);

-- Location: FF_X51_Y53_N3
\watchdog_test|countwdg_act[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \watchdog_test|countwdg_act[1]~34_combout\,
	clrn => \wdg_reset~input_o\,
	sclr => \watchdog_test|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \watchdog_test|countwdg_act\(1));

-- Location: LCCOMB_X51_Y53_N4
\watchdog_test|countwdg_act[2]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \watchdog_test|countwdg_act[2]~36_combout\ = (\watchdog_test|countwdg_act\(2) & (\watchdog_test|countwdg_act[1]~35\ $ (GND))) # (!\watchdog_test|countwdg_act\(2) & (!\watchdog_test|countwdg_act[1]~35\ & VCC))
-- \watchdog_test|countwdg_act[2]~37\ = CARRY((\watchdog_test|countwdg_act\(2) & !\watchdog_test|countwdg_act[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \watchdog_test|countwdg_act\(2),
	datad => VCC,
	cin => \watchdog_test|countwdg_act[1]~35\,
	combout => \watchdog_test|countwdg_act[2]~36_combout\,
	cout => \watchdog_test|countwdg_act[2]~37\);

-- Location: FF_X51_Y53_N5
\watchdog_test|countwdg_act[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \watchdog_test|countwdg_act[2]~36_combout\,
	clrn => \wdg_reset~input_o\,
	sclr => \watchdog_test|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \watchdog_test|countwdg_act\(2));

-- Location: LCCOMB_X51_Y53_N6
\watchdog_test|countwdg_act[3]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \watchdog_test|countwdg_act[3]~38_combout\ = (\watchdog_test|countwdg_act\(3) & (!\watchdog_test|countwdg_act[2]~37\)) # (!\watchdog_test|countwdg_act\(3) & ((\watchdog_test|countwdg_act[2]~37\) # (GND)))
-- \watchdog_test|countwdg_act[3]~39\ = CARRY((!\watchdog_test|countwdg_act[2]~37\) # (!\watchdog_test|countwdg_act\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \watchdog_test|countwdg_act\(3),
	datad => VCC,
	cin => \watchdog_test|countwdg_act[2]~37\,
	combout => \watchdog_test|countwdg_act[3]~38_combout\,
	cout => \watchdog_test|countwdg_act[3]~39\);

-- Location: FF_X51_Y53_N7
\watchdog_test|countwdg_act[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \watchdog_test|countwdg_act[3]~38_combout\,
	clrn => \wdg_reset~input_o\,
	sclr => \watchdog_test|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \watchdog_test|countwdg_act\(3));

-- Location: LCCOMB_X51_Y53_N8
\watchdog_test|countwdg_act[4]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \watchdog_test|countwdg_act[4]~40_combout\ = (\watchdog_test|countwdg_act\(4) & (\watchdog_test|countwdg_act[3]~39\ $ (GND))) # (!\watchdog_test|countwdg_act\(4) & (!\watchdog_test|countwdg_act[3]~39\ & VCC))
-- \watchdog_test|countwdg_act[4]~41\ = CARRY((\watchdog_test|countwdg_act\(4) & !\watchdog_test|countwdg_act[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \watchdog_test|countwdg_act\(4),
	datad => VCC,
	cin => \watchdog_test|countwdg_act[3]~39\,
	combout => \watchdog_test|countwdg_act[4]~40_combout\,
	cout => \watchdog_test|countwdg_act[4]~41\);

-- Location: FF_X51_Y53_N9
\watchdog_test|countwdg_act[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \watchdog_test|countwdg_act[4]~40_combout\,
	clrn => \wdg_reset~input_o\,
	sclr => \watchdog_test|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \watchdog_test|countwdg_act\(4));

-- Location: LCCOMB_X51_Y53_N10
\watchdog_test|countwdg_act[5]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \watchdog_test|countwdg_act[5]~42_combout\ = (\watchdog_test|countwdg_act\(5) & (!\watchdog_test|countwdg_act[4]~41\)) # (!\watchdog_test|countwdg_act\(5) & ((\watchdog_test|countwdg_act[4]~41\) # (GND)))
-- \watchdog_test|countwdg_act[5]~43\ = CARRY((!\watchdog_test|countwdg_act[4]~41\) # (!\watchdog_test|countwdg_act\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \watchdog_test|countwdg_act\(5),
	datad => VCC,
	cin => \watchdog_test|countwdg_act[4]~41\,
	combout => \watchdog_test|countwdg_act[5]~42_combout\,
	cout => \watchdog_test|countwdg_act[5]~43\);

-- Location: FF_X51_Y53_N11
\watchdog_test|countwdg_act[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \watchdog_test|countwdg_act[5]~42_combout\,
	clrn => \wdg_reset~input_o\,
	sclr => \watchdog_test|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \watchdog_test|countwdg_act\(5));

-- Location: LCCOMB_X51_Y53_N12
\watchdog_test|countwdg_act[6]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \watchdog_test|countwdg_act[6]~44_combout\ = (\watchdog_test|countwdg_act\(6) & (\watchdog_test|countwdg_act[5]~43\ $ (GND))) # (!\watchdog_test|countwdg_act\(6) & (!\watchdog_test|countwdg_act[5]~43\ & VCC))
-- \watchdog_test|countwdg_act[6]~45\ = CARRY((\watchdog_test|countwdg_act\(6) & !\watchdog_test|countwdg_act[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \watchdog_test|countwdg_act\(6),
	datad => VCC,
	cin => \watchdog_test|countwdg_act[5]~43\,
	combout => \watchdog_test|countwdg_act[6]~44_combout\,
	cout => \watchdog_test|countwdg_act[6]~45\);

-- Location: FF_X51_Y53_N13
\watchdog_test|countwdg_act[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \watchdog_test|countwdg_act[6]~44_combout\,
	clrn => \wdg_reset~input_o\,
	sclr => \watchdog_test|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \watchdog_test|countwdg_act\(6));

-- Location: LCCOMB_X51_Y53_N14
\watchdog_test|countwdg_act[7]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \watchdog_test|countwdg_act[7]~46_combout\ = (\watchdog_test|countwdg_act\(7) & (!\watchdog_test|countwdg_act[6]~45\)) # (!\watchdog_test|countwdg_act\(7) & ((\watchdog_test|countwdg_act[6]~45\) # (GND)))
-- \watchdog_test|countwdg_act[7]~47\ = CARRY((!\watchdog_test|countwdg_act[6]~45\) # (!\watchdog_test|countwdg_act\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \watchdog_test|countwdg_act\(7),
	datad => VCC,
	cin => \watchdog_test|countwdg_act[6]~45\,
	combout => \watchdog_test|countwdg_act[7]~46_combout\,
	cout => \watchdog_test|countwdg_act[7]~47\);

-- Location: FF_X51_Y53_N15
\watchdog_test|countwdg_act[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \watchdog_test|countwdg_act[7]~46_combout\,
	clrn => \wdg_reset~input_o\,
	sclr => \watchdog_test|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \watchdog_test|countwdg_act\(7));

-- Location: LCCOMB_X51_Y53_N16
\watchdog_test|countwdg_act[8]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \watchdog_test|countwdg_act[8]~48_combout\ = (\watchdog_test|countwdg_act\(8) & (\watchdog_test|countwdg_act[7]~47\ $ (GND))) # (!\watchdog_test|countwdg_act\(8) & (!\watchdog_test|countwdg_act[7]~47\ & VCC))
-- \watchdog_test|countwdg_act[8]~49\ = CARRY((\watchdog_test|countwdg_act\(8) & !\watchdog_test|countwdg_act[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \watchdog_test|countwdg_act\(8),
	datad => VCC,
	cin => \watchdog_test|countwdg_act[7]~47\,
	combout => \watchdog_test|countwdg_act[8]~48_combout\,
	cout => \watchdog_test|countwdg_act[8]~49\);

-- Location: FF_X51_Y53_N17
\watchdog_test|countwdg_act[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \watchdog_test|countwdg_act[8]~48_combout\,
	clrn => \wdg_reset~input_o\,
	sclr => \watchdog_test|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \watchdog_test|countwdg_act\(8));

-- Location: LCCOMB_X51_Y53_N18
\watchdog_test|countwdg_act[9]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \watchdog_test|countwdg_act[9]~50_combout\ = (\watchdog_test|countwdg_act\(9) & (!\watchdog_test|countwdg_act[8]~49\)) # (!\watchdog_test|countwdg_act\(9) & ((\watchdog_test|countwdg_act[8]~49\) # (GND)))
-- \watchdog_test|countwdg_act[9]~51\ = CARRY((!\watchdog_test|countwdg_act[8]~49\) # (!\watchdog_test|countwdg_act\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \watchdog_test|countwdg_act\(9),
	datad => VCC,
	cin => \watchdog_test|countwdg_act[8]~49\,
	combout => \watchdog_test|countwdg_act[9]~50_combout\,
	cout => \watchdog_test|countwdg_act[9]~51\);

-- Location: FF_X51_Y53_N19
\watchdog_test|countwdg_act[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \watchdog_test|countwdg_act[9]~50_combout\,
	clrn => \wdg_reset~input_o\,
	sclr => \watchdog_test|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \watchdog_test|countwdg_act\(9));

-- Location: LCCOMB_X51_Y53_N20
\watchdog_test|countwdg_act[10]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \watchdog_test|countwdg_act[10]~52_combout\ = (\watchdog_test|countwdg_act\(10) & (\watchdog_test|countwdg_act[9]~51\ $ (GND))) # (!\watchdog_test|countwdg_act\(10) & (!\watchdog_test|countwdg_act[9]~51\ & VCC))
-- \watchdog_test|countwdg_act[10]~53\ = CARRY((\watchdog_test|countwdg_act\(10) & !\watchdog_test|countwdg_act[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \watchdog_test|countwdg_act\(10),
	datad => VCC,
	cin => \watchdog_test|countwdg_act[9]~51\,
	combout => \watchdog_test|countwdg_act[10]~52_combout\,
	cout => \watchdog_test|countwdg_act[10]~53\);

-- Location: FF_X51_Y53_N21
\watchdog_test|countwdg_act[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \watchdog_test|countwdg_act[10]~52_combout\,
	clrn => \wdg_reset~input_o\,
	sclr => \watchdog_test|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \watchdog_test|countwdg_act\(10));

-- Location: LCCOMB_X51_Y53_N22
\watchdog_test|countwdg_act[11]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \watchdog_test|countwdg_act[11]~54_combout\ = (\watchdog_test|countwdg_act\(11) & (!\watchdog_test|countwdg_act[10]~53\)) # (!\watchdog_test|countwdg_act\(11) & ((\watchdog_test|countwdg_act[10]~53\) # (GND)))
-- \watchdog_test|countwdg_act[11]~55\ = CARRY((!\watchdog_test|countwdg_act[10]~53\) # (!\watchdog_test|countwdg_act\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \watchdog_test|countwdg_act\(11),
	datad => VCC,
	cin => \watchdog_test|countwdg_act[10]~53\,
	combout => \watchdog_test|countwdg_act[11]~54_combout\,
	cout => \watchdog_test|countwdg_act[11]~55\);

-- Location: FF_X51_Y53_N23
\watchdog_test|countwdg_act[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \watchdog_test|countwdg_act[11]~54_combout\,
	clrn => \wdg_reset~input_o\,
	sclr => \watchdog_test|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \watchdog_test|countwdg_act\(11));

-- Location: LCCOMB_X51_Y53_N24
\watchdog_test|countwdg_act[12]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \watchdog_test|countwdg_act[12]~56_combout\ = (\watchdog_test|countwdg_act\(12) & (\watchdog_test|countwdg_act[11]~55\ $ (GND))) # (!\watchdog_test|countwdg_act\(12) & (!\watchdog_test|countwdg_act[11]~55\ & VCC))
-- \watchdog_test|countwdg_act[12]~57\ = CARRY((\watchdog_test|countwdg_act\(12) & !\watchdog_test|countwdg_act[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \watchdog_test|countwdg_act\(12),
	datad => VCC,
	cin => \watchdog_test|countwdg_act[11]~55\,
	combout => \watchdog_test|countwdg_act[12]~56_combout\,
	cout => \watchdog_test|countwdg_act[12]~57\);

-- Location: FF_X51_Y53_N25
\watchdog_test|countwdg_act[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \watchdog_test|countwdg_act[12]~56_combout\,
	clrn => \wdg_reset~input_o\,
	sclr => \watchdog_test|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \watchdog_test|countwdg_act\(12));

-- Location: LCCOMB_X51_Y53_N26
\watchdog_test|countwdg_act[13]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \watchdog_test|countwdg_act[13]~58_combout\ = (\watchdog_test|countwdg_act\(13) & (!\watchdog_test|countwdg_act[12]~57\)) # (!\watchdog_test|countwdg_act\(13) & ((\watchdog_test|countwdg_act[12]~57\) # (GND)))
-- \watchdog_test|countwdg_act[13]~59\ = CARRY((!\watchdog_test|countwdg_act[12]~57\) # (!\watchdog_test|countwdg_act\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \watchdog_test|countwdg_act\(13),
	datad => VCC,
	cin => \watchdog_test|countwdg_act[12]~57\,
	combout => \watchdog_test|countwdg_act[13]~58_combout\,
	cout => \watchdog_test|countwdg_act[13]~59\);

-- Location: FF_X51_Y53_N27
\watchdog_test|countwdg_act[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \watchdog_test|countwdg_act[13]~58_combout\,
	clrn => \wdg_reset~input_o\,
	sclr => \watchdog_test|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \watchdog_test|countwdg_act\(13));

-- Location: LCCOMB_X51_Y53_N28
\watchdog_test|countwdg_act[14]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \watchdog_test|countwdg_act[14]~60_combout\ = (\watchdog_test|countwdg_act\(14) & (\watchdog_test|countwdg_act[13]~59\ $ (GND))) # (!\watchdog_test|countwdg_act\(14) & (!\watchdog_test|countwdg_act[13]~59\ & VCC))
-- \watchdog_test|countwdg_act[14]~61\ = CARRY((\watchdog_test|countwdg_act\(14) & !\watchdog_test|countwdg_act[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \watchdog_test|countwdg_act\(14),
	datad => VCC,
	cin => \watchdog_test|countwdg_act[13]~59\,
	combout => \watchdog_test|countwdg_act[14]~60_combout\,
	cout => \watchdog_test|countwdg_act[14]~61\);

-- Location: FF_X51_Y53_N29
\watchdog_test|countwdg_act[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \watchdog_test|countwdg_act[14]~60_combout\,
	clrn => \wdg_reset~input_o\,
	sclr => \watchdog_test|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \watchdog_test|countwdg_act\(14));

-- Location: LCCOMB_X51_Y53_N30
\watchdog_test|countwdg_act[15]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \watchdog_test|countwdg_act[15]~62_combout\ = (\watchdog_test|countwdg_act\(15) & (!\watchdog_test|countwdg_act[14]~61\)) # (!\watchdog_test|countwdg_act\(15) & ((\watchdog_test|countwdg_act[14]~61\) # (GND)))
-- \watchdog_test|countwdg_act[15]~63\ = CARRY((!\watchdog_test|countwdg_act[14]~61\) # (!\watchdog_test|countwdg_act\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \watchdog_test|countwdg_act\(15),
	datad => VCC,
	cin => \watchdog_test|countwdg_act[14]~61\,
	combout => \watchdog_test|countwdg_act[15]~62_combout\,
	cout => \watchdog_test|countwdg_act[15]~63\);

-- Location: FF_X51_Y53_N31
\watchdog_test|countwdg_act[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \watchdog_test|countwdg_act[15]~62_combout\,
	clrn => \wdg_reset~input_o\,
	sclr => \watchdog_test|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \watchdog_test|countwdg_act\(15));

-- Location: LCCOMB_X51_Y52_N0
\watchdog_test|countwdg_act[16]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \watchdog_test|countwdg_act[16]~64_combout\ = (\watchdog_test|countwdg_act\(16) & (\watchdog_test|countwdg_act[15]~63\ $ (GND))) # (!\watchdog_test|countwdg_act\(16) & (!\watchdog_test|countwdg_act[15]~63\ & VCC))
-- \watchdog_test|countwdg_act[16]~65\ = CARRY((\watchdog_test|countwdg_act\(16) & !\watchdog_test|countwdg_act[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \watchdog_test|countwdg_act\(16),
	datad => VCC,
	cin => \watchdog_test|countwdg_act[15]~63\,
	combout => \watchdog_test|countwdg_act[16]~64_combout\,
	cout => \watchdog_test|countwdg_act[16]~65\);

-- Location: FF_X51_Y52_N1
\watchdog_test|countwdg_act[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \watchdog_test|countwdg_act[16]~64_combout\,
	clrn => \wdg_reset~input_o\,
	sclr => \watchdog_test|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \watchdog_test|countwdg_act\(16));

-- Location: LCCOMB_X51_Y52_N2
\watchdog_test|countwdg_act[17]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \watchdog_test|countwdg_act[17]~66_combout\ = (\watchdog_test|countwdg_act\(17) & (!\watchdog_test|countwdg_act[16]~65\)) # (!\watchdog_test|countwdg_act\(17) & ((\watchdog_test|countwdg_act[16]~65\) # (GND)))
-- \watchdog_test|countwdg_act[17]~67\ = CARRY((!\watchdog_test|countwdg_act[16]~65\) # (!\watchdog_test|countwdg_act\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \watchdog_test|countwdg_act\(17),
	datad => VCC,
	cin => \watchdog_test|countwdg_act[16]~65\,
	combout => \watchdog_test|countwdg_act[17]~66_combout\,
	cout => \watchdog_test|countwdg_act[17]~67\);

-- Location: FF_X51_Y52_N3
\watchdog_test|countwdg_act[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \watchdog_test|countwdg_act[17]~66_combout\,
	clrn => \wdg_reset~input_o\,
	sclr => \watchdog_test|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \watchdog_test|countwdg_act\(17));

-- Location: LCCOMB_X51_Y52_N4
\watchdog_test|countwdg_act[18]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \watchdog_test|countwdg_act[18]~68_combout\ = (\watchdog_test|countwdg_act\(18) & (\watchdog_test|countwdg_act[17]~67\ $ (GND))) # (!\watchdog_test|countwdg_act\(18) & (!\watchdog_test|countwdg_act[17]~67\ & VCC))
-- \watchdog_test|countwdg_act[18]~69\ = CARRY((\watchdog_test|countwdg_act\(18) & !\watchdog_test|countwdg_act[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \watchdog_test|countwdg_act\(18),
	datad => VCC,
	cin => \watchdog_test|countwdg_act[17]~67\,
	combout => \watchdog_test|countwdg_act[18]~68_combout\,
	cout => \watchdog_test|countwdg_act[18]~69\);

-- Location: FF_X51_Y52_N5
\watchdog_test|countwdg_act[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \watchdog_test|countwdg_act[18]~68_combout\,
	clrn => \wdg_reset~input_o\,
	sclr => \watchdog_test|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \watchdog_test|countwdg_act\(18));

-- Location: LCCOMB_X51_Y52_N6
\watchdog_test|countwdg_act[19]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \watchdog_test|countwdg_act[19]~70_combout\ = (\watchdog_test|countwdg_act\(19) & (!\watchdog_test|countwdg_act[18]~69\)) # (!\watchdog_test|countwdg_act\(19) & ((\watchdog_test|countwdg_act[18]~69\) # (GND)))
-- \watchdog_test|countwdg_act[19]~71\ = CARRY((!\watchdog_test|countwdg_act[18]~69\) # (!\watchdog_test|countwdg_act\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \watchdog_test|countwdg_act\(19),
	datad => VCC,
	cin => \watchdog_test|countwdg_act[18]~69\,
	combout => \watchdog_test|countwdg_act[19]~70_combout\,
	cout => \watchdog_test|countwdg_act[19]~71\);

-- Location: FF_X51_Y52_N7
\watchdog_test|countwdg_act[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \watchdog_test|countwdg_act[19]~70_combout\,
	clrn => \wdg_reset~input_o\,
	sclr => \watchdog_test|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \watchdog_test|countwdg_act\(19));

-- Location: LCCOMB_X51_Y52_N8
\watchdog_test|countwdg_act[20]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \watchdog_test|countwdg_act[20]~72_combout\ = (\watchdog_test|countwdg_act\(20) & (\watchdog_test|countwdg_act[19]~71\ $ (GND))) # (!\watchdog_test|countwdg_act\(20) & (!\watchdog_test|countwdg_act[19]~71\ & VCC))
-- \watchdog_test|countwdg_act[20]~73\ = CARRY((\watchdog_test|countwdg_act\(20) & !\watchdog_test|countwdg_act[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \watchdog_test|countwdg_act\(20),
	datad => VCC,
	cin => \watchdog_test|countwdg_act[19]~71\,
	combout => \watchdog_test|countwdg_act[20]~72_combout\,
	cout => \watchdog_test|countwdg_act[20]~73\);

-- Location: FF_X51_Y52_N9
\watchdog_test|countwdg_act[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \watchdog_test|countwdg_act[20]~72_combout\,
	clrn => \wdg_reset~input_o\,
	sclr => \watchdog_test|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \watchdog_test|countwdg_act\(20));

-- Location: LCCOMB_X51_Y52_N10
\watchdog_test|countwdg_act[21]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \watchdog_test|countwdg_act[21]~74_combout\ = (\watchdog_test|countwdg_act\(21) & (!\watchdog_test|countwdg_act[20]~73\)) # (!\watchdog_test|countwdg_act\(21) & ((\watchdog_test|countwdg_act[20]~73\) # (GND)))
-- \watchdog_test|countwdg_act[21]~75\ = CARRY((!\watchdog_test|countwdg_act[20]~73\) # (!\watchdog_test|countwdg_act\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \watchdog_test|countwdg_act\(21),
	datad => VCC,
	cin => \watchdog_test|countwdg_act[20]~73\,
	combout => \watchdog_test|countwdg_act[21]~74_combout\,
	cout => \watchdog_test|countwdg_act[21]~75\);

-- Location: FF_X51_Y52_N11
\watchdog_test|countwdg_act[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \watchdog_test|countwdg_act[21]~74_combout\,
	clrn => \wdg_reset~input_o\,
	sclr => \watchdog_test|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \watchdog_test|countwdg_act\(21));

-- Location: LCCOMB_X51_Y52_N12
\watchdog_test|countwdg_act[22]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \watchdog_test|countwdg_act[22]~76_combout\ = (\watchdog_test|countwdg_act\(22) & (\watchdog_test|countwdg_act[21]~75\ $ (GND))) # (!\watchdog_test|countwdg_act\(22) & (!\watchdog_test|countwdg_act[21]~75\ & VCC))
-- \watchdog_test|countwdg_act[22]~77\ = CARRY((\watchdog_test|countwdg_act\(22) & !\watchdog_test|countwdg_act[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \watchdog_test|countwdg_act\(22),
	datad => VCC,
	cin => \watchdog_test|countwdg_act[21]~75\,
	combout => \watchdog_test|countwdg_act[22]~76_combout\,
	cout => \watchdog_test|countwdg_act[22]~77\);

-- Location: FF_X51_Y52_N13
\watchdog_test|countwdg_act[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \watchdog_test|countwdg_act[22]~76_combout\,
	clrn => \wdg_reset~input_o\,
	sclr => \watchdog_test|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \watchdog_test|countwdg_act\(22));

-- Location: LCCOMB_X51_Y52_N14
\watchdog_test|countwdg_act[23]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \watchdog_test|countwdg_act[23]~78_combout\ = (\watchdog_test|countwdg_act\(23) & (!\watchdog_test|countwdg_act[22]~77\)) # (!\watchdog_test|countwdg_act\(23) & ((\watchdog_test|countwdg_act[22]~77\) # (GND)))
-- \watchdog_test|countwdg_act[23]~79\ = CARRY((!\watchdog_test|countwdg_act[22]~77\) # (!\watchdog_test|countwdg_act\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \watchdog_test|countwdg_act\(23),
	datad => VCC,
	cin => \watchdog_test|countwdg_act[22]~77\,
	combout => \watchdog_test|countwdg_act[23]~78_combout\,
	cout => \watchdog_test|countwdg_act[23]~79\);

-- Location: FF_X51_Y52_N15
\watchdog_test|countwdg_act[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \watchdog_test|countwdg_act[23]~78_combout\,
	clrn => \wdg_reset~input_o\,
	sclr => \watchdog_test|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \watchdog_test|countwdg_act\(23));

-- Location: LCCOMB_X51_Y52_N16
\watchdog_test|countwdg_act[24]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \watchdog_test|countwdg_act[24]~80_combout\ = (\watchdog_test|countwdg_act\(24) & (\watchdog_test|countwdg_act[23]~79\ $ (GND))) # (!\watchdog_test|countwdg_act\(24) & (!\watchdog_test|countwdg_act[23]~79\ & VCC))
-- \watchdog_test|countwdg_act[24]~81\ = CARRY((\watchdog_test|countwdg_act\(24) & !\watchdog_test|countwdg_act[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \watchdog_test|countwdg_act\(24),
	datad => VCC,
	cin => \watchdog_test|countwdg_act[23]~79\,
	combout => \watchdog_test|countwdg_act[24]~80_combout\,
	cout => \watchdog_test|countwdg_act[24]~81\);

-- Location: FF_X51_Y52_N17
\watchdog_test|countwdg_act[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \watchdog_test|countwdg_act[24]~80_combout\,
	clrn => \wdg_reset~input_o\,
	sclr => \watchdog_test|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \watchdog_test|countwdg_act\(24));

-- Location: LCCOMB_X51_Y52_N18
\watchdog_test|countwdg_act[25]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \watchdog_test|countwdg_act[25]~82_combout\ = (\watchdog_test|countwdg_act\(25) & (!\watchdog_test|countwdg_act[24]~81\)) # (!\watchdog_test|countwdg_act\(25) & ((\watchdog_test|countwdg_act[24]~81\) # (GND)))
-- \watchdog_test|countwdg_act[25]~83\ = CARRY((!\watchdog_test|countwdg_act[24]~81\) # (!\watchdog_test|countwdg_act\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \watchdog_test|countwdg_act\(25),
	datad => VCC,
	cin => \watchdog_test|countwdg_act[24]~81\,
	combout => \watchdog_test|countwdg_act[25]~82_combout\,
	cout => \watchdog_test|countwdg_act[25]~83\);

-- Location: FF_X51_Y52_N19
\watchdog_test|countwdg_act[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \watchdog_test|countwdg_act[25]~82_combout\,
	clrn => \wdg_reset~input_o\,
	sclr => \watchdog_test|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \watchdog_test|countwdg_act\(25));

-- Location: LCCOMB_X51_Y52_N20
\watchdog_test|countwdg_act[26]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \watchdog_test|countwdg_act[26]~84_combout\ = (\watchdog_test|countwdg_act\(26) & (\watchdog_test|countwdg_act[25]~83\ $ (GND))) # (!\watchdog_test|countwdg_act\(26) & (!\watchdog_test|countwdg_act[25]~83\ & VCC))
-- \watchdog_test|countwdg_act[26]~85\ = CARRY((\watchdog_test|countwdg_act\(26) & !\watchdog_test|countwdg_act[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \watchdog_test|countwdg_act\(26),
	datad => VCC,
	cin => \watchdog_test|countwdg_act[25]~83\,
	combout => \watchdog_test|countwdg_act[26]~84_combout\,
	cout => \watchdog_test|countwdg_act[26]~85\);

-- Location: FF_X51_Y52_N21
\watchdog_test|countwdg_act[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \watchdog_test|countwdg_act[26]~84_combout\,
	clrn => \wdg_reset~input_o\,
	sclr => \watchdog_test|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \watchdog_test|countwdg_act\(26));

-- Location: LCCOMB_X51_Y52_N22
\watchdog_test|countwdg_act[27]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \watchdog_test|countwdg_act[27]~86_combout\ = (\watchdog_test|countwdg_act\(27) & (!\watchdog_test|countwdg_act[26]~85\)) # (!\watchdog_test|countwdg_act\(27) & ((\watchdog_test|countwdg_act[26]~85\) # (GND)))
-- \watchdog_test|countwdg_act[27]~87\ = CARRY((!\watchdog_test|countwdg_act[26]~85\) # (!\watchdog_test|countwdg_act\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \watchdog_test|countwdg_act\(27),
	datad => VCC,
	cin => \watchdog_test|countwdg_act[26]~85\,
	combout => \watchdog_test|countwdg_act[27]~86_combout\,
	cout => \watchdog_test|countwdg_act[27]~87\);

-- Location: FF_X51_Y52_N23
\watchdog_test|countwdg_act[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \watchdog_test|countwdg_act[27]~86_combout\,
	clrn => \wdg_reset~input_o\,
	sclr => \watchdog_test|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \watchdog_test|countwdg_act\(27));

-- Location: LCCOMB_X51_Y52_N24
\watchdog_test|countwdg_act[28]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \watchdog_test|countwdg_act[28]~88_combout\ = (\watchdog_test|countwdg_act\(28) & (\watchdog_test|countwdg_act[27]~87\ $ (GND))) # (!\watchdog_test|countwdg_act\(28) & (!\watchdog_test|countwdg_act[27]~87\ & VCC))
-- \watchdog_test|countwdg_act[28]~89\ = CARRY((\watchdog_test|countwdg_act\(28) & !\watchdog_test|countwdg_act[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \watchdog_test|countwdg_act\(28),
	datad => VCC,
	cin => \watchdog_test|countwdg_act[27]~87\,
	combout => \watchdog_test|countwdg_act[28]~88_combout\,
	cout => \watchdog_test|countwdg_act[28]~89\);

-- Location: FF_X51_Y52_N25
\watchdog_test|countwdg_act[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \watchdog_test|countwdg_act[28]~88_combout\,
	clrn => \wdg_reset~input_o\,
	sclr => \watchdog_test|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \watchdog_test|countwdg_act\(28));

-- Location: LCCOMB_X51_Y52_N26
\watchdog_test|countwdg_act[29]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \watchdog_test|countwdg_act[29]~90_combout\ = (\watchdog_test|countwdg_act\(29) & (!\watchdog_test|countwdg_act[28]~89\)) # (!\watchdog_test|countwdg_act\(29) & ((\watchdog_test|countwdg_act[28]~89\) # (GND)))
-- \watchdog_test|countwdg_act[29]~91\ = CARRY((!\watchdog_test|countwdg_act[28]~89\) # (!\watchdog_test|countwdg_act\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \watchdog_test|countwdg_act\(29),
	datad => VCC,
	cin => \watchdog_test|countwdg_act[28]~89\,
	combout => \watchdog_test|countwdg_act[29]~90_combout\,
	cout => \watchdog_test|countwdg_act[29]~91\);

-- Location: FF_X51_Y52_N27
\watchdog_test|countwdg_act[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \watchdog_test|countwdg_act[29]~90_combout\,
	clrn => \wdg_reset~input_o\,
	sclr => \watchdog_test|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \watchdog_test|countwdg_act\(29));

-- Location: FF_X51_Y52_N29
\watchdog_test|countwdg_act[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \watchdog_test|countwdg_act[30]~92_combout\,
	clrn => \wdg_reset~input_o\,
	sclr => \watchdog_test|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \watchdog_test|countwdg_act\(30));

-- Location: LCCOMB_X50_Y53_N26
\watchdog_test|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \watchdog_test|LessThan0~1_combout\ = (!\watchdog_test|countwdg_act\(13) & (!\watchdog_test|countwdg_act\(16) & (!\watchdog_test|countwdg_act\(15) & !\watchdog_test|countwdg_act\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \watchdog_test|countwdg_act\(13),
	datab => \watchdog_test|countwdg_act\(16),
	datac => \watchdog_test|countwdg_act\(15),
	datad => \watchdog_test|countwdg_act\(14),
	combout => \watchdog_test|LessThan0~1_combout\);

-- Location: LCCOMB_X50_Y53_N8
\watchdog_test|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \watchdog_test|LessThan0~0_combout\ = (!\watchdog_test|countwdg_act\(9) & (!\watchdog_test|countwdg_act\(12) & (!\watchdog_test|countwdg_act\(10) & !\watchdog_test|countwdg_act\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \watchdog_test|countwdg_act\(9),
	datab => \watchdog_test|countwdg_act\(12),
	datac => \watchdog_test|countwdg_act\(10),
	datad => \watchdog_test|countwdg_act\(11),
	combout => \watchdog_test|LessThan0~0_combout\);

-- Location: LCCOMB_X50_Y53_N22
\watchdog_test|LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \watchdog_test|LessThan0~3_combout\ = (!\watchdog_test|countwdg_act\(22) & (!\watchdog_test|countwdg_act\(23) & (!\watchdog_test|countwdg_act\(21) & !\watchdog_test|countwdg_act\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \watchdog_test|countwdg_act\(22),
	datab => \watchdog_test|countwdg_act\(23),
	datac => \watchdog_test|countwdg_act\(21),
	datad => \watchdog_test|countwdg_act\(24),
	combout => \watchdog_test|LessThan0~3_combout\);

-- Location: LCCOMB_X50_Y53_N20
\watchdog_test|LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \watchdog_test|LessThan0~2_combout\ = (!\watchdog_test|countwdg_act\(17) & (!\watchdog_test|countwdg_act\(18) & (!\watchdog_test|countwdg_act\(20) & !\watchdog_test|countwdg_act\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \watchdog_test|countwdg_act\(17),
	datab => \watchdog_test|countwdg_act\(18),
	datac => \watchdog_test|countwdg_act\(20),
	datad => \watchdog_test|countwdg_act\(19),
	combout => \watchdog_test|LessThan0~2_combout\);

-- Location: LCCOMB_X50_Y53_N24
\watchdog_test|LessThan0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \watchdog_test|LessThan0~4_combout\ = (\watchdog_test|LessThan0~1_combout\ & (\watchdog_test|LessThan0~0_combout\ & (\watchdog_test|LessThan0~3_combout\ & \watchdog_test|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \watchdog_test|LessThan0~1_combout\,
	datab => \watchdog_test|LessThan0~0_combout\,
	datac => \watchdog_test|LessThan0~3_combout\,
	datad => \watchdog_test|LessThan0~2_combout\,
	combout => \watchdog_test|LessThan0~4_combout\);

-- Location: LCCOMB_X51_Y49_N16
\watchdog_test|LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \watchdog_test|LessThan0~5_combout\ = (!\watchdog_test|countwdg_act\(26) & (!\watchdog_test|countwdg_act\(27) & (!\watchdog_test|countwdg_act\(25) & !\watchdog_test|countwdg_act\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \watchdog_test|countwdg_act\(26),
	datab => \watchdog_test|countwdg_act\(27),
	datac => \watchdog_test|countwdg_act\(25),
	datad => \watchdog_test|countwdg_act\(28),
	combout => \watchdog_test|LessThan0~5_combout\);

-- Location: LCCOMB_X50_Y53_N10
\watchdog_test|LessThan0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \watchdog_test|LessThan0~6_combout\ = (!\watchdog_test|countwdg_act\(30) & (\watchdog_test|LessThan0~4_combout\ & (\watchdog_test|LessThan0~5_combout\ & !\watchdog_test|countwdg_act\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \watchdog_test|countwdg_act\(30),
	datab => \watchdog_test|LessThan0~4_combout\,
	datac => \watchdog_test|LessThan0~5_combout\,
	datad => \watchdog_test|countwdg_act\(29),
	combout => \watchdog_test|LessThan0~6_combout\);

-- Location: LCCOMB_X50_Y53_N30
\watchdog_test|LessThan0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \watchdog_test|LessThan0~8_combout\ = (!\watchdog_test|countwdg_act\(6) & (!\watchdog_test|countwdg_act\(4) & !\watchdog_test|countwdg_act\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \watchdog_test|countwdg_act\(6),
	datac => \watchdog_test|countwdg_act\(4),
	datad => \watchdog_test|countwdg_act\(5),
	combout => \watchdog_test|LessThan0~8_combout\);

-- Location: LCCOMB_X50_Y53_N12
\watchdog_test|LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \watchdog_test|LessThan0~7_combout\ = ((!\watchdog_test|countwdg_act\(2) & ((!\watchdog_test|countwdg_act\(0)) # (!\watchdog_test|countwdg_act\(1))))) # (!\watchdog_test|countwdg_act\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \watchdog_test|countwdg_act\(1),
	datab => \watchdog_test|countwdg_act\(2),
	datac => \watchdog_test|countwdg_act\(0),
	datad => \watchdog_test|countwdg_act\(3),
	combout => \watchdog_test|LessThan0~7_combout\);

-- Location: LCCOMB_X50_Y53_N0
\watchdog_test|LessThan0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \watchdog_test|LessThan0~9_combout\ = ((\watchdog_test|LessThan0~8_combout\ & \watchdog_test|LessThan0~7_combout\)) # (!\watchdog_test|countwdg_act\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \watchdog_test|LessThan0~8_combout\,
	datac => \watchdog_test|countwdg_act\(7),
	datad => \watchdog_test|LessThan0~7_combout\,
	combout => \watchdog_test|LessThan0~9_combout\);

-- Location: LCCOMB_X50_Y53_N18
\watchdog_test|LessThan0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \watchdog_test|LessThan0~10_combout\ = (\watchdog_test|countwdg_act\(31)) # ((\watchdog_test|LessThan0~6_combout\ & (\watchdog_test|LessThan0~9_combout\ & !\watchdog_test|countwdg_act\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \watchdog_test|LessThan0~6_combout\,
	datab => \watchdog_test|countwdg_act\(31),
	datac => \watchdog_test|LessThan0~9_combout\,
	datad => \watchdog_test|countwdg_act\(8),
	combout => \watchdog_test|LessThan0~10_combout\);

-- Location: IOIBUF_X54_Y54_N15
\set_btn~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_set_btn,
	o => \set_btn~input_o\);

-- Location: LCCOMB_X46_Y23_N14
\set_reset_test|countset_act[0]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_reset_test|countset_act[0]~19_combout\ = \set_reset_test|countset_act\(0) $ (VCC)
-- \set_reset_test|countset_act[0]~20\ = CARRY(\set_reset_test|countset_act\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \set_reset_test|countset_act\(0),
	datad => VCC,
	combout => \set_reset_test|countset_act[0]~19_combout\,
	cout => \set_reset_test|countset_act[0]~20\);

-- Location: FF_X46_Y23_N15
\set_reset_test|countset_act[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \set_reset_test|countset_act[0]~19_combout\,
	sclr => \set_reset_test|ALT_INV_set_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \set_reset_test|countset_act\(0));

-- Location: LCCOMB_X46_Y23_N16
\set_reset_test|countset_act[1]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_reset_test|countset_act[1]~21_combout\ = (\set_reset_test|countset_act\(1) & (!\set_reset_test|countset_act[0]~20\)) # (!\set_reset_test|countset_act\(1) & ((\set_reset_test|countset_act[0]~20\) # (GND)))
-- \set_reset_test|countset_act[1]~22\ = CARRY((!\set_reset_test|countset_act[0]~20\) # (!\set_reset_test|countset_act\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \set_reset_test|countset_act\(1),
	datad => VCC,
	cin => \set_reset_test|countset_act[0]~20\,
	combout => \set_reset_test|countset_act[1]~21_combout\,
	cout => \set_reset_test|countset_act[1]~22\);

-- Location: FF_X46_Y23_N17
\set_reset_test|countset_act[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \set_reset_test|countset_act[1]~21_combout\,
	sclr => \set_reset_test|ALT_INV_set_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \set_reset_test|countset_act\(1));

-- Location: LCCOMB_X46_Y23_N18
\set_reset_test|countset_act[2]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_reset_test|countset_act[2]~23_combout\ = (\set_reset_test|countset_act\(2) & (\set_reset_test|countset_act[1]~22\ $ (GND))) # (!\set_reset_test|countset_act\(2) & (!\set_reset_test|countset_act[1]~22\ & VCC))
-- \set_reset_test|countset_act[2]~24\ = CARRY((\set_reset_test|countset_act\(2) & !\set_reset_test|countset_act[1]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \set_reset_test|countset_act\(2),
	datad => VCC,
	cin => \set_reset_test|countset_act[1]~22\,
	combout => \set_reset_test|countset_act[2]~23_combout\,
	cout => \set_reset_test|countset_act[2]~24\);

-- Location: FF_X46_Y23_N19
\set_reset_test|countset_act[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \set_reset_test|countset_act[2]~23_combout\,
	sclr => \set_reset_test|ALT_INV_set_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \set_reset_test|countset_act\(2));

-- Location: LCCOMB_X46_Y23_N20
\set_reset_test|countset_act[3]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_reset_test|countset_act[3]~25_combout\ = (\set_reset_test|countset_act\(3) & (!\set_reset_test|countset_act[2]~24\)) # (!\set_reset_test|countset_act\(3) & ((\set_reset_test|countset_act[2]~24\) # (GND)))
-- \set_reset_test|countset_act[3]~26\ = CARRY((!\set_reset_test|countset_act[2]~24\) # (!\set_reset_test|countset_act\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \set_reset_test|countset_act\(3),
	datad => VCC,
	cin => \set_reset_test|countset_act[2]~24\,
	combout => \set_reset_test|countset_act[3]~25_combout\,
	cout => \set_reset_test|countset_act[3]~26\);

-- Location: FF_X46_Y23_N21
\set_reset_test|countset_act[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \set_reset_test|countset_act[3]~25_combout\,
	sclr => \set_reset_test|ALT_INV_set_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \set_reset_test|countset_act\(3));

-- Location: LCCOMB_X46_Y23_N22
\set_reset_test|countset_act[4]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_reset_test|countset_act[4]~27_combout\ = (\set_reset_test|countset_act\(4) & (\set_reset_test|countset_act[3]~26\ $ (GND))) # (!\set_reset_test|countset_act\(4) & (!\set_reset_test|countset_act[3]~26\ & VCC))
-- \set_reset_test|countset_act[4]~28\ = CARRY((\set_reset_test|countset_act\(4) & !\set_reset_test|countset_act[3]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \set_reset_test|countset_act\(4),
	datad => VCC,
	cin => \set_reset_test|countset_act[3]~26\,
	combout => \set_reset_test|countset_act[4]~27_combout\,
	cout => \set_reset_test|countset_act[4]~28\);

-- Location: FF_X46_Y23_N23
\set_reset_test|countset_act[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \set_reset_test|countset_act[4]~27_combout\,
	sclr => \set_reset_test|ALT_INV_set_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \set_reset_test|countset_act\(4));

-- Location: LCCOMB_X46_Y23_N24
\set_reset_test|countset_act[5]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_reset_test|countset_act[5]~29_combout\ = (\set_reset_test|countset_act\(5) & (!\set_reset_test|countset_act[4]~28\)) # (!\set_reset_test|countset_act\(5) & ((\set_reset_test|countset_act[4]~28\) # (GND)))
-- \set_reset_test|countset_act[5]~30\ = CARRY((!\set_reset_test|countset_act[4]~28\) # (!\set_reset_test|countset_act\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \set_reset_test|countset_act\(5),
	datad => VCC,
	cin => \set_reset_test|countset_act[4]~28\,
	combout => \set_reset_test|countset_act[5]~29_combout\,
	cout => \set_reset_test|countset_act[5]~30\);

-- Location: FF_X46_Y23_N25
\set_reset_test|countset_act[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \set_reset_test|countset_act[5]~29_combout\,
	sclr => \set_reset_test|ALT_INV_set_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \set_reset_test|countset_act\(5));

-- Location: LCCOMB_X46_Y23_N26
\set_reset_test|countset_act[6]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_reset_test|countset_act[6]~31_combout\ = (\set_reset_test|countset_act\(6) & (\set_reset_test|countset_act[5]~30\ $ (GND))) # (!\set_reset_test|countset_act\(6) & (!\set_reset_test|countset_act[5]~30\ & VCC))
-- \set_reset_test|countset_act[6]~32\ = CARRY((\set_reset_test|countset_act\(6) & !\set_reset_test|countset_act[5]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \set_reset_test|countset_act\(6),
	datad => VCC,
	cin => \set_reset_test|countset_act[5]~30\,
	combout => \set_reset_test|countset_act[6]~31_combout\,
	cout => \set_reset_test|countset_act[6]~32\);

-- Location: FF_X46_Y23_N27
\set_reset_test|countset_act[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \set_reset_test|countset_act[6]~31_combout\,
	sclr => \set_reset_test|ALT_INV_set_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \set_reset_test|countset_act\(6));

-- Location: LCCOMB_X46_Y23_N28
\set_reset_test|countset_act[7]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_reset_test|countset_act[7]~33_combout\ = (\set_reset_test|countset_act\(7) & (!\set_reset_test|countset_act[6]~32\)) # (!\set_reset_test|countset_act\(7) & ((\set_reset_test|countset_act[6]~32\) # (GND)))
-- \set_reset_test|countset_act[7]~34\ = CARRY((!\set_reset_test|countset_act[6]~32\) # (!\set_reset_test|countset_act\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \set_reset_test|countset_act\(7),
	datad => VCC,
	cin => \set_reset_test|countset_act[6]~32\,
	combout => \set_reset_test|countset_act[7]~33_combout\,
	cout => \set_reset_test|countset_act[7]~34\);

-- Location: FF_X46_Y23_N29
\set_reset_test|countset_act[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \set_reset_test|countset_act[7]~33_combout\,
	sclr => \set_reset_test|ALT_INV_set_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \set_reset_test|countset_act\(7));

-- Location: LCCOMB_X46_Y23_N30
\set_reset_test|countset_act[8]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_reset_test|countset_act[8]~35_combout\ = (\set_reset_test|countset_act\(8) & (\set_reset_test|countset_act[7]~34\ $ (GND))) # (!\set_reset_test|countset_act\(8) & (!\set_reset_test|countset_act[7]~34\ & VCC))
-- \set_reset_test|countset_act[8]~36\ = CARRY((\set_reset_test|countset_act\(8) & !\set_reset_test|countset_act[7]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \set_reset_test|countset_act\(8),
	datad => VCC,
	cin => \set_reset_test|countset_act[7]~34\,
	combout => \set_reset_test|countset_act[8]~35_combout\,
	cout => \set_reset_test|countset_act[8]~36\);

-- Location: FF_X46_Y23_N31
\set_reset_test|countset_act[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \set_reset_test|countset_act[8]~35_combout\,
	sclr => \set_reset_test|ALT_INV_set_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \set_reset_test|countset_act\(8));

-- Location: LCCOMB_X46_Y23_N8
\set_reset_test|set_process~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_reset_test|set_process~0_combout\ = ((!\set_reset_test|countset_act\(6) & (!\set_reset_test|countset_act\(7) & !\set_reset_test|countset_act\(5)))) # (!\set_reset_test|countset_act\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set_reset_test|countset_act\(6),
	datab => \set_reset_test|countset_act\(7),
	datac => \set_reset_test|countset_act\(8),
	datad => \set_reset_test|countset_act\(5),
	combout => \set_reset_test|set_process~0_combout\);

-- Location: LCCOMB_X46_Y22_N0
\set_reset_test|countset_act[9]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_reset_test|countset_act[9]~37_combout\ = (\set_reset_test|countset_act\(9) & (!\set_reset_test|countset_act[8]~36\)) # (!\set_reset_test|countset_act\(9) & ((\set_reset_test|countset_act[8]~36\) # (GND)))
-- \set_reset_test|countset_act[9]~38\ = CARRY((!\set_reset_test|countset_act[8]~36\) # (!\set_reset_test|countset_act\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \set_reset_test|countset_act\(9),
	datad => VCC,
	cin => \set_reset_test|countset_act[8]~36\,
	combout => \set_reset_test|countset_act[9]~37_combout\,
	cout => \set_reset_test|countset_act[9]~38\);

-- Location: FF_X46_Y22_N1
\set_reset_test|countset_act[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \set_reset_test|countset_act[9]~37_combout\,
	sclr => \set_reset_test|ALT_INV_set_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \set_reset_test|countset_act\(9));

-- Location: LCCOMB_X46_Y22_N2
\set_reset_test|countset_act[10]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_reset_test|countset_act[10]~39_combout\ = (\set_reset_test|countset_act\(10) & (\set_reset_test|countset_act[9]~38\ $ (GND))) # (!\set_reset_test|countset_act\(10) & (!\set_reset_test|countset_act[9]~38\ & VCC))
-- \set_reset_test|countset_act[10]~40\ = CARRY((\set_reset_test|countset_act\(10) & !\set_reset_test|countset_act[9]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \set_reset_test|countset_act\(10),
	datad => VCC,
	cin => \set_reset_test|countset_act[9]~38\,
	combout => \set_reset_test|countset_act[10]~39_combout\,
	cout => \set_reset_test|countset_act[10]~40\);

-- Location: FF_X46_Y22_N3
\set_reset_test|countset_act[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \set_reset_test|countset_act[10]~39_combout\,
	sclr => \set_reset_test|ALT_INV_set_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \set_reset_test|countset_act\(10));

-- Location: LCCOMB_X46_Y22_N4
\set_reset_test|countset_act[11]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_reset_test|countset_act[11]~41_combout\ = (\set_reset_test|countset_act\(11) & (!\set_reset_test|countset_act[10]~40\)) # (!\set_reset_test|countset_act\(11) & ((\set_reset_test|countset_act[10]~40\) # (GND)))
-- \set_reset_test|countset_act[11]~42\ = CARRY((!\set_reset_test|countset_act[10]~40\) # (!\set_reset_test|countset_act\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \set_reset_test|countset_act\(11),
	datad => VCC,
	cin => \set_reset_test|countset_act[10]~40\,
	combout => \set_reset_test|countset_act[11]~41_combout\,
	cout => \set_reset_test|countset_act[11]~42\);

-- Location: FF_X46_Y22_N5
\set_reset_test|countset_act[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \set_reset_test|countset_act[11]~41_combout\,
	sclr => \set_reset_test|ALT_INV_set_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \set_reset_test|countset_act\(11));

-- Location: LCCOMB_X46_Y22_N6
\set_reset_test|countset_act[12]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_reset_test|countset_act[12]~43_combout\ = (\set_reset_test|countset_act\(12) & (\set_reset_test|countset_act[11]~42\ $ (GND))) # (!\set_reset_test|countset_act\(12) & (!\set_reset_test|countset_act[11]~42\ & VCC))
-- \set_reset_test|countset_act[12]~44\ = CARRY((\set_reset_test|countset_act\(12) & !\set_reset_test|countset_act[11]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \set_reset_test|countset_act\(12),
	datad => VCC,
	cin => \set_reset_test|countset_act[11]~42\,
	combout => \set_reset_test|countset_act[12]~43_combout\,
	cout => \set_reset_test|countset_act[12]~44\);

-- Location: FF_X46_Y22_N7
\set_reset_test|countset_act[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \set_reset_test|countset_act[12]~43_combout\,
	sclr => \set_reset_test|ALT_INV_set_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \set_reset_test|countset_act\(12));

-- Location: LCCOMB_X46_Y22_N8
\set_reset_test|countset_act[13]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_reset_test|countset_act[13]~45_combout\ = (\set_reset_test|countset_act\(13) & (!\set_reset_test|countset_act[12]~44\)) # (!\set_reset_test|countset_act\(13) & ((\set_reset_test|countset_act[12]~44\) # (GND)))
-- \set_reset_test|countset_act[13]~46\ = CARRY((!\set_reset_test|countset_act[12]~44\) # (!\set_reset_test|countset_act\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \set_reset_test|countset_act\(13),
	datad => VCC,
	cin => \set_reset_test|countset_act[12]~44\,
	combout => \set_reset_test|countset_act[13]~45_combout\,
	cout => \set_reset_test|countset_act[13]~46\);

-- Location: FF_X46_Y22_N9
\set_reset_test|countset_act[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \set_reset_test|countset_act[13]~45_combout\,
	sclr => \set_reset_test|ALT_INV_set_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \set_reset_test|countset_act\(13));

-- Location: LCCOMB_X46_Y22_N30
\set_reset_test|set_process~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_reset_test|set_process~1_combout\ = (!\set_reset_test|countset_act\(12) & (!\set_reset_test|countset_act\(9) & (!\set_reset_test|countset_act\(11) & !\set_reset_test|countset_act\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set_reset_test|countset_act\(12),
	datab => \set_reset_test|countset_act\(9),
	datac => \set_reset_test|countset_act\(11),
	datad => \set_reset_test|countset_act\(10),
	combout => \set_reset_test|set_process~1_combout\);

-- Location: LCCOMB_X46_Y22_N10
\set_reset_test|countset_act[14]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_reset_test|countset_act[14]~47_combout\ = (\set_reset_test|countset_act\(14) & (\set_reset_test|countset_act[13]~46\ $ (GND))) # (!\set_reset_test|countset_act\(14) & (!\set_reset_test|countset_act[13]~46\ & VCC))
-- \set_reset_test|countset_act[14]~48\ = CARRY((\set_reset_test|countset_act\(14) & !\set_reset_test|countset_act[13]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \set_reset_test|countset_act\(14),
	datad => VCC,
	cin => \set_reset_test|countset_act[13]~46\,
	combout => \set_reset_test|countset_act[14]~47_combout\,
	cout => \set_reset_test|countset_act[14]~48\);

-- Location: FF_X46_Y22_N11
\set_reset_test|countset_act[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \set_reset_test|countset_act[14]~47_combout\,
	sclr => \set_reset_test|ALT_INV_set_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \set_reset_test|countset_act\(14));

-- Location: LCCOMB_X46_Y22_N24
\set_reset_test|set_process~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_reset_test|set_process~2_combout\ = (!\set_reset_test|countset_act\(14) & (((\set_reset_test|set_process~0_combout\ & \set_reset_test|set_process~1_combout\)) # (!\set_reset_test|countset_act\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set_reset_test|set_process~0_combout\,
	datab => \set_reset_test|countset_act\(13),
	datac => \set_reset_test|set_process~1_combout\,
	datad => \set_reset_test|countset_act\(14),
	combout => \set_reset_test|set_process~2_combout\);

-- Location: LCCOMB_X46_Y22_N12
\set_reset_test|countset_act[15]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_reset_test|countset_act[15]~49_combout\ = (\set_reset_test|countset_act\(15) & (!\set_reset_test|countset_act[14]~48\)) # (!\set_reset_test|countset_act\(15) & ((\set_reset_test|countset_act[14]~48\) # (GND)))
-- \set_reset_test|countset_act[15]~50\ = CARRY((!\set_reset_test|countset_act[14]~48\) # (!\set_reset_test|countset_act\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \set_reset_test|countset_act\(15),
	datad => VCC,
	cin => \set_reset_test|countset_act[14]~48\,
	combout => \set_reset_test|countset_act[15]~49_combout\,
	cout => \set_reset_test|countset_act[15]~50\);

-- Location: FF_X46_Y22_N13
\set_reset_test|countset_act[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \set_reset_test|countset_act[15]~49_combout\,
	sclr => \set_reset_test|ALT_INV_set_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \set_reset_test|countset_act\(15));

-- Location: LCCOMB_X46_Y22_N14
\set_reset_test|countset_act[16]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_reset_test|countset_act[16]~51_combout\ = (\set_reset_test|countset_act\(16) & (\set_reset_test|countset_act[15]~50\ $ (GND))) # (!\set_reset_test|countset_act\(16) & (!\set_reset_test|countset_act[15]~50\ & VCC))
-- \set_reset_test|countset_act[16]~52\ = CARRY((\set_reset_test|countset_act\(16) & !\set_reset_test|countset_act[15]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \set_reset_test|countset_act\(16),
	datad => VCC,
	cin => \set_reset_test|countset_act[15]~50\,
	combout => \set_reset_test|countset_act[16]~51_combout\,
	cout => \set_reset_test|countset_act[16]~52\);

-- Location: FF_X46_Y22_N15
\set_reset_test|countset_act[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \set_reset_test|countset_act[16]~51_combout\,
	sclr => \set_reset_test|ALT_INV_set_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \set_reset_test|countset_act\(16));

-- Location: LCCOMB_X46_Y22_N16
\set_reset_test|countset_act[17]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_reset_test|countset_act[17]~53_combout\ = (\set_reset_test|countset_act\(17) & (!\set_reset_test|countset_act[16]~52\)) # (!\set_reset_test|countset_act\(17) & ((\set_reset_test|countset_act[16]~52\) # (GND)))
-- \set_reset_test|countset_act[17]~54\ = CARRY((!\set_reset_test|countset_act[16]~52\) # (!\set_reset_test|countset_act\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \set_reset_test|countset_act\(17),
	datad => VCC,
	cin => \set_reset_test|countset_act[16]~52\,
	combout => \set_reset_test|countset_act[17]~53_combout\,
	cout => \set_reset_test|countset_act[17]~54\);

-- Location: FF_X46_Y22_N17
\set_reset_test|countset_act[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \set_reset_test|countset_act[17]~53_combout\,
	sclr => \set_reset_test|ALT_INV_set_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \set_reset_test|countset_act\(17));

-- Location: LCCOMB_X46_Y22_N18
\set_reset_test|countset_act[18]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_reset_test|countset_act[18]~55_combout\ = \set_reset_test|countset_act[17]~54\ $ (!\set_reset_test|countset_act\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \set_reset_test|countset_act\(18),
	cin => \set_reset_test|countset_act[17]~54\,
	combout => \set_reset_test|countset_act[18]~55_combout\);

-- Location: FF_X46_Y22_N19
\set_reset_test|countset_act[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \set_reset_test|countset_act[18]~55_combout\,
	sclr => \set_reset_test|ALT_INV_set_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \set_reset_test|countset_act\(18));

-- Location: LCCOMB_X46_Y22_N26
\set_reset_test|set_process~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_reset_test|set_process~3_combout\ = (((!\set_reset_test|countset_act\(18)) # (!\set_reset_test|countset_act\(16))) # (!\set_reset_test|countset_act\(17))) # (!\set_reset_test|countset_act\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set_reset_test|countset_act\(15),
	datab => \set_reset_test|countset_act\(17),
	datac => \set_reset_test|countset_act\(16),
	datad => \set_reset_test|countset_act\(18),
	combout => \set_reset_test|set_process~3_combout\);

-- Location: LCCOMB_X46_Y22_N20
\set_reset_test|set_process~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_reset_test|set_process~4_combout\ = (\set_btn~input_o\ & ((\set_reset_test|set_process~2_combout\) # ((\set_reset_test|set_process~3_combout\)))) # (!\set_btn~input_o\ & (\set_reset_test|set_process~4_combout\ & 
-- ((\set_reset_test|set_process~2_combout\) # (\set_reset_test|set_process~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set_btn~input_o\,
	datab => \set_reset_test|set_process~2_combout\,
	datac => \set_reset_test|set_process~3_combout\,
	datad => \set_reset_test|set_process~4_combout\,
	combout => \set_reset_test|set_process~4_combout\);

-- Location: LCCOMB_X46_Y22_N28
\set_reset_test|set_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_reset_test|set_out~0_combout\ = (\set_btn~input_o\) # (\set_reset_test|set_process~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set_btn~input_o\,
	datad => \set_reset_test|set_process~4_combout\,
	combout => \set_reset_test|set_out~0_combout\);

-- Location: IOIBUF_X49_Y54_N1
\reset_btn~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_btn,
	o => \reset_btn~input_o\);

-- Location: LCCOMB_X49_Y20_N14
\set_reset_test|countreset_act[0]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_reset_test|countreset_act[0]~19_combout\ = \set_reset_test|countreset_act\(0) $ (VCC)
-- \set_reset_test|countreset_act[0]~20\ = CARRY(\set_reset_test|countreset_act\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \set_reset_test|countreset_act\(0),
	datad => VCC,
	combout => \set_reset_test|countreset_act[0]~19_combout\,
	cout => \set_reset_test|countreset_act[0]~20\);

-- Location: FF_X49_Y20_N15
\set_reset_test|countreset_act[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \set_reset_test|countreset_act[0]~19_combout\,
	sclr => \set_reset_test|ALT_INV_reset_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \set_reset_test|countreset_act\(0));

-- Location: LCCOMB_X49_Y20_N16
\set_reset_test|countreset_act[1]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_reset_test|countreset_act[1]~21_combout\ = (\set_reset_test|countreset_act\(1) & (!\set_reset_test|countreset_act[0]~20\)) # (!\set_reset_test|countreset_act\(1) & ((\set_reset_test|countreset_act[0]~20\) # (GND)))
-- \set_reset_test|countreset_act[1]~22\ = CARRY((!\set_reset_test|countreset_act[0]~20\) # (!\set_reset_test|countreset_act\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \set_reset_test|countreset_act\(1),
	datad => VCC,
	cin => \set_reset_test|countreset_act[0]~20\,
	combout => \set_reset_test|countreset_act[1]~21_combout\,
	cout => \set_reset_test|countreset_act[1]~22\);

-- Location: FF_X49_Y20_N17
\set_reset_test|countreset_act[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \set_reset_test|countreset_act[1]~21_combout\,
	sclr => \set_reset_test|ALT_INV_reset_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \set_reset_test|countreset_act\(1));

-- Location: LCCOMB_X49_Y20_N18
\set_reset_test|countreset_act[2]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_reset_test|countreset_act[2]~23_combout\ = (\set_reset_test|countreset_act\(2) & (\set_reset_test|countreset_act[1]~22\ $ (GND))) # (!\set_reset_test|countreset_act\(2) & (!\set_reset_test|countreset_act[1]~22\ & VCC))
-- \set_reset_test|countreset_act[2]~24\ = CARRY((\set_reset_test|countreset_act\(2) & !\set_reset_test|countreset_act[1]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \set_reset_test|countreset_act\(2),
	datad => VCC,
	cin => \set_reset_test|countreset_act[1]~22\,
	combout => \set_reset_test|countreset_act[2]~23_combout\,
	cout => \set_reset_test|countreset_act[2]~24\);

-- Location: FF_X49_Y20_N19
\set_reset_test|countreset_act[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \set_reset_test|countreset_act[2]~23_combout\,
	sclr => \set_reset_test|ALT_INV_reset_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \set_reset_test|countreset_act\(2));

-- Location: LCCOMB_X49_Y20_N20
\set_reset_test|countreset_act[3]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_reset_test|countreset_act[3]~25_combout\ = (\set_reset_test|countreset_act\(3) & (!\set_reset_test|countreset_act[2]~24\)) # (!\set_reset_test|countreset_act\(3) & ((\set_reset_test|countreset_act[2]~24\) # (GND)))
-- \set_reset_test|countreset_act[3]~26\ = CARRY((!\set_reset_test|countreset_act[2]~24\) # (!\set_reset_test|countreset_act\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \set_reset_test|countreset_act\(3),
	datad => VCC,
	cin => \set_reset_test|countreset_act[2]~24\,
	combout => \set_reset_test|countreset_act[3]~25_combout\,
	cout => \set_reset_test|countreset_act[3]~26\);

-- Location: FF_X49_Y20_N21
\set_reset_test|countreset_act[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \set_reset_test|countreset_act[3]~25_combout\,
	sclr => \set_reset_test|ALT_INV_reset_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \set_reset_test|countreset_act\(3));

-- Location: LCCOMB_X49_Y20_N22
\set_reset_test|countreset_act[4]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_reset_test|countreset_act[4]~27_combout\ = (\set_reset_test|countreset_act\(4) & (\set_reset_test|countreset_act[3]~26\ $ (GND))) # (!\set_reset_test|countreset_act\(4) & (!\set_reset_test|countreset_act[3]~26\ & VCC))
-- \set_reset_test|countreset_act[4]~28\ = CARRY((\set_reset_test|countreset_act\(4) & !\set_reset_test|countreset_act[3]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \set_reset_test|countreset_act\(4),
	datad => VCC,
	cin => \set_reset_test|countreset_act[3]~26\,
	combout => \set_reset_test|countreset_act[4]~27_combout\,
	cout => \set_reset_test|countreset_act[4]~28\);

-- Location: FF_X49_Y20_N23
\set_reset_test|countreset_act[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \set_reset_test|countreset_act[4]~27_combout\,
	sclr => \set_reset_test|ALT_INV_reset_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \set_reset_test|countreset_act\(4));

-- Location: LCCOMB_X49_Y20_N24
\set_reset_test|countreset_act[5]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_reset_test|countreset_act[5]~29_combout\ = (\set_reset_test|countreset_act\(5) & (!\set_reset_test|countreset_act[4]~28\)) # (!\set_reset_test|countreset_act\(5) & ((\set_reset_test|countreset_act[4]~28\) # (GND)))
-- \set_reset_test|countreset_act[5]~30\ = CARRY((!\set_reset_test|countreset_act[4]~28\) # (!\set_reset_test|countreset_act\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \set_reset_test|countreset_act\(5),
	datad => VCC,
	cin => \set_reset_test|countreset_act[4]~28\,
	combout => \set_reset_test|countreset_act[5]~29_combout\,
	cout => \set_reset_test|countreset_act[5]~30\);

-- Location: FF_X49_Y20_N25
\set_reset_test|countreset_act[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \set_reset_test|countreset_act[5]~29_combout\,
	sclr => \set_reset_test|ALT_INV_reset_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \set_reset_test|countreset_act\(5));

-- Location: LCCOMB_X49_Y20_N26
\set_reset_test|countreset_act[6]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_reset_test|countreset_act[6]~31_combout\ = (\set_reset_test|countreset_act\(6) & (\set_reset_test|countreset_act[5]~30\ $ (GND))) # (!\set_reset_test|countreset_act\(6) & (!\set_reset_test|countreset_act[5]~30\ & VCC))
-- \set_reset_test|countreset_act[6]~32\ = CARRY((\set_reset_test|countreset_act\(6) & !\set_reset_test|countreset_act[5]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \set_reset_test|countreset_act\(6),
	datad => VCC,
	cin => \set_reset_test|countreset_act[5]~30\,
	combout => \set_reset_test|countreset_act[6]~31_combout\,
	cout => \set_reset_test|countreset_act[6]~32\);

-- Location: FF_X49_Y20_N27
\set_reset_test|countreset_act[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \set_reset_test|countreset_act[6]~31_combout\,
	sclr => \set_reset_test|ALT_INV_reset_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \set_reset_test|countreset_act\(6));

-- Location: LCCOMB_X49_Y20_N28
\set_reset_test|countreset_act[7]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_reset_test|countreset_act[7]~33_combout\ = (\set_reset_test|countreset_act\(7) & (!\set_reset_test|countreset_act[6]~32\)) # (!\set_reset_test|countreset_act\(7) & ((\set_reset_test|countreset_act[6]~32\) # (GND)))
-- \set_reset_test|countreset_act[7]~34\ = CARRY((!\set_reset_test|countreset_act[6]~32\) # (!\set_reset_test|countreset_act\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \set_reset_test|countreset_act\(7),
	datad => VCC,
	cin => \set_reset_test|countreset_act[6]~32\,
	combout => \set_reset_test|countreset_act[7]~33_combout\,
	cout => \set_reset_test|countreset_act[7]~34\);

-- Location: FF_X49_Y20_N29
\set_reset_test|countreset_act[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \set_reset_test|countreset_act[7]~33_combout\,
	sclr => \set_reset_test|ALT_INV_reset_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \set_reset_test|countreset_act\(7));

-- Location: LCCOMB_X49_Y20_N30
\set_reset_test|countreset_act[8]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_reset_test|countreset_act[8]~35_combout\ = (\set_reset_test|countreset_act\(8) & (\set_reset_test|countreset_act[7]~34\ $ (GND))) # (!\set_reset_test|countreset_act\(8) & (!\set_reset_test|countreset_act[7]~34\ & VCC))
-- \set_reset_test|countreset_act[8]~36\ = CARRY((\set_reset_test|countreset_act\(8) & !\set_reset_test|countreset_act[7]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \set_reset_test|countreset_act\(8),
	datad => VCC,
	cin => \set_reset_test|countreset_act[7]~34\,
	combout => \set_reset_test|countreset_act[8]~35_combout\,
	cout => \set_reset_test|countreset_act[8]~36\);

-- Location: FF_X49_Y20_N31
\set_reset_test|countreset_act[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \set_reset_test|countreset_act[8]~35_combout\,
	sclr => \set_reset_test|ALT_INV_reset_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \set_reset_test|countreset_act\(8));

-- Location: LCCOMB_X49_Y19_N0
\set_reset_test|countreset_act[9]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_reset_test|countreset_act[9]~37_combout\ = (\set_reset_test|countreset_act\(9) & (!\set_reset_test|countreset_act[8]~36\)) # (!\set_reset_test|countreset_act\(9) & ((\set_reset_test|countreset_act[8]~36\) # (GND)))
-- \set_reset_test|countreset_act[9]~38\ = CARRY((!\set_reset_test|countreset_act[8]~36\) # (!\set_reset_test|countreset_act\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \set_reset_test|countreset_act\(9),
	datad => VCC,
	cin => \set_reset_test|countreset_act[8]~36\,
	combout => \set_reset_test|countreset_act[9]~37_combout\,
	cout => \set_reset_test|countreset_act[9]~38\);

-- Location: FF_X49_Y19_N1
\set_reset_test|countreset_act[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \set_reset_test|countreset_act[9]~37_combout\,
	sclr => \set_reset_test|ALT_INV_reset_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \set_reset_test|countreset_act\(9));

-- Location: LCCOMB_X49_Y19_N2
\set_reset_test|countreset_act[10]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_reset_test|countreset_act[10]~39_combout\ = (\set_reset_test|countreset_act\(10) & (\set_reset_test|countreset_act[9]~38\ $ (GND))) # (!\set_reset_test|countreset_act\(10) & (!\set_reset_test|countreset_act[9]~38\ & VCC))
-- \set_reset_test|countreset_act[10]~40\ = CARRY((\set_reset_test|countreset_act\(10) & !\set_reset_test|countreset_act[9]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \set_reset_test|countreset_act\(10),
	datad => VCC,
	cin => \set_reset_test|countreset_act[9]~38\,
	combout => \set_reset_test|countreset_act[10]~39_combout\,
	cout => \set_reset_test|countreset_act[10]~40\);

-- Location: FF_X49_Y19_N3
\set_reset_test|countreset_act[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \set_reset_test|countreset_act[10]~39_combout\,
	sclr => \set_reset_test|ALT_INV_reset_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \set_reset_test|countreset_act\(10));

-- Location: LCCOMB_X49_Y19_N4
\set_reset_test|countreset_act[11]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_reset_test|countreset_act[11]~41_combout\ = (\set_reset_test|countreset_act\(11) & (!\set_reset_test|countreset_act[10]~40\)) # (!\set_reset_test|countreset_act\(11) & ((\set_reset_test|countreset_act[10]~40\) # (GND)))
-- \set_reset_test|countreset_act[11]~42\ = CARRY((!\set_reset_test|countreset_act[10]~40\) # (!\set_reset_test|countreset_act\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \set_reset_test|countreset_act\(11),
	datad => VCC,
	cin => \set_reset_test|countreset_act[10]~40\,
	combout => \set_reset_test|countreset_act[11]~41_combout\,
	cout => \set_reset_test|countreset_act[11]~42\);

-- Location: FF_X49_Y19_N5
\set_reset_test|countreset_act[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \set_reset_test|countreset_act[11]~41_combout\,
	sclr => \set_reset_test|ALT_INV_reset_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \set_reset_test|countreset_act\(11));

-- Location: LCCOMB_X49_Y19_N6
\set_reset_test|countreset_act[12]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_reset_test|countreset_act[12]~43_combout\ = (\set_reset_test|countreset_act\(12) & (\set_reset_test|countreset_act[11]~42\ $ (GND))) # (!\set_reset_test|countreset_act\(12) & (!\set_reset_test|countreset_act[11]~42\ & VCC))
-- \set_reset_test|countreset_act[12]~44\ = CARRY((\set_reset_test|countreset_act\(12) & !\set_reset_test|countreset_act[11]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \set_reset_test|countreset_act\(12),
	datad => VCC,
	cin => \set_reset_test|countreset_act[11]~42\,
	combout => \set_reset_test|countreset_act[12]~43_combout\,
	cout => \set_reset_test|countreset_act[12]~44\);

-- Location: FF_X49_Y19_N7
\set_reset_test|countreset_act[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \set_reset_test|countreset_act[12]~43_combout\,
	sclr => \set_reset_test|ALT_INV_reset_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \set_reset_test|countreset_act\(12));

-- Location: LCCOMB_X49_Y19_N8
\set_reset_test|countreset_act[13]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_reset_test|countreset_act[13]~45_combout\ = (\set_reset_test|countreset_act\(13) & (!\set_reset_test|countreset_act[12]~44\)) # (!\set_reset_test|countreset_act\(13) & ((\set_reset_test|countreset_act[12]~44\) # (GND)))
-- \set_reset_test|countreset_act[13]~46\ = CARRY((!\set_reset_test|countreset_act[12]~44\) # (!\set_reset_test|countreset_act\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \set_reset_test|countreset_act\(13),
	datad => VCC,
	cin => \set_reset_test|countreset_act[12]~44\,
	combout => \set_reset_test|countreset_act[13]~45_combout\,
	cout => \set_reset_test|countreset_act[13]~46\);

-- Location: FF_X49_Y19_N9
\set_reset_test|countreset_act[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \set_reset_test|countreset_act[13]~45_combout\,
	sclr => \set_reset_test|ALT_INV_reset_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \set_reset_test|countreset_act\(13));

-- Location: LCCOMB_X49_Y19_N10
\set_reset_test|countreset_act[14]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_reset_test|countreset_act[14]~47_combout\ = (\set_reset_test|countreset_act\(14) & (\set_reset_test|countreset_act[13]~46\ $ (GND))) # (!\set_reset_test|countreset_act\(14) & (!\set_reset_test|countreset_act[13]~46\ & VCC))
-- \set_reset_test|countreset_act[14]~48\ = CARRY((\set_reset_test|countreset_act\(14) & !\set_reset_test|countreset_act[13]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \set_reset_test|countreset_act\(14),
	datad => VCC,
	cin => \set_reset_test|countreset_act[13]~46\,
	combout => \set_reset_test|countreset_act[14]~47_combout\,
	cout => \set_reset_test|countreset_act[14]~48\);

-- Location: FF_X49_Y19_N11
\set_reset_test|countreset_act[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \set_reset_test|countreset_act[14]~47_combout\,
	sclr => \set_reset_test|ALT_INV_reset_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \set_reset_test|countreset_act\(14));

-- Location: LCCOMB_X49_Y19_N12
\set_reset_test|countreset_act[15]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_reset_test|countreset_act[15]~49_combout\ = (\set_reset_test|countreset_act\(15) & (!\set_reset_test|countreset_act[14]~48\)) # (!\set_reset_test|countreset_act\(15) & ((\set_reset_test|countreset_act[14]~48\) # (GND)))
-- \set_reset_test|countreset_act[15]~50\ = CARRY((!\set_reset_test|countreset_act[14]~48\) # (!\set_reset_test|countreset_act\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \set_reset_test|countreset_act\(15),
	datad => VCC,
	cin => \set_reset_test|countreset_act[14]~48\,
	combout => \set_reset_test|countreset_act[15]~49_combout\,
	cout => \set_reset_test|countreset_act[15]~50\);

-- Location: FF_X49_Y19_N13
\set_reset_test|countreset_act[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \set_reset_test|countreset_act[15]~49_combout\,
	sclr => \set_reset_test|ALT_INV_reset_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \set_reset_test|countreset_act\(15));

-- Location: LCCOMB_X49_Y19_N14
\set_reset_test|countreset_act[16]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_reset_test|countreset_act[16]~51_combout\ = (\set_reset_test|countreset_act\(16) & (\set_reset_test|countreset_act[15]~50\ $ (GND))) # (!\set_reset_test|countreset_act\(16) & (!\set_reset_test|countreset_act[15]~50\ & VCC))
-- \set_reset_test|countreset_act[16]~52\ = CARRY((\set_reset_test|countreset_act\(16) & !\set_reset_test|countreset_act[15]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \set_reset_test|countreset_act\(16),
	datad => VCC,
	cin => \set_reset_test|countreset_act[15]~50\,
	combout => \set_reset_test|countreset_act[16]~51_combout\,
	cout => \set_reset_test|countreset_act[16]~52\);

-- Location: FF_X49_Y19_N15
\set_reset_test|countreset_act[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \set_reset_test|countreset_act[16]~51_combout\,
	sclr => \set_reset_test|ALT_INV_reset_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \set_reset_test|countreset_act\(16));

-- Location: LCCOMB_X49_Y19_N16
\set_reset_test|countreset_act[17]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_reset_test|countreset_act[17]~53_combout\ = (\set_reset_test|countreset_act\(17) & (!\set_reset_test|countreset_act[16]~52\)) # (!\set_reset_test|countreset_act\(17) & ((\set_reset_test|countreset_act[16]~52\) # (GND)))
-- \set_reset_test|countreset_act[17]~54\ = CARRY((!\set_reset_test|countreset_act[16]~52\) # (!\set_reset_test|countreset_act\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \set_reset_test|countreset_act\(17),
	datad => VCC,
	cin => \set_reset_test|countreset_act[16]~52\,
	combout => \set_reset_test|countreset_act[17]~53_combout\,
	cout => \set_reset_test|countreset_act[17]~54\);

-- Location: FF_X49_Y19_N17
\set_reset_test|countreset_act[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \set_reset_test|countreset_act[17]~53_combout\,
	sclr => \set_reset_test|ALT_INV_reset_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \set_reset_test|countreset_act\(17));

-- Location: LCCOMB_X49_Y19_N18
\set_reset_test|countreset_act[18]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_reset_test|countreset_act[18]~55_combout\ = \set_reset_test|countreset_act[17]~54\ $ (!\set_reset_test|countreset_act\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \set_reset_test|countreset_act\(18),
	cin => \set_reset_test|countreset_act[17]~54\,
	combout => \set_reset_test|countreset_act[18]~55_combout\);

-- Location: FF_X49_Y19_N19
\set_reset_test|countreset_act[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \set_reset_test|countreset_act[18]~55_combout\,
	sclr => \set_reset_test|ALT_INV_reset_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \set_reset_test|countreset_act\(18));

-- Location: LCCOMB_X49_Y19_N26
\set_reset_test|reset_process~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_reset_test|reset_process~3_combout\ = (((!\set_reset_test|countreset_act\(18)) # (!\set_reset_test|countreset_act\(16))) # (!\set_reset_test|countreset_act\(17))) # (!\set_reset_test|countreset_act\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set_reset_test|countreset_act\(15),
	datab => \set_reset_test|countreset_act\(17),
	datac => \set_reset_test|countreset_act\(16),
	datad => \set_reset_test|countreset_act\(18),
	combout => \set_reset_test|reset_process~3_combout\);

-- Location: LCCOMB_X49_Y19_N30
\set_reset_test|reset_process~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_reset_test|reset_process~1_combout\ = (!\set_reset_test|countreset_act\(12) & (!\set_reset_test|countreset_act\(9) & (!\set_reset_test|countreset_act\(11) & !\set_reset_test|countreset_act\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set_reset_test|countreset_act\(12),
	datab => \set_reset_test|countreset_act\(9),
	datac => \set_reset_test|countreset_act\(11),
	datad => \set_reset_test|countreset_act\(10),
	combout => \set_reset_test|reset_process~1_combout\);

-- Location: LCCOMB_X49_Y20_N8
\set_reset_test|reset_process~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_reset_test|reset_process~0_combout\ = ((!\set_reset_test|countreset_act\(6) & (!\set_reset_test|countreset_act\(7) & !\set_reset_test|countreset_act\(5)))) # (!\set_reset_test|countreset_act\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set_reset_test|countreset_act\(6),
	datab => \set_reset_test|countreset_act\(7),
	datac => \set_reset_test|countreset_act\(8),
	datad => \set_reset_test|countreset_act\(5),
	combout => \set_reset_test|reset_process~0_combout\);

-- Location: LCCOMB_X49_Y19_N24
\set_reset_test|reset_process~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_reset_test|reset_process~2_combout\ = (!\set_reset_test|countreset_act\(14) & (((\set_reset_test|reset_process~1_combout\ & \set_reset_test|reset_process~0_combout\)) # (!\set_reset_test|countreset_act\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set_reset_test|countreset_act\(14),
	datab => \set_reset_test|countreset_act\(13),
	datac => \set_reset_test|reset_process~1_combout\,
	datad => \set_reset_test|reset_process~0_combout\,
	combout => \set_reset_test|reset_process~2_combout\);

-- Location: LCCOMB_X49_Y19_N28
\set_reset_test|reset_process~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_reset_test|reset_process~4_combout\ = (\set_reset_test|reset_process~3_combout\ & ((\set_reset_test|reset_process~4_combout\) # ((\reset_btn~input_o\)))) # (!\set_reset_test|reset_process~3_combout\ & (\set_reset_test|reset_process~2_combout\ & 
-- ((\set_reset_test|reset_process~4_combout\) # (\reset_btn~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set_reset_test|reset_process~3_combout\,
	datab => \set_reset_test|reset_process~4_combout\,
	datac => \reset_btn~input_o\,
	datad => \set_reset_test|reset_process~2_combout\,
	combout => \set_reset_test|reset_process~4_combout\);

-- Location: LCCOMB_X49_Y19_N20
\set_reset_test|reset_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_reset_test|reset_out~0_combout\ = (\reset_btn~input_o\) # (\set_reset_test|reset_process~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset_btn~input_o\,
	datad => \set_reset_test|reset_process~4_combout\,
	combout => \set_reset_test|reset_out~0_combout\);

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

ww_PWM_H1 <= \PWM_H1~output_o\;

ww_PWM_H1_sens <= \PWM_H1_sens~output_o\;

ww_PWM_L1 <= \PWM_L1~output_o\;

ww_PWM_L1_sens <= \PWM_L1_sens~output_o\;

ww_PWM_H2 <= \PWM_H2~output_o\;

ww_PWM_H2_sens <= \PWM_H2_sens~output_o\;

ww_PWM_L2 <= \PWM_L2~output_o\;

ww_PWM_L2_sens <= \PWM_L2_sens~output_o\;

ww_wdg_out <= \wdg_out~output_o\;

ww_set_out <= \set_out~output_o\;

ww_reset_out <= \reset_out~output_o\;
END structure;


