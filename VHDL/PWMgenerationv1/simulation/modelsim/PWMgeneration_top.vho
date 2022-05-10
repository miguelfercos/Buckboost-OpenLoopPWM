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

-- DATE "07/12/2021 18:12:16"

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
	PWM_L1 : BUFFER std_logic;
	PWM_H2 : BUFFER std_logic;
	PWM_L2 : BUFFER std_logic;
	wdg_out : BUFFER std_logic;
	set_btn : IN std_logic;
	reset_btn : IN std_logic;
	set_out : BUFFER std_logic;
	reset_out : BUFFER std_logic;
	wdg_reset : IN std_logic
	);
END PWMgeneration_top;

-- Design Ports Information
-- PWM_H1	=>  Location: PIN_V10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- PWM_L1	=>  Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- PWM_H2	=>  Location: PIN_AB3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- PWM_L2	=>  Location: PIN_AB2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- wdg_out	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- set_out	=>  Location: PIN_W10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- reset_out	=>  Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- set_btn	=>  Location: PIN_B8,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- reset_btn	=>  Location: PIN_A7,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- clk	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- wdg_reset	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sel	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_PWM_L1 : std_logic;
SIGNAL ww_PWM_H2 : std_logic;
SIGNAL ww_PWM_L2 : std_logic;
SIGNAL ww_wdg_out : std_logic;
SIGNAL ww_set_btn : std_logic;
SIGNAL ww_reset_btn : std_logic;
SIGNAL ww_set_out : std_logic;
SIGNAL ww_reset_out : std_logic;
SIGNAL ww_wdg_reset : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \PWM_H1~output_o\ : std_logic;
SIGNAL \PWM_L1~output_o\ : std_logic;
SIGNAL \PWM_H2~output_o\ : std_logic;
SIGNAL \PWM_L2~output_o\ : std_logic;
SIGNAL \wdg_out~output_o\ : std_logic;
SIGNAL \set_out~output_o\ : std_logic;
SIGNAL \reset_out~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \countactual1[0]~33_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \countactual1[2]~38\ : std_logic;
SIGNAL \countactual1[3]~39_combout\ : std_logic;
SIGNAL \est_act.idle~feeder_combout\ : std_logic;
SIGNAL \est_act.idle~q\ : std_logic;
SIGNAL \countactual1[3]~40\ : std_logic;
SIGNAL \countactual1[4]~41_combout\ : std_logic;
SIGNAL \countactual1[4]~42\ : std_logic;
SIGNAL \countactual1[5]~43_combout\ : std_logic;
SIGNAL \countactual1[5]~44\ : std_logic;
SIGNAL \countactual1[6]~45_combout\ : std_logic;
SIGNAL \countactual1[6]~46\ : std_logic;
SIGNAL \countactual1[7]~47_combout\ : std_logic;
SIGNAL \countactual1[7]~48\ : std_logic;
SIGNAL \countactual1[8]~49_combout\ : std_logic;
SIGNAL \countactual1[8]~50\ : std_logic;
SIGNAL \countactual1[9]~51_combout\ : std_logic;
SIGNAL \countactual1[9]~52\ : std_logic;
SIGNAL \countactual1[10]~53_combout\ : std_logic;
SIGNAL \countactual1[10]~54\ : std_logic;
SIGNAL \countactual1[11]~55_combout\ : std_logic;
SIGNAL \countactual1[11]~56\ : std_logic;
SIGNAL \countactual1[12]~57_combout\ : std_logic;
SIGNAL \countactual1[12]~58\ : std_logic;
SIGNAL \countactual1[13]~59_combout\ : std_logic;
SIGNAL \countactual1[13]~60\ : std_logic;
SIGNAL \countactual1[14]~61_combout\ : std_logic;
SIGNAL \countactual1[14]~62\ : std_logic;
SIGNAL \countactual1[15]~63_combout\ : std_logic;
SIGNAL \countactual1[15]~64\ : std_logic;
SIGNAL \countactual1[16]~65_combout\ : std_logic;
SIGNAL \countactual1[16]~66\ : std_logic;
SIGNAL \countactual1[17]~67_combout\ : std_logic;
SIGNAL \countactual1[17]~68\ : std_logic;
SIGNAL \countactual1[18]~69_combout\ : std_logic;
SIGNAL \countactual1[18]~70\ : std_logic;
SIGNAL \countactual1[19]~71_combout\ : std_logic;
SIGNAL \countactual1[19]~72\ : std_logic;
SIGNAL \countactual1[20]~73_combout\ : std_logic;
SIGNAL \countactual1[20]~74\ : std_logic;
SIGNAL \countactual1[21]~75_combout\ : std_logic;
SIGNAL \countactual1[21]~76\ : std_logic;
SIGNAL \countactual1[22]~77_combout\ : std_logic;
SIGNAL \countactual1[22]~78\ : std_logic;
SIGNAL \countactual1[23]~79_combout\ : std_logic;
SIGNAL \countactual1[23]~80\ : std_logic;
SIGNAL \countactual1[24]~81_combout\ : std_logic;
SIGNAL \countactual1[24]~82\ : std_logic;
SIGNAL \countactual1[25]~83_combout\ : std_logic;
SIGNAL \countactual1[25]~84\ : std_logic;
SIGNAL \countactual1[26]~85_combout\ : std_logic;
SIGNAL \countactual1[26]~86\ : std_logic;
SIGNAL \countactual1[27]~87_combout\ : std_logic;
SIGNAL \countactual1[27]~88\ : std_logic;
SIGNAL \countactual1[28]~89_combout\ : std_logic;
SIGNAL \countactual1[28]~90\ : std_logic;
SIGNAL \countactual1[29]~91_combout\ : std_logic;
SIGNAL \countactual1[29]~92\ : std_logic;
SIGNAL \countactual1[30]~93_combout\ : std_logic;
SIGNAL \LessThan3~5_combout\ : std_logic;
SIGNAL \LessThan3~1_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \LessThan3~2_combout\ : std_logic;
SIGNAL \LessThan3~3_combout\ : std_logic;
SIGNAL \LessThan3~4_combout\ : std_logic;
SIGNAL \LessThan3~6_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \Selector39~1_combout\ : std_logic;
SIGNAL \Selector39~2_combout\ : std_logic;
SIGNAL \Selector39~3_combout\ : std_logic;
SIGNAL \Selector39~5_combout\ : std_logic;
SIGNAL \countactual1[30]~94\ : std_logic;
SIGNAL \countactual1[31]~95_combout\ : std_logic;
SIGNAL \Selector39~6_combout\ : std_logic;
SIGNAL \Selector39~4_combout\ : std_logic;
SIGNAL \LessThan8~0_combout\ : std_logic;
SIGNAL \Selector39~8_combout\ : std_logic;
SIGNAL \Selector39~9_combout\ : std_logic;
SIGNAL \Selector37~0_combout\ : std_logic;
SIGNAL \sel~input_o\ : std_logic;
SIGNAL \Selector36~0_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \Selector34~0_combout\ : std_logic;
SIGNAL \Add5~1\ : std_logic;
SIGNAL \Add5~2_combout\ : std_logic;
SIGNAL \Add5~90_combout\ : std_logic;
SIGNAL \Add5~3\ : std_logic;
SIGNAL \Add5~4_combout\ : std_logic;
SIGNAL \Add5~89_combout\ : std_logic;
SIGNAL \Add5~5\ : std_logic;
SIGNAL \Add5~6_combout\ : std_logic;
SIGNAL \Add5~88_combout\ : std_logic;
SIGNAL \Add5~7\ : std_logic;
SIGNAL \Add5~8_combout\ : std_logic;
SIGNAL \Selector30~0_combout\ : std_logic;
SIGNAL \Add5~9\ : std_logic;
SIGNAL \Add5~10_combout\ : std_logic;
SIGNAL \Selector29~0_combout\ : std_logic;
SIGNAL \Add5~11\ : std_logic;
SIGNAL \Add5~12_combout\ : std_logic;
SIGNAL \Add5~87_combout\ : std_logic;
SIGNAL \Add5~13\ : std_logic;
SIGNAL \Add5~14_combout\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \Add5~15\ : std_logic;
SIGNAL \Add5~16_combout\ : std_logic;
SIGNAL \Add5~86_combout\ : std_logic;
SIGNAL \Add5~17\ : std_logic;
SIGNAL \Add5~18_combout\ : std_logic;
SIGNAL \Add5~85_combout\ : std_logic;
SIGNAL \Add5~19\ : std_logic;
SIGNAL \Add5~20_combout\ : std_logic;
SIGNAL \Add5~84_combout\ : std_logic;
SIGNAL \Add5~21\ : std_logic;
SIGNAL \Add5~22_combout\ : std_logic;
SIGNAL \Add5~83_combout\ : std_logic;
SIGNAL \Add5~23\ : std_logic;
SIGNAL \Add5~24_combout\ : std_logic;
SIGNAL \Add5~82_combout\ : std_logic;
SIGNAL \Add5~25\ : std_logic;
SIGNAL \Add5~26_combout\ : std_logic;
SIGNAL \Add5~81_combout\ : std_logic;
SIGNAL \Add5~27\ : std_logic;
SIGNAL \Add5~28_combout\ : std_logic;
SIGNAL \Add5~80_combout\ : std_logic;
SIGNAL \LessThan9~5_combout\ : std_logic;
SIGNAL \Add5~29\ : std_logic;
SIGNAL \Add5~30_combout\ : std_logic;
SIGNAL \Add5~79_combout\ : std_logic;
SIGNAL \Add5~31\ : std_logic;
SIGNAL \Add5~32_combout\ : std_logic;
SIGNAL \Add5~78_combout\ : std_logic;
SIGNAL \Add5~33\ : std_logic;
SIGNAL \Add5~34_combout\ : std_logic;
SIGNAL \Add5~77_combout\ : std_logic;
SIGNAL \Add5~35\ : std_logic;
SIGNAL \Add5~36_combout\ : std_logic;
SIGNAL \Add5~76_combout\ : std_logic;
SIGNAL \Add5~37\ : std_logic;
SIGNAL \Add5~38_combout\ : std_logic;
SIGNAL \Add5~75_combout\ : std_logic;
SIGNAL \Add5~39\ : std_logic;
SIGNAL \Add5~40_combout\ : std_logic;
SIGNAL \Add5~74_combout\ : std_logic;
SIGNAL \Add5~41\ : std_logic;
SIGNAL \Add5~42_combout\ : std_logic;
SIGNAL \Add5~73_combout\ : std_logic;
SIGNAL \Add5~43\ : std_logic;
SIGNAL \Add5~44_combout\ : std_logic;
SIGNAL \Add5~72_combout\ : std_logic;
SIGNAL \LessThan9~2_combout\ : std_logic;
SIGNAL \Add5~45\ : std_logic;
SIGNAL \Add5~46_combout\ : std_logic;
SIGNAL \Add5~71_combout\ : std_logic;
SIGNAL \Add5~47\ : std_logic;
SIGNAL \Add5~48_combout\ : std_logic;
SIGNAL \Add5~70_combout\ : std_logic;
SIGNAL \Add5~49\ : std_logic;
SIGNAL \Add5~50_combout\ : std_logic;
SIGNAL \Add5~69_combout\ : std_logic;
SIGNAL \Add5~51\ : std_logic;
SIGNAL \Add5~52_combout\ : std_logic;
SIGNAL \Add5~68_combout\ : std_logic;
SIGNAL \Add5~53\ : std_logic;
SIGNAL \Add5~54_combout\ : std_logic;
SIGNAL \Add5~67_combout\ : std_logic;
SIGNAL \Add5~55\ : std_logic;
SIGNAL \Add5~56_combout\ : std_logic;
SIGNAL \Add5~66_combout\ : std_logic;
SIGNAL \LessThan9~0_combout\ : std_logic;
SIGNAL \LessThan9~1_combout\ : std_logic;
SIGNAL \LessThan9~3_combout\ : std_logic;
SIGNAL \LessThan9~4_combout\ : std_logic;
SIGNAL \LessThan9~6_combout\ : std_logic;
SIGNAL \LessThan5~0_combout\ : std_logic;
SIGNAL \LessThan5~1_combout\ : std_logic;
SIGNAL \LessThan5~2_combout\ : std_logic;
SIGNAL \Selector41~2_combout\ : std_logic;
SIGNAL \Add5~57\ : std_logic;
SIGNAL \Add5~58_combout\ : std_logic;
SIGNAL \Add5~65_combout\ : std_logic;
SIGNAL \Add3~1_cout\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~17\ : std_logic;
SIGNAL \Add3~19\ : std_logic;
SIGNAL \Add3~21\ : std_logic;
SIGNAL \Add3~23\ : std_logic;
SIGNAL \Add3~25\ : std_logic;
SIGNAL \Add3~27\ : std_logic;
SIGNAL \Add3~29\ : std_logic;
SIGNAL \Add3~31\ : std_logic;
SIGNAL \Add3~33\ : std_logic;
SIGNAL \Add3~35\ : std_logic;
SIGNAL \Add3~37\ : std_logic;
SIGNAL \Add3~39\ : std_logic;
SIGNAL \Add3~41\ : std_logic;
SIGNAL \Add3~43\ : std_logic;
SIGNAL \Add3~45\ : std_logic;
SIGNAL \Add3~47\ : std_logic;
SIGNAL \Add3~49\ : std_logic;
SIGNAL \Add3~51\ : std_logic;
SIGNAL \Add3~53\ : std_logic;
SIGNAL \Add3~54_combout\ : std_logic;
SIGNAL \Add3~52_combout\ : std_logic;
SIGNAL \Add3~50_combout\ : std_logic;
SIGNAL \Add3~48_combout\ : std_logic;
SIGNAL \Add3~46_combout\ : std_logic;
SIGNAL \Add3~44_combout\ : std_logic;
SIGNAL \Add3~42_combout\ : std_logic;
SIGNAL \Add3~40_combout\ : std_logic;
SIGNAL \Add3~38_combout\ : std_logic;
SIGNAL \Add3~36_combout\ : std_logic;
SIGNAL \Add3~34_combout\ : std_logic;
SIGNAL \Add3~32_combout\ : std_logic;
SIGNAL \Add3~30_combout\ : std_logic;
SIGNAL \Add3~28_combout\ : std_logic;
SIGNAL \Add3~26_combout\ : std_logic;
SIGNAL \Add3~24_combout\ : std_logic;
SIGNAL \Add3~22_combout\ : std_logic;
SIGNAL \Add3~20_combout\ : std_logic;
SIGNAL \Add3~18_combout\ : std_logic;
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \LessThan1~1_cout\ : std_logic;
SIGNAL \LessThan1~3_cout\ : std_logic;
SIGNAL \LessThan1~5_cout\ : std_logic;
SIGNAL \LessThan1~7_cout\ : std_logic;
SIGNAL \LessThan1~9_cout\ : std_logic;
SIGNAL \LessThan1~11_cout\ : std_logic;
SIGNAL \LessThan1~13_cout\ : std_logic;
SIGNAL \LessThan1~15_cout\ : std_logic;
SIGNAL \LessThan1~17_cout\ : std_logic;
SIGNAL \LessThan1~19_cout\ : std_logic;
SIGNAL \LessThan1~21_cout\ : std_logic;
SIGNAL \LessThan1~23_cout\ : std_logic;
SIGNAL \LessThan1~25_cout\ : std_logic;
SIGNAL \LessThan1~27_cout\ : std_logic;
SIGNAL \LessThan1~29_cout\ : std_logic;
SIGNAL \LessThan1~31_cout\ : std_logic;
SIGNAL \LessThan1~33_cout\ : std_logic;
SIGNAL \LessThan1~35_cout\ : std_logic;
SIGNAL \LessThan1~37_cout\ : std_logic;
SIGNAL \LessThan1~39_cout\ : std_logic;
SIGNAL \LessThan1~41_cout\ : std_logic;
SIGNAL \LessThan1~43_cout\ : std_logic;
SIGNAL \LessThan1~45_cout\ : std_logic;
SIGNAL \LessThan1~47_cout\ : std_logic;
SIGNAL \LessThan1~49_cout\ : std_logic;
SIGNAL \LessThan1~51_cout\ : std_logic;
SIGNAL \LessThan1~53_cout\ : std_logic;
SIGNAL \LessThan1~55_cout\ : std_logic;
SIGNAL \LessThan1~57_cout\ : std_logic;
SIGNAL \LessThan1~59_cout\ : std_logic;
SIGNAL \LessThan1~61_cout\ : std_logic;
SIGNAL \LessThan1~62_combout\ : std_logic;
SIGNAL \Selector36~1_combout\ : std_logic;
SIGNAL \est_act.buck1~q\ : std_logic;
SIGNAL \Selector37~1_combout\ : std_logic;
SIGNAL \Selector37~2_combout\ : std_logic;
SIGNAL \est_act.buck2~q\ : std_logic;
SIGNAL \LessThan9~7_combout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \LessThan4~1_combout\ : std_logic;
SIGNAL \softstart_duty_act[3]~3_combout\ : std_logic;
SIGNAL \Add5~59\ : std_logic;
SIGNAL \Add5~60_combout\ : std_logic;
SIGNAL \Add5~64_combout\ : std_logic;
SIGNAL \Add1~1_cout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~41\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~45\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~49\ : std_logic;
SIGNAL \Add1~51\ : std_logic;
SIGNAL \Add1~53\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~57\ : std_logic;
SIGNAL \Add1~59\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \Add1~58_combout\ : std_logic;
SIGNAL \Add1~56_combout\ : std_logic;
SIGNAL \Add1~54_combout\ : std_logic;
SIGNAL \Add1~52_combout\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \Add1~48_combout\ : std_logic;
SIGNAL \Add1~46_combout\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~15_cout\ : std_logic;
SIGNAL \LessThan0~17_cout\ : std_logic;
SIGNAL \LessThan0~19_cout\ : std_logic;
SIGNAL \LessThan0~21_cout\ : std_logic;
SIGNAL \LessThan0~23_cout\ : std_logic;
SIGNAL \LessThan0~25_cout\ : std_logic;
SIGNAL \LessThan0~27_cout\ : std_logic;
SIGNAL \LessThan0~29_cout\ : std_logic;
SIGNAL \LessThan0~31_cout\ : std_logic;
SIGNAL \LessThan0~33_cout\ : std_logic;
SIGNAL \LessThan0~35_cout\ : std_logic;
SIGNAL \LessThan0~37_cout\ : std_logic;
SIGNAL \LessThan0~39_cout\ : std_logic;
SIGNAL \LessThan0~41_cout\ : std_logic;
SIGNAL \LessThan0~43_cout\ : std_logic;
SIGNAL \LessThan0~45_cout\ : std_logic;
SIGNAL \LessThan0~47_cout\ : std_logic;
SIGNAL \LessThan0~49_cout\ : std_logic;
SIGNAL \LessThan0~51_cout\ : std_logic;
SIGNAL \LessThan0~53_cout\ : std_logic;
SIGNAL \LessThan0~55_cout\ : std_logic;
SIGNAL \LessThan0~57_cout\ : std_logic;
SIGNAL \LessThan0~59_cout\ : std_logic;
SIGNAL \LessThan0~61_cout\ : std_logic;
SIGNAL \LessThan0~62_combout\ : std_logic;
SIGNAL \LessThan5~4_combout\ : std_logic;
SIGNAL \Selector38~0_combout\ : std_logic;
SIGNAL \Selector38~1_combout\ : std_logic;
SIGNAL \Selector38~2_combout\ : std_logic;
SIGNAL \est_act.boost1softs~q\ : std_logic;
SIGNAL \Selector39~7_combout\ : std_logic;
SIGNAL \Selector39~10_combout\ : std_logic;
SIGNAL \est_sig~9_combout\ : std_logic;
SIGNAL \Selector39~11_combout\ : std_logic;
SIGNAL \est_act.boost2softs~q\ : std_logic;
SIGNAL \countactual1[8]~32_combout\ : std_logic;
SIGNAL \countactual1[8]~97_combout\ : std_logic;
SIGNAL \countactual1[0]~34\ : std_logic;
SIGNAL \countactual1[1]~35_combout\ : std_logic;
SIGNAL \countactual1[1]~36\ : std_logic;
SIGNAL \countactual1[2]~37_combout\ : std_logic;
SIGNAL \LessThan3~7_combout\ : std_logic;
SIGNAL \LessThan3~8_combout\ : std_logic;
SIGNAL \est_sig~8_combout\ : std_logic;
SIGNAL \softstart_duty_act[3]~1_combout\ : std_logic;
SIGNAL \est_sig~7_combout\ : std_logic;
SIGNAL \LessThan5~3_combout\ : std_logic;
SIGNAL \LessThan9~8_combout\ : std_logic;
SIGNAL \softstart_duty_act[3]~0_combout\ : std_logic;
SIGNAL \softstart_duty_act[3]~2_combout\ : std_logic;
SIGNAL \softstart_duty_act[3]~4_combout\ : std_logic;
SIGNAL \Add5~61\ : std_logic;
SIGNAL \Add5~62_combout\ : std_logic;
SIGNAL \softstart_duty_act[31]~5_combout\ : std_logic;
SIGNAL \LessThan7~1_cout\ : std_logic;
SIGNAL \LessThan7~3_cout\ : std_logic;
SIGNAL \LessThan7~5_cout\ : std_logic;
SIGNAL \LessThan7~7_cout\ : std_logic;
SIGNAL \LessThan7~9_cout\ : std_logic;
SIGNAL \LessThan7~11_cout\ : std_logic;
SIGNAL \LessThan7~13_cout\ : std_logic;
SIGNAL \LessThan7~15_cout\ : std_logic;
SIGNAL \LessThan7~17_cout\ : std_logic;
SIGNAL \LessThan7~19_cout\ : std_logic;
SIGNAL \LessThan7~21_cout\ : std_logic;
SIGNAL \LessThan7~23_cout\ : std_logic;
SIGNAL \LessThan7~25_cout\ : std_logic;
SIGNAL \LessThan7~27_cout\ : std_logic;
SIGNAL \LessThan7~29_cout\ : std_logic;
SIGNAL \LessThan7~31_cout\ : std_logic;
SIGNAL \LessThan7~33_cout\ : std_logic;
SIGNAL \LessThan7~35_cout\ : std_logic;
SIGNAL \LessThan7~37_cout\ : std_logic;
SIGNAL \LessThan7~39_cout\ : std_logic;
SIGNAL \LessThan7~41_cout\ : std_logic;
SIGNAL \LessThan7~43_cout\ : std_logic;
SIGNAL \LessThan7~45_cout\ : std_logic;
SIGNAL \LessThan7~47_cout\ : std_logic;
SIGNAL \LessThan7~49_cout\ : std_logic;
SIGNAL \LessThan7~51_cout\ : std_logic;
SIGNAL \LessThan7~53_cout\ : std_logic;
SIGNAL \LessThan7~55_cout\ : std_logic;
SIGNAL \LessThan7~57_cout\ : std_logic;
SIGNAL \LessThan7~59_cout\ : std_logic;
SIGNAL \LessThan7~61_cout\ : std_logic;
SIGNAL \LessThan7~62_combout\ : std_logic;
SIGNAL \Add6~1\ : std_logic;
SIGNAL \Add6~3\ : std_logic;
SIGNAL \Add6~5\ : std_logic;
SIGNAL \Add6~7\ : std_logic;
SIGNAL \Add6~9\ : std_logic;
SIGNAL \Add6~11\ : std_logic;
SIGNAL \Add6~13\ : std_logic;
SIGNAL \Add6~15\ : std_logic;
SIGNAL \Add6~17\ : std_logic;
SIGNAL \Add6~19\ : std_logic;
SIGNAL \Add6~21\ : std_logic;
SIGNAL \Add6~23\ : std_logic;
SIGNAL \Add6~25\ : std_logic;
SIGNAL \Add6~27\ : std_logic;
SIGNAL \Add6~29\ : std_logic;
SIGNAL \Add6~31\ : std_logic;
SIGNAL \Add6~33\ : std_logic;
SIGNAL \Add6~35\ : std_logic;
SIGNAL \Add6~37\ : std_logic;
SIGNAL \Add6~39\ : std_logic;
SIGNAL \Add6~41\ : std_logic;
SIGNAL \Add6~43\ : std_logic;
SIGNAL \Add6~45\ : std_logic;
SIGNAL \Add6~47\ : std_logic;
SIGNAL \Add6~49\ : std_logic;
SIGNAL \Add6~51\ : std_logic;
SIGNAL \Add6~53\ : std_logic;
SIGNAL \Add6~55\ : std_logic;
SIGNAL \Add6~57\ : std_logic;
SIGNAL \Add6~59\ : std_logic;
SIGNAL \Add6~60_combout\ : std_logic;
SIGNAL \Add6~58_combout\ : std_logic;
SIGNAL \Add6~56_combout\ : std_logic;
SIGNAL \Add6~54_combout\ : std_logic;
SIGNAL \Add6~52_combout\ : std_logic;
SIGNAL \Add6~50_combout\ : std_logic;
SIGNAL \Add6~48_combout\ : std_logic;
SIGNAL \Add6~46_combout\ : std_logic;
SIGNAL \Add6~44_combout\ : std_logic;
SIGNAL \Add6~42_combout\ : std_logic;
SIGNAL \Add6~40_combout\ : std_logic;
SIGNAL \Add6~38_combout\ : std_logic;
SIGNAL \Add6~36_combout\ : std_logic;
SIGNAL \Add6~34_combout\ : std_logic;
SIGNAL \Add6~32_combout\ : std_logic;
SIGNAL \Add6~30_combout\ : std_logic;
SIGNAL \Add6~28_combout\ : std_logic;
SIGNAL \Add6~26_combout\ : std_logic;
SIGNAL \Add6~24_combout\ : std_logic;
SIGNAL \Add6~22_combout\ : std_logic;
SIGNAL \Add6~20_combout\ : std_logic;
SIGNAL \Add6~18_combout\ : std_logic;
SIGNAL \Add6~16_combout\ : std_logic;
SIGNAL \Add6~14_combout\ : std_logic;
SIGNAL \Add6~12_combout\ : std_logic;
SIGNAL \Add6~10_combout\ : std_logic;
SIGNAL \Add6~8_combout\ : std_logic;
SIGNAL \Add6~6_combout\ : std_logic;
SIGNAL \Add6~4_combout\ : std_logic;
SIGNAL \Add6~2_combout\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \LessThan6~1_cout\ : std_logic;
SIGNAL \LessThan6~3_cout\ : std_logic;
SIGNAL \LessThan6~5_cout\ : std_logic;
SIGNAL \LessThan6~7_cout\ : std_logic;
SIGNAL \LessThan6~9_cout\ : std_logic;
SIGNAL \LessThan6~11_cout\ : std_logic;
SIGNAL \LessThan6~13_cout\ : std_logic;
SIGNAL \LessThan6~15_cout\ : std_logic;
SIGNAL \LessThan6~17_cout\ : std_logic;
SIGNAL \LessThan6~19_cout\ : std_logic;
SIGNAL \LessThan6~21_cout\ : std_logic;
SIGNAL \LessThan6~23_cout\ : std_logic;
SIGNAL \LessThan6~25_cout\ : std_logic;
SIGNAL \LessThan6~27_cout\ : std_logic;
SIGNAL \LessThan6~29_cout\ : std_logic;
SIGNAL \LessThan6~31_cout\ : std_logic;
SIGNAL \LessThan6~33_cout\ : std_logic;
SIGNAL \LessThan6~35_cout\ : std_logic;
SIGNAL \LessThan6~37_cout\ : std_logic;
SIGNAL \LessThan6~39_cout\ : std_logic;
SIGNAL \LessThan6~41_cout\ : std_logic;
SIGNAL \LessThan6~43_cout\ : std_logic;
SIGNAL \LessThan6~45_cout\ : std_logic;
SIGNAL \LessThan6~47_cout\ : std_logic;
SIGNAL \LessThan6~49_cout\ : std_logic;
SIGNAL \LessThan6~51_cout\ : std_logic;
SIGNAL \LessThan6~53_cout\ : std_logic;
SIGNAL \LessThan6~55_cout\ : std_logic;
SIGNAL \LessThan6~57_cout\ : std_logic;
SIGNAL \LessThan6~59_cout\ : std_logic;
SIGNAL \LessThan6~61_cout\ : std_logic;
SIGNAL \LessThan6~62_combout\ : std_logic;
SIGNAL \Selector41~0_combout\ : std_logic;
SIGNAL \Selector41~1_combout\ : std_logic;
SIGNAL \Selector41~3_combout\ : std_logic;
SIGNAL \est_act.boost2~q\ : std_logic;
SIGNAL \Selector40~0_combout\ : std_logic;
SIGNAL \Selector40~1_combout\ : std_logic;
SIGNAL \est_act.boost1~q\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \PWM_H1~reg0_q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \PWM_L1~reg0_q\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \PWM_H2~reg0_q\ : std_logic;
SIGNAL \PWM_L2_sig~0_combout\ : std_logic;
SIGNAL \PWM_L2~reg0_q\ : std_logic;
SIGNAL \countwdg_act[0]~32_combout\ : std_logic;
SIGNAL \wdg_reset~input_o\ : std_logic;
SIGNAL \LessThan11~0_combout\ : std_logic;
SIGNAL \countwdg_act[6]~45\ : std_logic;
SIGNAL \countwdg_act[7]~46_combout\ : std_logic;
SIGNAL \LessThan11~1_combout\ : std_logic;
SIGNAL \countwdg_act[7]~47\ : std_logic;
SIGNAL \countwdg_act[8]~48_combout\ : std_logic;
SIGNAL \countwdg_act[8]~49\ : std_logic;
SIGNAL \countwdg_act[9]~50_combout\ : std_logic;
SIGNAL \countwdg_act[9]~51\ : std_logic;
SIGNAL \countwdg_act[10]~52_combout\ : std_logic;
SIGNAL \countwdg_act[10]~53\ : std_logic;
SIGNAL \countwdg_act[11]~54_combout\ : std_logic;
SIGNAL \countwdg_act[11]~55\ : std_logic;
SIGNAL \countwdg_act[12]~56_combout\ : std_logic;
SIGNAL \countwdg_act[12]~57\ : std_logic;
SIGNAL \countwdg_act[13]~58_combout\ : std_logic;
SIGNAL \countwdg_act[13]~59\ : std_logic;
SIGNAL \countwdg_act[14]~60_combout\ : std_logic;
SIGNAL \countwdg_act[14]~61\ : std_logic;
SIGNAL \countwdg_act[15]~62_combout\ : std_logic;
SIGNAL \countwdg_act[15]~63\ : std_logic;
SIGNAL \countwdg_act[16]~64_combout\ : std_logic;
SIGNAL \LessThan10~1_combout\ : std_logic;
SIGNAL \countwdg_act[16]~65\ : std_logic;
SIGNAL \countwdg_act[17]~66_combout\ : std_logic;
SIGNAL \countwdg_act[17]~67\ : std_logic;
SIGNAL \countwdg_act[18]~68_combout\ : std_logic;
SIGNAL \countwdg_act[18]~69\ : std_logic;
SIGNAL \countwdg_act[19]~70_combout\ : std_logic;
SIGNAL \countwdg_act[19]~71\ : std_logic;
SIGNAL \countwdg_act[20]~72_combout\ : std_logic;
SIGNAL \countwdg_act[20]~73\ : std_logic;
SIGNAL \countwdg_act[21]~74_combout\ : std_logic;
SIGNAL \countwdg_act[21]~75\ : std_logic;
SIGNAL \countwdg_act[22]~76_combout\ : std_logic;
SIGNAL \countwdg_act[22]~77\ : std_logic;
SIGNAL \countwdg_act[23]~78_combout\ : std_logic;
SIGNAL \countwdg_act[23]~79\ : std_logic;
SIGNAL \countwdg_act[24]~80_combout\ : std_logic;
SIGNAL \LessThan10~3_combout\ : std_logic;
SIGNAL \LessThan10~2_combout\ : std_logic;
SIGNAL \LessThan10~0_combout\ : std_logic;
SIGNAL \LessThan10~4_combout\ : std_logic;
SIGNAL \countwdg_act[24]~81\ : std_logic;
SIGNAL \countwdg_act[25]~82_combout\ : std_logic;
SIGNAL \countwdg_act[25]~83\ : std_logic;
SIGNAL \countwdg_act[26]~84_combout\ : std_logic;
SIGNAL \countwdg_act[26]~85\ : std_logic;
SIGNAL \countwdg_act[27]~86_combout\ : std_logic;
SIGNAL \countwdg_act[27]~87\ : std_logic;
SIGNAL \countwdg_act[28]~88_combout\ : std_logic;
SIGNAL \countwdg_act[28]~89\ : std_logic;
SIGNAL \countwdg_act[29]~90_combout\ : std_logic;
SIGNAL \countwdg_act[29]~91\ : std_logic;
SIGNAL \countwdg_act[30]~92_combout\ : std_logic;
SIGNAL \LessThan10~5_combout\ : std_logic;
SIGNAL \LessThan10~6_combout\ : std_logic;
SIGNAL \countwdg_act[30]~93\ : std_logic;
SIGNAL \countwdg_act[31]~94_combout\ : std_logic;
SIGNAL \LessThan11~2_combout\ : std_logic;
SIGNAL \countwdg_act[0]~33\ : std_logic;
SIGNAL \countwdg_act[1]~34_combout\ : std_logic;
SIGNAL \countwdg_act[1]~35\ : std_logic;
SIGNAL \countwdg_act[2]~36_combout\ : std_logic;
SIGNAL \countwdg_act[2]~37\ : std_logic;
SIGNAL \countwdg_act[3]~38_combout\ : std_logic;
SIGNAL \countwdg_act[3]~39\ : std_logic;
SIGNAL \countwdg_act[4]~40_combout\ : std_logic;
SIGNAL \countwdg_act[4]~41\ : std_logic;
SIGNAL \countwdg_act[5]~42_combout\ : std_logic;
SIGNAL \countwdg_act[5]~43\ : std_logic;
SIGNAL \countwdg_act[6]~44_combout\ : std_logic;
SIGNAL \LessThan10~8_combout\ : std_logic;
SIGNAL \LessThan10~7_combout\ : std_logic;
SIGNAL \LessThan10~9_combout\ : std_logic;
SIGNAL \LessThan10~10_combout\ : std_logic;
SIGNAL \countset_act[0]~19_combout\ : std_logic;
SIGNAL \countset_act[0]~20\ : std_logic;
SIGNAL \countset_act[1]~21_combout\ : std_logic;
SIGNAL \countset_act[1]~22\ : std_logic;
SIGNAL \countset_act[2]~23_combout\ : std_logic;
SIGNAL \countset_act[2]~24\ : std_logic;
SIGNAL \countset_act[3]~25_combout\ : std_logic;
SIGNAL \countset_act[3]~26\ : std_logic;
SIGNAL \countset_act[4]~27_combout\ : std_logic;
SIGNAL \countset_act[4]~28\ : std_logic;
SIGNAL \countset_act[5]~29_combout\ : std_logic;
SIGNAL \countset_act[5]~30\ : std_logic;
SIGNAL \countset_act[6]~31_combout\ : std_logic;
SIGNAL \countset_act[6]~32\ : std_logic;
SIGNAL \countset_act[7]~33_combout\ : std_logic;
SIGNAL \countset_act[7]~34\ : std_logic;
SIGNAL \countset_act[8]~35_combout\ : std_logic;
SIGNAL \countset_act[8]~36\ : std_logic;
SIGNAL \countset_act[9]~37_combout\ : std_logic;
SIGNAL \countset_act[9]~38\ : std_logic;
SIGNAL \countset_act[10]~39_combout\ : std_logic;
SIGNAL \countset_act[10]~40\ : std_logic;
SIGNAL \countset_act[11]~41_combout\ : std_logic;
SIGNAL \countset_act[11]~42\ : std_logic;
SIGNAL \countset_act[12]~43_combout\ : std_logic;
SIGNAL \countset_act[12]~44\ : std_logic;
SIGNAL \countset_act[13]~45_combout\ : std_logic;
SIGNAL \countset_act[13]~46\ : std_logic;
SIGNAL \countset_act[14]~47_combout\ : std_logic;
SIGNAL \countset_act[14]~48\ : std_logic;
SIGNAL \countset_act[15]~49_combout\ : std_logic;
SIGNAL \countset_act[15]~50\ : std_logic;
SIGNAL \countset_act[16]~51_combout\ : std_logic;
SIGNAL \countset_act[16]~52\ : std_logic;
SIGNAL \countset_act[17]~53_combout\ : std_logic;
SIGNAL \countset_act[17]~54\ : std_logic;
SIGNAL \countset_act[18]~55_combout\ : std_logic;
SIGNAL \set_process~3_combout\ : std_logic;
SIGNAL \set_btn~input_o\ : std_logic;
SIGNAL \set_process~1_combout\ : std_logic;
SIGNAL \set_process~0_combout\ : std_logic;
SIGNAL \set_process~2_combout\ : std_logic;
SIGNAL \set_process~4_combout\ : std_logic;
SIGNAL \set_out~0_combout\ : std_logic;
SIGNAL \reset_btn~input_o\ : std_logic;
SIGNAL \countreset_act[0]~19_combout\ : std_logic;
SIGNAL \countreset_act[0]~20\ : std_logic;
SIGNAL \countreset_act[1]~21_combout\ : std_logic;
SIGNAL \countreset_act[1]~22\ : std_logic;
SIGNAL \countreset_act[2]~23_combout\ : std_logic;
SIGNAL \countreset_act[2]~24\ : std_logic;
SIGNAL \countreset_act[3]~25_combout\ : std_logic;
SIGNAL \countreset_act[3]~26\ : std_logic;
SIGNAL \countreset_act[4]~27_combout\ : std_logic;
SIGNAL \countreset_act[4]~28\ : std_logic;
SIGNAL \countreset_act[5]~29_combout\ : std_logic;
SIGNAL \countreset_act[5]~30\ : std_logic;
SIGNAL \countreset_act[6]~31_combout\ : std_logic;
SIGNAL \countreset_act[6]~32\ : std_logic;
SIGNAL \countreset_act[7]~33_combout\ : std_logic;
SIGNAL \countreset_act[7]~34\ : std_logic;
SIGNAL \countreset_act[8]~35_combout\ : std_logic;
SIGNAL \countreset_act[8]~36\ : std_logic;
SIGNAL \countreset_act[9]~37_combout\ : std_logic;
SIGNAL \countreset_act[9]~38\ : std_logic;
SIGNAL \countreset_act[10]~39_combout\ : std_logic;
SIGNAL \countreset_act[10]~40\ : std_logic;
SIGNAL \countreset_act[11]~41_combout\ : std_logic;
SIGNAL \countreset_act[11]~42\ : std_logic;
SIGNAL \countreset_act[12]~43_combout\ : std_logic;
SIGNAL \countreset_act[12]~44\ : std_logic;
SIGNAL \countreset_act[13]~45_combout\ : std_logic;
SIGNAL \countreset_act[13]~46\ : std_logic;
SIGNAL \countreset_act[14]~47_combout\ : std_logic;
SIGNAL \reset_process~1_combout\ : std_logic;
SIGNAL \reset_process~0_combout\ : std_logic;
SIGNAL \reset_process~2_combout\ : std_logic;
SIGNAL \countreset_act[14]~48\ : std_logic;
SIGNAL \countreset_act[15]~49_combout\ : std_logic;
SIGNAL \countreset_act[15]~50\ : std_logic;
SIGNAL \countreset_act[16]~51_combout\ : std_logic;
SIGNAL \countreset_act[16]~52\ : std_logic;
SIGNAL \countreset_act[17]~53_combout\ : std_logic;
SIGNAL \countreset_act[17]~54\ : std_logic;
SIGNAL \countreset_act[18]~55_combout\ : std_logic;
SIGNAL \reset_process~3_combout\ : std_logic;
SIGNAL \reset_process~4_combout\ : std_logic;
SIGNAL \reset_out~0_combout\ : std_logic;
SIGNAL countwdg_act : std_logic_vector(31 DOWNTO 0);
SIGNAL countactual1 : std_logic_vector(31 DOWNTO 0);
SIGNAL countset_act : std_logic_vector(18 DOWNTO 0);
SIGNAL countreset_act : std_logic_vector(18 DOWNTO 0);
SIGNAL softstart_duty_act : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_reset_out~0_combout\ : std_logic;
SIGNAL \ALT_INV_set_out~0_combout\ : std_logic;

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
PWM_L1 <= ww_PWM_L1;
PWM_H2 <= ww_PWM_H2;
PWM_L2 <= ww_PWM_L2;
wdg_out <= ww_wdg_out;
ww_set_btn <= set_btn;
ww_reset_btn <= reset_btn;
set_out <= ww_set_out;
reset_out <= ww_reset_out;
ww_wdg_reset <= wdg_reset;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset_out~0_combout\ <= NOT \reset_out~0_combout\;
\ALT_INV_set_out~0_combout\ <= NOT \set_out~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y45_N16
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
	i => \PWM_H1~reg0_q\,
	devoe => ww_devoe,
	o => \PWM_H1~output_o\);

-- Location: IOOBUF_X31_Y0_N30
\PWM_L1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PWM_L1~reg0_q\,
	devoe => ww_devoe,
	o => \PWM_L1~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\PWM_H2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PWM_H2~reg0_q\,
	devoe => ww_devoe,
	o => \PWM_H2~output_o\);

-- Location: IOOBUF_X22_Y0_N16
\PWM_L2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PWM_L2~reg0_q\,
	devoe => ww_devoe,
	o => \PWM_L2~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\wdg_out~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LessThan10~10_combout\,
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
	i => \set_out~0_combout\,
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
	i => \reset_out~0_combout\,
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

-- Location: LCCOMB_X54_Y41_N0
\countactual1[0]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countactual1[0]~33_combout\ = countactual1(0) $ (VCC)
-- \countactual1[0]~34\ = CARRY(countactual1(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => countactual1(0),
	datad => VCC,
	combout => \countactual1[0]~33_combout\,
	cout => \countactual1[0]~34\);

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

-- Location: LCCOMB_X54_Y41_N4
\countactual1[2]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countactual1[2]~37_combout\ = (countactual1(2) & (\countactual1[1]~36\ $ (GND))) # (!countactual1(2) & (!\countactual1[1]~36\ & VCC))
-- \countactual1[2]~38\ = CARRY((countactual1(2) & !\countactual1[1]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countactual1(2),
	datad => VCC,
	cin => \countactual1[1]~36\,
	combout => \countactual1[2]~37_combout\,
	cout => \countactual1[2]~38\);

-- Location: LCCOMB_X54_Y41_N6
\countactual1[3]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countactual1[3]~39_combout\ = (countactual1(3) & (!\countactual1[2]~38\)) # (!countactual1(3) & ((\countactual1[2]~38\) # (GND)))
-- \countactual1[3]~40\ = CARRY((!\countactual1[2]~38\) # (!countactual1(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(3),
	datad => VCC,
	cin => \countactual1[2]~38\,
	combout => \countactual1[3]~39_combout\,
	cout => \countactual1[3]~40\);

-- Location: LCCOMB_X55_Y37_N12
\est_act.idle~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \est_act.idle~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \est_act.idle~feeder_combout\);

-- Location: FF_X55_Y37_N13
\est_act.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \est_act.idle~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \est_act.idle~q\);

-- Location: FF_X54_Y41_N7
\countactual1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countactual1[3]~39_combout\,
	clrn => \reset~input_o\,
	sclr => \countactual1[8]~97_combout\,
	ena => \est_act.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countactual1(3));

-- Location: LCCOMB_X54_Y41_N8
\countactual1[4]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countactual1[4]~41_combout\ = (countactual1(4) & (\countactual1[3]~40\ $ (GND))) # (!countactual1(4) & (!\countactual1[3]~40\ & VCC))
-- \countactual1[4]~42\ = CARRY((countactual1(4) & !\countactual1[3]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countactual1(4),
	datad => VCC,
	cin => \countactual1[3]~40\,
	combout => \countactual1[4]~41_combout\,
	cout => \countactual1[4]~42\);

-- Location: FF_X54_Y41_N9
\countactual1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countactual1[4]~41_combout\,
	clrn => \reset~input_o\,
	sclr => \countactual1[8]~97_combout\,
	ena => \est_act.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countactual1(4));

-- Location: LCCOMB_X54_Y41_N10
\countactual1[5]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countactual1[5]~43_combout\ = (countactual1(5) & (!\countactual1[4]~42\)) # (!countactual1(5) & ((\countactual1[4]~42\) # (GND)))
-- \countactual1[5]~44\ = CARRY((!\countactual1[4]~42\) # (!countactual1(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(5),
	datad => VCC,
	cin => \countactual1[4]~42\,
	combout => \countactual1[5]~43_combout\,
	cout => \countactual1[5]~44\);

-- Location: FF_X54_Y41_N11
\countactual1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countactual1[5]~43_combout\,
	clrn => \reset~input_o\,
	sclr => \countactual1[8]~97_combout\,
	ena => \est_act.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countactual1(5));

-- Location: LCCOMB_X54_Y41_N12
\countactual1[6]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countactual1[6]~45_combout\ = (countactual1(6) & (\countactual1[5]~44\ $ (GND))) # (!countactual1(6) & (!\countactual1[5]~44\ & VCC))
-- \countactual1[6]~46\ = CARRY((countactual1(6) & !\countactual1[5]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(6),
	datad => VCC,
	cin => \countactual1[5]~44\,
	combout => \countactual1[6]~45_combout\,
	cout => \countactual1[6]~46\);

-- Location: FF_X54_Y41_N13
\countactual1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countactual1[6]~45_combout\,
	clrn => \reset~input_o\,
	sclr => \countactual1[8]~97_combout\,
	ena => \est_act.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countactual1(6));

-- Location: LCCOMB_X54_Y41_N14
\countactual1[7]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countactual1[7]~47_combout\ = (countactual1(7) & (!\countactual1[6]~46\)) # (!countactual1(7) & ((\countactual1[6]~46\) # (GND)))
-- \countactual1[7]~48\ = CARRY((!\countactual1[6]~46\) # (!countactual1(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countactual1(7),
	datad => VCC,
	cin => \countactual1[6]~46\,
	combout => \countactual1[7]~47_combout\,
	cout => \countactual1[7]~48\);

-- Location: FF_X54_Y41_N15
\countactual1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countactual1[7]~47_combout\,
	clrn => \reset~input_o\,
	sclr => \countactual1[8]~97_combout\,
	ena => \est_act.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countactual1(7));

-- Location: LCCOMB_X54_Y41_N16
\countactual1[8]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countactual1[8]~49_combout\ = (countactual1(8) & (\countactual1[7]~48\ $ (GND))) # (!countactual1(8) & (!\countactual1[7]~48\ & VCC))
-- \countactual1[8]~50\ = CARRY((countactual1(8) & !\countactual1[7]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countactual1(8),
	datad => VCC,
	cin => \countactual1[7]~48\,
	combout => \countactual1[8]~49_combout\,
	cout => \countactual1[8]~50\);

-- Location: FF_X54_Y41_N17
\countactual1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countactual1[8]~49_combout\,
	clrn => \reset~input_o\,
	sclr => \countactual1[8]~97_combout\,
	ena => \est_act.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countactual1(8));

-- Location: LCCOMB_X54_Y41_N18
\countactual1[9]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countactual1[9]~51_combout\ = (countactual1(9) & (!\countactual1[8]~50\)) # (!countactual1(9) & ((\countactual1[8]~50\) # (GND)))
-- \countactual1[9]~52\ = CARRY((!\countactual1[8]~50\) # (!countactual1(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countactual1(9),
	datad => VCC,
	cin => \countactual1[8]~50\,
	combout => \countactual1[9]~51_combout\,
	cout => \countactual1[9]~52\);

-- Location: FF_X54_Y41_N19
\countactual1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countactual1[9]~51_combout\,
	clrn => \reset~input_o\,
	sclr => \countactual1[8]~97_combout\,
	ena => \est_act.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countactual1(9));

-- Location: LCCOMB_X54_Y41_N20
\countactual1[10]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countactual1[10]~53_combout\ = (countactual1(10) & (\countactual1[9]~52\ $ (GND))) # (!countactual1(10) & (!\countactual1[9]~52\ & VCC))
-- \countactual1[10]~54\ = CARRY((countactual1(10) & !\countactual1[9]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countactual1(10),
	datad => VCC,
	cin => \countactual1[9]~52\,
	combout => \countactual1[10]~53_combout\,
	cout => \countactual1[10]~54\);

-- Location: FF_X54_Y41_N21
\countactual1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countactual1[10]~53_combout\,
	clrn => \reset~input_o\,
	sclr => \countactual1[8]~97_combout\,
	ena => \est_act.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countactual1(10));

-- Location: LCCOMB_X54_Y41_N22
\countactual1[11]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countactual1[11]~55_combout\ = (countactual1(11) & (!\countactual1[10]~54\)) # (!countactual1(11) & ((\countactual1[10]~54\) # (GND)))
-- \countactual1[11]~56\ = CARRY((!\countactual1[10]~54\) # (!countactual1(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(11),
	datad => VCC,
	cin => \countactual1[10]~54\,
	combout => \countactual1[11]~55_combout\,
	cout => \countactual1[11]~56\);

-- Location: FF_X54_Y41_N23
\countactual1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countactual1[11]~55_combout\,
	clrn => \reset~input_o\,
	sclr => \countactual1[8]~97_combout\,
	ena => \est_act.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countactual1(11));

-- Location: LCCOMB_X54_Y41_N24
\countactual1[12]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countactual1[12]~57_combout\ = (countactual1(12) & (\countactual1[11]~56\ $ (GND))) # (!countactual1(12) & (!\countactual1[11]~56\ & VCC))
-- \countactual1[12]~58\ = CARRY((countactual1(12) & !\countactual1[11]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countactual1(12),
	datad => VCC,
	cin => \countactual1[11]~56\,
	combout => \countactual1[12]~57_combout\,
	cout => \countactual1[12]~58\);

-- Location: FF_X54_Y41_N25
\countactual1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countactual1[12]~57_combout\,
	clrn => \reset~input_o\,
	sclr => \countactual1[8]~97_combout\,
	ena => \est_act.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countactual1(12));

-- Location: LCCOMB_X54_Y41_N26
\countactual1[13]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countactual1[13]~59_combout\ = (countactual1(13) & (!\countactual1[12]~58\)) # (!countactual1(13) & ((\countactual1[12]~58\) # (GND)))
-- \countactual1[13]~60\ = CARRY((!\countactual1[12]~58\) # (!countactual1(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(13),
	datad => VCC,
	cin => \countactual1[12]~58\,
	combout => \countactual1[13]~59_combout\,
	cout => \countactual1[13]~60\);

-- Location: FF_X54_Y41_N27
\countactual1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countactual1[13]~59_combout\,
	clrn => \reset~input_o\,
	sclr => \countactual1[8]~97_combout\,
	ena => \est_act.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countactual1(13));

-- Location: LCCOMB_X54_Y41_N28
\countactual1[14]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countactual1[14]~61_combout\ = (countactual1(14) & (\countactual1[13]~60\ $ (GND))) # (!countactual1(14) & (!\countactual1[13]~60\ & VCC))
-- \countactual1[14]~62\ = CARRY((countactual1(14) & !\countactual1[13]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countactual1(14),
	datad => VCC,
	cin => \countactual1[13]~60\,
	combout => \countactual1[14]~61_combout\,
	cout => \countactual1[14]~62\);

-- Location: FF_X54_Y41_N29
\countactual1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countactual1[14]~61_combout\,
	clrn => \reset~input_o\,
	sclr => \countactual1[8]~97_combout\,
	ena => \est_act.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countactual1(14));

-- Location: LCCOMB_X54_Y41_N30
\countactual1[15]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countactual1[15]~63_combout\ = (countactual1(15) & (!\countactual1[14]~62\)) # (!countactual1(15) & ((\countactual1[14]~62\) # (GND)))
-- \countactual1[15]~64\ = CARRY((!\countactual1[14]~62\) # (!countactual1(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(15),
	datad => VCC,
	cin => \countactual1[14]~62\,
	combout => \countactual1[15]~63_combout\,
	cout => \countactual1[15]~64\);

-- Location: FF_X54_Y41_N31
\countactual1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countactual1[15]~63_combout\,
	clrn => \reset~input_o\,
	sclr => \countactual1[8]~97_combout\,
	ena => \est_act.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countactual1(15));

-- Location: LCCOMB_X54_Y40_N0
\countactual1[16]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countactual1[16]~65_combout\ = (countactual1(16) & (\countactual1[15]~64\ $ (GND))) # (!countactual1(16) & (!\countactual1[15]~64\ & VCC))
-- \countactual1[16]~66\ = CARRY((countactual1(16) & !\countactual1[15]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countactual1(16),
	datad => VCC,
	cin => \countactual1[15]~64\,
	combout => \countactual1[16]~65_combout\,
	cout => \countactual1[16]~66\);

-- Location: FF_X54_Y40_N1
\countactual1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countactual1[16]~65_combout\,
	clrn => \reset~input_o\,
	sclr => \countactual1[8]~97_combout\,
	ena => \est_act.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countactual1(16));

-- Location: LCCOMB_X54_Y40_N2
\countactual1[17]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countactual1[17]~67_combout\ = (countactual1(17) & (!\countactual1[16]~66\)) # (!countactual1(17) & ((\countactual1[16]~66\) # (GND)))
-- \countactual1[17]~68\ = CARRY((!\countactual1[16]~66\) # (!countactual1(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countactual1(17),
	datad => VCC,
	cin => \countactual1[16]~66\,
	combout => \countactual1[17]~67_combout\,
	cout => \countactual1[17]~68\);

-- Location: FF_X54_Y40_N3
\countactual1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countactual1[17]~67_combout\,
	clrn => \reset~input_o\,
	sclr => \countactual1[8]~97_combout\,
	ena => \est_act.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countactual1(17));

-- Location: LCCOMB_X54_Y40_N4
\countactual1[18]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countactual1[18]~69_combout\ = (countactual1(18) & (\countactual1[17]~68\ $ (GND))) # (!countactual1(18) & (!\countactual1[17]~68\ & VCC))
-- \countactual1[18]~70\ = CARRY((countactual1(18) & !\countactual1[17]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countactual1(18),
	datad => VCC,
	cin => \countactual1[17]~68\,
	combout => \countactual1[18]~69_combout\,
	cout => \countactual1[18]~70\);

-- Location: FF_X54_Y40_N5
\countactual1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countactual1[18]~69_combout\,
	clrn => \reset~input_o\,
	sclr => \countactual1[8]~97_combout\,
	ena => \est_act.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countactual1(18));

-- Location: LCCOMB_X54_Y40_N6
\countactual1[19]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countactual1[19]~71_combout\ = (countactual1(19) & (!\countactual1[18]~70\)) # (!countactual1(19) & ((\countactual1[18]~70\) # (GND)))
-- \countactual1[19]~72\ = CARRY((!\countactual1[18]~70\) # (!countactual1(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(19),
	datad => VCC,
	cin => \countactual1[18]~70\,
	combout => \countactual1[19]~71_combout\,
	cout => \countactual1[19]~72\);

-- Location: FF_X54_Y40_N7
\countactual1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countactual1[19]~71_combout\,
	clrn => \reset~input_o\,
	sclr => \countactual1[8]~97_combout\,
	ena => \est_act.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countactual1(19));

-- Location: LCCOMB_X54_Y40_N8
\countactual1[20]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countactual1[20]~73_combout\ = (countactual1(20) & (\countactual1[19]~72\ $ (GND))) # (!countactual1(20) & (!\countactual1[19]~72\ & VCC))
-- \countactual1[20]~74\ = CARRY((countactual1(20) & !\countactual1[19]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countactual1(20),
	datad => VCC,
	cin => \countactual1[19]~72\,
	combout => \countactual1[20]~73_combout\,
	cout => \countactual1[20]~74\);

-- Location: FF_X54_Y40_N9
\countactual1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countactual1[20]~73_combout\,
	clrn => \reset~input_o\,
	sclr => \countactual1[8]~97_combout\,
	ena => \est_act.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countactual1(20));

-- Location: LCCOMB_X54_Y40_N10
\countactual1[21]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countactual1[21]~75_combout\ = (countactual1(21) & (!\countactual1[20]~74\)) # (!countactual1(21) & ((\countactual1[20]~74\) # (GND)))
-- \countactual1[21]~76\ = CARRY((!\countactual1[20]~74\) # (!countactual1(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(21),
	datad => VCC,
	cin => \countactual1[20]~74\,
	combout => \countactual1[21]~75_combout\,
	cout => \countactual1[21]~76\);

-- Location: FF_X54_Y40_N11
\countactual1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countactual1[21]~75_combout\,
	clrn => \reset~input_o\,
	sclr => \countactual1[8]~97_combout\,
	ena => \est_act.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countactual1(21));

-- Location: LCCOMB_X54_Y40_N12
\countactual1[22]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countactual1[22]~77_combout\ = (countactual1(22) & (\countactual1[21]~76\ $ (GND))) # (!countactual1(22) & (!\countactual1[21]~76\ & VCC))
-- \countactual1[22]~78\ = CARRY((countactual1(22) & !\countactual1[21]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(22),
	datad => VCC,
	cin => \countactual1[21]~76\,
	combout => \countactual1[22]~77_combout\,
	cout => \countactual1[22]~78\);

-- Location: FF_X54_Y40_N13
\countactual1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countactual1[22]~77_combout\,
	clrn => \reset~input_o\,
	sclr => \countactual1[8]~97_combout\,
	ena => \est_act.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countactual1(22));

-- Location: LCCOMB_X54_Y40_N14
\countactual1[23]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countactual1[23]~79_combout\ = (countactual1(23) & (!\countactual1[22]~78\)) # (!countactual1(23) & ((\countactual1[22]~78\) # (GND)))
-- \countactual1[23]~80\ = CARRY((!\countactual1[22]~78\) # (!countactual1(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countactual1(23),
	datad => VCC,
	cin => \countactual1[22]~78\,
	combout => \countactual1[23]~79_combout\,
	cout => \countactual1[23]~80\);

-- Location: FF_X54_Y40_N15
\countactual1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countactual1[23]~79_combout\,
	clrn => \reset~input_o\,
	sclr => \countactual1[8]~97_combout\,
	ena => \est_act.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countactual1(23));

-- Location: LCCOMB_X54_Y40_N16
\countactual1[24]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countactual1[24]~81_combout\ = (countactual1(24) & (\countactual1[23]~80\ $ (GND))) # (!countactual1(24) & (!\countactual1[23]~80\ & VCC))
-- \countactual1[24]~82\ = CARRY((countactual1(24) & !\countactual1[23]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countactual1(24),
	datad => VCC,
	cin => \countactual1[23]~80\,
	combout => \countactual1[24]~81_combout\,
	cout => \countactual1[24]~82\);

-- Location: FF_X54_Y40_N17
\countactual1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countactual1[24]~81_combout\,
	clrn => \reset~input_o\,
	sclr => \countactual1[8]~97_combout\,
	ena => \est_act.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countactual1(24));

-- Location: LCCOMB_X54_Y40_N18
\countactual1[25]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countactual1[25]~83_combout\ = (countactual1(25) & (!\countactual1[24]~82\)) # (!countactual1(25) & ((\countactual1[24]~82\) # (GND)))
-- \countactual1[25]~84\ = CARRY((!\countactual1[24]~82\) # (!countactual1(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countactual1(25),
	datad => VCC,
	cin => \countactual1[24]~82\,
	combout => \countactual1[25]~83_combout\,
	cout => \countactual1[25]~84\);

-- Location: FF_X54_Y40_N19
\countactual1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countactual1[25]~83_combout\,
	clrn => \reset~input_o\,
	sclr => \countactual1[8]~97_combout\,
	ena => \est_act.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countactual1(25));

-- Location: LCCOMB_X54_Y40_N20
\countactual1[26]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countactual1[26]~85_combout\ = (countactual1(26) & (\countactual1[25]~84\ $ (GND))) # (!countactual1(26) & (!\countactual1[25]~84\ & VCC))
-- \countactual1[26]~86\ = CARRY((countactual1(26) & !\countactual1[25]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countactual1(26),
	datad => VCC,
	cin => \countactual1[25]~84\,
	combout => \countactual1[26]~85_combout\,
	cout => \countactual1[26]~86\);

-- Location: FF_X54_Y40_N21
\countactual1[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countactual1[26]~85_combout\,
	clrn => \reset~input_o\,
	sclr => \countactual1[8]~97_combout\,
	ena => \est_act.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countactual1(26));

-- Location: LCCOMB_X54_Y40_N22
\countactual1[27]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countactual1[27]~87_combout\ = (countactual1(27) & (!\countactual1[26]~86\)) # (!countactual1(27) & ((\countactual1[26]~86\) # (GND)))
-- \countactual1[27]~88\ = CARRY((!\countactual1[26]~86\) # (!countactual1(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(27),
	datad => VCC,
	cin => \countactual1[26]~86\,
	combout => \countactual1[27]~87_combout\,
	cout => \countactual1[27]~88\);

-- Location: FF_X54_Y40_N23
\countactual1[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countactual1[27]~87_combout\,
	clrn => \reset~input_o\,
	sclr => \countactual1[8]~97_combout\,
	ena => \est_act.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countactual1(27));

-- Location: LCCOMB_X54_Y40_N24
\countactual1[28]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countactual1[28]~89_combout\ = (countactual1(28) & (\countactual1[27]~88\ $ (GND))) # (!countactual1(28) & (!\countactual1[27]~88\ & VCC))
-- \countactual1[28]~90\ = CARRY((countactual1(28) & !\countactual1[27]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countactual1(28),
	datad => VCC,
	cin => \countactual1[27]~88\,
	combout => \countactual1[28]~89_combout\,
	cout => \countactual1[28]~90\);

-- Location: FF_X54_Y40_N25
\countactual1[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countactual1[28]~89_combout\,
	clrn => \reset~input_o\,
	sclr => \countactual1[8]~97_combout\,
	ena => \est_act.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countactual1(28));

-- Location: LCCOMB_X54_Y40_N26
\countactual1[29]~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countactual1[29]~91_combout\ = (countactual1(29) & (!\countactual1[28]~90\)) # (!countactual1(29) & ((\countactual1[28]~90\) # (GND)))
-- \countactual1[29]~92\ = CARRY((!\countactual1[28]~90\) # (!countactual1(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(29),
	datad => VCC,
	cin => \countactual1[28]~90\,
	combout => \countactual1[29]~91_combout\,
	cout => \countactual1[29]~92\);

-- Location: FF_X54_Y40_N27
\countactual1[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countactual1[29]~91_combout\,
	clrn => \reset~input_o\,
	sclr => \countactual1[8]~97_combout\,
	ena => \est_act.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countactual1(29));

-- Location: LCCOMB_X54_Y40_N28
\countactual1[30]~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countactual1[30]~93_combout\ = (countactual1(30) & (\countactual1[29]~92\ $ (GND))) # (!countactual1(30) & (!\countactual1[29]~92\ & VCC))
-- \countactual1[30]~94\ = CARRY((countactual1(30) & !\countactual1[29]~92\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countactual1(30),
	datad => VCC,
	cin => \countactual1[29]~92\,
	combout => \countactual1[30]~93_combout\,
	cout => \countactual1[30]~94\);

-- Location: FF_X54_Y40_N29
\countactual1[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countactual1[30]~93_combout\,
	clrn => \reset~input_o\,
	sclr => \countactual1[8]~97_combout\,
	ena => \est_act.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countactual1(30));

-- Location: LCCOMB_X54_Y38_N0
\LessThan3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan3~5_combout\ = (!countactual1(25) & (!countactual1(27) & (!countactual1(28) & !countactual1(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(25),
	datab => countactual1(27),
	datac => countactual1(28),
	datad => countactual1(26),
	combout => \LessThan3~5_combout\);

-- Location: LCCOMB_X54_Y39_N10
\LessThan3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan3~1_combout\ = (!countactual1(14) & (!countactual1(15) & (!countactual1(16) & !countactual1(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(14),
	datab => countactual1(15),
	datac => countactual1(16),
	datad => countactual1(13),
	combout => \LessThan3~1_combout\);

-- Location: LCCOMB_X54_Y39_N16
\LessThan3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = (!countactual1(11) & (!countactual1(12) & (!countactual1(10) & !countactual1(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(11),
	datab => countactual1(12),
	datac => countactual1(10),
	datad => countactual1(9),
	combout => \LessThan3~0_combout\);

-- Location: LCCOMB_X54_Y39_N12
\LessThan3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan3~2_combout\ = (!countactual1(19) & (!countactual1(18) & (!countactual1(17) & !countactual1(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(19),
	datab => countactual1(18),
	datac => countactual1(17),
	datad => countactual1(20),
	combout => \LessThan3~2_combout\);

-- Location: LCCOMB_X54_Y39_N6
\LessThan3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan3~3_combout\ = (!countactual1(22) & (!countactual1(23) & (!countactual1(24) & !countactual1(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(22),
	datab => countactual1(23),
	datac => countactual1(24),
	datad => countactual1(21),
	combout => \LessThan3~3_combout\);

-- Location: LCCOMB_X54_Y39_N24
\LessThan3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan3~4_combout\ = (\LessThan3~1_combout\ & (\LessThan3~0_combout\ & (\LessThan3~2_combout\ & \LessThan3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~1_combout\,
	datab => \LessThan3~0_combout\,
	datac => \LessThan3~2_combout\,
	datad => \LessThan3~3_combout\,
	combout => \LessThan3~4_combout\);

-- Location: LCCOMB_X54_Y38_N2
\LessThan3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan3~6_combout\ = (!countactual1(30) & (\LessThan3~5_combout\ & (!countactual1(29) & \LessThan3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(30),
	datab => \LessThan3~5_combout\,
	datac => countactual1(29),
	datad => \LessThan3~4_combout\,
	combout => \LessThan3~6_combout\);

-- Location: LCCOMB_X54_Y38_N28
\LessThan2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (((!countactual1(0)) # (!countactual1(3))) # (!countactual1(1))) # (!countactual1(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(2),
	datab => countactual1(1),
	datac => countactual1(3),
	datad => countactual1(0),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X54_Y38_N14
\Selector39~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector39~1_combout\ = (!countactual1(6) & (!countactual1(7) & !countactual1(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(6),
	datab => countactual1(7),
	datad => countactual1(5),
	combout => \Selector39~1_combout\);

-- Location: LCCOMB_X54_Y38_N24
\Selector39~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector39~2_combout\ = (\LessThan2~0_combout\ & (\Selector39~1_combout\ & !countactual1(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan2~0_combout\,
	datac => \Selector39~1_combout\,
	datad => countactual1(4),
	combout => \Selector39~2_combout\);

-- Location: LCCOMB_X54_Y38_N4
\Selector39~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector39~3_combout\ = (\Selector39~1_combout\ & (((!countactual1(2) & !countactual1(3))) # (!countactual1(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(2),
	datab => countactual1(3),
	datac => \Selector39~1_combout\,
	datad => countactual1(4),
	combout => \Selector39~3_combout\);

-- Location: LCCOMB_X54_Y38_N26
\Selector39~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector39~5_combout\ = ((\est_act.boost2~q\ & ((\Selector39~3_combout\))) # (!\est_act.boost2~q\ & (\Selector39~2_combout\))) # (!countactual1(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(8),
	datab => \Selector39~2_combout\,
	datac => \Selector39~3_combout\,
	datad => \est_act.boost2~q\,
	combout => \Selector39~5_combout\);

-- Location: LCCOMB_X54_Y40_N30
\countactual1[31]~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countactual1[31]~95_combout\ = countactual1(31) $ (\countactual1[30]~94\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(31),
	cin => \countactual1[30]~94\,
	combout => \countactual1[31]~95_combout\);

-- Location: FF_X54_Y40_N31
\countactual1[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countactual1[31]~95_combout\,
	clrn => \reset~input_o\,
	sclr => \countactual1[8]~97_combout\,
	ena => \est_act.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countactual1(31));

-- Location: LCCOMB_X54_Y38_N20
\Selector39~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector39~6_combout\ = (countactual1(31)) # ((\LessThan3~6_combout\ & \Selector39~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan3~6_combout\,
	datac => \Selector39~5_combout\,
	datad => countactual1(31),
	combout => \Selector39~6_combout\);

-- Location: LCCOMB_X54_Y38_N30
\Selector39~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector39~4_combout\ = (!countactual1(31) & ((\LessThan3~8_combout\) # (!\LessThan3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~8_combout\,
	datab => \LessThan3~6_combout\,
	datad => countactual1(31),
	combout => \Selector39~4_combout\);

-- Location: LCCOMB_X54_Y38_N22
\LessThan8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan8~0_combout\ = (\LessThan3~6_combout\ & ((\Selector39~3_combout\) # (!countactual1(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan3~6_combout\,
	datac => \Selector39~3_combout\,
	datad => countactual1(8),
	combout => \LessThan8~0_combout\);

-- Location: LCCOMB_X54_Y37_N28
\Selector39~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector39~8_combout\ = (\Selector39~6_combout\ & (\est_act.boost2~q\ & (!\LessThan8~0_combout\))) # (!\Selector39~6_combout\ & (((\est_act.boost2~q\ & !\LessThan8~0_combout\)) # (!\countactual1[8]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector39~6_combout\,
	datab => \est_act.boost2~q\,
	datac => \LessThan8~0_combout\,
	datad => \countactual1[8]~32_combout\,
	combout => \Selector39~8_combout\);

-- Location: LCCOMB_X54_Y37_N14
\Selector39~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector39~9_combout\ = (\Selector39~8_combout\ & (\Selector39~4_combout\ & !\est_act.boost1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector39~8_combout\,
	datac => \Selector39~4_combout\,
	datad => \est_act.boost1~q\,
	combout => \Selector39~9_combout\);

-- Location: LCCOMB_X55_Y37_N8
\Selector37~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~0_combout\ = (!\Selector39~9_combout\ & (\est_act.buck2~q\ & \est_act.idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector39~9_combout\,
	datab => \est_act.buck2~q\,
	datad => \est_act.idle~q\,
	combout => \Selector37~0_combout\);

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

-- Location: LCCOMB_X55_Y37_N28
\Selector36~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~0_combout\ = (\est_sig~8_combout\ & (((!\sel~input_o\ & !\est_act.idle~q\)))) # (!\est_sig~8_combout\ & ((\est_act.buck2~q\) # ((!\sel~input_o\ & !\est_act.idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \est_sig~8_combout\,
	datab => \est_act.buck2~q\,
	datac => \sel~input_o\,
	datad => \est_act.idle~q\,
	combout => \Selector36~0_combout\);

-- Location: LCCOMB_X59_Y41_N0
\Add5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = softstart_duty_act(0) $ (GND)
-- \Add5~1\ = CARRY(!softstart_duty_act(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(0),
	datad => VCC,
	combout => \Add5~0_combout\,
	cout => \Add5~1\);

-- Location: LCCOMB_X58_Y41_N2
\Selector34~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~0_combout\ = (!\Selector41~2_combout\ & (((\est_act.idle~q\ & !\Add5~0_combout\)) # (!\softstart_duty_act[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \est_act.idle~q\,
	datab => \softstart_duty_act[3]~3_combout\,
	datac => \Add5~0_combout\,
	datad => \Selector41~2_combout\,
	combout => \Selector34~0_combout\);

-- Location: FF_X58_Y41_N3
\softstart_duty_act[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector34~0_combout\,
	clrn => \reset~input_o\,
	ena => \softstart_duty_act[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => softstart_duty_act(0));

-- Location: LCCOMB_X59_Y41_N2
\Add5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~2_combout\ = (softstart_duty_act(1) & ((\Add5~1\) # (GND))) # (!softstart_duty_act(1) & (!\Add5~1\))
-- \Add5~3\ = CARRY((softstart_duty_act(1)) # (!\Add5~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(1),
	datad => VCC,
	cin => \Add5~1\,
	combout => \Add5~2_combout\,
	cout => \Add5~3\);

-- Location: LCCOMB_X58_Y41_N16
\Add5~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~90_combout\ = (!\Selector41~2_combout\ & (\softstart_duty_act[3]~3_combout\ & (\est_act.idle~q\ & !\Add5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector41~2_combout\,
	datab => \softstart_duty_act[3]~3_combout\,
	datac => \est_act.idle~q\,
	datad => \Add5~2_combout\,
	combout => \Add5~90_combout\);

-- Location: FF_X58_Y41_N17
\softstart_duty_act[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~90_combout\,
	clrn => \reset~input_o\,
	ena => \softstart_duty_act[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => softstart_duty_act(1));

-- Location: LCCOMB_X59_Y41_N4
\Add5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~4_combout\ = (softstart_duty_act(2) & (!\Add5~3\ & VCC)) # (!softstart_duty_act(2) & (\Add5~3\ $ (GND)))
-- \Add5~5\ = CARRY((!softstart_duty_act(2) & !\Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(2),
	datad => VCC,
	cin => \Add5~3\,
	combout => \Add5~4_combout\,
	cout => \Add5~5\);

-- Location: LCCOMB_X58_Y41_N30
\Add5~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~89_combout\ = (!\Selector41~2_combout\ & (\softstart_duty_act[3]~3_combout\ & (\est_act.idle~q\ & !\Add5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector41~2_combout\,
	datab => \softstart_duty_act[3]~3_combout\,
	datac => \est_act.idle~q\,
	datad => \Add5~4_combout\,
	combout => \Add5~89_combout\);

-- Location: FF_X58_Y41_N31
\softstart_duty_act[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~89_combout\,
	clrn => \reset~input_o\,
	ena => \softstart_duty_act[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => softstart_duty_act(2));

-- Location: LCCOMB_X59_Y41_N6
\Add5~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~6_combout\ = (softstart_duty_act(3) & ((\Add5~5\) # (GND))) # (!softstart_duty_act(3) & (!\Add5~5\))
-- \Add5~7\ = CARRY((softstart_duty_act(3)) # (!\Add5~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => softstart_duty_act(3),
	datad => VCC,
	cin => \Add5~5\,
	combout => \Add5~6_combout\,
	cout => \Add5~7\);

-- Location: LCCOMB_X60_Y40_N22
\Add5~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~88_combout\ = (!\Selector41~2_combout\ & (\est_act.idle~q\ & (\softstart_duty_act[3]~3_combout\ & !\Add5~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector41~2_combout\,
	datab => \est_act.idle~q\,
	datac => \softstart_duty_act[3]~3_combout\,
	datad => \Add5~6_combout\,
	combout => \Add5~88_combout\);

-- Location: FF_X60_Y40_N23
\softstart_duty_act[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~88_combout\,
	clrn => \reset~input_o\,
	ena => \softstart_duty_act[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => softstart_duty_act(3));

-- Location: LCCOMB_X59_Y41_N8
\Add5~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~8_combout\ = (softstart_duty_act(4) & (\Add5~7\ $ (GND))) # (!softstart_duty_act(4) & (!\Add5~7\ & VCC))
-- \Add5~9\ = CARRY((softstart_duty_act(4) & !\Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(4),
	datad => VCC,
	cin => \Add5~7\,
	combout => \Add5~8_combout\,
	cout => \Add5~9\);

-- Location: LCCOMB_X60_Y40_N28
\Selector30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector30~0_combout\ = (!\Selector41~2_combout\ & (((\est_act.idle~q\ & \Add5~8_combout\)) # (!\softstart_duty_act[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \softstart_duty_act[3]~3_combout\,
	datab => \est_act.idle~q\,
	datac => \Selector41~2_combout\,
	datad => \Add5~8_combout\,
	combout => \Selector30~0_combout\);

-- Location: FF_X60_Y40_N29
\softstart_duty_act[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector30~0_combout\,
	clrn => \reset~input_o\,
	ena => \softstart_duty_act[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => softstart_duty_act(4));

-- Location: LCCOMB_X59_Y41_N10
\Add5~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~10_combout\ = (softstart_duty_act(5) & (!\Add5~9\)) # (!softstart_duty_act(5) & ((\Add5~9\) # (GND)))
-- \Add5~11\ = CARRY((!\Add5~9\) # (!softstart_duty_act(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(5),
	datad => VCC,
	cin => \Add5~9\,
	combout => \Add5~10_combout\,
	cout => \Add5~11\);

-- Location: LCCOMB_X58_Y41_N12
\Selector29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector29~0_combout\ = (!\Selector41~2_combout\ & (((\est_act.idle~q\ & \Add5~10_combout\)) # (!\softstart_duty_act[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \est_act.idle~q\,
	datab => \softstart_duty_act[3]~3_combout\,
	datac => \Add5~10_combout\,
	datad => \Selector41~2_combout\,
	combout => \Selector29~0_combout\);

-- Location: FF_X58_Y41_N13
\softstart_duty_act[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector29~0_combout\,
	clrn => \reset~input_o\,
	ena => \softstart_duty_act[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => softstart_duty_act(5));

-- Location: LCCOMB_X59_Y41_N12
\Add5~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~12_combout\ = (softstart_duty_act(6) & (\Add5~11\ $ (GND))) # (!softstart_duty_act(6) & (!\Add5~11\ & VCC))
-- \Add5~13\ = CARRY((softstart_duty_act(6) & !\Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(6),
	datad => VCC,
	cin => \Add5~11\,
	combout => \Add5~12_combout\,
	cout => \Add5~13\);

-- Location: LCCOMB_X58_Y41_N10
\Add5~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~87_combout\ = (\est_act.idle~q\ & (\softstart_duty_act[3]~3_combout\ & (\Add5~12_combout\ & !\Selector41~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \est_act.idle~q\,
	datab => \softstart_duty_act[3]~3_combout\,
	datac => \Add5~12_combout\,
	datad => \Selector41~2_combout\,
	combout => \Add5~87_combout\);

-- Location: FF_X58_Y41_N11
\softstart_duty_act[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~87_combout\,
	clrn => \reset~input_o\,
	ena => \softstart_duty_act[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => softstart_duty_act(6));

-- Location: LCCOMB_X59_Y41_N14
\Add5~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~14_combout\ = (softstart_duty_act(7) & (!\Add5~13\)) # (!softstart_duty_act(7) & ((\Add5~13\) # (GND)))
-- \Add5~15\ = CARRY((!\Add5~13\) # (!softstart_duty_act(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => softstart_duty_act(7),
	datad => VCC,
	cin => \Add5~13\,
	combout => \Add5~14_combout\,
	cout => \Add5~15\);

-- Location: LCCOMB_X58_Y41_N24
\Selector27~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = (!\Selector41~2_combout\ & (((\est_act.idle~q\ & \Add5~14_combout\)) # (!\softstart_duty_act[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \est_act.idle~q\,
	datab => \softstart_duty_act[3]~3_combout\,
	datac => \Add5~14_combout\,
	datad => \Selector41~2_combout\,
	combout => \Selector27~0_combout\);

-- Location: FF_X58_Y41_N25
\softstart_duty_act[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector27~0_combout\,
	clrn => \reset~input_o\,
	ena => \softstart_duty_act[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => softstart_duty_act(7));

-- Location: LCCOMB_X59_Y41_N16
\Add5~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~16_combout\ = (softstart_duty_act(8) & (\Add5~15\ $ (GND))) # (!softstart_duty_act(8) & (!\Add5~15\ & VCC))
-- \Add5~17\ = CARRY((softstart_duty_act(8) & !\Add5~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => softstart_duty_act(8),
	datad => VCC,
	cin => \Add5~15\,
	combout => \Add5~16_combout\,
	cout => \Add5~17\);

-- Location: LCCOMB_X58_Y41_N22
\Add5~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~86_combout\ = (!\Selector41~2_combout\ & (\softstart_duty_act[3]~3_combout\ & (\est_act.idle~q\ & \Add5~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector41~2_combout\,
	datab => \softstart_duty_act[3]~3_combout\,
	datac => \est_act.idle~q\,
	datad => \Add5~16_combout\,
	combout => \Add5~86_combout\);

-- Location: FF_X58_Y41_N23
\softstart_duty_act[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~86_combout\,
	clrn => \reset~input_o\,
	ena => \softstart_duty_act[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => softstart_duty_act(8));

-- Location: LCCOMB_X59_Y41_N18
\Add5~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~18_combout\ = (softstart_duty_act(9) & (!\Add5~17\)) # (!softstart_duty_act(9) & ((\Add5~17\) # (GND)))
-- \Add5~19\ = CARRY((!\Add5~17\) # (!softstart_duty_act(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => softstart_duty_act(9),
	datad => VCC,
	cin => \Add5~17\,
	combout => \Add5~18_combout\,
	cout => \Add5~19\);

-- Location: LCCOMB_X58_Y41_N4
\Add5~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~85_combout\ = (!\Selector41~2_combout\ & (\softstart_duty_act[3]~3_combout\ & (\est_act.idle~q\ & \Add5~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector41~2_combout\,
	datab => \softstart_duty_act[3]~3_combout\,
	datac => \est_act.idle~q\,
	datad => \Add5~18_combout\,
	combout => \Add5~85_combout\);

-- Location: FF_X58_Y41_N5
\softstart_duty_act[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~85_combout\,
	clrn => \reset~input_o\,
	ena => \softstart_duty_act[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => softstart_duty_act(9));

-- Location: LCCOMB_X59_Y41_N20
\Add5~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~20_combout\ = (softstart_duty_act(10) & (\Add5~19\ $ (GND))) # (!softstart_duty_act(10) & (!\Add5~19\ & VCC))
-- \Add5~21\ = CARRY((softstart_duty_act(10) & !\Add5~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => softstart_duty_act(10),
	datad => VCC,
	cin => \Add5~19\,
	combout => \Add5~20_combout\,
	cout => \Add5~21\);

-- Location: LCCOMB_X60_Y40_N26
\Add5~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~84_combout\ = (\softstart_duty_act[3]~3_combout\ & (\est_act.idle~q\ & (!\Selector41~2_combout\ & \Add5~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \softstart_duty_act[3]~3_combout\,
	datab => \est_act.idle~q\,
	datac => \Selector41~2_combout\,
	datad => \Add5~20_combout\,
	combout => \Add5~84_combout\);

-- Location: FF_X60_Y40_N27
\softstart_duty_act[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~84_combout\,
	clrn => \reset~input_o\,
	ena => \softstart_duty_act[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => softstart_duty_act(10));

-- Location: LCCOMB_X59_Y41_N22
\Add5~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~22_combout\ = (softstart_duty_act(11) & (!\Add5~21\)) # (!softstart_duty_act(11) & ((\Add5~21\) # (GND)))
-- \Add5~23\ = CARRY((!\Add5~21\) # (!softstart_duty_act(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => softstart_duty_act(11),
	datad => VCC,
	cin => \Add5~21\,
	combout => \Add5~22_combout\,
	cout => \Add5~23\);

-- Location: LCCOMB_X60_Y40_N8
\Add5~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~83_combout\ = (!\Selector41~2_combout\ & (\Add5~22_combout\ & (\softstart_duty_act[3]~3_combout\ & \est_act.idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector41~2_combout\,
	datab => \Add5~22_combout\,
	datac => \softstart_duty_act[3]~3_combout\,
	datad => \est_act.idle~q\,
	combout => \Add5~83_combout\);

-- Location: FF_X60_Y40_N9
\softstart_duty_act[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~83_combout\,
	clrn => \reset~input_o\,
	ena => \softstart_duty_act[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => softstart_duty_act(11));

-- Location: LCCOMB_X59_Y41_N24
\Add5~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~24_combout\ = (softstart_duty_act(12) & (\Add5~23\ $ (GND))) # (!softstart_duty_act(12) & (!\Add5~23\ & VCC))
-- \Add5~25\ = CARRY((softstart_duty_act(12) & !\Add5~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => softstart_duty_act(12),
	datad => VCC,
	cin => \Add5~23\,
	combout => \Add5~24_combout\,
	cout => \Add5~25\);

-- Location: LCCOMB_X59_Y37_N26
\Add5~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~82_combout\ = (\est_act.idle~q\ & (\softstart_duty_act[3]~3_combout\ & (\Add5~24_combout\ & !\Selector41~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \est_act.idle~q\,
	datab => \softstart_duty_act[3]~3_combout\,
	datac => \Add5~24_combout\,
	datad => \Selector41~2_combout\,
	combout => \Add5~82_combout\);

-- Location: FF_X59_Y37_N27
\softstart_duty_act[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~82_combout\,
	clrn => \reset~input_o\,
	ena => \softstart_duty_act[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => softstart_duty_act(12));

-- Location: LCCOMB_X59_Y41_N26
\Add5~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~26_combout\ = (softstart_duty_act(13) & (!\Add5~25\)) # (!softstart_duty_act(13) & ((\Add5~25\) # (GND)))
-- \Add5~27\ = CARRY((!\Add5~25\) # (!softstart_duty_act(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(13),
	datad => VCC,
	cin => \Add5~25\,
	combout => \Add5~26_combout\,
	cout => \Add5~27\);

-- Location: LCCOMB_X60_Y40_N6
\Add5~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~81_combout\ = (\softstart_duty_act[3]~3_combout\ & (\est_act.idle~q\ & (!\Selector41~2_combout\ & \Add5~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \softstart_duty_act[3]~3_combout\,
	datab => \est_act.idle~q\,
	datac => \Selector41~2_combout\,
	datad => \Add5~26_combout\,
	combout => \Add5~81_combout\);

-- Location: FF_X60_Y40_N7
\softstart_duty_act[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~81_combout\,
	clrn => \reset~input_o\,
	ena => \softstart_duty_act[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => softstart_duty_act(13));

-- Location: LCCOMB_X59_Y41_N28
\Add5~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~28_combout\ = (softstart_duty_act(14) & (\Add5~27\ $ (GND))) # (!softstart_duty_act(14) & (!\Add5~27\ & VCC))
-- \Add5~29\ = CARRY((softstart_duty_act(14) & !\Add5~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => softstart_duty_act(14),
	datad => VCC,
	cin => \Add5~27\,
	combout => \Add5~28_combout\,
	cout => \Add5~29\);

-- Location: LCCOMB_X58_Y41_N18
\Add5~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~80_combout\ = (!\Selector41~2_combout\ & (\softstart_duty_act[3]~3_combout\ & (\est_act.idle~q\ & \Add5~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector41~2_combout\,
	datab => \softstart_duty_act[3]~3_combout\,
	datac => \est_act.idle~q\,
	datad => \Add5~28_combout\,
	combout => \Add5~80_combout\);

-- Location: FF_X58_Y41_N19
\softstart_duty_act[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~80_combout\,
	clrn => \reset~input_o\,
	ena => \softstart_duty_act[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => softstart_duty_act(14));

-- Location: LCCOMB_X57_Y38_N0
\LessThan9~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan9~5_combout\ = (!softstart_duty_act(13) & (!softstart_duty_act(12) & (!softstart_duty_act(14) & !softstart_duty_act(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(13),
	datab => softstart_duty_act(12),
	datac => softstart_duty_act(14),
	datad => softstart_duty_act(11),
	combout => \LessThan9~5_combout\);

-- Location: LCCOMB_X59_Y41_N30
\Add5~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~30_combout\ = (softstart_duty_act(15) & (!\Add5~29\)) # (!softstart_duty_act(15) & ((\Add5~29\) # (GND)))
-- \Add5~31\ = CARRY((!\Add5~29\) # (!softstart_duty_act(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(15),
	datad => VCC,
	cin => \Add5~29\,
	combout => \Add5~30_combout\,
	cout => \Add5~31\);

-- Location: LCCOMB_X58_Y41_N0
\Add5~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~79_combout\ = (\est_act.idle~q\ & (\softstart_duty_act[3]~3_combout\ & (\Add5~30_combout\ & !\Selector41~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \est_act.idle~q\,
	datab => \softstart_duty_act[3]~3_combout\,
	datac => \Add5~30_combout\,
	datad => \Selector41~2_combout\,
	combout => \Add5~79_combout\);

-- Location: FF_X58_Y41_N1
\softstart_duty_act[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~79_combout\,
	clrn => \reset~input_o\,
	ena => \softstart_duty_act[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => softstart_duty_act(15));

-- Location: LCCOMB_X59_Y40_N0
\Add5~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~32_combout\ = (softstart_duty_act(16) & (\Add5~31\ $ (GND))) # (!softstart_duty_act(16) & (!\Add5~31\ & VCC))
-- \Add5~33\ = CARRY((softstart_duty_act(16) & !\Add5~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => softstart_duty_act(16),
	datad => VCC,
	cin => \Add5~31\,
	combout => \Add5~32_combout\,
	cout => \Add5~33\);

-- Location: LCCOMB_X58_Y41_N6
\Add5~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~78_combout\ = (!\Selector41~2_combout\ & (\softstart_duty_act[3]~3_combout\ & (\est_act.idle~q\ & \Add5~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector41~2_combout\,
	datab => \softstart_duty_act[3]~3_combout\,
	datac => \est_act.idle~q\,
	datad => \Add5~32_combout\,
	combout => \Add5~78_combout\);

-- Location: FF_X58_Y41_N7
\softstart_duty_act[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~78_combout\,
	clrn => \reset~input_o\,
	ena => \softstart_duty_act[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => softstart_duty_act(16));

-- Location: LCCOMB_X59_Y40_N2
\Add5~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~34_combout\ = (softstart_duty_act(17) & (!\Add5~33\)) # (!softstart_duty_act(17) & ((\Add5~33\) # (GND)))
-- \Add5~35\ = CARRY((!\Add5~33\) # (!softstart_duty_act(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(17),
	datad => VCC,
	cin => \Add5~33\,
	combout => \Add5~34_combout\,
	cout => \Add5~35\);

-- Location: LCCOMB_X60_Y40_N20
\Add5~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~77_combout\ = (\softstart_duty_act[3]~3_combout\ & (\est_act.idle~q\ & (!\Selector41~2_combout\ & \Add5~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \softstart_duty_act[3]~3_combout\,
	datab => \est_act.idle~q\,
	datac => \Selector41~2_combout\,
	datad => \Add5~34_combout\,
	combout => \Add5~77_combout\);

-- Location: FF_X60_Y40_N21
\softstart_duty_act[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~77_combout\,
	clrn => \reset~input_o\,
	ena => \softstart_duty_act[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => softstart_duty_act(17));

-- Location: LCCOMB_X59_Y40_N4
\Add5~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~36_combout\ = (softstart_duty_act(18) & (\Add5~35\ $ (GND))) # (!softstart_duty_act(18) & (!\Add5~35\ & VCC))
-- \Add5~37\ = CARRY((softstart_duty_act(18) & !\Add5~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => softstart_duty_act(18),
	datad => VCC,
	cin => \Add5~35\,
	combout => \Add5~36_combout\,
	cout => \Add5~37\);

-- Location: LCCOMB_X58_Y41_N28
\Add5~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~76_combout\ = (!\Selector41~2_combout\ & (\softstart_duty_act[3]~3_combout\ & (\est_act.idle~q\ & \Add5~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector41~2_combout\,
	datab => \softstart_duty_act[3]~3_combout\,
	datac => \est_act.idle~q\,
	datad => \Add5~36_combout\,
	combout => \Add5~76_combout\);

-- Location: FF_X58_Y41_N29
\softstart_duty_act[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~76_combout\,
	clrn => \reset~input_o\,
	ena => \softstart_duty_act[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => softstart_duty_act(18));

-- Location: LCCOMB_X59_Y40_N6
\Add5~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~38_combout\ = (softstart_duty_act(19) & (!\Add5~37\)) # (!softstart_duty_act(19) & ((\Add5~37\) # (GND)))
-- \Add5~39\ = CARRY((!\Add5~37\) # (!softstart_duty_act(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => softstart_duty_act(19),
	datad => VCC,
	cin => \Add5~37\,
	combout => \Add5~38_combout\,
	cout => \Add5~39\);

-- Location: LCCOMB_X60_Y40_N2
\Add5~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~75_combout\ = (!\Selector41~2_combout\ & (\est_act.idle~q\ & (\softstart_duty_act[3]~3_combout\ & \Add5~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector41~2_combout\,
	datab => \est_act.idle~q\,
	datac => \softstart_duty_act[3]~3_combout\,
	datad => \Add5~38_combout\,
	combout => \Add5~75_combout\);

-- Location: FF_X60_Y40_N3
\softstart_duty_act[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~75_combout\,
	clrn => \reset~input_o\,
	ena => \softstart_duty_act[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => softstart_duty_act(19));

-- Location: LCCOMB_X59_Y40_N8
\Add5~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~40_combout\ = (softstart_duty_act(20) & (\Add5~39\ $ (GND))) # (!softstart_duty_act(20) & (!\Add5~39\ & VCC))
-- \Add5~41\ = CARRY((softstart_duty_act(20) & !\Add5~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => softstart_duty_act(20),
	datad => VCC,
	cin => \Add5~39\,
	combout => \Add5~40_combout\,
	cout => \Add5~41\);

-- Location: LCCOMB_X58_Y41_N26
\Add5~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~74_combout\ = (\est_act.idle~q\ & (\softstart_duty_act[3]~3_combout\ & (\Add5~40_combout\ & !\Selector41~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \est_act.idle~q\,
	datab => \softstart_duty_act[3]~3_combout\,
	datac => \Add5~40_combout\,
	datad => \Selector41~2_combout\,
	combout => \Add5~74_combout\);

-- Location: FF_X58_Y41_N27
\softstart_duty_act[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~74_combout\,
	clrn => \reset~input_o\,
	ena => \softstart_duty_act[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => softstart_duty_act(20));

-- Location: LCCOMB_X59_Y40_N10
\Add5~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~42_combout\ = (softstart_duty_act(21) & (!\Add5~41\)) # (!softstart_duty_act(21) & ((\Add5~41\) # (GND)))
-- \Add5~43\ = CARRY((!\Add5~41\) # (!softstart_duty_act(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => softstart_duty_act(21),
	datad => VCC,
	cin => \Add5~41\,
	combout => \Add5~42_combout\,
	cout => \Add5~43\);

-- Location: LCCOMB_X60_Y40_N16
\Add5~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~73_combout\ = (\softstart_duty_act[3]~3_combout\ & (\est_act.idle~q\ & (!\Selector41~2_combout\ & \Add5~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \softstart_duty_act[3]~3_combout\,
	datab => \est_act.idle~q\,
	datac => \Selector41~2_combout\,
	datad => \Add5~42_combout\,
	combout => \Add5~73_combout\);

-- Location: FF_X60_Y40_N17
\softstart_duty_act[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~73_combout\,
	clrn => \reset~input_o\,
	ena => \softstart_duty_act[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => softstart_duty_act(21));

-- Location: LCCOMB_X59_Y40_N12
\Add5~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~44_combout\ = (softstart_duty_act(22) & (\Add5~43\ $ (GND))) # (!softstart_duty_act(22) & (!\Add5~43\ & VCC))
-- \Add5~45\ = CARRY((softstart_duty_act(22) & !\Add5~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(22),
	datad => VCC,
	cin => \Add5~43\,
	combout => \Add5~44_combout\,
	cout => \Add5~45\);

-- Location: LCCOMB_X60_Y40_N14
\Add5~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~72_combout\ = (\softstart_duty_act[3]~3_combout\ & (\est_act.idle~q\ & (!\Selector41~2_combout\ & \Add5~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \softstart_duty_act[3]~3_combout\,
	datab => \est_act.idle~q\,
	datac => \Selector41~2_combout\,
	datad => \Add5~44_combout\,
	combout => \Add5~72_combout\);

-- Location: FF_X60_Y40_N15
\softstart_duty_act[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~72_combout\,
	clrn => \reset~input_o\,
	ena => \softstart_duty_act[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => softstart_duty_act(22));

-- Location: LCCOMB_X56_Y40_N30
\LessThan9~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan9~2_combout\ = (!softstart_duty_act(21) & (!softstart_duty_act(22) & (!softstart_duty_act(20) & !softstart_duty_act(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(21),
	datab => softstart_duty_act(22),
	datac => softstart_duty_act(20),
	datad => softstart_duty_act(19),
	combout => \LessThan9~2_combout\);

-- Location: LCCOMB_X59_Y40_N14
\Add5~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~46_combout\ = (softstart_duty_act(23) & (!\Add5~45\)) # (!softstart_duty_act(23) & ((\Add5~45\) # (GND)))
-- \Add5~47\ = CARRY((!\Add5~45\) # (!softstart_duty_act(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(23),
	datad => VCC,
	cin => \Add5~45\,
	combout => \Add5~46_combout\,
	cout => \Add5~47\);

-- Location: LCCOMB_X60_Y40_N4
\Add5~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~71_combout\ = (\softstart_duty_act[3]~3_combout\ & (\est_act.idle~q\ & (!\Selector41~2_combout\ & \Add5~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \softstart_duty_act[3]~3_combout\,
	datab => \est_act.idle~q\,
	datac => \Selector41~2_combout\,
	datad => \Add5~46_combout\,
	combout => \Add5~71_combout\);

-- Location: FF_X60_Y40_N5
\softstart_duty_act[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~71_combout\,
	clrn => \reset~input_o\,
	ena => \softstart_duty_act[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => softstart_duty_act(23));

-- Location: LCCOMB_X59_Y40_N16
\Add5~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~48_combout\ = (softstart_duty_act(24) & (\Add5~47\ $ (GND))) # (!softstart_duty_act(24) & (!\Add5~47\ & VCC))
-- \Add5~49\ = CARRY((softstart_duty_act(24) & !\Add5~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(24),
	datad => VCC,
	cin => \Add5~47\,
	combout => \Add5~48_combout\,
	cout => \Add5~49\);

-- Location: LCCOMB_X60_Y40_N18
\Add5~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~70_combout\ = (!\Selector41~2_combout\ & (\est_act.idle~q\ & (\softstart_duty_act[3]~3_combout\ & \Add5~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector41~2_combout\,
	datab => \est_act.idle~q\,
	datac => \softstart_duty_act[3]~3_combout\,
	datad => \Add5~48_combout\,
	combout => \Add5~70_combout\);

-- Location: FF_X60_Y40_N19
\softstart_duty_act[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~70_combout\,
	clrn => \reset~input_o\,
	ena => \softstart_duty_act[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => softstart_duty_act(24));

-- Location: LCCOMB_X59_Y40_N18
\Add5~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~50_combout\ = (softstart_duty_act(25) & (!\Add5~49\)) # (!softstart_duty_act(25) & ((\Add5~49\) # (GND)))
-- \Add5~51\ = CARRY((!\Add5~49\) # (!softstart_duty_act(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => softstart_duty_act(25),
	datad => VCC,
	cin => \Add5~49\,
	combout => \Add5~50_combout\,
	cout => \Add5~51\);

-- Location: LCCOMB_X60_Y40_N0
\Add5~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~69_combout\ = (\softstart_duty_act[3]~3_combout\ & (\est_act.idle~q\ & (!\Selector41~2_combout\ & \Add5~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \softstart_duty_act[3]~3_combout\,
	datab => \est_act.idle~q\,
	datac => \Selector41~2_combout\,
	datad => \Add5~50_combout\,
	combout => \Add5~69_combout\);

-- Location: FF_X60_Y40_N1
\softstart_duty_act[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~69_combout\,
	clrn => \reset~input_o\,
	ena => \softstart_duty_act[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => softstart_duty_act(25));

-- Location: LCCOMB_X59_Y40_N20
\Add5~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~52_combout\ = (softstart_duty_act(26) & (\Add5~51\ $ (GND))) # (!softstart_duty_act(26) & (!\Add5~51\ & VCC))
-- \Add5~53\ = CARRY((softstart_duty_act(26) & !\Add5~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => softstart_duty_act(26),
	datad => VCC,
	cin => \Add5~51\,
	combout => \Add5~52_combout\,
	cout => \Add5~53\);

-- Location: LCCOMB_X58_Y41_N8
\Add5~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~68_combout\ = (!\Selector41~2_combout\ & (\softstart_duty_act[3]~3_combout\ & (\est_act.idle~q\ & \Add5~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector41~2_combout\,
	datab => \softstart_duty_act[3]~3_combout\,
	datac => \est_act.idle~q\,
	datad => \Add5~52_combout\,
	combout => \Add5~68_combout\);

-- Location: FF_X58_Y41_N9
\softstart_duty_act[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~68_combout\,
	clrn => \reset~input_o\,
	ena => \softstart_duty_act[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => softstart_duty_act(26));

-- Location: LCCOMB_X59_Y40_N22
\Add5~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~54_combout\ = (softstart_duty_act(27) & (!\Add5~53\)) # (!softstart_duty_act(27) & ((\Add5~53\) # (GND)))
-- \Add5~55\ = CARRY((!\Add5~53\) # (!softstart_duty_act(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(27),
	datad => VCC,
	cin => \Add5~53\,
	combout => \Add5~54_combout\,
	cout => \Add5~55\);

-- Location: LCCOMB_X60_Y40_N30
\Add5~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~67_combout\ = (\softstart_duty_act[3]~3_combout\ & (\est_act.idle~q\ & (!\Selector41~2_combout\ & \Add5~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \softstart_duty_act[3]~3_combout\,
	datab => \est_act.idle~q\,
	datac => \Selector41~2_combout\,
	datad => \Add5~54_combout\,
	combout => \Add5~67_combout\);

-- Location: FF_X60_Y40_N31
\softstart_duty_act[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~67_combout\,
	clrn => \reset~input_o\,
	ena => \softstart_duty_act[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => softstart_duty_act(27));

-- Location: LCCOMB_X59_Y40_N24
\Add5~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~56_combout\ = (softstart_duty_act(28) & (\Add5~55\ $ (GND))) # (!softstart_duty_act(28) & (!\Add5~55\ & VCC))
-- \Add5~57\ = CARRY((softstart_duty_act(28) & !\Add5~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => softstart_duty_act(28),
	datad => VCC,
	cin => \Add5~55\,
	combout => \Add5~56_combout\,
	cout => \Add5~57\);

-- Location: LCCOMB_X60_Y40_N12
\Add5~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~66_combout\ = (\softstart_duty_act[3]~3_combout\ & (\est_act.idle~q\ & (!\Selector41~2_combout\ & \Add5~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \softstart_duty_act[3]~3_combout\,
	datab => \est_act.idle~q\,
	datac => \Selector41~2_combout\,
	datad => \Add5~56_combout\,
	combout => \Add5~66_combout\);

-- Location: FF_X60_Y40_N13
\softstart_duty_act[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~66_combout\,
	clrn => \reset~input_o\,
	ena => \softstart_duty_act[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => softstart_duty_act(28));

-- Location: LCCOMB_X56_Y40_N28
\LessThan9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan9~0_combout\ = (!softstart_duty_act(28) & (!softstart_duty_act(29) & (!softstart_duty_act(30) & !softstart_duty_act(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(28),
	datab => softstart_duty_act(29),
	datac => softstart_duty_act(30),
	datad => softstart_duty_act(27),
	combout => \LessThan9~0_combout\);

-- Location: LCCOMB_X59_Y37_N8
\LessThan9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan9~1_combout\ = (!softstart_duty_act(24) & (!softstart_duty_act(25) & (!softstart_duty_act(26) & !softstart_duty_act(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(24),
	datab => softstart_duty_act(25),
	datac => softstart_duty_act(26),
	datad => softstart_duty_act(23),
	combout => \LessThan9~1_combout\);

-- Location: LCCOMB_X56_Y41_N0
\LessThan9~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan9~3_combout\ = (!softstart_duty_act(16) & (!softstart_duty_act(17) & (!softstart_duty_act(18) & !softstart_duty_act(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(16),
	datab => softstart_duty_act(17),
	datac => softstart_duty_act(18),
	datad => softstart_duty_act(15),
	combout => \LessThan9~3_combout\);

-- Location: LCCOMB_X56_Y41_N2
\LessThan9~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan9~4_combout\ = (\LessThan9~2_combout\ & (\LessThan9~0_combout\ & (\LessThan9~1_combout\ & \LessThan9~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan9~2_combout\,
	datab => \LessThan9~0_combout\,
	datac => \LessThan9~1_combout\,
	datad => \LessThan9~3_combout\,
	combout => \LessThan9~4_combout\);

-- Location: LCCOMB_X58_Y41_N14
\LessThan9~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan9~6_combout\ = (\LessThan9~5_combout\ & (!softstart_duty_act(9) & (\LessThan9~4_combout\ & !softstart_duty_act(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan9~5_combout\,
	datab => softstart_duty_act(9),
	datac => \LessThan9~4_combout\,
	datad => softstart_duty_act(10),
	combout => \LessThan9~6_combout\);

-- Location: LCCOMB_X59_Y37_N4
\LessThan5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan5~0_combout\ = (!softstart_duty_act(6) & (!softstart_duty_act(5) & (!softstart_duty_act(7) & !softstart_duty_act(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(6),
	datab => softstart_duty_act(5),
	datac => softstart_duty_act(7),
	datad => softstart_duty_act(4),
	combout => \LessThan5~0_combout\);

-- Location: LCCOMB_X58_Y41_N20
\LessThan5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan5~1_combout\ = (softstart_duty_act(1) & (softstart_duty_act(2) & softstart_duty_act(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => softstart_duty_act(1),
	datac => softstart_duty_act(2),
	datad => softstart_duty_act(0),
	combout => \LessThan5~1_combout\);

-- Location: LCCOMB_X59_Y37_N22
\LessThan5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan5~2_combout\ = ((\LessThan5~0_combout\ & ((\LessThan5~1_combout\) # (softstart_duty_act(3))))) # (!softstart_duty_act(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(8),
	datab => \LessThan5~0_combout\,
	datac => \LessThan5~1_combout\,
	datad => softstart_duty_act(3),
	combout => \LessThan5~2_combout\);

-- Location: LCCOMB_X59_Y37_N2
\Selector41~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector41~2_combout\ = (\est_act.boost2softs~q\ & (!softstart_duty_act(31) & ((!\LessThan5~2_combout\) # (!\LessThan9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan9~6_combout\,
	datab => \est_act.boost2softs~q\,
	datac => \LessThan5~2_combout\,
	datad => softstart_duty_act(31),
	combout => \Selector41~2_combout\);

-- Location: LCCOMB_X59_Y40_N26
\Add5~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~58_combout\ = (softstart_duty_act(29) & (!\Add5~57\)) # (!softstart_duty_act(29) & ((\Add5~57\) # (GND)))
-- \Add5~59\ = CARRY((!\Add5~57\) # (!softstart_duty_act(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => softstart_duty_act(29),
	datad => VCC,
	cin => \Add5~57\,
	combout => \Add5~58_combout\,
	cout => \Add5~59\);

-- Location: LCCOMB_X60_Y40_N10
\Add5~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~65_combout\ = (!\Selector41~2_combout\ & (\est_act.idle~q\ & (\Add5~58_combout\ & \softstart_duty_act[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector41~2_combout\,
	datab => \est_act.idle~q\,
	datac => \Add5~58_combout\,
	datad => \softstart_duty_act[3]~3_combout\,
	combout => \Add5~65_combout\);

-- Location: FF_X60_Y40_N11
\softstart_duty_act[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~65_combout\,
	clrn => \reset~input_o\,
	ena => \softstart_duty_act[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => softstart_duty_act(29));

-- Location: LCCOMB_X56_Y41_N4
\Add3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~1_cout\ = CARRY(!softstart_duty_act(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(4),
	datad => VCC,
	cout => \Add3~1_cout\);

-- Location: LCCOMB_X56_Y41_N6
\Add3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (softstart_duty_act(5) & ((\Add3~1_cout\) # (GND))) # (!softstart_duty_act(5) & (!\Add3~1_cout\))
-- \Add3~3\ = CARRY((softstart_duty_act(5)) # (!\Add3~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(5),
	datad => VCC,
	cin => \Add3~1_cout\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X56_Y41_N8
\Add3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = (softstart_duty_act(6) & (!\Add3~3\ & VCC)) # (!softstart_duty_act(6) & (\Add3~3\ $ (GND)))
-- \Add3~5\ = CARRY((!softstart_duty_act(6) & !\Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => softstart_duty_act(6),
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X56_Y41_N10
\Add3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (softstart_duty_act(7) & ((\Add3~5\) # (GND))) # (!softstart_duty_act(7) & (!\Add3~5\))
-- \Add3~7\ = CARRY((softstart_duty_act(7)) # (!\Add3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => softstart_duty_act(7),
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X56_Y41_N12
\Add3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (softstart_duty_act(8) & (\Add3~7\ $ (GND))) # (!softstart_duty_act(8) & ((GND) # (!\Add3~7\)))
-- \Add3~9\ = CARRY((!\Add3~7\) # (!softstart_duty_act(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(8),
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X56_Y41_N14
\Add3~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (softstart_duty_act(9) & ((\Add3~9\) # (GND))) # (!softstart_duty_act(9) & (!\Add3~9\))
-- \Add3~11\ = CARRY((softstart_duty_act(9)) # (!\Add3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(9),
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCCOMB_X56_Y41_N16
\Add3~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = (softstart_duty_act(10) & (!\Add3~11\ & VCC)) # (!softstart_duty_act(10) & (\Add3~11\ $ (GND)))
-- \Add3~13\ = CARRY((!softstart_duty_act(10) & !\Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(10),
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: LCCOMB_X56_Y41_N18
\Add3~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (softstart_duty_act(11) & ((\Add3~13\) # (GND))) # (!softstart_duty_act(11) & (!\Add3~13\))
-- \Add3~15\ = CARRY((softstart_duty_act(11)) # (!\Add3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => softstart_duty_act(11),
	datad => VCC,
	cin => \Add3~13\,
	combout => \Add3~14_combout\,
	cout => \Add3~15\);

-- Location: LCCOMB_X56_Y41_N20
\Add3~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~16_combout\ = (softstart_duty_act(12) & (!\Add3~15\ & VCC)) # (!softstart_duty_act(12) & (\Add3~15\ $ (GND)))
-- \Add3~17\ = CARRY((!softstart_duty_act(12) & !\Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => softstart_duty_act(12),
	datad => VCC,
	cin => \Add3~15\,
	combout => \Add3~16_combout\,
	cout => \Add3~17\);

-- Location: LCCOMB_X56_Y41_N22
\Add3~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~18_combout\ = (softstart_duty_act(13) & ((\Add3~17\) # (GND))) # (!softstart_duty_act(13) & (!\Add3~17\))
-- \Add3~19\ = CARRY((softstart_duty_act(13)) # (!\Add3~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => softstart_duty_act(13),
	datad => VCC,
	cin => \Add3~17\,
	combout => \Add3~18_combout\,
	cout => \Add3~19\);

-- Location: LCCOMB_X56_Y41_N24
\Add3~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~20_combout\ = (softstart_duty_act(14) & (!\Add3~19\ & VCC)) # (!softstart_duty_act(14) & (\Add3~19\ $ (GND)))
-- \Add3~21\ = CARRY((!softstart_duty_act(14) & !\Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(14),
	datad => VCC,
	cin => \Add3~19\,
	combout => \Add3~20_combout\,
	cout => \Add3~21\);

-- Location: LCCOMB_X56_Y41_N26
\Add3~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~22_combout\ = (softstart_duty_act(15) & ((\Add3~21\) # (GND))) # (!softstart_duty_act(15) & (!\Add3~21\))
-- \Add3~23\ = CARRY((softstart_duty_act(15)) # (!\Add3~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(15),
	datad => VCC,
	cin => \Add3~21\,
	combout => \Add3~22_combout\,
	cout => \Add3~23\);

-- Location: LCCOMB_X56_Y41_N28
\Add3~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~24_combout\ = (softstart_duty_act(16) & (!\Add3~23\ & VCC)) # (!softstart_duty_act(16) & (\Add3~23\ $ (GND)))
-- \Add3~25\ = CARRY((!softstart_duty_act(16) & !\Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(16),
	datad => VCC,
	cin => \Add3~23\,
	combout => \Add3~24_combout\,
	cout => \Add3~25\);

-- Location: LCCOMB_X56_Y41_N30
\Add3~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~26_combout\ = (softstart_duty_act(17) & ((\Add3~25\) # (GND))) # (!softstart_duty_act(17) & (!\Add3~25\))
-- \Add3~27\ = CARRY((softstart_duty_act(17)) # (!\Add3~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => softstart_duty_act(17),
	datad => VCC,
	cin => \Add3~25\,
	combout => \Add3~26_combout\,
	cout => \Add3~27\);

-- Location: LCCOMB_X56_Y40_N0
\Add3~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~28_combout\ = (softstart_duty_act(18) & (!\Add3~27\ & VCC)) # (!softstart_duty_act(18) & (\Add3~27\ $ (GND)))
-- \Add3~29\ = CARRY((!softstart_duty_act(18) & !\Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => softstart_duty_act(18),
	datad => VCC,
	cin => \Add3~27\,
	combout => \Add3~28_combout\,
	cout => \Add3~29\);

-- Location: LCCOMB_X56_Y40_N2
\Add3~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~30_combout\ = (softstart_duty_act(19) & ((\Add3~29\) # (GND))) # (!softstart_duty_act(19) & (!\Add3~29\))
-- \Add3~31\ = CARRY((softstart_duty_act(19)) # (!\Add3~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(19),
	datad => VCC,
	cin => \Add3~29\,
	combout => \Add3~30_combout\,
	cout => \Add3~31\);

-- Location: LCCOMB_X56_Y40_N4
\Add3~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~32_combout\ = (softstart_duty_act(20) & (!\Add3~31\ & VCC)) # (!softstart_duty_act(20) & (\Add3~31\ $ (GND)))
-- \Add3~33\ = CARRY((!softstart_duty_act(20) & !\Add3~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(20),
	datad => VCC,
	cin => \Add3~31\,
	combout => \Add3~32_combout\,
	cout => \Add3~33\);

-- Location: LCCOMB_X56_Y40_N6
\Add3~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~34_combout\ = (softstart_duty_act(21) & ((\Add3~33\) # (GND))) # (!softstart_duty_act(21) & (!\Add3~33\))
-- \Add3~35\ = CARRY((softstart_duty_act(21)) # (!\Add3~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(21),
	datad => VCC,
	cin => \Add3~33\,
	combout => \Add3~34_combout\,
	cout => \Add3~35\);

-- Location: LCCOMB_X56_Y40_N8
\Add3~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~36_combout\ = (softstart_duty_act(22) & (!\Add3~35\ & VCC)) # (!softstart_duty_act(22) & (\Add3~35\ $ (GND)))
-- \Add3~37\ = CARRY((!softstart_duty_act(22) & !\Add3~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => softstart_duty_act(22),
	datad => VCC,
	cin => \Add3~35\,
	combout => \Add3~36_combout\,
	cout => \Add3~37\);

-- Location: LCCOMB_X56_Y40_N10
\Add3~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~38_combout\ = (softstart_duty_act(23) & ((\Add3~37\) # (GND))) # (!softstart_duty_act(23) & (!\Add3~37\))
-- \Add3~39\ = CARRY((softstart_duty_act(23)) # (!\Add3~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(23),
	datad => VCC,
	cin => \Add3~37\,
	combout => \Add3~38_combout\,
	cout => \Add3~39\);

-- Location: LCCOMB_X56_Y40_N12
\Add3~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~40_combout\ = (softstart_duty_act(24) & (!\Add3~39\ & VCC)) # (!softstart_duty_act(24) & (\Add3~39\ $ (GND)))
-- \Add3~41\ = CARRY((!softstart_duty_act(24) & !\Add3~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => softstart_duty_act(24),
	datad => VCC,
	cin => \Add3~39\,
	combout => \Add3~40_combout\,
	cout => \Add3~41\);

-- Location: LCCOMB_X56_Y40_N14
\Add3~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~42_combout\ = (softstart_duty_act(25) & ((\Add3~41\) # (GND))) # (!softstart_duty_act(25) & (!\Add3~41\))
-- \Add3~43\ = CARRY((softstart_duty_act(25)) # (!\Add3~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => softstart_duty_act(25),
	datad => VCC,
	cin => \Add3~41\,
	combout => \Add3~42_combout\,
	cout => \Add3~43\);

-- Location: LCCOMB_X56_Y40_N16
\Add3~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~44_combout\ = (softstart_duty_act(26) & (!\Add3~43\ & VCC)) # (!softstart_duty_act(26) & (\Add3~43\ $ (GND)))
-- \Add3~45\ = CARRY((!softstart_duty_act(26) & !\Add3~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => softstart_duty_act(26),
	datad => VCC,
	cin => \Add3~43\,
	combout => \Add3~44_combout\,
	cout => \Add3~45\);

-- Location: LCCOMB_X56_Y40_N18
\Add3~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~46_combout\ = (softstart_duty_act(27) & ((\Add3~45\) # (GND))) # (!softstart_duty_act(27) & (!\Add3~45\))
-- \Add3~47\ = CARRY((softstart_duty_act(27)) # (!\Add3~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => softstart_duty_act(27),
	datad => VCC,
	cin => \Add3~45\,
	combout => \Add3~46_combout\,
	cout => \Add3~47\);

-- Location: LCCOMB_X56_Y40_N20
\Add3~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~48_combout\ = (softstart_duty_act(28) & (!\Add3~47\ & VCC)) # (!softstart_duty_act(28) & (\Add3~47\ $ (GND)))
-- \Add3~49\ = CARRY((!softstart_duty_act(28) & !\Add3~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(28),
	datad => VCC,
	cin => \Add3~47\,
	combout => \Add3~48_combout\,
	cout => \Add3~49\);

-- Location: LCCOMB_X56_Y40_N22
\Add3~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~50_combout\ = (softstart_duty_act(29) & ((\Add3~49\) # (GND))) # (!softstart_duty_act(29) & (!\Add3~49\))
-- \Add3~51\ = CARRY((softstart_duty_act(29)) # (!\Add3~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => softstart_duty_act(29),
	datad => VCC,
	cin => \Add3~49\,
	combout => \Add3~50_combout\,
	cout => \Add3~51\);

-- Location: LCCOMB_X56_Y40_N24
\Add3~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~52_combout\ = (softstart_duty_act(30) & (!\Add3~51\ & VCC)) # (!softstart_duty_act(30) & (\Add3~51\ $ (GND)))
-- \Add3~53\ = CARRY((!softstart_duty_act(30) & !\Add3~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(30),
	datad => VCC,
	cin => \Add3~51\,
	combout => \Add3~52_combout\,
	cout => \Add3~53\);

-- Location: LCCOMB_X56_Y40_N26
\Add3~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~54_combout\ = softstart_duty_act(31) $ (!\Add3~53\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => softstart_duty_act(31),
	cin => \Add3~53\,
	combout => \Add3~54_combout\);

-- Location: LCCOMB_X55_Y41_N0
\LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~1_cout\ = CARRY((softstart_duty_act(0) & !countactual1(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(0),
	datab => countactual1(0),
	datad => VCC,
	cout => \LessThan1~1_cout\);

-- Location: LCCOMB_X55_Y41_N2
\LessThan1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~3_cout\ = CARRY((softstart_duty_act(1) & (countactual1(1) & !\LessThan1~1_cout\)) # (!softstart_duty_act(1) & ((countactual1(1)) # (!\LessThan1~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(1),
	datab => countactual1(1),
	datad => VCC,
	cin => \LessThan1~1_cout\,
	cout => \LessThan1~3_cout\);

-- Location: LCCOMB_X55_Y41_N4
\LessThan1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~5_cout\ = CARRY((softstart_duty_act(2) & ((!\LessThan1~3_cout\) # (!countactual1(2)))) # (!softstart_duty_act(2) & (!countactual1(2) & !\LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(2),
	datab => countactual1(2),
	datad => VCC,
	cin => \LessThan1~3_cout\,
	cout => \LessThan1~5_cout\);

-- Location: LCCOMB_X55_Y41_N6
\LessThan1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~7_cout\ = CARRY((softstart_duty_act(3) & (countactual1(3) & !\LessThan1~5_cout\)) # (!softstart_duty_act(3) & ((countactual1(3)) # (!\LessThan1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(3),
	datab => countactual1(3),
	datad => VCC,
	cin => \LessThan1~5_cout\,
	cout => \LessThan1~7_cout\);

-- Location: LCCOMB_X55_Y41_N8
\LessThan1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~9_cout\ = CARRY((countactual1(4) & (softstart_duty_act(4) & !\LessThan1~7_cout\)) # (!countactual1(4) & ((softstart_duty_act(4)) # (!\LessThan1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(4),
	datab => softstart_duty_act(4),
	datad => VCC,
	cin => \LessThan1~7_cout\,
	cout => \LessThan1~9_cout\);

-- Location: LCCOMB_X55_Y41_N10
\LessThan1~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~11_cout\ = CARRY((\Add3~2_combout\ & (countactual1(5) & !\LessThan1~9_cout\)) # (!\Add3~2_combout\ & ((countactual1(5)) # (!\LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~2_combout\,
	datab => countactual1(5),
	datad => VCC,
	cin => \LessThan1~9_cout\,
	cout => \LessThan1~11_cout\);

-- Location: LCCOMB_X55_Y41_N12
\LessThan1~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~13_cout\ = CARRY((countactual1(6) & (\Add3~4_combout\ & !\LessThan1~11_cout\)) # (!countactual1(6) & ((\Add3~4_combout\) # (!\LessThan1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(6),
	datab => \Add3~4_combout\,
	datad => VCC,
	cin => \LessThan1~11_cout\,
	cout => \LessThan1~13_cout\);

-- Location: LCCOMB_X55_Y41_N14
\LessThan1~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~15_cout\ = CARRY((countactual1(7) & ((!\LessThan1~13_cout\) # (!\Add3~6_combout\))) # (!countactual1(7) & (!\Add3~6_combout\ & !\LessThan1~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(7),
	datab => \Add3~6_combout\,
	datad => VCC,
	cin => \LessThan1~13_cout\,
	cout => \LessThan1~15_cout\);

-- Location: LCCOMB_X55_Y41_N16
\LessThan1~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~17_cout\ = CARRY((countactual1(8) & (\Add3~8_combout\ & !\LessThan1~15_cout\)) # (!countactual1(8) & ((\Add3~8_combout\) # (!\LessThan1~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(8),
	datab => \Add3~8_combout\,
	datad => VCC,
	cin => \LessThan1~15_cout\,
	cout => \LessThan1~17_cout\);

-- Location: LCCOMB_X55_Y41_N18
\LessThan1~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~19_cout\ = CARRY((countactual1(9) & ((!\LessThan1~17_cout\) # (!\Add3~10_combout\))) # (!countactual1(9) & (!\Add3~10_combout\ & !\LessThan1~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(9),
	datab => \Add3~10_combout\,
	datad => VCC,
	cin => \LessThan1~17_cout\,
	cout => \LessThan1~19_cout\);

-- Location: LCCOMB_X55_Y41_N20
\LessThan1~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~21_cout\ = CARRY((countactual1(10) & (\Add3~12_combout\ & !\LessThan1~19_cout\)) # (!countactual1(10) & ((\Add3~12_combout\) # (!\LessThan1~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(10),
	datab => \Add3~12_combout\,
	datad => VCC,
	cin => \LessThan1~19_cout\,
	cout => \LessThan1~21_cout\);

-- Location: LCCOMB_X55_Y41_N22
\LessThan1~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~23_cout\ = CARRY((countactual1(11) & ((!\LessThan1~21_cout\) # (!\Add3~14_combout\))) # (!countactual1(11) & (!\Add3~14_combout\ & !\LessThan1~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(11),
	datab => \Add3~14_combout\,
	datad => VCC,
	cin => \LessThan1~21_cout\,
	cout => \LessThan1~23_cout\);

-- Location: LCCOMB_X55_Y41_N24
\LessThan1~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~25_cout\ = CARRY((countactual1(12) & (\Add3~16_combout\ & !\LessThan1~23_cout\)) # (!countactual1(12) & ((\Add3~16_combout\) # (!\LessThan1~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(12),
	datab => \Add3~16_combout\,
	datad => VCC,
	cin => \LessThan1~23_cout\,
	cout => \LessThan1~25_cout\);

-- Location: LCCOMB_X55_Y41_N26
\LessThan1~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~27_cout\ = CARRY((countactual1(13) & ((!\LessThan1~25_cout\) # (!\Add3~18_combout\))) # (!countactual1(13) & (!\Add3~18_combout\ & !\LessThan1~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(13),
	datab => \Add3~18_combout\,
	datad => VCC,
	cin => \LessThan1~25_cout\,
	cout => \LessThan1~27_cout\);

-- Location: LCCOMB_X55_Y41_N28
\LessThan1~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~29_cout\ = CARRY((countactual1(14) & (\Add3~20_combout\ & !\LessThan1~27_cout\)) # (!countactual1(14) & ((\Add3~20_combout\) # (!\LessThan1~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(14),
	datab => \Add3~20_combout\,
	datad => VCC,
	cin => \LessThan1~27_cout\,
	cout => \LessThan1~29_cout\);

-- Location: LCCOMB_X55_Y41_N30
\LessThan1~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~31_cout\ = CARRY((countactual1(15) & ((!\LessThan1~29_cout\) # (!\Add3~22_combout\))) # (!countactual1(15) & (!\Add3~22_combout\ & !\LessThan1~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(15),
	datab => \Add3~22_combout\,
	datad => VCC,
	cin => \LessThan1~29_cout\,
	cout => \LessThan1~31_cout\);

-- Location: LCCOMB_X55_Y40_N0
\LessThan1~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~33_cout\ = CARRY((\Add3~24_combout\ & ((!\LessThan1~31_cout\) # (!countactual1(16)))) # (!\Add3~24_combout\ & (!countactual1(16) & !\LessThan1~31_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~24_combout\,
	datab => countactual1(16),
	datad => VCC,
	cin => \LessThan1~31_cout\,
	cout => \LessThan1~33_cout\);

-- Location: LCCOMB_X55_Y40_N2
\LessThan1~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~35_cout\ = CARRY((countactual1(17) & ((!\LessThan1~33_cout\) # (!\Add3~26_combout\))) # (!countactual1(17) & (!\Add3~26_combout\ & !\LessThan1~33_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(17),
	datab => \Add3~26_combout\,
	datad => VCC,
	cin => \LessThan1~33_cout\,
	cout => \LessThan1~35_cout\);

-- Location: LCCOMB_X55_Y40_N4
\LessThan1~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~37_cout\ = CARRY((countactual1(18) & (\Add3~28_combout\ & !\LessThan1~35_cout\)) # (!countactual1(18) & ((\Add3~28_combout\) # (!\LessThan1~35_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(18),
	datab => \Add3~28_combout\,
	datad => VCC,
	cin => \LessThan1~35_cout\,
	cout => \LessThan1~37_cout\);

-- Location: LCCOMB_X55_Y40_N6
\LessThan1~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~39_cout\ = CARRY((\Add3~30_combout\ & (countactual1(19) & !\LessThan1~37_cout\)) # (!\Add3~30_combout\ & ((countactual1(19)) # (!\LessThan1~37_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~30_combout\,
	datab => countactual1(19),
	datad => VCC,
	cin => \LessThan1~37_cout\,
	cout => \LessThan1~39_cout\);

-- Location: LCCOMB_X55_Y40_N8
\LessThan1~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~41_cout\ = CARRY((countactual1(20) & (\Add3~32_combout\ & !\LessThan1~39_cout\)) # (!countactual1(20) & ((\Add3~32_combout\) # (!\LessThan1~39_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(20),
	datab => \Add3~32_combout\,
	datad => VCC,
	cin => \LessThan1~39_cout\,
	cout => \LessThan1~41_cout\);

-- Location: LCCOMB_X55_Y40_N10
\LessThan1~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~43_cout\ = CARRY((\Add3~34_combout\ & (countactual1(21) & !\LessThan1~41_cout\)) # (!\Add3~34_combout\ & ((countactual1(21)) # (!\LessThan1~41_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~34_combout\,
	datab => countactual1(21),
	datad => VCC,
	cin => \LessThan1~41_cout\,
	cout => \LessThan1~43_cout\);

-- Location: LCCOMB_X55_Y40_N12
\LessThan1~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~45_cout\ = CARRY((countactual1(22) & (\Add3~36_combout\ & !\LessThan1~43_cout\)) # (!countactual1(22) & ((\Add3~36_combout\) # (!\LessThan1~43_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(22),
	datab => \Add3~36_combout\,
	datad => VCC,
	cin => \LessThan1~43_cout\,
	cout => \LessThan1~45_cout\);

-- Location: LCCOMB_X55_Y40_N14
\LessThan1~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~47_cout\ = CARRY((countactual1(23) & ((!\LessThan1~45_cout\) # (!\Add3~38_combout\))) # (!countactual1(23) & (!\Add3~38_combout\ & !\LessThan1~45_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(23),
	datab => \Add3~38_combout\,
	datad => VCC,
	cin => \LessThan1~45_cout\,
	cout => \LessThan1~47_cout\);

-- Location: LCCOMB_X55_Y40_N16
\LessThan1~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~49_cout\ = CARRY((countactual1(24) & (\Add3~40_combout\ & !\LessThan1~47_cout\)) # (!countactual1(24) & ((\Add3~40_combout\) # (!\LessThan1~47_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(24),
	datab => \Add3~40_combout\,
	datad => VCC,
	cin => \LessThan1~47_cout\,
	cout => \LessThan1~49_cout\);

-- Location: LCCOMB_X55_Y40_N18
\LessThan1~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~51_cout\ = CARRY((countactual1(25) & ((!\LessThan1~49_cout\) # (!\Add3~42_combout\))) # (!countactual1(25) & (!\Add3~42_combout\ & !\LessThan1~49_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(25),
	datab => \Add3~42_combout\,
	datad => VCC,
	cin => \LessThan1~49_cout\,
	cout => \LessThan1~51_cout\);

-- Location: LCCOMB_X55_Y40_N20
\LessThan1~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~53_cout\ = CARRY((\Add3~44_combout\ & ((!\LessThan1~51_cout\) # (!countactual1(26)))) # (!\Add3~44_combout\ & (!countactual1(26) & !\LessThan1~51_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~44_combout\,
	datab => countactual1(26),
	datad => VCC,
	cin => \LessThan1~51_cout\,
	cout => \LessThan1~53_cout\);

-- Location: LCCOMB_X55_Y40_N22
\LessThan1~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~55_cout\ = CARRY((countactual1(27) & ((!\LessThan1~53_cout\) # (!\Add3~46_combout\))) # (!countactual1(27) & (!\Add3~46_combout\ & !\LessThan1~53_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(27),
	datab => \Add3~46_combout\,
	datad => VCC,
	cin => \LessThan1~53_cout\,
	cout => \LessThan1~55_cout\);

-- Location: LCCOMB_X55_Y40_N24
\LessThan1~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~57_cout\ = CARRY((\Add3~48_combout\ & ((!\LessThan1~55_cout\) # (!countactual1(28)))) # (!\Add3~48_combout\ & (!countactual1(28) & !\LessThan1~55_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~48_combout\,
	datab => countactual1(28),
	datad => VCC,
	cin => \LessThan1~55_cout\,
	cout => \LessThan1~57_cout\);

-- Location: LCCOMB_X55_Y40_N26
\LessThan1~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~59_cout\ = CARRY((countactual1(29) & ((!\LessThan1~57_cout\) # (!\Add3~50_combout\))) # (!countactual1(29) & (!\Add3~50_combout\ & !\LessThan1~57_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(29),
	datab => \Add3~50_combout\,
	datad => VCC,
	cin => \LessThan1~57_cout\,
	cout => \LessThan1~59_cout\);

-- Location: LCCOMB_X55_Y40_N28
\LessThan1~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~61_cout\ = CARRY((\Add3~52_combout\ & ((!\LessThan1~59_cout\) # (!countactual1(30)))) # (!\Add3~52_combout\ & (!countactual1(30) & !\LessThan1~59_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~52_combout\,
	datab => countactual1(30),
	datad => VCC,
	cin => \LessThan1~59_cout\,
	cout => \LessThan1~61_cout\);

-- Location: LCCOMB_X55_Y40_N30
\LessThan1~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~62_combout\ = (countactual1(31) & ((\LessThan1~61_cout\) # (!\Add3~54_combout\))) # (!countactual1(31) & (\LessThan1~61_cout\ & !\Add3~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countactual1(31),
	datad => \Add3~54_combout\,
	cin => \LessThan1~61_cout\,
	combout => \LessThan1~62_combout\);

-- Location: LCCOMB_X55_Y37_N16
\Selector36~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~1_combout\ = (\Selector36~0_combout\) # ((\est_act.buck1~q\ & ((\LessThan0~62_combout\) # (\LessThan1~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~62_combout\,
	datab => \Selector36~0_combout\,
	datac => \est_act.buck1~q\,
	datad => \LessThan1~62_combout\,
	combout => \Selector36~1_combout\);

-- Location: FF_X55_Y37_N17
\est_act.buck1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector36~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \est_act.buck1~q\);

-- Location: LCCOMB_X55_Y37_N10
\Selector37~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~1_combout\ = (\est_act.buck1~q\ & (!\LessThan0~62_combout\ & !\LessThan1~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \est_act.buck1~q\,
	datac => \LessThan0~62_combout\,
	datad => \LessThan1~62_combout\,
	combout => \Selector37~1_combout\);

-- Location: LCCOMB_X55_Y37_N2
\Selector37~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~2_combout\ = (\Selector39~7_combout\ & ((\Selector37~1_combout\) # ((!\Selector41~0_combout\ & \Selector37~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector39~7_combout\,
	datab => \Selector41~0_combout\,
	datac => \Selector37~0_combout\,
	datad => \Selector37~1_combout\,
	combout => \Selector37~2_combout\);

-- Location: FF_X55_Y37_N3
\est_act.buck2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector37~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \est_act.buck2~q\);

-- Location: LCCOMB_X59_Y37_N28
\LessThan9~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan9~7_combout\ = (\LessThan9~6_combout\ & !softstart_duty_act(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan9~6_combout\,
	datac => softstart_duty_act(8),
	combout => \LessThan9~7_combout\);

-- Location: LCCOMB_X59_Y37_N20
\LessThan4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = (softstart_duty_act(2)) # (((softstart_duty_act(3)) # (!softstart_duty_act(4))) # (!softstart_duty_act(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(2),
	datab => softstart_duty_act(5),
	datac => softstart_duty_act(3),
	datad => softstart_duty_act(4),
	combout => \LessThan4~0_combout\);

-- Location: LCCOMB_X59_Y37_N30
\LessThan4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan4~1_combout\ = ((!softstart_duty_act(6) & ((softstart_duty_act(1)) # (\LessThan4~0_combout\)))) # (!softstart_duty_act(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(6),
	datab => softstart_duty_act(1),
	datac => softstart_duty_act(7),
	datad => \LessThan4~0_combout\,
	combout => \LessThan4~1_combout\);

-- Location: LCCOMB_X59_Y37_N16
\softstart_duty_act[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \softstart_duty_act[3]~3_combout\ = ((softstart_duty_act(31)) # ((\LessThan9~7_combout\ & \LessThan4~1_combout\))) # (!\est_act.buck2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \est_act.buck2~q\,
	datab => \LessThan9~7_combout\,
	datac => \LessThan4~1_combout\,
	datad => softstart_duty_act(31),
	combout => \softstart_duty_act[3]~3_combout\);

-- Location: LCCOMB_X59_Y40_N28
\Add5~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~60_combout\ = (softstart_duty_act(30) & (\Add5~59\ $ (GND))) # (!softstart_duty_act(30) & (!\Add5~59\ & VCC))
-- \Add5~61\ = CARRY((softstart_duty_act(30) & !\Add5~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => softstart_duty_act(30),
	datad => VCC,
	cin => \Add5~59\,
	combout => \Add5~60_combout\,
	cout => \Add5~61\);

-- Location: LCCOMB_X60_Y40_N24
\Add5~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~64_combout\ = (\softstart_duty_act[3]~3_combout\ & (\est_act.idle~q\ & (!\Selector41~2_combout\ & \Add5~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \softstart_duty_act[3]~3_combout\,
	datab => \est_act.idle~q\,
	datac => \Selector41~2_combout\,
	datad => \Add5~60_combout\,
	combout => \Add5~64_combout\);

-- Location: FF_X60_Y40_N25
\softstart_duty_act[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~64_combout\,
	clrn => \reset~input_o\,
	ena => \softstart_duty_act[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => softstart_duty_act(30));

-- Location: LCCOMB_X57_Y38_N2
\Add1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~1_cout\ = CARRY(softstart_duty_act(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(1),
	datad => VCC,
	cout => \Add1~1_cout\);

-- Location: LCCOMB_X57_Y38_N4
\Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (softstart_duty_act(2) & (\Add1~1_cout\ & VCC)) # (!softstart_duty_act(2) & (!\Add1~1_cout\))
-- \Add1~3\ = CARRY((!softstart_duty_act(2) & !\Add1~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(2),
	datad => VCC,
	cin => \Add1~1_cout\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X57_Y38_N6
\Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (softstart_duty_act(3) & ((GND) # (!\Add1~3\))) # (!softstart_duty_act(3) & (\Add1~3\ $ (GND)))
-- \Add1~5\ = CARRY((softstart_duty_act(3)) # (!\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(3),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X57_Y38_N8
\Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (softstart_duty_act(4) & ((\Add1~5\) # (GND))) # (!softstart_duty_act(4) & (!\Add1~5\))
-- \Add1~7\ = CARRY((softstart_duty_act(4)) # (!\Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(4),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X57_Y38_N10
\Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (softstart_duty_act(5) & (!\Add1~7\ & VCC)) # (!softstart_duty_act(5) & (\Add1~7\ $ (GND)))
-- \Add1~9\ = CARRY((!softstart_duty_act(5) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => softstart_duty_act(5),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X57_Y38_N12
\Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (softstart_duty_act(6) & ((\Add1~9\) # (GND))) # (!softstart_duty_act(6) & (!\Add1~9\))
-- \Add1~11\ = CARRY((softstart_duty_act(6)) # (!\Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(6),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X57_Y38_N14
\Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (softstart_duty_act(7) & (!\Add1~11\ & VCC)) # (!softstart_duty_act(7) & (\Add1~11\ $ (GND)))
-- \Add1~13\ = CARRY((!softstart_duty_act(7) & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => softstart_duty_act(7),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X57_Y38_N16
\Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (softstart_duty_act(8) & (!\Add1~13\)) # (!softstart_duty_act(8) & (\Add1~13\ & VCC))
-- \Add1~15\ = CARRY((softstart_duty_act(8) & !\Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => softstart_duty_act(8),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X57_Y38_N18
\Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (softstart_duty_act(9) & (!\Add1~15\ & VCC)) # (!softstart_duty_act(9) & (\Add1~15\ $ (GND)))
-- \Add1~17\ = CARRY((!softstart_duty_act(9) & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(9),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X57_Y38_N20
\Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (softstart_duty_act(10) & ((\Add1~17\) # (GND))) # (!softstart_duty_act(10) & (!\Add1~17\))
-- \Add1~19\ = CARRY((softstart_duty_act(10)) # (!\Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => softstart_duty_act(10),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X57_Y38_N22
\Add1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (softstart_duty_act(11) & (!\Add1~19\ & VCC)) # (!softstart_duty_act(11) & (\Add1~19\ $ (GND)))
-- \Add1~21\ = CARRY((!softstart_duty_act(11) & !\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => softstart_duty_act(11),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCCOMB_X57_Y38_N24
\Add1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (softstart_duty_act(12) & ((\Add1~21\) # (GND))) # (!softstart_duty_act(12) & (!\Add1~21\))
-- \Add1~23\ = CARRY((softstart_duty_act(12)) # (!\Add1~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => softstart_duty_act(12),
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: LCCOMB_X57_Y38_N26
\Add1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (softstart_duty_act(13) & (!\Add1~23\ & VCC)) # (!softstart_duty_act(13) & (\Add1~23\ $ (GND)))
-- \Add1~25\ = CARRY((!softstart_duty_act(13) & !\Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(13),
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X57_Y38_N28
\Add1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (softstart_duty_act(14) & ((\Add1~25\) # (GND))) # (!softstart_duty_act(14) & (!\Add1~25\))
-- \Add1~27\ = CARRY((softstart_duty_act(14)) # (!\Add1~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(14),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: LCCOMB_X57_Y38_N30
\Add1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = (softstart_duty_act(15) & (!\Add1~27\ & VCC)) # (!softstart_duty_act(15) & (\Add1~27\ $ (GND)))
-- \Add1~29\ = CARRY((!softstart_duty_act(15) & !\Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => softstart_duty_act(15),
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: LCCOMB_X57_Y37_N0
\Add1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (softstart_duty_act(16) & ((\Add1~29\) # (GND))) # (!softstart_duty_act(16) & (!\Add1~29\))
-- \Add1~31\ = CARRY((softstart_duty_act(16)) # (!\Add1~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(16),
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: LCCOMB_X57_Y37_N2
\Add1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = (softstart_duty_act(17) & (!\Add1~31\ & VCC)) # (!softstart_duty_act(17) & (\Add1~31\ $ (GND)))
-- \Add1~33\ = CARRY((!softstart_duty_act(17) & !\Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(17),
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: LCCOMB_X57_Y37_N4
\Add1~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (softstart_duty_act(18) & ((\Add1~33\) # (GND))) # (!softstart_duty_act(18) & (!\Add1~33\))
-- \Add1~35\ = CARRY((softstart_duty_act(18)) # (!\Add1~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => softstart_duty_act(18),
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: LCCOMB_X57_Y37_N6
\Add1~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = (softstart_duty_act(19) & (!\Add1~35\ & VCC)) # (!softstart_duty_act(19) & (\Add1~35\ $ (GND)))
-- \Add1~37\ = CARRY((!softstart_duty_act(19) & !\Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(19),
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: LCCOMB_X57_Y37_N8
\Add1~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (softstart_duty_act(20) & ((\Add1~37\) # (GND))) # (!softstart_duty_act(20) & (!\Add1~37\))
-- \Add1~39\ = CARRY((softstart_duty_act(20)) # (!\Add1~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(20),
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~38_combout\,
	cout => \Add1~39\);

-- Location: LCCOMB_X57_Y37_N10
\Add1~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = (softstart_duty_act(21) & (!\Add1~39\ & VCC)) # (!softstart_duty_act(21) & (\Add1~39\ $ (GND)))
-- \Add1~41\ = CARRY((!softstart_duty_act(21) & !\Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => softstart_duty_act(21),
	datad => VCC,
	cin => \Add1~39\,
	combout => \Add1~40_combout\,
	cout => \Add1~41\);

-- Location: LCCOMB_X57_Y37_N12
\Add1~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (softstart_duty_act(22) & ((\Add1~41\) # (GND))) # (!softstart_duty_act(22) & (!\Add1~41\))
-- \Add1~43\ = CARRY((softstart_duty_act(22)) # (!\Add1~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => softstart_duty_act(22),
	datad => VCC,
	cin => \Add1~41\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

-- Location: LCCOMB_X57_Y37_N14
\Add1~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = (softstart_duty_act(23) & (!\Add1~43\ & VCC)) # (!softstart_duty_act(23) & (\Add1~43\ $ (GND)))
-- \Add1~45\ = CARRY((!softstart_duty_act(23) & !\Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => softstart_duty_act(23),
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~44_combout\,
	cout => \Add1~45\);

-- Location: LCCOMB_X57_Y37_N16
\Add1~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~46_combout\ = (softstart_duty_act(24) & ((\Add1~45\) # (GND))) # (!softstart_duty_act(24) & (!\Add1~45\))
-- \Add1~47\ = CARRY((softstart_duty_act(24)) # (!\Add1~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(24),
	datad => VCC,
	cin => \Add1~45\,
	combout => \Add1~46_combout\,
	cout => \Add1~47\);

-- Location: LCCOMB_X57_Y37_N18
\Add1~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = (softstart_duty_act(25) & (!\Add1~47\ & VCC)) # (!softstart_duty_act(25) & (\Add1~47\ $ (GND)))
-- \Add1~49\ = CARRY((!softstart_duty_act(25) & !\Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(25),
	datad => VCC,
	cin => \Add1~47\,
	combout => \Add1~48_combout\,
	cout => \Add1~49\);

-- Location: LCCOMB_X57_Y37_N20
\Add1~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = (softstart_duty_act(26) & ((\Add1~49\) # (GND))) # (!softstart_duty_act(26) & (!\Add1~49\))
-- \Add1~51\ = CARRY((softstart_duty_act(26)) # (!\Add1~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => softstart_duty_act(26),
	datad => VCC,
	cin => \Add1~49\,
	combout => \Add1~50_combout\,
	cout => \Add1~51\);

-- Location: LCCOMB_X57_Y37_N22
\Add1~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~52_combout\ = (softstart_duty_act(27) & (!\Add1~51\ & VCC)) # (!softstart_duty_act(27) & (\Add1~51\ $ (GND)))
-- \Add1~53\ = CARRY((!softstart_duty_act(27) & !\Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => softstart_duty_act(27),
	datad => VCC,
	cin => \Add1~51\,
	combout => \Add1~52_combout\,
	cout => \Add1~53\);

-- Location: LCCOMB_X57_Y37_N24
\Add1~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~54_combout\ = (softstart_duty_act(28) & ((\Add1~53\) # (GND))) # (!softstart_duty_act(28) & (!\Add1~53\))
-- \Add1~55\ = CARRY((softstart_duty_act(28)) # (!\Add1~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => softstart_duty_act(28),
	datad => VCC,
	cin => \Add1~53\,
	combout => \Add1~54_combout\,
	cout => \Add1~55\);

-- Location: LCCOMB_X57_Y37_N26
\Add1~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~56_combout\ = (softstart_duty_act(29) & (!\Add1~55\ & VCC)) # (!softstart_duty_act(29) & (\Add1~55\ $ (GND)))
-- \Add1~57\ = CARRY((!softstart_duty_act(29) & !\Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => softstart_duty_act(29),
	datad => VCC,
	cin => \Add1~55\,
	combout => \Add1~56_combout\,
	cout => \Add1~57\);

-- Location: LCCOMB_X57_Y37_N28
\Add1~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~58_combout\ = (softstart_duty_act(30) & ((\Add1~57\) # (GND))) # (!softstart_duty_act(30) & (!\Add1~57\))
-- \Add1~59\ = CARRY((softstart_duty_act(30)) # (!\Add1~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(30),
	datad => VCC,
	cin => \Add1~57\,
	combout => \Add1~58_combout\,
	cout => \Add1~59\);

-- Location: LCCOMB_X57_Y37_N30
\Add1~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~60_combout\ = \Add1~59\ $ (softstart_duty_act(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => softstart_duty_act(31),
	cin => \Add1~59\,
	combout => \Add1~60_combout\);

-- Location: LCCOMB_X56_Y38_N0
\LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((softstart_duty_act(0) & !countactual1(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(0),
	datab => countactual1(0),
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X56_Y38_N2
\LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((softstart_duty_act(1) & ((countactual1(1)) # (!\LessThan0~1_cout\))) # (!softstart_duty_act(1) & (countactual1(1) & !\LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(1),
	datab => countactual1(1),
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X56_Y38_N4
\LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((\Add1~2_combout\ & ((!\LessThan0~3_cout\) # (!countactual1(2)))) # (!\Add1~2_combout\ & (!countactual1(2) & !\LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => countactual1(2),
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X56_Y38_N6
\LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((\Add1~4_combout\ & (countactual1(3) & !\LessThan0~5_cout\)) # (!\Add1~4_combout\ & ((countactual1(3)) # (!\LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datab => countactual1(3),
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X56_Y38_N8
\LessThan0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((countactual1(4) & (\Add1~6_combout\ & !\LessThan0~7_cout\)) # (!countactual1(4) & ((\Add1~6_combout\) # (!\LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(4),
	datab => \Add1~6_combout\,
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X56_Y38_N10
\LessThan0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((countactual1(5) & ((!\LessThan0~9_cout\) # (!\Add1~8_combout\))) # (!countactual1(5) & (!\Add1~8_combout\ & !\LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(5),
	datab => \Add1~8_combout\,
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X56_Y38_N12
\LessThan0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((countactual1(6) & (\Add1~10_combout\ & !\LessThan0~11_cout\)) # (!countactual1(6) & ((\Add1~10_combout\) # (!\LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(6),
	datab => \Add1~10_combout\,
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X56_Y38_N14
\LessThan0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~15_cout\ = CARRY((countactual1(7) & ((!\LessThan0~13_cout\) # (!\Add1~12_combout\))) # (!countactual1(7) & (!\Add1~12_combout\ & !\LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(7),
	datab => \Add1~12_combout\,
	datad => VCC,
	cin => \LessThan0~13_cout\,
	cout => \LessThan0~15_cout\);

-- Location: LCCOMB_X56_Y38_N16
\LessThan0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~17_cout\ = CARRY((countactual1(8) & (\Add1~14_combout\ & !\LessThan0~15_cout\)) # (!countactual1(8) & ((\Add1~14_combout\) # (!\LessThan0~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(8),
	datab => \Add1~14_combout\,
	datad => VCC,
	cin => \LessThan0~15_cout\,
	cout => \LessThan0~17_cout\);

-- Location: LCCOMB_X56_Y38_N18
\LessThan0~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~19_cout\ = CARRY((countactual1(9) & ((!\LessThan0~17_cout\) # (!\Add1~16_combout\))) # (!countactual1(9) & (!\Add1~16_combout\ & !\LessThan0~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(9),
	datab => \Add1~16_combout\,
	datad => VCC,
	cin => \LessThan0~17_cout\,
	cout => \LessThan0~19_cout\);

-- Location: LCCOMB_X56_Y38_N20
\LessThan0~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~21_cout\ = CARRY((\Add1~18_combout\ & ((!\LessThan0~19_cout\) # (!countactual1(10)))) # (!\Add1~18_combout\ & (!countactual1(10) & !\LessThan0~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~18_combout\,
	datab => countactual1(10),
	datad => VCC,
	cin => \LessThan0~19_cout\,
	cout => \LessThan0~21_cout\);

-- Location: LCCOMB_X56_Y38_N22
\LessThan0~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~23_cout\ = CARRY((countactual1(11) & ((!\LessThan0~21_cout\) # (!\Add1~20_combout\))) # (!countactual1(11) & (!\Add1~20_combout\ & !\LessThan0~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(11),
	datab => \Add1~20_combout\,
	datad => VCC,
	cin => \LessThan0~21_cout\,
	cout => \LessThan0~23_cout\);

-- Location: LCCOMB_X56_Y38_N24
\LessThan0~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~25_cout\ = CARRY((countactual1(12) & (\Add1~22_combout\ & !\LessThan0~23_cout\)) # (!countactual1(12) & ((\Add1~22_combout\) # (!\LessThan0~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(12),
	datab => \Add1~22_combout\,
	datad => VCC,
	cin => \LessThan0~23_cout\,
	cout => \LessThan0~25_cout\);

-- Location: LCCOMB_X56_Y38_N26
\LessThan0~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~27_cout\ = CARRY((countactual1(13) & ((!\LessThan0~25_cout\) # (!\Add1~24_combout\))) # (!countactual1(13) & (!\Add1~24_combout\ & !\LessThan0~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(13),
	datab => \Add1~24_combout\,
	datad => VCC,
	cin => \LessThan0~25_cout\,
	cout => \LessThan0~27_cout\);

-- Location: LCCOMB_X56_Y38_N28
\LessThan0~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~29_cout\ = CARRY((\Add1~26_combout\ & ((!\LessThan0~27_cout\) # (!countactual1(14)))) # (!\Add1~26_combout\ & (!countactual1(14) & !\LessThan0~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~26_combout\,
	datab => countactual1(14),
	datad => VCC,
	cin => \LessThan0~27_cout\,
	cout => \LessThan0~29_cout\);

-- Location: LCCOMB_X56_Y38_N30
\LessThan0~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~31_cout\ = CARRY((\Add1~28_combout\ & (countactual1(15) & !\LessThan0~29_cout\)) # (!\Add1~28_combout\ & ((countactual1(15)) # (!\LessThan0~29_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~28_combout\,
	datab => countactual1(15),
	datad => VCC,
	cin => \LessThan0~29_cout\,
	cout => \LessThan0~31_cout\);

-- Location: LCCOMB_X56_Y37_N0
\LessThan0~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~33_cout\ = CARRY((countactual1(16) & (\Add1~30_combout\ & !\LessThan0~31_cout\)) # (!countactual1(16) & ((\Add1~30_combout\) # (!\LessThan0~31_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(16),
	datab => \Add1~30_combout\,
	datad => VCC,
	cin => \LessThan0~31_cout\,
	cout => \LessThan0~33_cout\);

-- Location: LCCOMB_X56_Y37_N2
\LessThan0~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~35_cout\ = CARRY((\Add1~32_combout\ & (countactual1(17) & !\LessThan0~33_cout\)) # (!\Add1~32_combout\ & ((countactual1(17)) # (!\LessThan0~33_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~32_combout\,
	datab => countactual1(17),
	datad => VCC,
	cin => \LessThan0~33_cout\,
	cout => \LessThan0~35_cout\);

-- Location: LCCOMB_X56_Y37_N4
\LessThan0~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~37_cout\ = CARRY((\Add1~34_combout\ & ((!\LessThan0~35_cout\) # (!countactual1(18)))) # (!\Add1~34_combout\ & (!countactual1(18) & !\LessThan0~35_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~34_combout\,
	datab => countactual1(18),
	datad => VCC,
	cin => \LessThan0~35_cout\,
	cout => \LessThan0~37_cout\);

-- Location: LCCOMB_X56_Y37_N6
\LessThan0~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~39_cout\ = CARRY((\Add1~36_combout\ & (countactual1(19) & !\LessThan0~37_cout\)) # (!\Add1~36_combout\ & ((countactual1(19)) # (!\LessThan0~37_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~36_combout\,
	datab => countactual1(19),
	datad => VCC,
	cin => \LessThan0~37_cout\,
	cout => \LessThan0~39_cout\);

-- Location: LCCOMB_X56_Y37_N8
\LessThan0~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~41_cout\ = CARRY((countactual1(20) & (\Add1~38_combout\ & !\LessThan0~39_cout\)) # (!countactual1(20) & ((\Add1~38_combout\) # (!\LessThan0~39_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(20),
	datab => \Add1~38_combout\,
	datad => VCC,
	cin => \LessThan0~39_cout\,
	cout => \LessThan0~41_cout\);

-- Location: LCCOMB_X56_Y37_N10
\LessThan0~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~43_cout\ = CARRY((countactual1(21) & ((!\LessThan0~41_cout\) # (!\Add1~40_combout\))) # (!countactual1(21) & (!\Add1~40_combout\ & !\LessThan0~41_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(21),
	datab => \Add1~40_combout\,
	datad => VCC,
	cin => \LessThan0~41_cout\,
	cout => \LessThan0~43_cout\);

-- Location: LCCOMB_X56_Y37_N12
\LessThan0~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~45_cout\ = CARRY((countactual1(22) & (\Add1~42_combout\ & !\LessThan0~43_cout\)) # (!countactual1(22) & ((\Add1~42_combout\) # (!\LessThan0~43_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(22),
	datab => \Add1~42_combout\,
	datad => VCC,
	cin => \LessThan0~43_cout\,
	cout => \LessThan0~45_cout\);

-- Location: LCCOMB_X56_Y37_N14
\LessThan0~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~47_cout\ = CARRY((countactual1(23) & ((!\LessThan0~45_cout\) # (!\Add1~44_combout\))) # (!countactual1(23) & (!\Add1~44_combout\ & !\LessThan0~45_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(23),
	datab => \Add1~44_combout\,
	datad => VCC,
	cin => \LessThan0~45_cout\,
	cout => \LessThan0~47_cout\);

-- Location: LCCOMB_X56_Y37_N16
\LessThan0~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~49_cout\ = CARRY((countactual1(24) & (\Add1~46_combout\ & !\LessThan0~47_cout\)) # (!countactual1(24) & ((\Add1~46_combout\) # (!\LessThan0~47_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(24),
	datab => \Add1~46_combout\,
	datad => VCC,
	cin => \LessThan0~47_cout\,
	cout => \LessThan0~49_cout\);

-- Location: LCCOMB_X56_Y37_N18
\LessThan0~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~51_cout\ = CARRY((countactual1(25) & ((!\LessThan0~49_cout\) # (!\Add1~48_combout\))) # (!countactual1(25) & (!\Add1~48_combout\ & !\LessThan0~49_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(25),
	datab => \Add1~48_combout\,
	datad => VCC,
	cin => \LessThan0~49_cout\,
	cout => \LessThan0~51_cout\);

-- Location: LCCOMB_X56_Y37_N20
\LessThan0~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~53_cout\ = CARRY((\Add1~50_combout\ & ((!\LessThan0~51_cout\) # (!countactual1(26)))) # (!\Add1~50_combout\ & (!countactual1(26) & !\LessThan0~51_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~50_combout\,
	datab => countactual1(26),
	datad => VCC,
	cin => \LessThan0~51_cout\,
	cout => \LessThan0~53_cout\);

-- Location: LCCOMB_X56_Y37_N22
\LessThan0~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~55_cout\ = CARRY((countactual1(27) & ((!\LessThan0~53_cout\) # (!\Add1~52_combout\))) # (!countactual1(27) & (!\Add1~52_combout\ & !\LessThan0~53_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(27),
	datab => \Add1~52_combout\,
	datad => VCC,
	cin => \LessThan0~53_cout\,
	cout => \LessThan0~55_cout\);

-- Location: LCCOMB_X56_Y37_N24
\LessThan0~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~57_cout\ = CARRY((countactual1(28) & (\Add1~54_combout\ & !\LessThan0~55_cout\)) # (!countactual1(28) & ((\Add1~54_combout\) # (!\LessThan0~55_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(28),
	datab => \Add1~54_combout\,
	datad => VCC,
	cin => \LessThan0~55_cout\,
	cout => \LessThan0~57_cout\);

-- Location: LCCOMB_X56_Y37_N26
\LessThan0~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~59_cout\ = CARRY((countactual1(29) & ((!\LessThan0~57_cout\) # (!\Add1~56_combout\))) # (!countactual1(29) & (!\Add1~56_combout\ & !\LessThan0~57_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(29),
	datab => \Add1~56_combout\,
	datad => VCC,
	cin => \LessThan0~57_cout\,
	cout => \LessThan0~59_cout\);

-- Location: LCCOMB_X56_Y37_N28
\LessThan0~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~61_cout\ = CARRY((countactual1(30) & (\Add1~58_combout\ & !\LessThan0~59_cout\)) # (!countactual1(30) & ((\Add1~58_combout\) # (!\LessThan0~59_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(30),
	datab => \Add1~58_combout\,
	datad => VCC,
	cin => \LessThan0~59_cout\,
	cout => \LessThan0~61_cout\);

-- Location: LCCOMB_X56_Y37_N30
\LessThan0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~62_combout\ = (\Add1~60_combout\ & (countactual1(31) & \LessThan0~61_cout\)) # (!\Add1~60_combout\ & ((countactual1(31)) # (\LessThan0~61_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~60_combout\,
	datab => countactual1(31),
	cin => \LessThan0~61_cout\,
	combout => \LessThan0~62_combout\);

-- Location: LCCOMB_X59_Y37_N10
\LessThan5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan5~4_combout\ = (softstart_duty_act(31)) # ((\LessThan9~6_combout\ & \LessThan5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan9~6_combout\,
	datac => \LessThan5~2_combout\,
	datad => softstart_duty_act(31),
	combout => \LessThan5~4_combout\);

-- Location: LCCOMB_X59_Y37_N12
\Selector38~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~0_combout\ = (\LessThan5~4_combout\ & (!\est_sig~8_combout\ & \est_act.boost2softs~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~4_combout\,
	datab => \est_sig~8_combout\,
	datad => \est_act.boost2softs~q\,
	combout => \Selector38~0_combout\);

-- Location: LCCOMB_X55_Y37_N22
\Selector38~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~1_combout\ = (\Selector38~0_combout\) # ((!\est_act.idle~q\ & \sel~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \est_act.idle~q\,
	datac => \sel~input_o\,
	datad => \Selector38~0_combout\,
	combout => \Selector38~1_combout\);

-- Location: LCCOMB_X55_Y37_N26
\Selector38~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~2_combout\ = (\Selector38~1_combout\) # ((\est_act.boost1softs~q\ & ((\LessThan0~62_combout\) # (\LessThan1~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~62_combout\,
	datab => \Selector38~1_combout\,
	datac => \est_act.boost1softs~q\,
	datad => \LessThan1~62_combout\,
	combout => \Selector38~2_combout\);

-- Location: FF_X55_Y37_N27
\est_act.boost1softs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector38~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \est_act.boost1softs~q\);

-- Location: LCCOMB_X55_Y37_N30
\Selector39~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector39~7_combout\ = ((\LessThan0~62_combout\) # (\LessThan1~62_combout\)) # (!\est_act.boost1softs~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \est_act.boost1softs~q\,
	datac => \LessThan0~62_combout\,
	datad => \LessThan1~62_combout\,
	combout => \Selector39~7_combout\);

-- Location: LCCOMB_X55_Y37_N14
\Selector39~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector39~10_combout\ = (!\Selector39~9_combout\ & (\est_act.boost2softs~q\ & \est_act.idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector39~9_combout\,
	datab => \est_act.boost2softs~q\,
	datad => \est_act.idle~q\,
	combout => \Selector39~10_combout\);

-- Location: LCCOMB_X55_Y37_N4
\est_sig~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \est_sig~9_combout\ = (\est_act.buck1~q\ & (!\LessThan0~62_combout\ & !\LessThan1~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \est_act.buck1~q\,
	datac => \LessThan0~62_combout\,
	datad => \LessThan1~62_combout\,
	combout => \est_sig~9_combout\);

-- Location: LCCOMB_X55_Y37_N20
\Selector39~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector39~11_combout\ = ((!\Selector41~0_combout\ & (\Selector39~10_combout\ & !\est_sig~9_combout\))) # (!\Selector39~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector39~7_combout\,
	datab => \Selector41~0_combout\,
	datac => \Selector39~10_combout\,
	datad => \est_sig~9_combout\,
	combout => \Selector39~11_combout\);

-- Location: FF_X55_Y37_N21
\est_act.boost2softs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector39~11_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \est_act.boost2softs~q\);

-- Location: LCCOMB_X55_Y37_N6
\countactual1[8]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countactual1[8]~32_combout\ = (!\est_act.boost2softs~q\ & !\est_act.buck2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \est_act.boost2softs~q\,
	datad => \est_act.buck2~q\,
	combout => \countactual1[8]~32_combout\);

-- Location: LCCOMB_X54_Y37_N2
\countactual1[8]~97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countactual1[8]~97_combout\ = (!\Selector39~6_combout\ & (\Selector39~4_combout\ & ((\est_act.boost2~q\) # (!\countactual1[8]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector39~6_combout\,
	datab => \est_act.boost2~q\,
	datac => \Selector39~4_combout\,
	datad => \countactual1[8]~32_combout\,
	combout => \countactual1[8]~97_combout\);

-- Location: FF_X54_Y41_N1
\countactual1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countactual1[0]~33_combout\,
	clrn => \reset~input_o\,
	sclr => \countactual1[8]~97_combout\,
	ena => \est_act.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countactual1(0));

-- Location: LCCOMB_X54_Y41_N2
\countactual1[1]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countactual1[1]~35_combout\ = (countactual1(1) & (!\countactual1[0]~34\)) # (!countactual1(1) & ((\countactual1[0]~34\) # (GND)))
-- \countactual1[1]~36\ = CARRY((!\countactual1[0]~34\) # (!countactual1(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countactual1(1),
	datad => VCC,
	cin => \countactual1[0]~34\,
	combout => \countactual1[1]~35_combout\,
	cout => \countactual1[1]~36\);

-- Location: FF_X54_Y41_N3
\countactual1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countactual1[1]~35_combout\,
	clrn => \reset~input_o\,
	sclr => \countactual1[8]~97_combout\,
	ena => \est_act.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countactual1(1));

-- Location: FF_X54_Y41_N5
\countactual1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countactual1[2]~37_combout\,
	clrn => \reset~input_o\,
	sclr => \countactual1[8]~97_combout\,
	ena => \est_act.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countactual1(2));

-- Location: LCCOMB_X54_Y38_N16
\LessThan3~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan3~7_combout\ = ((!countactual1(3) & ((!countactual1(1)) # (!countactual1(2))))) # (!countactual1(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(2),
	datab => countactual1(3),
	datac => countactual1(1),
	datad => countactual1(4),
	combout => \LessThan3~7_combout\);

-- Location: LCCOMB_X54_Y38_N10
\LessThan3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan3~8_combout\ = (countactual1(8) & ((!\Selector39~1_combout\) # (!\LessThan3~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan3~7_combout\,
	datac => \Selector39~1_combout\,
	datad => countactual1(8),
	combout => \LessThan3~8_combout\);

-- Location: LCCOMB_X54_Y38_N8
\est_sig~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \est_sig~8_combout\ = (countactual1(31)) # ((\LessThan3~6_combout\ & ((\Selector39~2_combout\) # (!\LessThan3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~8_combout\,
	datab => \LessThan3~6_combout\,
	datac => \Selector39~2_combout\,
	datad => countactual1(31),
	combout => \est_sig~8_combout\);

-- Location: LCCOMB_X55_Y37_N24
\softstart_duty_act[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \softstart_duty_act[3]~1_combout\ = (\est_act.boost1softs~q\) # ((\est_act.boost1~q\) # (\est_act.buck1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \est_act.boost1softs~q\,
	datac => \est_act.boost1~q\,
	datad => \est_act.buck1~q\,
	combout => \softstart_duty_act[3]~1_combout\);

-- Location: LCCOMB_X54_Y38_N12
\est_sig~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \est_sig~7_combout\ = (countactual1(31)) # ((\LessThan3~6_combout\ & ((\Selector39~3_combout\) # (!\LessThan3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~8_combout\,
	datab => \LessThan3~6_combout\,
	datac => \Selector39~3_combout\,
	datad => countactual1(31),
	combout => \est_sig~7_combout\);

-- Location: LCCOMB_X59_Y37_N14
\LessThan5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan5~3_combout\ = (softstart_duty_act(3) & (!softstart_duty_act(5) & (\LessThan5~1_combout\ & !softstart_duty_act(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(3),
	datab => softstart_duty_act(5),
	datac => \LessThan5~1_combout\,
	datad => softstart_duty_act(4),
	combout => \LessThan5~3_combout\);

-- Location: LCCOMB_X59_Y37_N24
\LessThan9~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan9~8_combout\ = (!softstart_duty_act(7) & (\LessThan9~7_combout\ & ((\LessThan5~3_combout\) # (!softstart_duty_act(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(6),
	datab => \LessThan5~3_combout\,
	datac => softstart_duty_act(7),
	datad => \LessThan9~7_combout\,
	combout => \LessThan9~8_combout\);

-- Location: LCCOMB_X54_Y37_N16
\softstart_duty_act[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \softstart_duty_act[3]~0_combout\ = (\est_act.boost2~q\ & ((\est_sig~7_combout\) # ((!softstart_duty_act(31) & !\LessThan9~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(31),
	datab => \est_act.boost2~q\,
	datac => \est_sig~7_combout\,
	datad => \LessThan9~8_combout\,
	combout => \softstart_duty_act[3]~0_combout\);

-- Location: LCCOMB_X55_Y37_N18
\softstart_duty_act[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \softstart_duty_act[3]~2_combout\ = (!\softstart_duty_act[3]~1_combout\ & (!\softstart_duty_act[3]~0_combout\ & ((\countactual1[8]~32_combout\) # (!\est_sig~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \est_sig~8_combout\,
	datab => \softstart_duty_act[3]~1_combout\,
	datac => \softstart_duty_act[3]~0_combout\,
	datad => \countactual1[8]~32_combout\,
	combout => \softstart_duty_act[3]~2_combout\);

-- Location: LCCOMB_X59_Y37_N18
\softstart_duty_act[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \softstart_duty_act[3]~4_combout\ = (((!\LessThan5~4_combout\ & \est_act.boost2softs~q\)) # (!\softstart_duty_act[3]~3_combout\)) # (!\est_act.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~4_combout\,
	datab => \est_act.boost2softs~q\,
	datac => \est_act.idle~q\,
	datad => \softstart_duty_act[3]~3_combout\,
	combout => \softstart_duty_act[3]~4_combout\);

-- Location: LCCOMB_X59_Y40_N30
\Add5~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~62_combout\ = softstart_duty_act(31) $ (\Add5~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(31),
	cin => \Add5~61\,
	combout => \Add5~62_combout\);

-- Location: LCCOMB_X59_Y37_N0
\softstart_duty_act[31]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \softstart_duty_act[31]~5_combout\ = (\softstart_duty_act[3]~2_combout\ & (!\softstart_duty_act[3]~4_combout\ & ((\Add5~62_combout\)))) # (!\softstart_duty_act[3]~2_combout\ & (((softstart_duty_act(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \softstart_duty_act[3]~2_combout\,
	datab => \softstart_duty_act[3]~4_combout\,
	datac => softstart_duty_act(31),
	datad => \Add5~62_combout\,
	combout => \softstart_duty_act[31]~5_combout\);

-- Location: FF_X59_Y37_N1
\softstart_duty_act[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \softstart_duty_act[31]~5_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => softstart_duty_act(31));

-- Location: LCCOMB_X55_Y39_N0
\LessThan7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan7~1_cout\ = CARRY((!softstart_duty_act(0) & !countactual1(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(0),
	datab => countactual1(0),
	datad => VCC,
	cout => \LessThan7~1_cout\);

-- Location: LCCOMB_X55_Y39_N2
\LessThan7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan7~3_cout\ = CARRY((softstart_duty_act(1) & ((countactual1(1)) # (!\LessThan7~1_cout\))) # (!softstart_duty_act(1) & (countactual1(1) & !\LessThan7~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(1),
	datab => countactual1(1),
	datad => VCC,
	cin => \LessThan7~1_cout\,
	cout => \LessThan7~3_cout\);

-- Location: LCCOMB_X55_Y39_N4
\LessThan7~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan7~5_cout\ = CARRY((softstart_duty_act(2) & (!countactual1(2) & !\LessThan7~3_cout\)) # (!softstart_duty_act(2) & ((!\LessThan7~3_cout\) # (!countactual1(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(2),
	datab => countactual1(2),
	datad => VCC,
	cin => \LessThan7~3_cout\,
	cout => \LessThan7~5_cout\);

-- Location: LCCOMB_X55_Y39_N6
\LessThan7~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan7~7_cout\ = CARRY((softstart_duty_act(3) & ((countactual1(3)) # (!\LessThan7~5_cout\))) # (!softstart_duty_act(3) & (countactual1(3) & !\LessThan7~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(3),
	datab => countactual1(3),
	datad => VCC,
	cin => \LessThan7~5_cout\,
	cout => \LessThan7~7_cout\);

-- Location: LCCOMB_X55_Y39_N8
\LessThan7~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan7~9_cout\ = CARRY((countactual1(4) & (softstart_duty_act(4) & !\LessThan7~7_cout\)) # (!countactual1(4) & ((softstart_duty_act(4)) # (!\LessThan7~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(4),
	datab => softstart_duty_act(4),
	datad => VCC,
	cin => \LessThan7~7_cout\,
	cout => \LessThan7~9_cout\);

-- Location: LCCOMB_X55_Y39_N10
\LessThan7~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan7~11_cout\ = CARRY((countactual1(5) & ((!\LessThan7~9_cout\) # (!softstart_duty_act(5)))) # (!countactual1(5) & (!softstart_duty_act(5) & !\LessThan7~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(5),
	datab => softstart_duty_act(5),
	datad => VCC,
	cin => \LessThan7~9_cout\,
	cout => \LessThan7~11_cout\);

-- Location: LCCOMB_X55_Y39_N12
\LessThan7~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan7~13_cout\ = CARRY((countactual1(6) & (softstart_duty_act(6) & !\LessThan7~11_cout\)) # (!countactual1(6) & ((softstart_duty_act(6)) # (!\LessThan7~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(6),
	datab => softstart_duty_act(6),
	datad => VCC,
	cin => \LessThan7~11_cout\,
	cout => \LessThan7~13_cout\);

-- Location: LCCOMB_X55_Y39_N14
\LessThan7~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan7~15_cout\ = CARRY((countactual1(7) & ((!\LessThan7~13_cout\) # (!softstart_duty_act(7)))) # (!countactual1(7) & (!softstart_duty_act(7) & !\LessThan7~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(7),
	datab => softstart_duty_act(7),
	datad => VCC,
	cin => \LessThan7~13_cout\,
	cout => \LessThan7~15_cout\);

-- Location: LCCOMB_X55_Y39_N16
\LessThan7~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan7~17_cout\ = CARRY((countactual1(8) & (softstart_duty_act(8) & !\LessThan7~15_cout\)) # (!countactual1(8) & ((softstart_duty_act(8)) # (!\LessThan7~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(8),
	datab => softstart_duty_act(8),
	datad => VCC,
	cin => \LessThan7~15_cout\,
	cout => \LessThan7~17_cout\);

-- Location: LCCOMB_X55_Y39_N18
\LessThan7~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan7~19_cout\ = CARRY((countactual1(9) & ((!\LessThan7~17_cout\) # (!softstart_duty_act(9)))) # (!countactual1(9) & (!softstart_duty_act(9) & !\LessThan7~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(9),
	datab => softstart_duty_act(9),
	datad => VCC,
	cin => \LessThan7~17_cout\,
	cout => \LessThan7~19_cout\);

-- Location: LCCOMB_X55_Y39_N20
\LessThan7~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan7~21_cout\ = CARRY((softstart_duty_act(10) & ((!\LessThan7~19_cout\) # (!countactual1(10)))) # (!softstart_duty_act(10) & (!countactual1(10) & !\LessThan7~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(10),
	datab => countactual1(10),
	datad => VCC,
	cin => \LessThan7~19_cout\,
	cout => \LessThan7~21_cout\);

-- Location: LCCOMB_X55_Y39_N22
\LessThan7~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan7~23_cout\ = CARRY((countactual1(11) & ((!\LessThan7~21_cout\) # (!softstart_duty_act(11)))) # (!countactual1(11) & (!softstart_duty_act(11) & !\LessThan7~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(11),
	datab => softstart_duty_act(11),
	datad => VCC,
	cin => \LessThan7~21_cout\,
	cout => \LessThan7~23_cout\);

-- Location: LCCOMB_X55_Y39_N24
\LessThan7~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan7~25_cout\ = CARRY((countactual1(12) & (softstart_duty_act(12) & !\LessThan7~23_cout\)) # (!countactual1(12) & ((softstart_duty_act(12)) # (!\LessThan7~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(12),
	datab => softstart_duty_act(12),
	datad => VCC,
	cin => \LessThan7~23_cout\,
	cout => \LessThan7~25_cout\);

-- Location: LCCOMB_X55_Y39_N26
\LessThan7~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan7~27_cout\ = CARRY((softstart_duty_act(13) & (countactual1(13) & !\LessThan7~25_cout\)) # (!softstart_duty_act(13) & ((countactual1(13)) # (!\LessThan7~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(13),
	datab => countactual1(13),
	datad => VCC,
	cin => \LessThan7~25_cout\,
	cout => \LessThan7~27_cout\);

-- Location: LCCOMB_X55_Y39_N28
\LessThan7~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan7~29_cout\ = CARRY((countactual1(14) & (softstart_duty_act(14) & !\LessThan7~27_cout\)) # (!countactual1(14) & ((softstart_duty_act(14)) # (!\LessThan7~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(14),
	datab => softstart_duty_act(14),
	datad => VCC,
	cin => \LessThan7~27_cout\,
	cout => \LessThan7~29_cout\);

-- Location: LCCOMB_X55_Y39_N30
\LessThan7~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan7~31_cout\ = CARRY((countactual1(15) & ((!\LessThan7~29_cout\) # (!softstart_duty_act(15)))) # (!countactual1(15) & (!softstart_duty_act(15) & !\LessThan7~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(15),
	datab => softstart_duty_act(15),
	datad => VCC,
	cin => \LessThan7~29_cout\,
	cout => \LessThan7~31_cout\);

-- Location: LCCOMB_X55_Y38_N0
\LessThan7~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan7~33_cout\ = CARRY((softstart_duty_act(16) & ((!\LessThan7~31_cout\) # (!countactual1(16)))) # (!softstart_duty_act(16) & (!countactual1(16) & !\LessThan7~31_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(16),
	datab => countactual1(16),
	datad => VCC,
	cin => \LessThan7~31_cout\,
	cout => \LessThan7~33_cout\);

-- Location: LCCOMB_X55_Y38_N2
\LessThan7~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan7~35_cout\ = CARRY((softstart_duty_act(17) & (countactual1(17) & !\LessThan7~33_cout\)) # (!softstart_duty_act(17) & ((countactual1(17)) # (!\LessThan7~33_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(17),
	datab => countactual1(17),
	datad => VCC,
	cin => \LessThan7~33_cout\,
	cout => \LessThan7~35_cout\);

-- Location: LCCOMB_X55_Y38_N4
\LessThan7~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan7~37_cout\ = CARRY((countactual1(18) & (softstart_duty_act(18) & !\LessThan7~35_cout\)) # (!countactual1(18) & ((softstart_duty_act(18)) # (!\LessThan7~35_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(18),
	datab => softstart_duty_act(18),
	datad => VCC,
	cin => \LessThan7~35_cout\,
	cout => \LessThan7~37_cout\);

-- Location: LCCOMB_X55_Y38_N6
\LessThan7~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan7~39_cout\ = CARRY((countactual1(19) & ((!\LessThan7~37_cout\) # (!softstart_duty_act(19)))) # (!countactual1(19) & (!softstart_duty_act(19) & !\LessThan7~37_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(19),
	datab => softstart_duty_act(19),
	datad => VCC,
	cin => \LessThan7~37_cout\,
	cout => \LessThan7~39_cout\);

-- Location: LCCOMB_X55_Y38_N8
\LessThan7~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan7~41_cout\ = CARRY((softstart_duty_act(20) & ((!\LessThan7~39_cout\) # (!countactual1(20)))) # (!softstart_duty_act(20) & (!countactual1(20) & !\LessThan7~39_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(20),
	datab => countactual1(20),
	datad => VCC,
	cin => \LessThan7~39_cout\,
	cout => \LessThan7~41_cout\);

-- Location: LCCOMB_X55_Y38_N10
\LessThan7~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan7~43_cout\ = CARRY((countactual1(21) & ((!\LessThan7~41_cout\) # (!softstart_duty_act(21)))) # (!countactual1(21) & (!softstart_duty_act(21) & !\LessThan7~41_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(21),
	datab => softstart_duty_act(21),
	datad => VCC,
	cin => \LessThan7~41_cout\,
	cout => \LessThan7~43_cout\);

-- Location: LCCOMB_X55_Y38_N12
\LessThan7~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan7~45_cout\ = CARRY((softstart_duty_act(22) & ((!\LessThan7~43_cout\) # (!countactual1(22)))) # (!softstart_duty_act(22) & (!countactual1(22) & !\LessThan7~43_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(22),
	datab => countactual1(22),
	datad => VCC,
	cin => \LessThan7~43_cout\,
	cout => \LessThan7~45_cout\);

-- Location: LCCOMB_X55_Y38_N14
\LessThan7~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan7~47_cout\ = CARRY((countactual1(23) & ((!\LessThan7~45_cout\) # (!softstart_duty_act(23)))) # (!countactual1(23) & (!softstart_duty_act(23) & !\LessThan7~45_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(23),
	datab => softstart_duty_act(23),
	datad => VCC,
	cin => \LessThan7~45_cout\,
	cout => \LessThan7~47_cout\);

-- Location: LCCOMB_X55_Y38_N16
\LessThan7~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan7~49_cout\ = CARRY((countactual1(24) & (softstart_duty_act(24) & !\LessThan7~47_cout\)) # (!countactual1(24) & ((softstart_duty_act(24)) # (!\LessThan7~47_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(24),
	datab => softstart_duty_act(24),
	datad => VCC,
	cin => \LessThan7~47_cout\,
	cout => \LessThan7~49_cout\);

-- Location: LCCOMB_X55_Y38_N18
\LessThan7~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan7~51_cout\ = CARRY((countactual1(25) & ((!\LessThan7~49_cout\) # (!softstart_duty_act(25)))) # (!countactual1(25) & (!softstart_duty_act(25) & !\LessThan7~49_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(25),
	datab => softstart_duty_act(25),
	datad => VCC,
	cin => \LessThan7~49_cout\,
	cout => \LessThan7~51_cout\);

-- Location: LCCOMB_X55_Y38_N20
\LessThan7~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan7~53_cout\ = CARRY((countactual1(26) & (softstart_duty_act(26) & !\LessThan7~51_cout\)) # (!countactual1(26) & ((softstart_duty_act(26)) # (!\LessThan7~51_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(26),
	datab => softstart_duty_act(26),
	datad => VCC,
	cin => \LessThan7~51_cout\,
	cout => \LessThan7~53_cout\);

-- Location: LCCOMB_X55_Y38_N22
\LessThan7~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan7~55_cout\ = CARRY((countactual1(27) & ((!\LessThan7~53_cout\) # (!softstart_duty_act(27)))) # (!countactual1(27) & (!softstart_duty_act(27) & !\LessThan7~53_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(27),
	datab => softstart_duty_act(27),
	datad => VCC,
	cin => \LessThan7~53_cout\,
	cout => \LessThan7~55_cout\);

-- Location: LCCOMB_X55_Y38_N24
\LessThan7~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan7~57_cout\ = CARRY((countactual1(28) & (softstart_duty_act(28) & !\LessThan7~55_cout\)) # (!countactual1(28) & ((softstart_duty_act(28)) # (!\LessThan7~55_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(28),
	datab => softstart_duty_act(28),
	datad => VCC,
	cin => \LessThan7~55_cout\,
	cout => \LessThan7~57_cout\);

-- Location: LCCOMB_X55_Y38_N26
\LessThan7~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan7~59_cout\ = CARRY((softstart_duty_act(29) & (countactual1(29) & !\LessThan7~57_cout\)) # (!softstart_duty_act(29) & ((countactual1(29)) # (!\LessThan7~57_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(29),
	datab => countactual1(29),
	datad => VCC,
	cin => \LessThan7~57_cout\,
	cout => \LessThan7~59_cout\);

-- Location: LCCOMB_X55_Y38_N28
\LessThan7~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan7~61_cout\ = CARRY((countactual1(30) & (softstart_duty_act(30) & !\LessThan7~59_cout\)) # (!countactual1(30) & ((softstart_duty_act(30)) # (!\LessThan7~59_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(30),
	datab => softstart_duty_act(30),
	datad => VCC,
	cin => \LessThan7~59_cout\,
	cout => \LessThan7~61_cout\);

-- Location: LCCOMB_X55_Y38_N30
\LessThan7~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan7~62_combout\ = (softstart_duty_act(31) & (\LessThan7~61_cout\ & countactual1(31))) # (!softstart_duty_act(31) & ((\LessThan7~61_cout\) # (countactual1(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => softstart_duty_act(31),
	datad => countactual1(31),
	cin => \LessThan7~61_cout\,
	combout => \LessThan7~62_combout\);

-- Location: LCCOMB_X58_Y40_N2
\Add6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~0_combout\ = (softstart_duty_act(1) & (!softstart_duty_act(0) & VCC)) # (!softstart_duty_act(1) & (softstart_duty_act(0) $ (GND)))
-- \Add6~1\ = CARRY((!softstart_duty_act(1) & !softstart_duty_act(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(1),
	datab => softstart_duty_act(0),
	datad => VCC,
	combout => \Add6~0_combout\,
	cout => \Add6~1\);

-- Location: LCCOMB_X58_Y40_N4
\Add6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~2_combout\ = (softstart_duty_act(2) & ((\Add6~1\) # (GND))) # (!softstart_duty_act(2) & (!\Add6~1\))
-- \Add6~3\ = CARRY((softstart_duty_act(2)) # (!\Add6~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(2),
	datad => VCC,
	cin => \Add6~1\,
	combout => \Add6~2_combout\,
	cout => \Add6~3\);

-- Location: LCCOMB_X58_Y40_N6
\Add6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~4_combout\ = (softstart_duty_act(3) & (\Add6~3\ $ (GND))) # (!softstart_duty_act(3) & ((GND) # (!\Add6~3\)))
-- \Add6~5\ = CARRY((!\Add6~3\) # (!softstart_duty_act(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => softstart_duty_act(3),
	datad => VCC,
	cin => \Add6~3\,
	combout => \Add6~4_combout\,
	cout => \Add6~5\);

-- Location: LCCOMB_X58_Y40_N8
\Add6~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~6_combout\ = (softstart_duty_act(4) & (\Add6~5\ & VCC)) # (!softstart_duty_act(4) & (!\Add6~5\))
-- \Add6~7\ = CARRY((!softstart_duty_act(4) & !\Add6~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(4),
	datad => VCC,
	cin => \Add6~5\,
	combout => \Add6~6_combout\,
	cout => \Add6~7\);

-- Location: LCCOMB_X58_Y40_N10
\Add6~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~8_combout\ = (softstart_duty_act(5) & ((GND) # (!\Add6~7\))) # (!softstart_duty_act(5) & (\Add6~7\ $ (GND)))
-- \Add6~9\ = CARRY((softstart_duty_act(5)) # (!\Add6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(5),
	datad => VCC,
	cin => \Add6~7\,
	combout => \Add6~8_combout\,
	cout => \Add6~9\);

-- Location: LCCOMB_X58_Y40_N12
\Add6~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~10_combout\ = (softstart_duty_act(6) & (\Add6~9\ & VCC)) # (!softstart_duty_act(6) & (!\Add6~9\))
-- \Add6~11\ = CARRY((!softstart_duty_act(6) & !\Add6~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => softstart_duty_act(6),
	datad => VCC,
	cin => \Add6~9\,
	combout => \Add6~10_combout\,
	cout => \Add6~11\);

-- Location: LCCOMB_X58_Y40_N14
\Add6~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~12_combout\ = (softstart_duty_act(7) & ((GND) # (!\Add6~11\))) # (!softstart_duty_act(7) & (\Add6~11\ $ (GND)))
-- \Add6~13\ = CARRY((softstart_duty_act(7)) # (!\Add6~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => softstart_duty_act(7),
	datad => VCC,
	cin => \Add6~11\,
	combout => \Add6~12_combout\,
	cout => \Add6~13\);

-- Location: LCCOMB_X58_Y40_N16
\Add6~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~14_combout\ = (softstart_duty_act(8) & (\Add6~13\ & VCC)) # (!softstart_duty_act(8) & (!\Add6~13\))
-- \Add6~15\ = CARRY((!softstart_duty_act(8) & !\Add6~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => softstart_duty_act(8),
	datad => VCC,
	cin => \Add6~13\,
	combout => \Add6~14_combout\,
	cout => \Add6~15\);

-- Location: LCCOMB_X58_Y40_N18
\Add6~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~16_combout\ = (softstart_duty_act(9) & ((GND) # (!\Add6~15\))) # (!softstart_duty_act(9) & (\Add6~15\ $ (GND)))
-- \Add6~17\ = CARRY((softstart_duty_act(9)) # (!\Add6~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(9),
	datad => VCC,
	cin => \Add6~15\,
	combout => \Add6~16_combout\,
	cout => \Add6~17\);

-- Location: LCCOMB_X58_Y40_N20
\Add6~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~18_combout\ = (softstart_duty_act(10) & (\Add6~17\ & VCC)) # (!softstart_duty_act(10) & (!\Add6~17\))
-- \Add6~19\ = CARRY((!softstart_duty_act(10) & !\Add6~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => softstart_duty_act(10),
	datad => VCC,
	cin => \Add6~17\,
	combout => \Add6~18_combout\,
	cout => \Add6~19\);

-- Location: LCCOMB_X58_Y40_N22
\Add6~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~20_combout\ = (softstart_duty_act(11) & ((GND) # (!\Add6~19\))) # (!softstart_duty_act(11) & (\Add6~19\ $ (GND)))
-- \Add6~21\ = CARRY((softstart_duty_act(11)) # (!\Add6~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => softstart_duty_act(11),
	datad => VCC,
	cin => \Add6~19\,
	combout => \Add6~20_combout\,
	cout => \Add6~21\);

-- Location: LCCOMB_X58_Y40_N24
\Add6~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~22_combout\ = (softstart_duty_act(12) & (\Add6~21\ & VCC)) # (!softstart_duty_act(12) & (!\Add6~21\))
-- \Add6~23\ = CARRY((!softstart_duty_act(12) & !\Add6~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(12),
	datad => VCC,
	cin => \Add6~21\,
	combout => \Add6~22_combout\,
	cout => \Add6~23\);

-- Location: LCCOMB_X58_Y40_N26
\Add6~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~24_combout\ = (softstart_duty_act(13) & ((GND) # (!\Add6~23\))) # (!softstart_duty_act(13) & (\Add6~23\ $ (GND)))
-- \Add6~25\ = CARRY((softstart_duty_act(13)) # (!\Add6~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(13),
	datad => VCC,
	cin => \Add6~23\,
	combout => \Add6~24_combout\,
	cout => \Add6~25\);

-- Location: LCCOMB_X58_Y40_N28
\Add6~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~26_combout\ = (softstart_duty_act(14) & (\Add6~25\ & VCC)) # (!softstart_duty_act(14) & (!\Add6~25\))
-- \Add6~27\ = CARRY((!softstart_duty_act(14) & !\Add6~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(14),
	datad => VCC,
	cin => \Add6~25\,
	combout => \Add6~26_combout\,
	cout => \Add6~27\);

-- Location: LCCOMB_X58_Y40_N30
\Add6~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~28_combout\ = (softstart_duty_act(15) & ((GND) # (!\Add6~27\))) # (!softstart_duty_act(15) & (\Add6~27\ $ (GND)))
-- \Add6~29\ = CARRY((softstart_duty_act(15)) # (!\Add6~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(15),
	datad => VCC,
	cin => \Add6~27\,
	combout => \Add6~28_combout\,
	cout => \Add6~29\);

-- Location: LCCOMB_X58_Y39_N0
\Add6~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~30_combout\ = (softstart_duty_act(16) & (\Add6~29\ & VCC)) # (!softstart_duty_act(16) & (!\Add6~29\))
-- \Add6~31\ = CARRY((!softstart_duty_act(16) & !\Add6~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(16),
	datad => VCC,
	cin => \Add6~29\,
	combout => \Add6~30_combout\,
	cout => \Add6~31\);

-- Location: LCCOMB_X58_Y39_N2
\Add6~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~32_combout\ = (softstart_duty_act(17) & ((GND) # (!\Add6~31\))) # (!softstart_duty_act(17) & (\Add6~31\ $ (GND)))
-- \Add6~33\ = CARRY((softstart_duty_act(17)) # (!\Add6~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(17),
	datad => VCC,
	cin => \Add6~31\,
	combout => \Add6~32_combout\,
	cout => \Add6~33\);

-- Location: LCCOMB_X58_Y39_N4
\Add6~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~34_combout\ = (softstart_duty_act(18) & (\Add6~33\ & VCC)) # (!softstart_duty_act(18) & (!\Add6~33\))
-- \Add6~35\ = CARRY((!softstart_duty_act(18) & !\Add6~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => softstart_duty_act(18),
	datad => VCC,
	cin => \Add6~33\,
	combout => \Add6~34_combout\,
	cout => \Add6~35\);

-- Location: LCCOMB_X58_Y39_N6
\Add6~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~36_combout\ = (softstart_duty_act(19) & ((GND) # (!\Add6~35\))) # (!softstart_duty_act(19) & (\Add6~35\ $ (GND)))
-- \Add6~37\ = CARRY((softstart_duty_act(19)) # (!\Add6~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(19),
	datad => VCC,
	cin => \Add6~35\,
	combout => \Add6~36_combout\,
	cout => \Add6~37\);

-- Location: LCCOMB_X58_Y39_N8
\Add6~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~38_combout\ = (softstart_duty_act(20) & (\Add6~37\ & VCC)) # (!softstart_duty_act(20) & (!\Add6~37\))
-- \Add6~39\ = CARRY((!softstart_duty_act(20) & !\Add6~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(20),
	datad => VCC,
	cin => \Add6~37\,
	combout => \Add6~38_combout\,
	cout => \Add6~39\);

-- Location: LCCOMB_X58_Y39_N10
\Add6~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~40_combout\ = (softstart_duty_act(21) & ((GND) # (!\Add6~39\))) # (!softstart_duty_act(21) & (\Add6~39\ $ (GND)))
-- \Add6~41\ = CARRY((softstart_duty_act(21)) # (!\Add6~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => softstart_duty_act(21),
	datad => VCC,
	cin => \Add6~39\,
	combout => \Add6~40_combout\,
	cout => \Add6~41\);

-- Location: LCCOMB_X58_Y39_N12
\Add6~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~42_combout\ = (softstart_duty_act(22) & (\Add6~41\ & VCC)) # (!softstart_duty_act(22) & (!\Add6~41\))
-- \Add6~43\ = CARRY((!softstart_duty_act(22) & !\Add6~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => softstart_duty_act(22),
	datad => VCC,
	cin => \Add6~41\,
	combout => \Add6~42_combout\,
	cout => \Add6~43\);

-- Location: LCCOMB_X58_Y39_N14
\Add6~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~44_combout\ = (softstart_duty_act(23) & ((GND) # (!\Add6~43\))) # (!softstart_duty_act(23) & (\Add6~43\ $ (GND)))
-- \Add6~45\ = CARRY((softstart_duty_act(23)) # (!\Add6~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => softstart_duty_act(23),
	datad => VCC,
	cin => \Add6~43\,
	combout => \Add6~44_combout\,
	cout => \Add6~45\);

-- Location: LCCOMB_X58_Y39_N16
\Add6~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~46_combout\ = (softstart_duty_act(24) & (\Add6~45\ & VCC)) # (!softstart_duty_act(24) & (!\Add6~45\))
-- \Add6~47\ = CARRY((!softstart_duty_act(24) & !\Add6~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => softstart_duty_act(24),
	datad => VCC,
	cin => \Add6~45\,
	combout => \Add6~46_combout\,
	cout => \Add6~47\);

-- Location: LCCOMB_X58_Y39_N18
\Add6~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~48_combout\ = (softstart_duty_act(25) & ((GND) # (!\Add6~47\))) # (!softstart_duty_act(25) & (\Add6~47\ $ (GND)))
-- \Add6~49\ = CARRY((softstart_duty_act(25)) # (!\Add6~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(25),
	datad => VCC,
	cin => \Add6~47\,
	combout => \Add6~48_combout\,
	cout => \Add6~49\);

-- Location: LCCOMB_X58_Y39_N20
\Add6~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~50_combout\ = (softstart_duty_act(26) & (\Add6~49\ & VCC)) # (!softstart_duty_act(26) & (!\Add6~49\))
-- \Add6~51\ = CARRY((!softstart_duty_act(26) & !\Add6~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(26),
	datad => VCC,
	cin => \Add6~49\,
	combout => \Add6~50_combout\,
	cout => \Add6~51\);

-- Location: LCCOMB_X58_Y39_N22
\Add6~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~52_combout\ = (softstart_duty_act(27) & ((GND) # (!\Add6~51\))) # (!softstart_duty_act(27) & (\Add6~51\ $ (GND)))
-- \Add6~53\ = CARRY((softstart_duty_act(27)) # (!\Add6~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(27),
	datad => VCC,
	cin => \Add6~51\,
	combout => \Add6~52_combout\,
	cout => \Add6~53\);

-- Location: LCCOMB_X58_Y39_N24
\Add6~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~54_combout\ = (softstart_duty_act(28) & (\Add6~53\ & VCC)) # (!softstart_duty_act(28) & (!\Add6~53\))
-- \Add6~55\ = CARRY((!softstart_duty_act(28) & !\Add6~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => softstart_duty_act(28),
	datad => VCC,
	cin => \Add6~53\,
	combout => \Add6~54_combout\,
	cout => \Add6~55\);

-- Location: LCCOMB_X58_Y39_N26
\Add6~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~56_combout\ = (softstart_duty_act(29) & ((GND) # (!\Add6~55\))) # (!softstart_duty_act(29) & (\Add6~55\ $ (GND)))
-- \Add6~57\ = CARRY((softstart_duty_act(29)) # (!\Add6~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => softstart_duty_act(29),
	datad => VCC,
	cin => \Add6~55\,
	combout => \Add6~56_combout\,
	cout => \Add6~57\);

-- Location: LCCOMB_X58_Y39_N28
\Add6~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~58_combout\ = (softstart_duty_act(30) & (\Add6~57\ & VCC)) # (!softstart_duty_act(30) & (!\Add6~57\))
-- \Add6~59\ = CARRY((!softstart_duty_act(30) & !\Add6~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(30),
	datad => VCC,
	cin => \Add6~57\,
	combout => \Add6~58_combout\,
	cout => \Add6~59\);

-- Location: LCCOMB_X58_Y39_N30
\Add6~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~60_combout\ = \Add6~59\ $ (softstart_duty_act(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => softstart_duty_act(31),
	cin => \Add6~59\,
	combout => \Add6~60_combout\);

-- Location: LCCOMB_X57_Y40_N0
\LessThan6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan6~1_cout\ = CARRY((softstart_duty_act(0) & !countactual1(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => softstart_duty_act(0),
	datab => countactual1(0),
	datad => VCC,
	cout => \LessThan6~1_cout\);

-- Location: LCCOMB_X57_Y40_N2
\LessThan6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan6~3_cout\ = CARRY((\Add6~0_combout\ & (countactual1(1) & !\LessThan6~1_cout\)) # (!\Add6~0_combout\ & ((countactual1(1)) # (!\LessThan6~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~0_combout\,
	datab => countactual1(1),
	datad => VCC,
	cin => \LessThan6~1_cout\,
	cout => \LessThan6~3_cout\);

-- Location: LCCOMB_X57_Y40_N4
\LessThan6~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan6~5_cout\ = CARRY((\Add6~2_combout\ & ((!\LessThan6~3_cout\) # (!countactual1(2)))) # (!\Add6~2_combout\ & (!countactual1(2) & !\LessThan6~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~2_combout\,
	datab => countactual1(2),
	datad => VCC,
	cin => \LessThan6~3_cout\,
	cout => \LessThan6~5_cout\);

-- Location: LCCOMB_X57_Y40_N6
\LessThan6~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan6~7_cout\ = CARRY((\Add6~4_combout\ & (countactual1(3) & !\LessThan6~5_cout\)) # (!\Add6~4_combout\ & ((countactual1(3)) # (!\LessThan6~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~4_combout\,
	datab => countactual1(3),
	datad => VCC,
	cin => \LessThan6~5_cout\,
	cout => \LessThan6~7_cout\);

-- Location: LCCOMB_X57_Y40_N8
\LessThan6~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan6~9_cout\ = CARRY((countactual1(4) & (\Add6~6_combout\ & !\LessThan6~7_cout\)) # (!countactual1(4) & ((\Add6~6_combout\) # (!\LessThan6~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(4),
	datab => \Add6~6_combout\,
	datad => VCC,
	cin => \LessThan6~7_cout\,
	cout => \LessThan6~9_cout\);

-- Location: LCCOMB_X57_Y40_N10
\LessThan6~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan6~11_cout\ = CARRY((countactual1(5) & ((!\LessThan6~9_cout\) # (!\Add6~8_combout\))) # (!countactual1(5) & (!\Add6~8_combout\ & !\LessThan6~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(5),
	datab => \Add6~8_combout\,
	datad => VCC,
	cin => \LessThan6~9_cout\,
	cout => \LessThan6~11_cout\);

-- Location: LCCOMB_X57_Y40_N12
\LessThan6~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan6~13_cout\ = CARRY((countactual1(6) & (\Add6~10_combout\ & !\LessThan6~11_cout\)) # (!countactual1(6) & ((\Add6~10_combout\) # (!\LessThan6~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(6),
	datab => \Add6~10_combout\,
	datad => VCC,
	cin => \LessThan6~11_cout\,
	cout => \LessThan6~13_cout\);

-- Location: LCCOMB_X57_Y40_N14
\LessThan6~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan6~15_cout\ = CARRY((\Add6~12_combout\ & (countactual1(7) & !\LessThan6~13_cout\)) # (!\Add6~12_combout\ & ((countactual1(7)) # (!\LessThan6~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~12_combout\,
	datab => countactual1(7),
	datad => VCC,
	cin => \LessThan6~13_cout\,
	cout => \LessThan6~15_cout\);

-- Location: LCCOMB_X57_Y40_N16
\LessThan6~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan6~17_cout\ = CARRY((\Add6~14_combout\ & ((!\LessThan6~15_cout\) # (!countactual1(8)))) # (!\Add6~14_combout\ & (!countactual1(8) & !\LessThan6~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~14_combout\,
	datab => countactual1(8),
	datad => VCC,
	cin => \LessThan6~15_cout\,
	cout => \LessThan6~17_cout\);

-- Location: LCCOMB_X57_Y40_N18
\LessThan6~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan6~19_cout\ = CARRY((countactual1(9) & ((!\LessThan6~17_cout\) # (!\Add6~16_combout\))) # (!countactual1(9) & (!\Add6~16_combout\ & !\LessThan6~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(9),
	datab => \Add6~16_combout\,
	datad => VCC,
	cin => \LessThan6~17_cout\,
	cout => \LessThan6~19_cout\);

-- Location: LCCOMB_X57_Y40_N20
\LessThan6~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan6~21_cout\ = CARRY((\Add6~18_combout\ & ((!\LessThan6~19_cout\) # (!countactual1(10)))) # (!\Add6~18_combout\ & (!countactual1(10) & !\LessThan6~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~18_combout\,
	datab => countactual1(10),
	datad => VCC,
	cin => \LessThan6~19_cout\,
	cout => \LessThan6~21_cout\);

-- Location: LCCOMB_X57_Y40_N22
\LessThan6~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan6~23_cout\ = CARRY((countactual1(11) & ((!\LessThan6~21_cout\) # (!\Add6~20_combout\))) # (!countactual1(11) & (!\Add6~20_combout\ & !\LessThan6~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(11),
	datab => \Add6~20_combout\,
	datad => VCC,
	cin => \LessThan6~21_cout\,
	cout => \LessThan6~23_cout\);

-- Location: LCCOMB_X57_Y40_N24
\LessThan6~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan6~25_cout\ = CARRY((countactual1(12) & (\Add6~22_combout\ & !\LessThan6~23_cout\)) # (!countactual1(12) & ((\Add6~22_combout\) # (!\LessThan6~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(12),
	datab => \Add6~22_combout\,
	datad => VCC,
	cin => \LessThan6~23_cout\,
	cout => \LessThan6~25_cout\);

-- Location: LCCOMB_X57_Y40_N26
\LessThan6~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan6~27_cout\ = CARRY((countactual1(13) & ((!\LessThan6~25_cout\) # (!\Add6~24_combout\))) # (!countactual1(13) & (!\Add6~24_combout\ & !\LessThan6~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(13),
	datab => \Add6~24_combout\,
	datad => VCC,
	cin => \LessThan6~25_cout\,
	cout => \LessThan6~27_cout\);

-- Location: LCCOMB_X57_Y40_N28
\LessThan6~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan6~29_cout\ = CARRY((countactual1(14) & (\Add6~26_combout\ & !\LessThan6~27_cout\)) # (!countactual1(14) & ((\Add6~26_combout\) # (!\LessThan6~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(14),
	datab => \Add6~26_combout\,
	datad => VCC,
	cin => \LessThan6~27_cout\,
	cout => \LessThan6~29_cout\);

-- Location: LCCOMB_X57_Y40_N30
\LessThan6~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan6~31_cout\ = CARRY((\Add6~28_combout\ & (countactual1(15) & !\LessThan6~29_cout\)) # (!\Add6~28_combout\ & ((countactual1(15)) # (!\LessThan6~29_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~28_combout\,
	datab => countactual1(15),
	datad => VCC,
	cin => \LessThan6~29_cout\,
	cout => \LessThan6~31_cout\);

-- Location: LCCOMB_X57_Y39_N0
\LessThan6~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan6~33_cout\ = CARRY((countactual1(16) & (\Add6~30_combout\ & !\LessThan6~31_cout\)) # (!countactual1(16) & ((\Add6~30_combout\) # (!\LessThan6~31_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(16),
	datab => \Add6~30_combout\,
	datad => VCC,
	cin => \LessThan6~31_cout\,
	cout => \LessThan6~33_cout\);

-- Location: LCCOMB_X57_Y39_N2
\LessThan6~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan6~35_cout\ = CARRY((\Add6~32_combout\ & (countactual1(17) & !\LessThan6~33_cout\)) # (!\Add6~32_combout\ & ((countactual1(17)) # (!\LessThan6~33_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~32_combout\,
	datab => countactual1(17),
	datad => VCC,
	cin => \LessThan6~33_cout\,
	cout => \LessThan6~35_cout\);

-- Location: LCCOMB_X57_Y39_N4
\LessThan6~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan6~37_cout\ = CARRY((\Add6~34_combout\ & ((!\LessThan6~35_cout\) # (!countactual1(18)))) # (!\Add6~34_combout\ & (!countactual1(18) & !\LessThan6~35_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~34_combout\,
	datab => countactual1(18),
	datad => VCC,
	cin => \LessThan6~35_cout\,
	cout => \LessThan6~37_cout\);

-- Location: LCCOMB_X57_Y39_N6
\LessThan6~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan6~39_cout\ = CARRY((\Add6~36_combout\ & (countactual1(19) & !\LessThan6~37_cout\)) # (!\Add6~36_combout\ & ((countactual1(19)) # (!\LessThan6~37_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~36_combout\,
	datab => countactual1(19),
	datad => VCC,
	cin => \LessThan6~37_cout\,
	cout => \LessThan6~39_cout\);

-- Location: LCCOMB_X57_Y39_N8
\LessThan6~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan6~41_cout\ = CARRY((countactual1(20) & (\Add6~38_combout\ & !\LessThan6~39_cout\)) # (!countactual1(20) & ((\Add6~38_combout\) # (!\LessThan6~39_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(20),
	datab => \Add6~38_combout\,
	datad => VCC,
	cin => \LessThan6~39_cout\,
	cout => \LessThan6~41_cout\);

-- Location: LCCOMB_X57_Y39_N10
\LessThan6~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan6~43_cout\ = CARRY((countactual1(21) & ((!\LessThan6~41_cout\) # (!\Add6~40_combout\))) # (!countactual1(21) & (!\Add6~40_combout\ & !\LessThan6~41_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(21),
	datab => \Add6~40_combout\,
	datad => VCC,
	cin => \LessThan6~41_cout\,
	cout => \LessThan6~43_cout\);

-- Location: LCCOMB_X57_Y39_N12
\LessThan6~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan6~45_cout\ = CARRY((countactual1(22) & (\Add6~42_combout\ & !\LessThan6~43_cout\)) # (!countactual1(22) & ((\Add6~42_combout\) # (!\LessThan6~43_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(22),
	datab => \Add6~42_combout\,
	datad => VCC,
	cin => \LessThan6~43_cout\,
	cout => \LessThan6~45_cout\);

-- Location: LCCOMB_X57_Y39_N14
\LessThan6~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan6~47_cout\ = CARRY((countactual1(23) & ((!\LessThan6~45_cout\) # (!\Add6~44_combout\))) # (!countactual1(23) & (!\Add6~44_combout\ & !\LessThan6~45_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(23),
	datab => \Add6~44_combout\,
	datad => VCC,
	cin => \LessThan6~45_cout\,
	cout => \LessThan6~47_cout\);

-- Location: LCCOMB_X57_Y39_N16
\LessThan6~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan6~49_cout\ = CARRY((countactual1(24) & (\Add6~46_combout\ & !\LessThan6~47_cout\)) # (!countactual1(24) & ((\Add6~46_combout\) # (!\LessThan6~47_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(24),
	datab => \Add6~46_combout\,
	datad => VCC,
	cin => \LessThan6~47_cout\,
	cout => \LessThan6~49_cout\);

-- Location: LCCOMB_X57_Y39_N18
\LessThan6~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan6~51_cout\ = CARRY((countactual1(25) & ((!\LessThan6~49_cout\) # (!\Add6~48_combout\))) # (!countactual1(25) & (!\Add6~48_combout\ & !\LessThan6~49_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(25),
	datab => \Add6~48_combout\,
	datad => VCC,
	cin => \LessThan6~49_cout\,
	cout => \LessThan6~51_cout\);

-- Location: LCCOMB_X57_Y39_N20
\LessThan6~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan6~53_cout\ = CARRY((countactual1(26) & (\Add6~50_combout\ & !\LessThan6~51_cout\)) # (!countactual1(26) & ((\Add6~50_combout\) # (!\LessThan6~51_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(26),
	datab => \Add6~50_combout\,
	datad => VCC,
	cin => \LessThan6~51_cout\,
	cout => \LessThan6~53_cout\);

-- Location: LCCOMB_X57_Y39_N22
\LessThan6~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan6~55_cout\ = CARRY((countactual1(27) & ((!\LessThan6~53_cout\) # (!\Add6~52_combout\))) # (!countactual1(27) & (!\Add6~52_combout\ & !\LessThan6~53_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(27),
	datab => \Add6~52_combout\,
	datad => VCC,
	cin => \LessThan6~53_cout\,
	cout => \LessThan6~55_cout\);

-- Location: LCCOMB_X57_Y39_N24
\LessThan6~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan6~57_cout\ = CARRY((\Add6~54_combout\ & ((!\LessThan6~55_cout\) # (!countactual1(28)))) # (!\Add6~54_combout\ & (!countactual1(28) & !\LessThan6~55_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~54_combout\,
	datab => countactual1(28),
	datad => VCC,
	cin => \LessThan6~55_cout\,
	cout => \LessThan6~57_cout\);

-- Location: LCCOMB_X57_Y39_N26
\LessThan6~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan6~59_cout\ = CARRY((countactual1(29) & ((!\LessThan6~57_cout\) # (!\Add6~56_combout\))) # (!countactual1(29) & (!\Add6~56_combout\ & !\LessThan6~57_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(29),
	datab => \Add6~56_combout\,
	datad => VCC,
	cin => \LessThan6~57_cout\,
	cout => \LessThan6~59_cout\);

-- Location: LCCOMB_X57_Y39_N28
\LessThan6~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan6~61_cout\ = CARRY((countactual1(30) & (\Add6~58_combout\ & !\LessThan6~59_cout\)) # (!countactual1(30) & ((\Add6~58_combout\) # (!\LessThan6~59_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(30),
	datab => \Add6~58_combout\,
	datad => VCC,
	cin => \LessThan6~59_cout\,
	cout => \LessThan6~61_cout\);

-- Location: LCCOMB_X57_Y39_N30
\LessThan6~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan6~62_combout\ = (\Add6~60_combout\ & (countactual1(31) & \LessThan6~61_cout\)) # (!\Add6~60_combout\ & ((countactual1(31)) # (\LessThan6~61_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~60_combout\,
	datab => countactual1(31),
	cin => \LessThan6~61_cout\,
	combout => \LessThan6~62_combout\);

-- Location: LCCOMB_X54_Y37_N22
\Selector41~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector41~0_combout\ = (\est_act.boost1~q\ & (!\LessThan7~62_combout\ & !\LessThan6~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \est_act.boost1~q\,
	datac => \LessThan7~62_combout\,
	datad => \LessThan6~62_combout\,
	combout => \Selector41~0_combout\);

-- Location: LCCOMB_X54_Y37_N8
\Selector41~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector41~1_combout\ = (\est_act.boost2~q\ & ((\LessThan8~0_combout\) # (!\Selector39~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan8~0_combout\,
	datac => \Selector39~4_combout\,
	datad => \est_act.boost2~q\,
	combout => \Selector41~1_combout\);

-- Location: LCCOMB_X54_Y37_N0
\Selector41~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector41~3_combout\ = (\Selector41~0_combout\) # ((\Selector41~1_combout\) # ((!\est_sig~8_combout\ & \Selector41~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector41~0_combout\,
	datab => \est_sig~8_combout\,
	datac => \Selector41~1_combout\,
	datad => \Selector41~2_combout\,
	combout => \Selector41~3_combout\);

-- Location: FF_X54_Y37_N1
\est_act.boost2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector41~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \est_act.boost2~q\);

-- Location: LCCOMB_X54_Y37_N12
\Selector40~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector40~0_combout\ = (\est_act.boost2~q\ & !\est_sig~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \est_act.boost2~q\,
	datac => \est_sig~7_combout\,
	combout => \Selector40~0_combout\);

-- Location: LCCOMB_X54_Y37_N6
\Selector40~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector40~1_combout\ = (\Selector40~0_combout\) # ((\est_act.boost1~q\ & ((\LessThan7~62_combout\) # (\LessThan6~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector40~0_combout\,
	datab => \LessThan7~62_combout\,
	datac => \est_act.boost1~q\,
	datad => \LessThan6~62_combout\,
	combout => \Selector40~1_combout\);

-- Location: FF_X54_Y37_N7
\est_act.boost1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector40~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \est_act.boost1~q\);

-- Location: LCCOMB_X54_Y38_N18
\LessThan2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (countactual1(31)) # ((\LessThan3~6_combout\ & ((\Selector39~2_combout\) # (!countactual1(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countactual1(8),
	datab => \LessThan3~6_combout\,
	datac => \Selector39~2_combout\,
	datad => countactual1(31),
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X54_Y37_N24
\Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\est_act.boost1~q\) # ((\est_act.boost2~q\) # ((\LessThan2~1_combout\ & !\countactual1[8]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \est_act.boost1~q\,
	datab => \est_act.boost2~q\,
	datac => \LessThan2~1_combout\,
	datad => \countactual1[8]~32_combout\,
	combout => \Selector0~0_combout\);

-- Location: FF_X54_Y37_N25
\PWM_H1~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM_H1~reg0_q\);

-- Location: LCCOMB_X55_Y37_N0
\Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\LessThan0~62_combout\ & ((\est_act.boost1softs~q\) # (\est_act.buck1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \est_act.boost1softs~q\,
	datac => \LessThan0~62_combout\,
	datad => \est_act.buck1~q\,
	combout => \Selector1~0_combout\);

-- Location: FF_X55_Y37_N1
\PWM_L1~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM_L1~reg0_q\);

-- Location: LCCOMB_X54_Y37_N10
\WideOr2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = (!\est_act.boost1~q\ & (!\est_act.boost2~q\ & \est_act.idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \est_act.boost1~q\,
	datab => \est_act.boost2~q\,
	datac => \est_act.idle~q\,
	combout => \WideOr2~0_combout\);

-- Location: LCCOMB_X54_Y37_N18
\Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\WideOr2~0_combout\) # ((\est_act.boost2~q\ & ((\LessThan8~0_combout\) # (countactual1(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr2~0_combout\,
	datab => \est_act.boost2~q\,
	datac => \LessThan8~0_combout\,
	datad => countactual1(31),
	combout => \Selector2~0_combout\);

-- Location: FF_X54_Y37_N19
\PWM_H2~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector2~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM_H2~reg0_q\);

-- Location: LCCOMB_X54_Y37_N20
\PWM_L2_sig~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWM_L2_sig~0_combout\ = (\est_act.boost1~q\ & \LessThan6~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \est_act.boost1~q\,
	datad => \LessThan6~62_combout\,
	combout => \PWM_L2_sig~0_combout\);

-- Location: FF_X54_Y37_N21
\PWM_L2~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PWM_L2_sig~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM_L2~reg0_q\);

-- Location: LCCOMB_X52_Y52_N0
\countwdg_act[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countwdg_act[0]~32_combout\ = countwdg_act(0) $ (VCC)
-- \countwdg_act[0]~33\ = CARRY(countwdg_act(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => countwdg_act(0),
	datad => VCC,
	combout => \countwdg_act[0]~32_combout\,
	cout => \countwdg_act[0]~33\);

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

-- Location: LCCOMB_X51_Y52_N26
\LessThan11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan11~0_combout\ = ((!countwdg_act(3) & ((!countwdg_act(2)) # (!countwdg_act(1))))) # (!countwdg_act(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countwdg_act(3),
	datab => countwdg_act(1),
	datac => countwdg_act(4),
	datad => countwdg_act(2),
	combout => \LessThan11~0_combout\);

-- Location: LCCOMB_X52_Y52_N12
\countwdg_act[6]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countwdg_act[6]~44_combout\ = (countwdg_act(6) & (\countwdg_act[5]~43\ $ (GND))) # (!countwdg_act(6) & (!\countwdg_act[5]~43\ & VCC))
-- \countwdg_act[6]~45\ = CARRY((countwdg_act(6) & !\countwdg_act[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countwdg_act(6),
	datad => VCC,
	cin => \countwdg_act[5]~43\,
	combout => \countwdg_act[6]~44_combout\,
	cout => \countwdg_act[6]~45\);

-- Location: LCCOMB_X52_Y52_N14
\countwdg_act[7]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countwdg_act[7]~46_combout\ = (countwdg_act(7) & (!\countwdg_act[6]~45\)) # (!countwdg_act(7) & ((\countwdg_act[6]~45\) # (GND)))
-- \countwdg_act[7]~47\ = CARRY((!\countwdg_act[6]~45\) # (!countwdg_act(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countwdg_act(7),
	datad => VCC,
	cin => \countwdg_act[6]~45\,
	combout => \countwdg_act[7]~46_combout\,
	cout => \countwdg_act[7]~47\);

-- Location: FF_X52_Y52_N15
\countwdg_act[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countwdg_act[7]~46_combout\,
	clrn => \wdg_reset~input_o\,
	sclr => \LessThan11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countwdg_act(7));

-- Location: LCCOMB_X51_Y52_N12
\LessThan11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan11~1_combout\ = (\LessThan11~0_combout\ & (!countwdg_act(6) & (!countwdg_act(7) & !countwdg_act(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan11~0_combout\,
	datab => countwdg_act(6),
	datac => countwdg_act(7),
	datad => countwdg_act(5),
	combout => \LessThan11~1_combout\);

-- Location: LCCOMB_X52_Y52_N16
\countwdg_act[8]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countwdg_act[8]~48_combout\ = (countwdg_act(8) & (\countwdg_act[7]~47\ $ (GND))) # (!countwdg_act(8) & (!\countwdg_act[7]~47\ & VCC))
-- \countwdg_act[8]~49\ = CARRY((countwdg_act(8) & !\countwdg_act[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countwdg_act(8),
	datad => VCC,
	cin => \countwdg_act[7]~47\,
	combout => \countwdg_act[8]~48_combout\,
	cout => \countwdg_act[8]~49\);

-- Location: FF_X52_Y52_N17
\countwdg_act[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countwdg_act[8]~48_combout\,
	clrn => \wdg_reset~input_o\,
	sclr => \LessThan11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countwdg_act(8));

-- Location: LCCOMB_X52_Y52_N18
\countwdg_act[9]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countwdg_act[9]~50_combout\ = (countwdg_act(9) & (!\countwdg_act[8]~49\)) # (!countwdg_act(9) & ((\countwdg_act[8]~49\) # (GND)))
-- \countwdg_act[9]~51\ = CARRY((!\countwdg_act[8]~49\) # (!countwdg_act(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countwdg_act(9),
	datad => VCC,
	cin => \countwdg_act[8]~49\,
	combout => \countwdg_act[9]~50_combout\,
	cout => \countwdg_act[9]~51\);

-- Location: FF_X52_Y52_N19
\countwdg_act[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countwdg_act[9]~50_combout\,
	clrn => \wdg_reset~input_o\,
	sclr => \LessThan11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countwdg_act(9));

-- Location: LCCOMB_X52_Y52_N20
\countwdg_act[10]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countwdg_act[10]~52_combout\ = (countwdg_act(10) & (\countwdg_act[9]~51\ $ (GND))) # (!countwdg_act(10) & (!\countwdg_act[9]~51\ & VCC))
-- \countwdg_act[10]~53\ = CARRY((countwdg_act(10) & !\countwdg_act[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countwdg_act(10),
	datad => VCC,
	cin => \countwdg_act[9]~51\,
	combout => \countwdg_act[10]~52_combout\,
	cout => \countwdg_act[10]~53\);

-- Location: FF_X52_Y52_N21
\countwdg_act[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countwdg_act[10]~52_combout\,
	clrn => \wdg_reset~input_o\,
	sclr => \LessThan11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countwdg_act(10));

-- Location: LCCOMB_X52_Y52_N22
\countwdg_act[11]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countwdg_act[11]~54_combout\ = (countwdg_act(11) & (!\countwdg_act[10]~53\)) # (!countwdg_act(11) & ((\countwdg_act[10]~53\) # (GND)))
-- \countwdg_act[11]~55\ = CARRY((!\countwdg_act[10]~53\) # (!countwdg_act(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countwdg_act(11),
	datad => VCC,
	cin => \countwdg_act[10]~53\,
	combout => \countwdg_act[11]~54_combout\,
	cout => \countwdg_act[11]~55\);

-- Location: FF_X52_Y52_N23
\countwdg_act[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countwdg_act[11]~54_combout\,
	clrn => \wdg_reset~input_o\,
	sclr => \LessThan11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countwdg_act(11));

-- Location: LCCOMB_X52_Y52_N24
\countwdg_act[12]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countwdg_act[12]~56_combout\ = (countwdg_act(12) & (\countwdg_act[11]~55\ $ (GND))) # (!countwdg_act(12) & (!\countwdg_act[11]~55\ & VCC))
-- \countwdg_act[12]~57\ = CARRY((countwdg_act(12) & !\countwdg_act[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countwdg_act(12),
	datad => VCC,
	cin => \countwdg_act[11]~55\,
	combout => \countwdg_act[12]~56_combout\,
	cout => \countwdg_act[12]~57\);

-- Location: FF_X52_Y52_N25
\countwdg_act[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countwdg_act[12]~56_combout\,
	clrn => \wdg_reset~input_o\,
	sclr => \LessThan11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countwdg_act(12));

-- Location: LCCOMB_X52_Y52_N26
\countwdg_act[13]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countwdg_act[13]~58_combout\ = (countwdg_act(13) & (!\countwdg_act[12]~57\)) # (!countwdg_act(13) & ((\countwdg_act[12]~57\) # (GND)))
-- \countwdg_act[13]~59\ = CARRY((!\countwdg_act[12]~57\) # (!countwdg_act(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countwdg_act(13),
	datad => VCC,
	cin => \countwdg_act[12]~57\,
	combout => \countwdg_act[13]~58_combout\,
	cout => \countwdg_act[13]~59\);

-- Location: FF_X52_Y52_N27
\countwdg_act[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countwdg_act[13]~58_combout\,
	clrn => \wdg_reset~input_o\,
	sclr => \LessThan11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countwdg_act(13));

-- Location: LCCOMB_X52_Y52_N28
\countwdg_act[14]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countwdg_act[14]~60_combout\ = (countwdg_act(14) & (\countwdg_act[13]~59\ $ (GND))) # (!countwdg_act(14) & (!\countwdg_act[13]~59\ & VCC))
-- \countwdg_act[14]~61\ = CARRY((countwdg_act(14) & !\countwdg_act[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countwdg_act(14),
	datad => VCC,
	cin => \countwdg_act[13]~59\,
	combout => \countwdg_act[14]~60_combout\,
	cout => \countwdg_act[14]~61\);

-- Location: FF_X52_Y52_N29
\countwdg_act[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countwdg_act[14]~60_combout\,
	clrn => \wdg_reset~input_o\,
	sclr => \LessThan11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countwdg_act(14));

-- Location: LCCOMB_X52_Y52_N30
\countwdg_act[15]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countwdg_act[15]~62_combout\ = (countwdg_act(15) & (!\countwdg_act[14]~61\)) # (!countwdg_act(15) & ((\countwdg_act[14]~61\) # (GND)))
-- \countwdg_act[15]~63\ = CARRY((!\countwdg_act[14]~61\) # (!countwdg_act(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countwdg_act(15),
	datad => VCC,
	cin => \countwdg_act[14]~61\,
	combout => \countwdg_act[15]~62_combout\,
	cout => \countwdg_act[15]~63\);

-- Location: FF_X52_Y52_N31
\countwdg_act[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countwdg_act[15]~62_combout\,
	clrn => \wdg_reset~input_o\,
	sclr => \LessThan11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countwdg_act(15));

-- Location: LCCOMB_X52_Y51_N0
\countwdg_act[16]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countwdg_act[16]~64_combout\ = (countwdg_act(16) & (\countwdg_act[15]~63\ $ (GND))) # (!countwdg_act(16) & (!\countwdg_act[15]~63\ & VCC))
-- \countwdg_act[16]~65\ = CARRY((countwdg_act(16) & !\countwdg_act[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countwdg_act(16),
	datad => VCC,
	cin => \countwdg_act[15]~63\,
	combout => \countwdg_act[16]~64_combout\,
	cout => \countwdg_act[16]~65\);

-- Location: FF_X52_Y51_N1
\countwdg_act[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countwdg_act[16]~64_combout\,
	clrn => \wdg_reset~input_o\,
	sclr => \LessThan11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countwdg_act(16));

-- Location: LCCOMB_X51_Y52_N10
\LessThan10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan10~1_combout\ = (!countwdg_act(13) & (!countwdg_act(16) & (!countwdg_act(15) & !countwdg_act(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countwdg_act(13),
	datab => countwdg_act(16),
	datac => countwdg_act(15),
	datad => countwdg_act(14),
	combout => \LessThan10~1_combout\);

-- Location: LCCOMB_X52_Y51_N2
\countwdg_act[17]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countwdg_act[17]~66_combout\ = (countwdg_act(17) & (!\countwdg_act[16]~65\)) # (!countwdg_act(17) & ((\countwdg_act[16]~65\) # (GND)))
-- \countwdg_act[17]~67\ = CARRY((!\countwdg_act[16]~65\) # (!countwdg_act(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countwdg_act(17),
	datad => VCC,
	cin => \countwdg_act[16]~65\,
	combout => \countwdg_act[17]~66_combout\,
	cout => \countwdg_act[17]~67\);

-- Location: FF_X52_Y51_N3
\countwdg_act[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countwdg_act[17]~66_combout\,
	clrn => \wdg_reset~input_o\,
	sclr => \LessThan11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countwdg_act(17));

-- Location: LCCOMB_X52_Y51_N4
\countwdg_act[18]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countwdg_act[18]~68_combout\ = (countwdg_act(18) & (\countwdg_act[17]~67\ $ (GND))) # (!countwdg_act(18) & (!\countwdg_act[17]~67\ & VCC))
-- \countwdg_act[18]~69\ = CARRY((countwdg_act(18) & !\countwdg_act[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countwdg_act(18),
	datad => VCC,
	cin => \countwdg_act[17]~67\,
	combout => \countwdg_act[18]~68_combout\,
	cout => \countwdg_act[18]~69\);

-- Location: FF_X52_Y51_N5
\countwdg_act[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countwdg_act[18]~68_combout\,
	clrn => \wdg_reset~input_o\,
	sclr => \LessThan11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countwdg_act(18));

-- Location: LCCOMB_X52_Y51_N6
\countwdg_act[19]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countwdg_act[19]~70_combout\ = (countwdg_act(19) & (!\countwdg_act[18]~69\)) # (!countwdg_act(19) & ((\countwdg_act[18]~69\) # (GND)))
-- \countwdg_act[19]~71\ = CARRY((!\countwdg_act[18]~69\) # (!countwdg_act(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countwdg_act(19),
	datad => VCC,
	cin => \countwdg_act[18]~69\,
	combout => \countwdg_act[19]~70_combout\,
	cout => \countwdg_act[19]~71\);

-- Location: FF_X52_Y51_N7
\countwdg_act[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countwdg_act[19]~70_combout\,
	clrn => \wdg_reset~input_o\,
	sclr => \LessThan11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countwdg_act(19));

-- Location: LCCOMB_X52_Y51_N8
\countwdg_act[20]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countwdg_act[20]~72_combout\ = (countwdg_act(20) & (\countwdg_act[19]~71\ $ (GND))) # (!countwdg_act(20) & (!\countwdg_act[19]~71\ & VCC))
-- \countwdg_act[20]~73\ = CARRY((countwdg_act(20) & !\countwdg_act[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countwdg_act(20),
	datad => VCC,
	cin => \countwdg_act[19]~71\,
	combout => \countwdg_act[20]~72_combout\,
	cout => \countwdg_act[20]~73\);

-- Location: FF_X52_Y51_N9
\countwdg_act[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countwdg_act[20]~72_combout\,
	clrn => \wdg_reset~input_o\,
	sclr => \LessThan11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countwdg_act(20));

-- Location: LCCOMB_X52_Y51_N10
\countwdg_act[21]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countwdg_act[21]~74_combout\ = (countwdg_act(21) & (!\countwdg_act[20]~73\)) # (!countwdg_act(21) & ((\countwdg_act[20]~73\) # (GND)))
-- \countwdg_act[21]~75\ = CARRY((!\countwdg_act[20]~73\) # (!countwdg_act(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countwdg_act(21),
	datad => VCC,
	cin => \countwdg_act[20]~73\,
	combout => \countwdg_act[21]~74_combout\,
	cout => \countwdg_act[21]~75\);

-- Location: FF_X52_Y51_N11
\countwdg_act[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countwdg_act[21]~74_combout\,
	clrn => \wdg_reset~input_o\,
	sclr => \LessThan11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countwdg_act(21));

-- Location: LCCOMB_X52_Y51_N12
\countwdg_act[22]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countwdg_act[22]~76_combout\ = (countwdg_act(22) & (\countwdg_act[21]~75\ $ (GND))) # (!countwdg_act(22) & (!\countwdg_act[21]~75\ & VCC))
-- \countwdg_act[22]~77\ = CARRY((countwdg_act(22) & !\countwdg_act[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countwdg_act(22),
	datad => VCC,
	cin => \countwdg_act[21]~75\,
	combout => \countwdg_act[22]~76_combout\,
	cout => \countwdg_act[22]~77\);

-- Location: FF_X52_Y51_N13
\countwdg_act[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countwdg_act[22]~76_combout\,
	clrn => \wdg_reset~input_o\,
	sclr => \LessThan11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countwdg_act(22));

-- Location: LCCOMB_X52_Y51_N14
\countwdg_act[23]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countwdg_act[23]~78_combout\ = (countwdg_act(23) & (!\countwdg_act[22]~77\)) # (!countwdg_act(23) & ((\countwdg_act[22]~77\) # (GND)))
-- \countwdg_act[23]~79\ = CARRY((!\countwdg_act[22]~77\) # (!countwdg_act(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countwdg_act(23),
	datad => VCC,
	cin => \countwdg_act[22]~77\,
	combout => \countwdg_act[23]~78_combout\,
	cout => \countwdg_act[23]~79\);

-- Location: FF_X52_Y51_N15
\countwdg_act[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countwdg_act[23]~78_combout\,
	clrn => \wdg_reset~input_o\,
	sclr => \LessThan11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countwdg_act(23));

-- Location: LCCOMB_X52_Y51_N16
\countwdg_act[24]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countwdg_act[24]~80_combout\ = (countwdg_act(24) & (\countwdg_act[23]~79\ $ (GND))) # (!countwdg_act(24) & (!\countwdg_act[23]~79\ & VCC))
-- \countwdg_act[24]~81\ = CARRY((countwdg_act(24) & !\countwdg_act[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countwdg_act(24),
	datad => VCC,
	cin => \countwdg_act[23]~79\,
	combout => \countwdg_act[24]~80_combout\,
	cout => \countwdg_act[24]~81\);

-- Location: FF_X52_Y51_N17
\countwdg_act[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countwdg_act[24]~80_combout\,
	clrn => \wdg_reset~input_o\,
	sclr => \LessThan11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countwdg_act(24));

-- Location: LCCOMB_X51_Y52_N4
\LessThan10~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan10~3_combout\ = (!countwdg_act(23) & (!countwdg_act(21) & (!countwdg_act(22) & !countwdg_act(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countwdg_act(23),
	datab => countwdg_act(21),
	datac => countwdg_act(22),
	datad => countwdg_act(24),
	combout => \LessThan10~3_combout\);

-- Location: LCCOMB_X52_Y50_N24
\LessThan10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan10~2_combout\ = (!countwdg_act(19) & (!countwdg_act(18) & (!countwdg_act(17) & !countwdg_act(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countwdg_act(19),
	datab => countwdg_act(18),
	datac => countwdg_act(17),
	datad => countwdg_act(20),
	combout => \LessThan10~2_combout\);

-- Location: LCCOMB_X51_Y52_N16
\LessThan10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan10~0_combout\ = (!countwdg_act(12) & (!countwdg_act(11) & (!countwdg_act(10) & !countwdg_act(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countwdg_act(12),
	datab => countwdg_act(11),
	datac => countwdg_act(10),
	datad => countwdg_act(9),
	combout => \LessThan10~0_combout\);

-- Location: LCCOMB_X51_Y52_N6
\LessThan10~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan10~4_combout\ = (\LessThan10~1_combout\ & (\LessThan10~3_combout\ & (\LessThan10~2_combout\ & \LessThan10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan10~1_combout\,
	datab => \LessThan10~3_combout\,
	datac => \LessThan10~2_combout\,
	datad => \LessThan10~0_combout\,
	combout => \LessThan10~4_combout\);

-- Location: LCCOMB_X52_Y51_N18
\countwdg_act[25]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countwdg_act[25]~82_combout\ = (countwdg_act(25) & (!\countwdg_act[24]~81\)) # (!countwdg_act(25) & ((\countwdg_act[24]~81\) # (GND)))
-- \countwdg_act[25]~83\ = CARRY((!\countwdg_act[24]~81\) # (!countwdg_act(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countwdg_act(25),
	datad => VCC,
	cin => \countwdg_act[24]~81\,
	combout => \countwdg_act[25]~82_combout\,
	cout => \countwdg_act[25]~83\);

-- Location: FF_X52_Y51_N19
\countwdg_act[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countwdg_act[25]~82_combout\,
	clrn => \wdg_reset~input_o\,
	sclr => \LessThan11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countwdg_act(25));

-- Location: LCCOMB_X52_Y51_N20
\countwdg_act[26]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countwdg_act[26]~84_combout\ = (countwdg_act(26) & (\countwdg_act[25]~83\ $ (GND))) # (!countwdg_act(26) & (!\countwdg_act[25]~83\ & VCC))
-- \countwdg_act[26]~85\ = CARRY((countwdg_act(26) & !\countwdg_act[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countwdg_act(26),
	datad => VCC,
	cin => \countwdg_act[25]~83\,
	combout => \countwdg_act[26]~84_combout\,
	cout => \countwdg_act[26]~85\);

-- Location: FF_X52_Y51_N21
\countwdg_act[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countwdg_act[26]~84_combout\,
	clrn => \wdg_reset~input_o\,
	sclr => \LessThan11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countwdg_act(26));

-- Location: LCCOMB_X52_Y51_N22
\countwdg_act[27]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countwdg_act[27]~86_combout\ = (countwdg_act(27) & (!\countwdg_act[26]~85\)) # (!countwdg_act(27) & ((\countwdg_act[26]~85\) # (GND)))
-- \countwdg_act[27]~87\ = CARRY((!\countwdg_act[26]~85\) # (!countwdg_act(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countwdg_act(27),
	datad => VCC,
	cin => \countwdg_act[26]~85\,
	combout => \countwdg_act[27]~86_combout\,
	cout => \countwdg_act[27]~87\);

-- Location: FF_X52_Y51_N23
\countwdg_act[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countwdg_act[27]~86_combout\,
	clrn => \wdg_reset~input_o\,
	sclr => \LessThan11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countwdg_act(27));

-- Location: LCCOMB_X52_Y51_N24
\countwdg_act[28]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countwdg_act[28]~88_combout\ = (countwdg_act(28) & (\countwdg_act[27]~87\ $ (GND))) # (!countwdg_act(28) & (!\countwdg_act[27]~87\ & VCC))
-- \countwdg_act[28]~89\ = CARRY((countwdg_act(28) & !\countwdg_act[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countwdg_act(28),
	datad => VCC,
	cin => \countwdg_act[27]~87\,
	combout => \countwdg_act[28]~88_combout\,
	cout => \countwdg_act[28]~89\);

-- Location: FF_X52_Y51_N25
\countwdg_act[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countwdg_act[28]~88_combout\,
	clrn => \wdg_reset~input_o\,
	sclr => \LessThan11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countwdg_act(28));

-- Location: LCCOMB_X52_Y51_N26
\countwdg_act[29]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countwdg_act[29]~90_combout\ = (countwdg_act(29) & (!\countwdg_act[28]~89\)) # (!countwdg_act(29) & ((\countwdg_act[28]~89\) # (GND)))
-- \countwdg_act[29]~91\ = CARRY((!\countwdg_act[28]~89\) # (!countwdg_act(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countwdg_act(29),
	datad => VCC,
	cin => \countwdg_act[28]~89\,
	combout => \countwdg_act[29]~90_combout\,
	cout => \countwdg_act[29]~91\);

-- Location: FF_X52_Y51_N27
\countwdg_act[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countwdg_act[29]~90_combout\,
	clrn => \wdg_reset~input_o\,
	sclr => \LessThan11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countwdg_act(29));

-- Location: LCCOMB_X52_Y51_N28
\countwdg_act[30]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countwdg_act[30]~92_combout\ = (countwdg_act(30) & (\countwdg_act[29]~91\ $ (GND))) # (!countwdg_act(30) & (!\countwdg_act[29]~91\ & VCC))
-- \countwdg_act[30]~93\ = CARRY((countwdg_act(30) & !\countwdg_act[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countwdg_act(30),
	datad => VCC,
	cin => \countwdg_act[29]~91\,
	combout => \countwdg_act[30]~92_combout\,
	cout => \countwdg_act[30]~93\);

-- Location: FF_X52_Y51_N29
\countwdg_act[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countwdg_act[30]~92_combout\,
	clrn => \wdg_reset~input_o\,
	sclr => \LessThan11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countwdg_act(30));

-- Location: LCCOMB_X52_Y50_N2
\LessThan10~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan10~5_combout\ = (!countwdg_act(25) & (!countwdg_act(26) & (!countwdg_act(27) & !countwdg_act(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countwdg_act(25),
	datab => countwdg_act(26),
	datac => countwdg_act(27),
	datad => countwdg_act(28),
	combout => \LessThan10~5_combout\);

-- Location: LCCOMB_X51_Y52_N24
\LessThan10~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan10~6_combout\ = (\LessThan10~4_combout\ & (!countwdg_act(30) & (!countwdg_act(29) & \LessThan10~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan10~4_combout\,
	datab => countwdg_act(30),
	datac => countwdg_act(29),
	datad => \LessThan10~5_combout\,
	combout => \LessThan10~6_combout\);

-- Location: LCCOMB_X52_Y51_N30
\countwdg_act[31]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countwdg_act[31]~94_combout\ = countwdg_act(31) $ (\countwdg_act[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countwdg_act(31),
	cin => \countwdg_act[30]~93\,
	combout => \countwdg_act[31]~94_combout\);

-- Location: FF_X52_Y51_N31
\countwdg_act[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countwdg_act[31]~94_combout\,
	clrn => \wdg_reset~input_o\,
	sclr => \LessThan11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countwdg_act(31));

-- Location: LCCOMB_X51_Y52_N30
\LessThan11~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan11~2_combout\ = (!countwdg_act(31) & (((!\LessThan11~1_combout\ & countwdg_act(8))) # (!\LessThan10~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan11~1_combout\,
	datab => \LessThan10~6_combout\,
	datac => countwdg_act(31),
	datad => countwdg_act(8),
	combout => \LessThan11~2_combout\);

-- Location: FF_X52_Y52_N1
\countwdg_act[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countwdg_act[0]~32_combout\,
	clrn => \wdg_reset~input_o\,
	sclr => \LessThan11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countwdg_act(0));

-- Location: LCCOMB_X52_Y52_N2
\countwdg_act[1]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countwdg_act[1]~34_combout\ = (countwdg_act(1) & (!\countwdg_act[0]~33\)) # (!countwdg_act(1) & ((\countwdg_act[0]~33\) # (GND)))
-- \countwdg_act[1]~35\ = CARRY((!\countwdg_act[0]~33\) # (!countwdg_act(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countwdg_act(1),
	datad => VCC,
	cin => \countwdg_act[0]~33\,
	combout => \countwdg_act[1]~34_combout\,
	cout => \countwdg_act[1]~35\);

-- Location: FF_X52_Y52_N3
\countwdg_act[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countwdg_act[1]~34_combout\,
	clrn => \wdg_reset~input_o\,
	sclr => \LessThan11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countwdg_act(1));

-- Location: LCCOMB_X52_Y52_N4
\countwdg_act[2]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countwdg_act[2]~36_combout\ = (countwdg_act(2) & (\countwdg_act[1]~35\ $ (GND))) # (!countwdg_act(2) & (!\countwdg_act[1]~35\ & VCC))
-- \countwdg_act[2]~37\ = CARRY((countwdg_act(2) & !\countwdg_act[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countwdg_act(2),
	datad => VCC,
	cin => \countwdg_act[1]~35\,
	combout => \countwdg_act[2]~36_combout\,
	cout => \countwdg_act[2]~37\);

-- Location: FF_X52_Y52_N5
\countwdg_act[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countwdg_act[2]~36_combout\,
	clrn => \wdg_reset~input_o\,
	sclr => \LessThan11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countwdg_act(2));

-- Location: LCCOMB_X52_Y52_N6
\countwdg_act[3]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countwdg_act[3]~38_combout\ = (countwdg_act(3) & (!\countwdg_act[2]~37\)) # (!countwdg_act(3) & ((\countwdg_act[2]~37\) # (GND)))
-- \countwdg_act[3]~39\ = CARRY((!\countwdg_act[2]~37\) # (!countwdg_act(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countwdg_act(3),
	datad => VCC,
	cin => \countwdg_act[2]~37\,
	combout => \countwdg_act[3]~38_combout\,
	cout => \countwdg_act[3]~39\);

-- Location: FF_X52_Y52_N7
\countwdg_act[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countwdg_act[3]~38_combout\,
	clrn => \wdg_reset~input_o\,
	sclr => \LessThan11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countwdg_act(3));

-- Location: LCCOMB_X52_Y52_N8
\countwdg_act[4]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countwdg_act[4]~40_combout\ = (countwdg_act(4) & (\countwdg_act[3]~39\ $ (GND))) # (!countwdg_act(4) & (!\countwdg_act[3]~39\ & VCC))
-- \countwdg_act[4]~41\ = CARRY((countwdg_act(4) & !\countwdg_act[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countwdg_act(4),
	datad => VCC,
	cin => \countwdg_act[3]~39\,
	combout => \countwdg_act[4]~40_combout\,
	cout => \countwdg_act[4]~41\);

-- Location: FF_X52_Y52_N9
\countwdg_act[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countwdg_act[4]~40_combout\,
	clrn => \wdg_reset~input_o\,
	sclr => \LessThan11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countwdg_act(4));

-- Location: LCCOMB_X52_Y52_N10
\countwdg_act[5]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countwdg_act[5]~42_combout\ = (countwdg_act(5) & (!\countwdg_act[4]~41\)) # (!countwdg_act(5) & ((\countwdg_act[4]~41\) # (GND)))
-- \countwdg_act[5]~43\ = CARRY((!\countwdg_act[4]~41\) # (!countwdg_act(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countwdg_act(5),
	datad => VCC,
	cin => \countwdg_act[4]~41\,
	combout => \countwdg_act[5]~42_combout\,
	cout => \countwdg_act[5]~43\);

-- Location: FF_X52_Y52_N11
\countwdg_act[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countwdg_act[5]~42_combout\,
	clrn => \wdg_reset~input_o\,
	sclr => \LessThan11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countwdg_act(5));

-- Location: FF_X52_Y52_N13
\countwdg_act[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countwdg_act[6]~44_combout\,
	clrn => \wdg_reset~input_o\,
	sclr => \LessThan11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countwdg_act(6));

-- Location: LCCOMB_X51_Y52_N28
\LessThan10~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan10~8_combout\ = (!countwdg_act(6) & (!countwdg_act(4) & !countwdg_act(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => countwdg_act(6),
	datac => countwdg_act(4),
	datad => countwdg_act(5),
	combout => \LessThan10~8_combout\);

-- Location: LCCOMB_X51_Y52_N18
\LessThan10~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan10~7_combout\ = ((!countwdg_act(2) & ((!countwdg_act(0)) # (!countwdg_act(1))))) # (!countwdg_act(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countwdg_act(3),
	datab => countwdg_act(1),
	datac => countwdg_act(0),
	datad => countwdg_act(2),
	combout => \LessThan10~7_combout\);

-- Location: LCCOMB_X51_Y52_N22
\LessThan10~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan10~9_combout\ = ((\LessThan10~8_combout\ & \LessThan10~7_combout\)) # (!countwdg_act(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan10~8_combout\,
	datac => countwdg_act(7),
	datad => \LessThan10~7_combout\,
	combout => \LessThan10~9_combout\);

-- Location: LCCOMB_X51_Y52_N8
\LessThan10~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan10~10_combout\ = (countwdg_act(31)) # ((\LessThan10~9_combout\ & (\LessThan10~6_combout\ & !countwdg_act(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan10~9_combout\,
	datab => \LessThan10~6_combout\,
	datac => countwdg_act(31),
	datad => countwdg_act(8),
	combout => \LessThan10~10_combout\);

-- Location: LCCOMB_X44_Y37_N14
\countset_act[0]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countset_act[0]~19_combout\ = countset_act(0) $ (VCC)
-- \countset_act[0]~20\ = CARRY(countset_act(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => countset_act(0),
	datad => VCC,
	combout => \countset_act[0]~19_combout\,
	cout => \countset_act[0]~20\);

-- Location: FF_X44_Y37_N15
\countset_act[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countset_act[0]~19_combout\,
	sclr => \ALT_INV_set_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countset_act(0));

-- Location: LCCOMB_X44_Y37_N16
\countset_act[1]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countset_act[1]~21_combout\ = (countset_act(1) & (!\countset_act[0]~20\)) # (!countset_act(1) & ((\countset_act[0]~20\) # (GND)))
-- \countset_act[1]~22\ = CARRY((!\countset_act[0]~20\) # (!countset_act(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countset_act(1),
	datad => VCC,
	cin => \countset_act[0]~20\,
	combout => \countset_act[1]~21_combout\,
	cout => \countset_act[1]~22\);

-- Location: FF_X44_Y37_N17
\countset_act[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countset_act[1]~21_combout\,
	sclr => \ALT_INV_set_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countset_act(1));

-- Location: LCCOMB_X44_Y37_N18
\countset_act[2]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countset_act[2]~23_combout\ = (countset_act(2) & (\countset_act[1]~22\ $ (GND))) # (!countset_act(2) & (!\countset_act[1]~22\ & VCC))
-- \countset_act[2]~24\ = CARRY((countset_act(2) & !\countset_act[1]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countset_act(2),
	datad => VCC,
	cin => \countset_act[1]~22\,
	combout => \countset_act[2]~23_combout\,
	cout => \countset_act[2]~24\);

-- Location: FF_X44_Y37_N19
\countset_act[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countset_act[2]~23_combout\,
	sclr => \ALT_INV_set_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countset_act(2));

-- Location: LCCOMB_X44_Y37_N20
\countset_act[3]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countset_act[3]~25_combout\ = (countset_act(3) & (!\countset_act[2]~24\)) # (!countset_act(3) & ((\countset_act[2]~24\) # (GND)))
-- \countset_act[3]~26\ = CARRY((!\countset_act[2]~24\) # (!countset_act(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countset_act(3),
	datad => VCC,
	cin => \countset_act[2]~24\,
	combout => \countset_act[3]~25_combout\,
	cout => \countset_act[3]~26\);

-- Location: FF_X44_Y37_N21
\countset_act[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countset_act[3]~25_combout\,
	sclr => \ALT_INV_set_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countset_act(3));

-- Location: LCCOMB_X44_Y37_N22
\countset_act[4]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countset_act[4]~27_combout\ = (countset_act(4) & (\countset_act[3]~26\ $ (GND))) # (!countset_act(4) & (!\countset_act[3]~26\ & VCC))
-- \countset_act[4]~28\ = CARRY((countset_act(4) & !\countset_act[3]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countset_act(4),
	datad => VCC,
	cin => \countset_act[3]~26\,
	combout => \countset_act[4]~27_combout\,
	cout => \countset_act[4]~28\);

-- Location: FF_X44_Y37_N23
\countset_act[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countset_act[4]~27_combout\,
	sclr => \ALT_INV_set_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countset_act(4));

-- Location: LCCOMB_X44_Y37_N24
\countset_act[5]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countset_act[5]~29_combout\ = (countset_act(5) & (!\countset_act[4]~28\)) # (!countset_act(5) & ((\countset_act[4]~28\) # (GND)))
-- \countset_act[5]~30\ = CARRY((!\countset_act[4]~28\) # (!countset_act(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countset_act(5),
	datad => VCC,
	cin => \countset_act[4]~28\,
	combout => \countset_act[5]~29_combout\,
	cout => \countset_act[5]~30\);

-- Location: FF_X44_Y37_N25
\countset_act[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countset_act[5]~29_combout\,
	sclr => \ALT_INV_set_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countset_act(5));

-- Location: LCCOMB_X44_Y37_N26
\countset_act[6]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countset_act[6]~31_combout\ = (countset_act(6) & (\countset_act[5]~30\ $ (GND))) # (!countset_act(6) & (!\countset_act[5]~30\ & VCC))
-- \countset_act[6]~32\ = CARRY((countset_act(6) & !\countset_act[5]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countset_act(6),
	datad => VCC,
	cin => \countset_act[5]~30\,
	combout => \countset_act[6]~31_combout\,
	cout => \countset_act[6]~32\);

-- Location: FF_X44_Y37_N27
\countset_act[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countset_act[6]~31_combout\,
	sclr => \ALT_INV_set_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countset_act(6));

-- Location: LCCOMB_X44_Y37_N28
\countset_act[7]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countset_act[7]~33_combout\ = (countset_act(7) & (!\countset_act[6]~32\)) # (!countset_act(7) & ((\countset_act[6]~32\) # (GND)))
-- \countset_act[7]~34\ = CARRY((!\countset_act[6]~32\) # (!countset_act(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countset_act(7),
	datad => VCC,
	cin => \countset_act[6]~32\,
	combout => \countset_act[7]~33_combout\,
	cout => \countset_act[7]~34\);

-- Location: FF_X44_Y37_N29
\countset_act[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countset_act[7]~33_combout\,
	sclr => \ALT_INV_set_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countset_act(7));

-- Location: LCCOMB_X44_Y37_N30
\countset_act[8]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countset_act[8]~35_combout\ = (countset_act(8) & (\countset_act[7]~34\ $ (GND))) # (!countset_act(8) & (!\countset_act[7]~34\ & VCC))
-- \countset_act[8]~36\ = CARRY((countset_act(8) & !\countset_act[7]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countset_act(8),
	datad => VCC,
	cin => \countset_act[7]~34\,
	combout => \countset_act[8]~35_combout\,
	cout => \countset_act[8]~36\);

-- Location: FF_X44_Y37_N31
\countset_act[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countset_act[8]~35_combout\,
	sclr => \ALT_INV_set_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countset_act(8));

-- Location: LCCOMB_X44_Y36_N0
\countset_act[9]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countset_act[9]~37_combout\ = (countset_act(9) & (!\countset_act[8]~36\)) # (!countset_act(9) & ((\countset_act[8]~36\) # (GND)))
-- \countset_act[9]~38\ = CARRY((!\countset_act[8]~36\) # (!countset_act(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countset_act(9),
	datad => VCC,
	cin => \countset_act[8]~36\,
	combout => \countset_act[9]~37_combout\,
	cout => \countset_act[9]~38\);

-- Location: FF_X44_Y36_N1
\countset_act[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countset_act[9]~37_combout\,
	sclr => \ALT_INV_set_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countset_act(9));

-- Location: LCCOMB_X44_Y36_N2
\countset_act[10]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countset_act[10]~39_combout\ = (countset_act(10) & (\countset_act[9]~38\ $ (GND))) # (!countset_act(10) & (!\countset_act[9]~38\ & VCC))
-- \countset_act[10]~40\ = CARRY((countset_act(10) & !\countset_act[9]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countset_act(10),
	datad => VCC,
	cin => \countset_act[9]~38\,
	combout => \countset_act[10]~39_combout\,
	cout => \countset_act[10]~40\);

-- Location: FF_X44_Y36_N3
\countset_act[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countset_act[10]~39_combout\,
	sclr => \ALT_INV_set_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countset_act(10));

-- Location: LCCOMB_X44_Y36_N4
\countset_act[11]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countset_act[11]~41_combout\ = (countset_act(11) & (!\countset_act[10]~40\)) # (!countset_act(11) & ((\countset_act[10]~40\) # (GND)))
-- \countset_act[11]~42\ = CARRY((!\countset_act[10]~40\) # (!countset_act(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countset_act(11),
	datad => VCC,
	cin => \countset_act[10]~40\,
	combout => \countset_act[11]~41_combout\,
	cout => \countset_act[11]~42\);

-- Location: FF_X44_Y36_N5
\countset_act[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countset_act[11]~41_combout\,
	sclr => \ALT_INV_set_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countset_act(11));

-- Location: LCCOMB_X44_Y36_N6
\countset_act[12]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countset_act[12]~43_combout\ = (countset_act(12) & (\countset_act[11]~42\ $ (GND))) # (!countset_act(12) & (!\countset_act[11]~42\ & VCC))
-- \countset_act[12]~44\ = CARRY((countset_act(12) & !\countset_act[11]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countset_act(12),
	datad => VCC,
	cin => \countset_act[11]~42\,
	combout => \countset_act[12]~43_combout\,
	cout => \countset_act[12]~44\);

-- Location: FF_X44_Y36_N7
\countset_act[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countset_act[12]~43_combout\,
	sclr => \ALT_INV_set_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countset_act(12));

-- Location: LCCOMB_X44_Y36_N8
\countset_act[13]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countset_act[13]~45_combout\ = (countset_act(13) & (!\countset_act[12]~44\)) # (!countset_act(13) & ((\countset_act[12]~44\) # (GND)))
-- \countset_act[13]~46\ = CARRY((!\countset_act[12]~44\) # (!countset_act(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countset_act(13),
	datad => VCC,
	cin => \countset_act[12]~44\,
	combout => \countset_act[13]~45_combout\,
	cout => \countset_act[13]~46\);

-- Location: FF_X44_Y36_N9
\countset_act[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countset_act[13]~45_combout\,
	sclr => \ALT_INV_set_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countset_act(13));

-- Location: LCCOMB_X44_Y36_N10
\countset_act[14]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countset_act[14]~47_combout\ = (countset_act(14) & (\countset_act[13]~46\ $ (GND))) # (!countset_act(14) & (!\countset_act[13]~46\ & VCC))
-- \countset_act[14]~48\ = CARRY((countset_act(14) & !\countset_act[13]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countset_act(14),
	datad => VCC,
	cin => \countset_act[13]~46\,
	combout => \countset_act[14]~47_combout\,
	cout => \countset_act[14]~48\);

-- Location: FF_X44_Y36_N11
\countset_act[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countset_act[14]~47_combout\,
	sclr => \ALT_INV_set_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countset_act(14));

-- Location: LCCOMB_X44_Y36_N12
\countset_act[15]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countset_act[15]~49_combout\ = (countset_act(15) & (!\countset_act[14]~48\)) # (!countset_act(15) & ((\countset_act[14]~48\) # (GND)))
-- \countset_act[15]~50\ = CARRY((!\countset_act[14]~48\) # (!countset_act(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countset_act(15),
	datad => VCC,
	cin => \countset_act[14]~48\,
	combout => \countset_act[15]~49_combout\,
	cout => \countset_act[15]~50\);

-- Location: FF_X44_Y36_N13
\countset_act[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countset_act[15]~49_combout\,
	sclr => \ALT_INV_set_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countset_act(15));

-- Location: LCCOMB_X44_Y36_N14
\countset_act[16]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countset_act[16]~51_combout\ = (countset_act(16) & (\countset_act[15]~50\ $ (GND))) # (!countset_act(16) & (!\countset_act[15]~50\ & VCC))
-- \countset_act[16]~52\ = CARRY((countset_act(16) & !\countset_act[15]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countset_act(16),
	datad => VCC,
	cin => \countset_act[15]~50\,
	combout => \countset_act[16]~51_combout\,
	cout => \countset_act[16]~52\);

-- Location: FF_X44_Y36_N15
\countset_act[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countset_act[16]~51_combout\,
	sclr => \ALT_INV_set_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countset_act(16));

-- Location: LCCOMB_X44_Y36_N16
\countset_act[17]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countset_act[17]~53_combout\ = (countset_act(17) & (!\countset_act[16]~52\)) # (!countset_act(17) & ((\countset_act[16]~52\) # (GND)))
-- \countset_act[17]~54\ = CARRY((!\countset_act[16]~52\) # (!countset_act(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countset_act(17),
	datad => VCC,
	cin => \countset_act[16]~52\,
	combout => \countset_act[17]~53_combout\,
	cout => \countset_act[17]~54\);

-- Location: FF_X44_Y36_N17
\countset_act[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countset_act[17]~53_combout\,
	sclr => \ALT_INV_set_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countset_act(17));

-- Location: LCCOMB_X44_Y36_N18
\countset_act[18]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countset_act[18]~55_combout\ = \countset_act[17]~54\ $ (!countset_act(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => countset_act(18),
	cin => \countset_act[17]~54\,
	combout => \countset_act[18]~55_combout\);

-- Location: FF_X44_Y36_N19
\countset_act[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countset_act[18]~55_combout\,
	sclr => \ALT_INV_set_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countset_act(18));

-- Location: LCCOMB_X44_Y36_N26
\set_process~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_process~3_combout\ = (((!countset_act(17)) # (!countset_act(16))) # (!countset_act(18))) # (!countset_act(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countset_act(15),
	datab => countset_act(18),
	datac => countset_act(16),
	datad => countset_act(17),
	combout => \set_process~3_combout\);

-- Location: IOIBUF_X46_Y54_N29
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

-- Location: LCCOMB_X44_Y36_N30
\set_process~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_process~1_combout\ = (!countset_act(12) & (!countset_act(9) & (!countset_act(11) & !countset_act(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countset_act(12),
	datab => countset_act(9),
	datac => countset_act(11),
	datad => countset_act(10),
	combout => \set_process~1_combout\);

-- Location: LCCOMB_X44_Y37_N8
\set_process~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_process~0_combout\ = ((!countset_act(6) & (!countset_act(7) & !countset_act(5)))) # (!countset_act(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countset_act(6),
	datab => countset_act(7),
	datac => countset_act(8),
	datad => countset_act(5),
	combout => \set_process~0_combout\);

-- Location: LCCOMB_X44_Y36_N24
\set_process~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_process~2_combout\ = (!countset_act(14) & (((\set_process~1_combout\ & \set_process~0_combout\)) # (!countset_act(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countset_act(14),
	datab => countset_act(13),
	datac => \set_process~1_combout\,
	datad => \set_process~0_combout\,
	combout => \set_process~2_combout\);

-- Location: LCCOMB_X44_Y36_N28
\set_process~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_process~4_combout\ = (\set_process~3_combout\ & ((\set_process~4_combout\) # ((!\set_btn~input_o\)))) # (!\set_process~3_combout\ & (\set_process~2_combout\ & ((\set_process~4_combout\) # (!\set_btn~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set_process~3_combout\,
	datab => \set_process~4_combout\,
	datac => \set_btn~input_o\,
	datad => \set_process~2_combout\,
	combout => \set_process~4_combout\);

-- Location: LCCOMB_X44_Y36_N20
\set_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_out~0_combout\ = (\set_process~4_combout\) # (!\set_btn~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \set_process~4_combout\,
	datac => \set_btn~input_o\,
	combout => \set_out~0_combout\);

-- Location: IOIBUF_X49_Y54_N29
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

-- Location: LCCOMB_X46_Y26_N14
\countreset_act[0]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countreset_act[0]~19_combout\ = countreset_act(0) $ (VCC)
-- \countreset_act[0]~20\ = CARRY(countreset_act(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => countreset_act(0),
	datad => VCC,
	combout => \countreset_act[0]~19_combout\,
	cout => \countreset_act[0]~20\);

-- Location: FF_X46_Y26_N15
\countreset_act[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countreset_act[0]~19_combout\,
	sclr => \ALT_INV_reset_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countreset_act(0));

-- Location: LCCOMB_X46_Y26_N16
\countreset_act[1]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countreset_act[1]~21_combout\ = (countreset_act(1) & (!\countreset_act[0]~20\)) # (!countreset_act(1) & ((\countreset_act[0]~20\) # (GND)))
-- \countreset_act[1]~22\ = CARRY((!\countreset_act[0]~20\) # (!countreset_act(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countreset_act(1),
	datad => VCC,
	cin => \countreset_act[0]~20\,
	combout => \countreset_act[1]~21_combout\,
	cout => \countreset_act[1]~22\);

-- Location: FF_X46_Y26_N17
\countreset_act[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countreset_act[1]~21_combout\,
	sclr => \ALT_INV_reset_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countreset_act(1));

-- Location: LCCOMB_X46_Y26_N18
\countreset_act[2]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countreset_act[2]~23_combout\ = (countreset_act(2) & (\countreset_act[1]~22\ $ (GND))) # (!countreset_act(2) & (!\countreset_act[1]~22\ & VCC))
-- \countreset_act[2]~24\ = CARRY((countreset_act(2) & !\countreset_act[1]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countreset_act(2),
	datad => VCC,
	cin => \countreset_act[1]~22\,
	combout => \countreset_act[2]~23_combout\,
	cout => \countreset_act[2]~24\);

-- Location: FF_X46_Y26_N19
\countreset_act[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countreset_act[2]~23_combout\,
	sclr => \ALT_INV_reset_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countreset_act(2));

-- Location: LCCOMB_X46_Y26_N20
\countreset_act[3]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countreset_act[3]~25_combout\ = (countreset_act(3) & (!\countreset_act[2]~24\)) # (!countreset_act(3) & ((\countreset_act[2]~24\) # (GND)))
-- \countreset_act[3]~26\ = CARRY((!\countreset_act[2]~24\) # (!countreset_act(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countreset_act(3),
	datad => VCC,
	cin => \countreset_act[2]~24\,
	combout => \countreset_act[3]~25_combout\,
	cout => \countreset_act[3]~26\);

-- Location: FF_X46_Y26_N21
\countreset_act[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countreset_act[3]~25_combout\,
	sclr => \ALT_INV_reset_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countreset_act(3));

-- Location: LCCOMB_X46_Y26_N22
\countreset_act[4]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countreset_act[4]~27_combout\ = (countreset_act(4) & (\countreset_act[3]~26\ $ (GND))) # (!countreset_act(4) & (!\countreset_act[3]~26\ & VCC))
-- \countreset_act[4]~28\ = CARRY((countreset_act(4) & !\countreset_act[3]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countreset_act(4),
	datad => VCC,
	cin => \countreset_act[3]~26\,
	combout => \countreset_act[4]~27_combout\,
	cout => \countreset_act[4]~28\);

-- Location: FF_X46_Y26_N23
\countreset_act[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countreset_act[4]~27_combout\,
	sclr => \ALT_INV_reset_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countreset_act(4));

-- Location: LCCOMB_X46_Y26_N24
\countreset_act[5]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countreset_act[5]~29_combout\ = (countreset_act(5) & (!\countreset_act[4]~28\)) # (!countreset_act(5) & ((\countreset_act[4]~28\) # (GND)))
-- \countreset_act[5]~30\ = CARRY((!\countreset_act[4]~28\) # (!countreset_act(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countreset_act(5),
	datad => VCC,
	cin => \countreset_act[4]~28\,
	combout => \countreset_act[5]~29_combout\,
	cout => \countreset_act[5]~30\);

-- Location: FF_X46_Y26_N25
\countreset_act[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countreset_act[5]~29_combout\,
	sclr => \ALT_INV_reset_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countreset_act(5));

-- Location: LCCOMB_X46_Y26_N26
\countreset_act[6]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countreset_act[6]~31_combout\ = (countreset_act(6) & (\countreset_act[5]~30\ $ (GND))) # (!countreset_act(6) & (!\countreset_act[5]~30\ & VCC))
-- \countreset_act[6]~32\ = CARRY((countreset_act(6) & !\countreset_act[5]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countreset_act(6),
	datad => VCC,
	cin => \countreset_act[5]~30\,
	combout => \countreset_act[6]~31_combout\,
	cout => \countreset_act[6]~32\);

-- Location: FF_X46_Y26_N27
\countreset_act[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countreset_act[6]~31_combout\,
	sclr => \ALT_INV_reset_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countreset_act(6));

-- Location: LCCOMB_X46_Y26_N28
\countreset_act[7]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countreset_act[7]~33_combout\ = (countreset_act(7) & (!\countreset_act[6]~32\)) # (!countreset_act(7) & ((\countreset_act[6]~32\) # (GND)))
-- \countreset_act[7]~34\ = CARRY((!\countreset_act[6]~32\) # (!countreset_act(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countreset_act(7),
	datad => VCC,
	cin => \countreset_act[6]~32\,
	combout => \countreset_act[7]~33_combout\,
	cout => \countreset_act[7]~34\);

-- Location: FF_X46_Y26_N29
\countreset_act[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countreset_act[7]~33_combout\,
	sclr => \ALT_INV_reset_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countreset_act(7));

-- Location: LCCOMB_X46_Y26_N30
\countreset_act[8]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countreset_act[8]~35_combout\ = (countreset_act(8) & (\countreset_act[7]~34\ $ (GND))) # (!countreset_act(8) & (!\countreset_act[7]~34\ & VCC))
-- \countreset_act[8]~36\ = CARRY((countreset_act(8) & !\countreset_act[7]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countreset_act(8),
	datad => VCC,
	cin => \countreset_act[7]~34\,
	combout => \countreset_act[8]~35_combout\,
	cout => \countreset_act[8]~36\);

-- Location: FF_X46_Y26_N31
\countreset_act[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countreset_act[8]~35_combout\,
	sclr => \ALT_INV_reset_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countreset_act(8));

-- Location: LCCOMB_X46_Y25_N0
\countreset_act[9]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countreset_act[9]~37_combout\ = (countreset_act(9) & (!\countreset_act[8]~36\)) # (!countreset_act(9) & ((\countreset_act[8]~36\) # (GND)))
-- \countreset_act[9]~38\ = CARRY((!\countreset_act[8]~36\) # (!countreset_act(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countreset_act(9),
	datad => VCC,
	cin => \countreset_act[8]~36\,
	combout => \countreset_act[9]~37_combout\,
	cout => \countreset_act[9]~38\);

-- Location: FF_X46_Y25_N1
\countreset_act[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countreset_act[9]~37_combout\,
	sclr => \ALT_INV_reset_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countreset_act(9));

-- Location: LCCOMB_X46_Y25_N2
\countreset_act[10]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countreset_act[10]~39_combout\ = (countreset_act(10) & (\countreset_act[9]~38\ $ (GND))) # (!countreset_act(10) & (!\countreset_act[9]~38\ & VCC))
-- \countreset_act[10]~40\ = CARRY((countreset_act(10) & !\countreset_act[9]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countreset_act(10),
	datad => VCC,
	cin => \countreset_act[9]~38\,
	combout => \countreset_act[10]~39_combout\,
	cout => \countreset_act[10]~40\);

-- Location: FF_X46_Y25_N3
\countreset_act[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countreset_act[10]~39_combout\,
	sclr => \ALT_INV_reset_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countreset_act(10));

-- Location: LCCOMB_X46_Y25_N4
\countreset_act[11]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countreset_act[11]~41_combout\ = (countreset_act(11) & (!\countreset_act[10]~40\)) # (!countreset_act(11) & ((\countreset_act[10]~40\) # (GND)))
-- \countreset_act[11]~42\ = CARRY((!\countreset_act[10]~40\) # (!countreset_act(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countreset_act(11),
	datad => VCC,
	cin => \countreset_act[10]~40\,
	combout => \countreset_act[11]~41_combout\,
	cout => \countreset_act[11]~42\);

-- Location: FF_X46_Y25_N5
\countreset_act[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countreset_act[11]~41_combout\,
	sclr => \ALT_INV_reset_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countreset_act(11));

-- Location: LCCOMB_X46_Y25_N6
\countreset_act[12]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countreset_act[12]~43_combout\ = (countreset_act(12) & (\countreset_act[11]~42\ $ (GND))) # (!countreset_act(12) & (!\countreset_act[11]~42\ & VCC))
-- \countreset_act[12]~44\ = CARRY((countreset_act(12) & !\countreset_act[11]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countreset_act(12),
	datad => VCC,
	cin => \countreset_act[11]~42\,
	combout => \countreset_act[12]~43_combout\,
	cout => \countreset_act[12]~44\);

-- Location: FF_X46_Y25_N7
\countreset_act[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countreset_act[12]~43_combout\,
	sclr => \ALT_INV_reset_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countreset_act(12));

-- Location: LCCOMB_X46_Y25_N8
\countreset_act[13]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countreset_act[13]~45_combout\ = (countreset_act(13) & (!\countreset_act[12]~44\)) # (!countreset_act(13) & ((\countreset_act[12]~44\) # (GND)))
-- \countreset_act[13]~46\ = CARRY((!\countreset_act[12]~44\) # (!countreset_act(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countreset_act(13),
	datad => VCC,
	cin => \countreset_act[12]~44\,
	combout => \countreset_act[13]~45_combout\,
	cout => \countreset_act[13]~46\);

-- Location: FF_X46_Y25_N9
\countreset_act[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countreset_act[13]~45_combout\,
	sclr => \ALT_INV_reset_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countreset_act(13));

-- Location: LCCOMB_X46_Y25_N10
\countreset_act[14]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countreset_act[14]~47_combout\ = (countreset_act(14) & (\countreset_act[13]~46\ $ (GND))) # (!countreset_act(14) & (!\countreset_act[13]~46\ & VCC))
-- \countreset_act[14]~48\ = CARRY((countreset_act(14) & !\countreset_act[13]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countreset_act(14),
	datad => VCC,
	cin => \countreset_act[13]~46\,
	combout => \countreset_act[14]~47_combout\,
	cout => \countreset_act[14]~48\);

-- Location: FF_X46_Y25_N11
\countreset_act[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countreset_act[14]~47_combout\,
	sclr => \ALT_INV_reset_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countreset_act(14));

-- Location: LCCOMB_X46_Y25_N30
\reset_process~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reset_process~1_combout\ = (!countreset_act(12) & (!countreset_act(9) & (!countreset_act(11) & !countreset_act(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countreset_act(12),
	datab => countreset_act(9),
	datac => countreset_act(11),
	datad => countreset_act(10),
	combout => \reset_process~1_combout\);

-- Location: LCCOMB_X46_Y26_N8
\reset_process~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reset_process~0_combout\ = ((!countreset_act(6) & (!countreset_act(7) & !countreset_act(5)))) # (!countreset_act(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countreset_act(6),
	datab => countreset_act(7),
	datac => countreset_act(8),
	datad => countreset_act(5),
	combout => \reset_process~0_combout\);

-- Location: LCCOMB_X46_Y25_N24
\reset_process~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reset_process~2_combout\ = (!countreset_act(14) & (((\reset_process~1_combout\ & \reset_process~0_combout\)) # (!countreset_act(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countreset_act(14),
	datab => countreset_act(13),
	datac => \reset_process~1_combout\,
	datad => \reset_process~0_combout\,
	combout => \reset_process~2_combout\);

-- Location: LCCOMB_X46_Y25_N12
\countreset_act[15]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countreset_act[15]~49_combout\ = (countreset_act(15) & (!\countreset_act[14]~48\)) # (!countreset_act(15) & ((\countreset_act[14]~48\) # (GND)))
-- \countreset_act[15]~50\ = CARRY((!\countreset_act[14]~48\) # (!countreset_act(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countreset_act(15),
	datad => VCC,
	cin => \countreset_act[14]~48\,
	combout => \countreset_act[15]~49_combout\,
	cout => \countreset_act[15]~50\);

-- Location: FF_X46_Y25_N13
\countreset_act[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countreset_act[15]~49_combout\,
	sclr => \ALT_INV_reset_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countreset_act(15));

-- Location: LCCOMB_X46_Y25_N14
\countreset_act[16]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countreset_act[16]~51_combout\ = (countreset_act(16) & (\countreset_act[15]~50\ $ (GND))) # (!countreset_act(16) & (!\countreset_act[15]~50\ & VCC))
-- \countreset_act[16]~52\ = CARRY((countreset_act(16) & !\countreset_act[15]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countreset_act(16),
	datad => VCC,
	cin => \countreset_act[15]~50\,
	combout => \countreset_act[16]~51_combout\,
	cout => \countreset_act[16]~52\);

-- Location: FF_X46_Y25_N15
\countreset_act[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countreset_act[16]~51_combout\,
	sclr => \ALT_INV_reset_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countreset_act(16));

-- Location: LCCOMB_X46_Y25_N16
\countreset_act[17]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countreset_act[17]~53_combout\ = (countreset_act(17) & (!\countreset_act[16]~52\)) # (!countreset_act(17) & ((\countreset_act[16]~52\) # (GND)))
-- \countreset_act[17]~54\ = CARRY((!\countreset_act[16]~52\) # (!countreset_act(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countreset_act(17),
	datad => VCC,
	cin => \countreset_act[16]~52\,
	combout => \countreset_act[17]~53_combout\,
	cout => \countreset_act[17]~54\);

-- Location: FF_X46_Y25_N17
\countreset_act[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countreset_act[17]~53_combout\,
	sclr => \ALT_INV_reset_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countreset_act(17));

-- Location: LCCOMB_X46_Y25_N18
\countreset_act[18]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countreset_act[18]~55_combout\ = \countreset_act[17]~54\ $ (!countreset_act(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => countreset_act(18),
	cin => \countreset_act[17]~54\,
	combout => \countreset_act[18]~55_combout\);

-- Location: FF_X46_Y25_N19
\countreset_act[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countreset_act[18]~55_combout\,
	sclr => \ALT_INV_reset_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countreset_act(18));

-- Location: LCCOMB_X46_Y25_N26
\reset_process~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reset_process~3_combout\ = (((!countreset_act(18)) # (!countreset_act(16))) # (!countreset_act(17))) # (!countreset_act(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countreset_act(15),
	datab => countreset_act(17),
	datac => countreset_act(16),
	datad => countreset_act(18),
	combout => \reset_process~3_combout\);

-- Location: LCCOMB_X46_Y25_N20
\reset_process~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reset_process~4_combout\ = (\reset_btn~input_o\ & (\reset_process~4_combout\ & ((\reset_process~2_combout\) # (\reset_process~3_combout\)))) # (!\reset_btn~input_o\ & ((\reset_process~2_combout\) # ((\reset_process~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_btn~input_o\,
	datab => \reset_process~2_combout\,
	datac => \reset_process~3_combout\,
	datad => \reset_process~4_combout\,
	combout => \reset_process~4_combout\);

-- Location: LCCOMB_X46_Y25_N28
\reset_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reset_out~0_combout\ = (\reset_process~4_combout\) # (!\reset_btn~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset_process~4_combout\,
	datad => \reset_btn~input_o\,
	combout => \reset_out~0_combout\);

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

ww_PWM_L1 <= \PWM_L1~output_o\;

ww_PWM_H2 <= \PWM_H2~output_o\;

ww_PWM_L2 <= \PWM_L2~output_o\;

ww_wdg_out <= \wdg_out~output_o\;

ww_set_out <= \set_out~output_o\;

ww_reset_out <= \reset_out~output_o\;
END structure;


