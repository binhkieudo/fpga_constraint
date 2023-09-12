#################################################################################
## VC707 with XM105 (FMC1 + FMC2) Constraints File
## Author: Binh Kieu-Do-Nguyen
#################################################################################

#################################################################################
## CLOCKS
#################################################################################
# SYSCLK 200MHz
set_property PACKAGE_PIN E19 [get_ports SYSCLK_P];
set_property PACKAGE_PIN E18 [get_ports SYSCLK_N];
create_clock -period 5.000 -name sys_clk_pin -waveform {0.000 2.500} -add [get_ports SYSCLK_P];
create_clock -period 5.000 -name sys_clk_pin -waveform {0.000 2.500} -add [get_ports SYSCLK_N];

################################################################################
# GPIO
################################################################################

# LEDs
#set_property -dict {PACKAGE_PIN AM39 IOSTANDARD LVCMOS18} [get_ports GPIO_LED[0]]
#set_property -dict {PACKAGE_PIN AN39 IOSTANDARD LVCMOS18} [get_ports GPIO_LED[1]]
#set_property -dict {PACKAGE_PIN AR37 IOSTANDARD LVCMOS18} [get_ports GPIO_LED[2]]
#set_property -dict {PACKAGE_PIN AT37 IOSTANDARD LVCMOS18} [get_ports GPIO_LED[3]]
#set_property -dict {PACKAGE_PIN AR35 IOSTANDARD LVCMOS18} [get_ports GPIO_LED[4]]
#set_property -dict {PACKAGE_PIN AP41 IOSTANDARD LVCMOS18} [get_ports GPIO_LED[5]]
#set_property -dict {PACKAGE_PIN AP42 IOSTANDARD LVCMOS18} [get_ports GPIO_LED[6]]
#set_property -dict {PACKAGE_PIN AU39 IOSTANDARD LVCMOS18} [get_ports GPIO_LED[7]]

# DIP Switches
#set_property -dict {PACKAGE_PIN AV30 IOSTANDARD LVCMOS18} [get_ports GPIO_DIP[0]]
#set_property -dict {PACKAGE_PIN AY33 IOSTANDARD LVCMOS18} [get_ports GPIO_DIP[1]]
#set_property -dict {PACKAGE_PIN BA31 IOSTANDARD LVCMOS18} [get_ports GPIO_DIP[2]]
#set_property -dict {PACKAGE_PIN BA32 IOSTANDARD LVCMOS18} [get_ports GPIO_DIP[3]]
#set_property -dict {PACKAGE_PIN AW30 IOSTANDARD LVCMOS18} [get_ports GPIO_DIP[4]]
#set_property -dict {PACKAGE_PIN AY30 IOSTANDARD LVCMOS18} [get_ports GPIO_DIP[5]]
#set_property -dict {PACKAGE_PIN BA30 IOSTANDARD LVCMOS18} [get_ports GPIO_DIP[6]]
#set_property -dict {PACKAGE_PIN BB31 IOSTANDARD LVCMOS18} [get_ports GPIO_DIP[7]]

# Pushbuttons
#set_property -dict {PACKAGE_PIN AR40 IOSTANDARD LVCMOS18} [get_ports GPIO_PB[3]] # GPIO_SW_3 (N)
#set_property -dict {PACKAGE_PIN AU38 IOSTANDARD LVCMOS18} [get_ports GPIO_PB[4]] # GPIO_SW_4 (E)
#set_property -dict {PACKAGE_PIN AP40 IOSTANDARD LVCMOS18} [get_ports GPIO_PB[5]] # GPIO_SW_5 (S)
#set_property -dict {PACKAGE_PIN AV39 IOSTANDARD LVCMOS18} [get_ports GPIO_PB[6]] # GPIO_SW_6 (C)
#set_property -dict {PACKAGE_PIN AW40 IOSTANDARD LVCMOS18} [get_ports GPIO_PB[7]] # GPIO_SW_7 (W)

# SMA Diff Pair
#set_property -dict {PACKAGE_PIN AN31 IOSTANDARD LVCMOS18} [get_ports USER_SMA_GPIO_P]
#set_property -dict {PACKAGE_PIN AP31 IOSTANDARD LVCMOS18} [get_ports USER_SMA_GPIO_N]

################################################################################
# LCD Display (2x15 5x8 Dot display) (DisplayTech 162D) (ST7066U Driver)
################################################################################

#set_property PACKAGE_PIN AT42 [get_ports LCD_DB4_LS]
#set_property IOSTANDARD LVCMOS18 [get_ports LCD_DB4_LS]
#set_property PACKAGE_PIN AR38 [get_ports LCD_DB5_LS]
#set_property IOSTANDARD LVCMOS18 [get_ports LCD_DB5_LS]
#set_property PACKAGE_PIN AR39 [get_ports LCD_DB6_LS]
#set_property IOSTANDARD LVCMOS18 [get_ports LCD_DB6_LS]
#set_property PACKAGE_PIN AN40 [get_ports LCD_DB7_LS]
#set_property IOSTANDARD LVCMOS18 [get_ports LCD_DB7_LS]
#set_property PACKAGE_PIN AN41 [get_ports LCD_RS_LS]
#set_property IOSTANDARD LVCMOS18 [get_ports LCD_RS_LS]
#set_property PACKAGE_PIN AR42 [get_ports LCD_RW_LS]
#set_property IOSTANDARD LVCMOS18 [get_ports LCD_RW_LS]
#set_property PACKAGE_PIN AT40 [get_ports LCD_E_LS]
#set_property IOSTANDARD LVCMOS18 [get_ports LCD_E_LS]

################################################################################
# USB-UART Bridge (Silicon Labs CP2103GM)
################################################################################

#set_property PACKAGE_PIN AU36 [get_ports USB_UART_RX]
#set_property IOSTANDARD LVCMOS18 [get_ports USB_UART_RX]
#set_property PACKAGE_PIN AT32 [get_ports USB_UART_RTS]
#set_property IOSTANDARD LVCMOS18 [get_ports USB_UART_RTS]
#set_property PACKAGE_PIN AU33 [get_ports USB_UART_TX]
#set_property IOSTANDARD LVCMOS18 [get_ports USB_UART_TX]
#set_property PACKAGE_PIN AR34 [get_ports USB_UART_CTS]
#set_property IOSTANDARD LVCMOS18 [get_ports USB_UART_CTS]

################################################################################
# SD Card Interface 
################################################################################

#set_property PACKAGE_PIN AN30 [get_ports SDIO_CLK_LS]
#set_property IOSTANDARD LVCMOS18 [get_ports SDIO_CLK_LS]
#set_property PACKAGE_PIN AP30 [get_ports SDIO_CMD_LS]
#set_property IOSTANDARD LVCMOS18 [get_ports SDIO_CMD_LS]
#set_property PACKAGE_PIN AP32 [get_ports SDIO_SDDET]
#set_property IOSTANDARD LVCMOS18 [get_ports SDIO_SDDET]
#set_property PACKAGE_PIN AR32 [get_ports SDIO_SDWP]
#set_property IOSTANDARD LVCMOS18 [get_ports SDIO_SDWP]
#set_property PACKAGE_PIN AU31 [get_ports SDIO_DAT1_LS]
#set_property IOSTANDARD LVCMOS18 [get_ports SDIO_DAT1_LS]
#set_property PACKAGE_PIN AV31 [get_ports SDIO_DAT2_LS]
#set_property IOSTANDARD LVCMOS18 [get_ports SDIO_DAT2_LS]
#set_property PACKAGE_PIN AT30 [get_ports SDIO_CD_DAT3_LS]
#set_property IOSTANDARD LVCMOS18 [get_ports SDIO_CD_DAT3_LS]

################################################################################
# 10/100/1000 Ethernet PHY
################################################################################

#set_property PACKAGE_PIN AK33 [get_ports PHY_MDIO_LS]
#set_property IOSTANDARD LVCMOS18 [get_ports PHY_MDIO_LS]
#set_property PACKAGE_PIN AH31 [get_ports PHY_MDC_LS]
#set_property IOSTANDARD LVCMOS18 [get_ports PHY_MDC_LS]
#set_property PACKAGE_PIN AL31 [get_ports PHY_INT_LS]
#set_property IOSTANDARD LVCMOS18 [get_ports PHY_INT_LS]
#set_property PACKAGE_PIN AJ33 [get_ports PHY_RESET_LS]
#set_property IOSTANDARD LVCMOS18 [get_ports PHY_RESET_LS]
#set_property PACKAGE_PIN AH8 [get_ports SGMIICLK_Q0_P]
#set_property PACKAGE_PIN AH7 [get_ports SGMIICLK_Q0_N]
#set_property PACKAGE_PIN AN2 [get_ports SGMII_TX_P]
#set_property PACKAGE_PIN AM8 [get_ports SGMII_RX_P]
#set_property PACKAGE_PIN AN1 [get_ports SGMII_TX_N]
#set_property PACKAGE_PIN AM7 [get_ports SGMII_RX_N]

#################################################################################
#									          
#	#####	##   ##    ####   ####						  
#	##	    ### ###   ##        ##
#	#####	## # ##   ##        ##
#	##	    ##   ##   ##        ##
#	##	    ##   ##    ####   ######   
#
#################################################################################

#################################################################################
## XRPIX2_TO_FPGA_J1 ASIC_D[119:80]
#################################################################################
set_property PACKAGE_PIN N38 [get_ports XRPIX_119_80[80]]; # LA10_P
set_property PACKAGE_PIN M39 [get_ports XRPIX_119_80[81]]; # LA10_N
set_property PACKAGE_PIN F40 [get_ports XRPIX_119_80[82]]; # LA11_P
set_property PACKAGE_PIN F41 [get_ports XRPIX_119_80[83]]; # LA11_N
set_property PACKAGE_PIN R40 [get_ports XRPIX_119_80[84]]; # LA12_P
set_property PACKAGE_PIN P40 [get_ports XRPIX_119_80[85]]; # LA12_N
set_property PACKAGE_PIN H39 [get_ports XRPIX_119_80[86]]; # LA13_P
set_property PACKAGE_PIN G39 [get_ports XRPIX_119_80[87]]; # LA13_N
set_property PACKAGE_PIN N39 [get_ports XRPIX_119_80[88]]; # LA14_P
set_property PACKAGE_PIN N40 [get_ports XRPIX_119_80[89]]; # LA14_N
set_property PACKAGE_PIN M36 [get_ports XRPIX_119_80[90]]; # LA15_P
set_property PACKAGE_PIN L37 [get_ports XRPIX_119_80[91]]; # LA15_N
set_property PACKAGE_PIN K37 [get_ports XRPIX_119_80[92]]; # LA16_P
set_property PACKAGE_PIN K38 [get_ports XRPIX_119_80[93]]; # LA16_N
set_property PACKAGE_PIN L31 [get_ports XRPIX_119_80[94]]; # LA17_CC_P
set_property PACKAGE_PIN K32 [get_ports XRPIX_119_80[95]]; # LA17_CC_N
set_property PACKAGE_PIN M32 [get_ports XRPIX_119_80[96]]; # LA18_CC_P
set_property PACKAGE_PIN L32 [get_ports XRPIX_119_80[97]]; # LA18_CC_N
set_property PACKAGE_PIN W30 [get_ports XRPIX_119_80[98]]; # LA19_P
set_property PACKAGE_PIN W31 [get_ports XRPIX_119_80[99]]; # LA19_N
set_property PACKAGE_PIN K39 [get_ports XRPIX_119_80[100]]; # LA00_CC_P
set_property PACKAGE_PIN K40 [get_ports XRPIX_119_80[101]]; # LA00_CC_N
set_property PACKAGE_PIN J40 [get_ports XRPIX_119_80[102]]; # LA01_CC_P
set_property PACKAGE_PIN J41 [get_ports XRPIX_119_80[103]]; # LA01_CC_N
set_property PACKAGE_PIN P41 [get_ports XRPIX_119_80[104]]; # LA02_P
set_property PACKAGE_PIN N41 [get_ports XRPIX_119_80[105]]; # LA02_N
set_property PACKAGE_PIN M42 [get_ports XRPIX_119_80[106]]; # LA03_P
set_property PACKAGE_PIN L42 [get_ports XRPIX_119_80[107]]; # LA03_N
set_property PACKAGE_PIN H40 [get_ports XRPIX_119_80[108]]; # LA04_P
set_property PACKAGE_PIN H41 [get_ports XRPIX_119_80[109]]; # LA04_N
set_property PACKAGE_PIN M41 [get_ports XRPIX_119_80[110]]; # LA05_P
set_property PACKAGE_PIN L41 [get_ports XRPIX_119_80[111]]; # LA05_N
set_property PACKAGE_PIN K42 [get_ports XRPIX_119_80[112]]; # LA06_P
set_property PACKAGE_PIN J42 [get_ports XRPIX_119_80[113]]; # LA06_N
set_property PACKAGE_PIN G41 [get_ports XRPIX_119_80[114]]; # LA07_P
set_property PACKAGE_PIN G42 [get_ports XRPIX_119_80[115]]; # LA07_N
set_property PACKAGE_PIN M37 [get_ports XRPIX_119_80[116]]; # LA08_P
set_property PACKAGE_PIN M38 [get_ports XRPIX_119_80[117]]; # LA08_N
set_property PACKAGE_PIN R42 [get_ports XRPIX_119_80[118]]; # LA09_P
set_property PACKAGE_PIN P42 [get_ports XRPIX_119_80[119]]; # LA09_N


#################################################################################
## SEABAS_FPGA J3 (ASIC_D[119:80])
#################################################################################
set_property PACKAGE_PIN M22 [get_ports SEABAS_119_80[80]]; # HB10_P
set_property PACKAGE_PIN L22 [get_ports SEABAS_119_80[81]]; # HB10_N
set_property PACKAGE_PIN K22 [get_ports SEABAS_119_80[82]]; # HB11_P
set_property PACKAGE_PIN J22 [get_ports SEABAS_119_80[83]]; # HB11_N
set_property PACKAGE_PIN K24 [get_ports SEABAS_119_80[84]]; # HB12_P
set_property PACKAGE_PIN K25 [get_ports SEABAS_119_80[85]]; # HB12_N
set_property PACKAGE_PIN P25 [get_ports SEABAS_119_80[86]]; # HB13_P
set_property PACKAGE_PIN P26 [get_ports SEABAS_119_80[87]]; # HB13_N
set_property PACKAGE_PIN J21 [get_ports SEABAS_119_80[88]]; # HB14_P
set_property PACKAGE_PIN H21 [get_ports SEABAS_119_80[89]]; # HB14_N
set_property PACKAGE_PIN M21 [get_ports SEABAS_119_80[90]]; # HB15_P
set_property PACKAGE_PIN L21 [get_ports SEABAS_119_80[91]]; # HB15_N
set_property PACKAGE_PIN N25 [get_ports SEABAS_119_80[92]]; # HB16_P
set_property PACKAGE_PIN N26 [get_ports SEABAS_119_80[93]]; # HB16_N
set_property PACKAGE_PIN M24 [get_ports SEABAS_119_80[94]]; # HB17_CC_P
set_property PACKAGE_PIN L24 [get_ports SEABAS_119_80[95]]; # HB17_CC_N
set_property PACKAGE_PIN G21 [get_ports SEABAS_119_80[96]]; # HB18_P
set_property PACKAGE_PIN G22 [get_ports SEABAS_119_80[97]]; # HB18_N
set_property PACKAGE_PIN L25 [get_ports SEABAS_119_80[98]]; # HB19_P
set_property PACKAGE_PIN L26 [get_ports SEABAS_119_80[99]]; # HB19_N
set_property PACKAGE_PIN J25 [get_ports SEABAS_119_80[100]]; # HB00_CC_P
set_property PACKAGE_PIN J26 [get_ports SEABAS_119_80[101]]; # HB00_CC_N
set_property PACKAGE_PIN H28 [get_ports SEABAS_119_80[102]]; # HB01_P
set_property PACKAGE_PIN H29 [get_ports SEABAS_119_80[103]]; # HB01_N
set_property PACKAGE_PIN K28 [get_ports SEABAS_119_80[104]]; # HB02_P
set_property PACKAGE_PIN J28 [get_ports SEABAS_119_80[105]]; # HB02_N
set_property PACKAGE_PIN G28 [get_ports SEABAS_119_80[106]]; # HB03_P
set_property PACKAGE_PIN G29 [get_ports SEABAS_119_80[107]]; # HB03_N
set_property PACKAGE_PIN H24 [get_ports SEABAS_119_80[108]]; # HB04_P
set_property PACKAGE_PIN G24 [get_ports SEABAS_119_80[109]]; # HB04_N
set_property PACKAGE_PIN K27 [get_ports SEABAS_119_80[110]]; # HB05_P
set_property PACKAGE_PIN J27 [get_ports SEABAS_119_80[111]]; # HB05_N
set_property PACKAGE_PIN K23 [get_ports SEABAS_119_80[112]]; # HB06_CC_P
set_property PACKAGE_PIN J23 [get_ports SEABAS_119_80[113]]; # HB06_CC_N
set_property PACKAGE_PIN G26 [get_ports SEABAS_119_80[114]]; # HB07_P
set_property PACKAGE_PIN G27 [get_ports SEABAS_119_80[115]]; # HB07_N
set_property PACKAGE_PIN H25 [get_ports SEABAS_119_80[116]]; # HB08_P
set_property PACKAGE_PIN H26 [get_ports SEABAS_119_80[117]]; # HB08_N
set_property PACKAGE_PIN H23 [get_ports SEABAS_119_80[118]]; # HB09_P
set_property PACKAGE_PIN G23 [get_ports SEABAS_119_80[119]]; # HB09_N


#################################################################################
## XRPIX2_TO_FPGA_J3 ASIC_D[79:40] 
#################################################################################
set_property PACKAGE_PIN H38 [get_ports XRPIX_79_40[40]]; # HA10_P
set_property PACKAGE_PIN G38 [get_ports XRPIX_79_40[41]]; # HA10_N
set_property PACKAGE_PIN J37 [get_ports XRPIX_79_40[42]]; # HA11_P
set_property PACKAGE_PIN J38 [get_ports XRPIX_79_40[43]]; # HA11_N
set_property PACKAGE_PIN B37 [get_ports XRPIX_79_40[44]]; # HA12_P
set_property PACKAGE_PIN B38 [get_ports XRPIX_79_40[45]]; # HA12_N
set_property PACKAGE_PIN B36 [get_ports XRPIX_79_40[46]]; # HA13_P
set_property PACKAGE_PIN A37 [get_ports XRPIX_79_40[47]]; # HA13_N
set_property PACKAGE_PIN E37 [get_ports XRPIX_79_40[48]]; # HA14_P
set_property PACKAGE_PIN E38 [get_ports XRPIX_79_40[49]]; # HA14_N
set_property PACKAGE_PIN C33 [get_ports XRPIX_79_40[50]]; # HA15_P
set_property PACKAGE_PIN C34 [get_ports XRPIX_79_40[51]]; # HA15_N
set_property PACKAGE_PIN B39 [get_ports XRPIX_79_40[52]]; # HA16_P
set_property PACKAGE_PIN A39 [get_ports XRPIX_79_40[53]]; # HA16_N
set_property PACKAGE_PIN C35 [get_ports XRPIX_79_40[54]]; # HA17_CC _P
set_property PACKAGE_PIN C36 [get_ports XRPIX_79_40[55]]; # HA17_CC _N
set_property PACKAGE_PIN F39 [get_ports XRPIX_79_40[56]]; # HA18_P
set_property PACKAGE_PIN E39 [get_ports XRPIX_79_40[57]]; # HA18_N
set_property PACKAGE_PIN B32 [get_ports XRPIX_79_40[58]]; # HA19_P
set_property PACKAGE_PIN B33 [get_ports XRPIX_79_40[59]]; # HA19_N
set_property PACKAGE_PIN E34 [get_ports XRPIX_79_40[60]]; # HA00_CC _P 
set_property PACKAGE_PIN E35 [get_ports XRPIX_79_40[61]]; # HA00_CC _N
set_property PACKAGE_PIN D35 [get_ports XRPIX_79_40[62]]; # HA01_CC _P
set_property PACKAGE_PIN D36 [get_ports XRPIX_79_40[63]]; # HA01_CC _N
set_property PACKAGE_PIN E33 [get_ports XRPIX_79_40[64]]; # HA02_P
set_property PACKAGE_PIN D33 [get_ports XRPIX_79_40[65]]; # HA02_N
set_property PACKAGE_PIN H33 [get_ports XRPIX_79_40[66]]; # HA03_P
set_property PACKAGE_PIN G33 [get_ports XRPIX_79_40[67]]; # HA03_N
set_property PACKAGE_PIN F34 [get_ports XRPIX_79_40[68]]; # HA04_P
set_property PACKAGE_PIN F35 [get_ports XRPIX_79_40[69]]; # HA04_N
set_property PACKAGE_PIN G32 [get_ports XRPIX_79_40[70]]; # HA05_P
set_property PACKAGE_PIN F32 [get_ports XRPIX_79_40[71]]; # HA05_N
set_property PACKAGE_PIN G36 [get_ports XRPIX_79_40[72]]; # HA06_P
set_property PACKAGE_PIN G37 [get_ports XRPIX_79_40[73]]; # HA06_N
set_property PACKAGE_PIN C38 [get_ports XRPIX_79_40[74]]; # HA07_P
set_property PACKAGE_PIN C39 [get_ports XRPIX_79_40[75]]; # HA07_N
set_property PACKAGE_PIN J36 [get_ports XRPIX_79_40[76]]; # HA08_P
set_property PACKAGE_PIN H36 [get_ports XRPIX_79_40[77]]; # HA08_N
set_property PACKAGE_PIN E32 [get_ports XRPIX_79_40[78]]; # HA09_P
set_property PACKAGE_PIN D32 [get_ports XRPIX_79_40[79]]; # HA09_N

#################################################################################
## FMC1_LED
#################################################################################
#set_property -dict {PACKAGE_PIN V29 IOSTANDARD LVCMOS18} [get_ports FMC1_LED[0]];  # LA32_P
#set_property -dict {PACKAGE_PIN U29 IOSTANDARD LVCMOS18} [get_ports {FMC1_LED[1]}];  # LA32_N
#set_property -dict {PACKAGE_PIN U31 IOSTANDARD LVCMOS18} [get_ports {FMC1_LED[2]}];  # LA33_P
#set_property -dict {PACKAGE_PIN T31 IOSTANDARD LVCMOS18} [get_ports {FMC1_LED[3]}];  # LA33_N

#################################################################################
## Flash controller
#################################################################################
set_property -dict {PACKAGE_PIN L29 IOSTANDARD LVCMOS18} [get_ports CSn];  # LA28_P
set_property -dict {PACKAGE_PIN L30 IOSTANDARD LVCMOS18} [get_ports MOSI];  # LA28_N
set_property -dict {PACKAGE_PIN T29 IOSTANDARD LVCMOS18} [get_ports MISO];  # LA29_P
set_property -dict {PACKAGE_PIN T30 IOSTANDARD LVCMOS18} [get_ports SCK];  # LA29_N
set_property -dict {PACKAGE_PIN V31 IOSTANDARD LVCMOS18} [get_ports FLASH_RST];  # LA30_N
set_property -dict {PACKAGE_PIN M28 IOSTANDARD LVCMOS18} [get_ports FLASH_WP];  # LA31_P
set_property -dict {PACKAGE_PIN M29 IOSTANDARD LVCMOS18} [get_ports FLASH_HOLD];  # LA31_N

#################################################################################
## Debugger
#################################################################################
set_property -dict {PACKAGE_PIN P23 IOSTANDARD LVCMOS18} [get_ports jtag_trst];  # HB21_N
set_property -dict {PACKAGE_PIN F36 IOSTANDARD LVCMOS18} [get_ports jtag_tdi];  # HA22_P
set_property -dict {PACKAGE_PIN F37 IOSTANDARD LVCMOS18} [get_ports jtag_tms];  # HA22_N
set_property -dict {PACKAGE_PIN A35 IOSTANDARD LVCMOS18} [get_ports jtag_tck]; # HA23_P
set_property -dict {PACKAGE_PIN A36 IOSTANDARD LVCMOS18} [get_ports jtag_tdo]; # HA23_N

#################################################################################
#									          
#	#####	##   ##    ####   #####						  
#	##	    ### ###   ##          ##
#	#####	## # ##   ##         ##
#	##	    ##   ##   ##       ##
#	##	    ##   ##    ####   ######   
#
#################################################################################

#################################################################################
## XRPIX2_TO_FPGA_J4 ASIC_D[39:0]
#################################################################################
set_property PACKAGE_PIN AB41 [get_ports XRPIX_39_0[0]]; # LA10_P
set_property PACKAGE_PIN AB42 [get_ports XRPIX_39_0[1]]; # LA10_N
set_property PACKAGE_PIN Y42  [get_ports XRPIX_39_0[2]]; # LA11_P
set_property PACKAGE_PIN AA42 [get_ports XRPIX_39_0[3]]; # LA11_N
set_property PACKAGE_PIN Y39  [get_ports XRPIX_39_0[4]]; # LA12_P
set_property PACKAGE_PIN AA39 [get_ports XRPIX_39_0[5]]; # LA12_N
set_property PACKAGE_PIN W40  [get_ports XRPIX_39_0[6]]; # LA13_P
set_property PACKAGE_PIN Y40  [get_ports XRPIX_39_0[7]]; # LA13_N
set_property PACKAGE_PIN AB38 [get_ports XRPIX_39_0[8]]; # LA14_P
set_property PACKAGE_PIN AB39 [get_ports XRPIX_39_0[9]]; # LA14_N
set_property PACKAGE_PIN AC38 [get_ports XRPIX_39_0[10]]; # LA15_P
set_property PACKAGE_PIN AC39 [get_ports XRPIX_39_0[11]]; # LA15_N
set_property PACKAGE_PIN AJ40 [get_ports XRPIX_39_0[12]]; # LA16_P
set_property PACKAGE_PIN AJ41 [get_ports XRPIX_39_0[13]]; # LA16_N
set_property PACKAGE_PIN U37  [get_ports XRPIX_39_0[14]]; # LA17_CC_P
set_property PACKAGE_PIN U38  [get_ports XRPIX_39_0[15]]; # LA17_CC_N
set_property PACKAGE_PIN U36  [get_ports XRPIX_39_0[16]]; # LA18_CC_P
set_property PACKAGE_PIN T37  [get_ports XRPIX_39_0[17]]; # LA18_CC_N
set_property PACKAGE_PIN U32  [get_ports XRPIX_39_0[18]]; # LA19_P
set_property PACKAGE_PIN U33  [get_ports XRPIX_39_0[19]]; # LA19_N
set_property PACKAGE_PIN AD40 [get_ports XRPIX_39_0[20]]; # LA00_CC_P
set_property PACKAGE_PIN AD41 [get_ports XRPIX_39_0[21]]; # LA00_CC_N
set_property PACKAGE_PIN AF41 [get_ports XRPIX_39_0[22]]; # LA01_CC_P
set_property PACKAGE_PIN AG41 [get_ports XRPIX_39_0[23]]; # LA01_CC_N
set_property PACKAGE_PIN AK39 [get_ports XRPIX_39_0[24]]; # LA02_P
set_property PACKAGE_PIN AL39 [get_ports XRPIX_39_0[25]]; # LA02_N
set_property PACKAGE_PIN AJ42 [get_ports XRPIX_39_0[26]]; # LA03_P
set_property PACKAGE_PIN AK42 [get_ports XRPIX_39_0[27]]; # LA03_N
set_property PACKAGE_PIN AL41 [get_ports XRPIX_39_0[28]]; # LA04_P
set_property PACKAGE_PIN AL42 [get_ports XRPIX_39_0[29]]; # LA04_N
set_property PACKAGE_PIN AF42 [get_ports XRPIX_39_0[30]]; # LA05_P
set_property PACKAGE_PIN AG42 [get_ports XRPIX_39_0[31]]; # LA05_N
set_property PACKAGE_PIN AD38 [get_ports XRPIX_39_0[32]]; # LA06_P
set_property PACKAGE_PIN AE38 [get_ports XRPIX_39_0[33]]; # LA06_N
set_property PACKAGE_PIN AC40 [get_ports XRPIX_39_0[34]]; # LA07_P
set_property PACKAGE_PIN AC41 [get_ports XRPIX_39_0[35]]; # LA07_N
set_property PACKAGE_PIN AD42 [get_ports XRPIX_39_0[36]]; # LA08_P
set_property PACKAGE_PIN AE42 [get_ports XRPIX_39_0[37]]; # LA08_N
set_property PACKAGE_PIN AJ38 [get_ports XRPIX_39_0[38]]; # LA09_P
set_property PACKAGE_PIN AK38 [get_ports XRPIX_39_0[39]]; # LA09_N

#################################################################################
## SEABAS_FPGA J (ASIC_D[53:40])
#################################################################################
set_property PACKAGE_PIN AB33 [get_ports SEABAS_53_40[40]]; # HA00_CC _P 
set_property PACKAGE_PIN AC33 [get_ports SEABAS_53_40[41]]; # HA00_CC _N
set_property PACKAGE_PIN AD32 [get_ports SEABAS_53_40[42]]; # HA01_CC _P
set_property PACKAGE_PIN AD33 [get_ports SEABAS_53_40[43]]; # HA01_CC _N
set_property PACKAGE_PIN AC30 [get_ports SEABAS_53_40[44]]; # HA02_P
set_property PACKAGE_PIN AD30 [get_ports SEABAS_53_40[45]]; # HA02_N
set_property PACKAGE_PIN AA29 [get_ports SEABAS_53_40[46]]; # HA03_P
set_property PACKAGE_PIN AA30 [get_ports SEABAS_53_40[47]]; # HA03_N
set_property PACKAGE_PIN AB29 [get_ports SEABAS_53_40[48]]; # HA04_P
set_property PACKAGE_PIN AC29 [get_ports SEABAS_53_40[49]]; # HA04_N
set_property PACKAGE_PIN Y32  [get_ports SEABAS_53_40[50]]; # HA05_P
set_property PACKAGE_PIN Y33  [get_ports SEABAS_53_40[51]]; # HA05_N
set_property PACKAGE_PIN AB31 [get_ports SEABAS_53_40[52]]; # HA06_P
set_property PACKAGE_PIN AB32 [get_ports SEABAS_53_40[53]]; # HA06_N

#################################################################################
## FMC2 LEDs
#################################################################################
#set_property -dict {PACKAGE_PIN P37 IOSTANDARD LVCMOS18} [get_ports {FMC2_LED[0]}];  # LA32_P
#set_property -dict {PACKAGE_PIN P38 IOSTANDARD LVCMOS18} [get_ports {FMC2_LED[1]}];  # LA32_N
#set_property -dict {PACKAGE_PIN T36 IOSTANDARD LVCMOS18} [get_ports {FMC2_LED[2]}];  # LA33_P
#set_property -dict {PACKAGE_PIN R37 IOSTANDARD LVCMOS18} [get_ports {FMC2_LED[3]}];  # LA33_N
