#################################################################################
## VC707 with XM105 (FMC1 + FMC2) Constraints File
## Author: Binh Kieu-Do-Nguyen
#################################################################################

#################################################################################
## CLOCKS
#################################################################################
# SYSCLK 200MHz
#set_property -dict {PACKAGE_PIN E19 IOSTANDARD LVDS} [get_ports SYSCLK_P];
#set_property -dict {PACKAGE_PIN E18 IOSTANDARD LVDS} [get_ports SYSCLK_N];
#create_clock -period 5.000 -name sys_clk_pin -waveform {0.000 2.500} -add [get_ports SYSCLK_P];
#create_clock -period 5.000 -name sys_clk_pin -waveform {0.000 2.500} -add [get_ports SYSCLK_N];

# User Clock
#set_property -dict {PACKAGE_PIN AK34 IOSTANDARD LVDS} [get_ports USER_CLOCK_P];
#set_property -dict {PACKAGE_PIN AL34 IOSTANDARD LVDS} [get_ports USER_CLOCK_N];

# User SMA Clock
#set_property -dict {PACKAGE_PIN AJ32 IOSTANDARD LVCMOS18} [get_ports USER_SMA_CLOCK_P];
#set_property -dict {PACKAGE_PIN AK32 IOSTANDARD LVCMOS18} [get_ports USER_SMA_CLOCK_N];

# GTX SMA Clock
#set_property PACKAGE_PIN AK7 [get_ports SMA_MGT_REFCLK_N];
#set_property PACKAGE_PIN AK8 [get_ports SMA_MGT_REFCLK_P];
#set_property PACKAGE_PIN AP4 [get_ports SMA_MGT_TX_P];
#set_property PACKAGE_PIN AN6 [get_ports SMA_MGT_RX_P];
#set_property PACKAGE_PIN AP3 [get_ports SMA_MGT_TX_N];
#set_property PACKAGE_PIN AN5 [get_ports SMA_MGT_RX_N];

# Si5324 Jitter Attenuated Clock
#set_property -dict {PACKAGE_PIN AW32 IOSTANDARD LVCMOS18} [get_ports REC_CLOCK_C_P];
#set_property -dict {PACKAGE_PIN AW33 IOSTANDARD LVCMOS18} [get_ports REC_CLOCK_C_N];
#set_property -dict {PACKAGE_PIN AU34 IOSTANDARD LVCMOS18} [get_ports SI5324_INT_ALM_LS];
#set_property -dict {PACKAGE_PIN AT36 IOSTANDARD LVCMOS18} [get_ports SI5324_RST_LS];

################################################################################
# MISC
################################################################################

# CPU Reset (Switch 8)
#set_property -dict {PACKAGE_PIN AV40 IOSTANDARD LVCMOS18} [get_ports CPU_RESET]

# Cooling fan
#set_property -dict {PACKAGE_PIN BA37 IOSTANDARD LVCMOS18} [get_ports SM_FAN_PWM]
#set_property -dict {PACKAGE_PIN BB37 IOSTANDARD LVCMOS18} [get_ports SM_FAN_TACH]

# Power Management Bus
#set_property -dict {PACKAGE_PIN AW37 IOSTANDARD LVCMOS18} [get_ports PMBUS_CLK_LS]
#set_property -dict {PACKAGE_PIN AV38 IOSTANDARD LVCMOS18} [get_ports PMBUS_ALERT_LS]
#set_property -dict {PACKAGE_PIN AY39 IOSTANDARD LVCMOS18} [get_ports PMBUS_DATA_LS]

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

# Rotary Switch
#set_property -dict {PACKAGE_PIN AR33 IOSTANDARD LVCMOS18} [get_ports ROTARY_INCA]
#set_property -dict {PACKAGE_PIN AT31 IOSTANDARD LVCMOS18} [get_ports ROTARY_INCB]
#set_property -dict {PACKAGE_PIN AW31 IOSTANDARD LVCMOS18} [get_ports ROTARY_PUSH]

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
# I2C and I2C Bus Switch
################################################################################

#set_property PACKAGE_PIN AT35 [get_ports IIC_SCL_MAIN_LS]
#set_property IOSTANDARD LVCMOS18 [get_ports IIC_SCL_MAIN_LS]
#set_property PACKAGE_PIN AU32 [get_ports IIC_SDA_MAIN_LS]
#set_property IOSTANDARD LVCMOS18 [get_ports IIC_SDA_MAIN_LS]

# Must be driven high to communicate with U52
#set_property PACKAGE_PIN AY42 [get_ports IIC_MUX_RESET_B_LS]
#set_property IOSTANDARD LVCMOS18 [get_ports IIC_MUX_RESET_B_LS]

################################################################################
# XADC
################################################################################

#set_property PACKAGE_PIN AN38 [get_ports XADC_VAUX0P_R]
#set_property IOSTANDARD LVCMOS18 [get_ports XADC_VAUX0P_R]
#set_property PACKAGE_PIN AP38 [get_ports XADC_VAUX0N_R]
#set_property IOSTANDARD LVCMOS18 [get_ports XADC_VAUX0N_R]
#set_property PACKAGE_PIN AM41 [get_ports XADC_VAUX8P_R]
#set_property IOSTANDARD LVCMOS18 [get_ports XADC_VAUX8P_R]
#set_property PACKAGE_PIN AM42 [get_ports XADC_VAUX8N_R]
#set_property IOSTANDARD LVCMOS18 [get_ports XADC_VAUX8N_R]

#set_property PACKAGE_PIN BA21 [get_ports XADC_GPIO_0]
#set_property IOSTANDARD LVCMOS18 [get_ports XADC_GPIO_0]
#set_property PACKAGE_PIN BB21 [get_ports XADC_GPIO_1]
#set_property IOSTANDARD LVCMOS18 [get_ports XADC_GPIO_1]
#set_property PACKAGE_PIN BB24 [get_ports XADC_GPIO_2]
#set_property IOSTANDARD LVCMOS18 [get_ports XADC_GPIO_2]
#set_property PACKAGE_PIN BB23 [get_ports XADC_GPIO_3]
#set_property IOSTANDARD LVCMOS18 [get_ports XADC_GPIO_3]

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
# USB 2.0 ULPI (SMSC USB2330) (That one mini-USB connector by the power jack)
################################################################################

#set_property PACKAGE_PIN AV36 [get_ports USB_SMSC_DATA0]
#set_property IOSTANDARD LVCMOS18 [get_ports USB_SMSC_DATA0]
#set_property PACKAGE_PIN AW36 [get_ports USB_SMSC_DATA1]
#set_property IOSTANDARD LVCMOS18 [get_ports USB_SMSC_DATA1]
#set_property PACKAGE_PIN BA34 [get_ports USB_SMSC_DATA2]
#set_property IOSTANDARD LVCMOS18 [get_ports USB_SMSC_DATA2]
#set_property PACKAGE_PIN BB34 [get_ports USB_SMSC_DATA3]
#set_property IOSTANDARD LVCMOS18 [get_ports USB_SMSC_DATA3]
#set_property PACKAGE_PIN BA36 [get_ports USB_SMSC_DATA4]
#set_property IOSTANDARD LVCMOS18 [get_ports USB_SMSC_DATA4]
#set_property PACKAGE_PIN AT34 [get_ports USB_SMSC_DATA5]
#set_property IOSTANDARD LVCMOS18 [get_ports USB_SMSC_DATA5]
#set_property PACKAGE_PIN AY35 [get_ports USB_SMSC_DATA6]
#set_property IOSTANDARD LVCMOS18 [get_ports USB_SMSC_DATA6]
#set_property PACKAGE_PIN AW35 [get_ports USB_SMSC_DATA7]
#set_property IOSTANDARD LVCMOS18 [get_ports USB_SMSC_DATA7]

#set_property PACKAGE_PIN BA35 [get_ports USB_SMSC_NXT]
#set_property IOSTANDARD LVCMOS18 [get_ports USB_SMSC_NXT]
#set_property PACKAGE_PIN BB36 [get_ports USB_SMSC_RESET_B]
#set_property IOSTANDARD LVCMOS18 [get_ports USB_SMSC_RESET_B]
#set_property PACKAGE_PIN BB32 [get_ports USB_SMSC_STP]
#set_property IOSTANDARD LVCMOS18 [get_ports USB_SMSC_STP]
#set_property PACKAGE_PIN BB33 [get_ports USB_SMSC_DIR]
#set_property IOSTANDARD LVCMOS18 [get_ports USB_SMSC_DIR]
#set_property PACKAGE_PIN AV34 [get_ports USB_SMSC_REFCLK_OPTION]
#set_property IOSTANDARD LVCMOS18 [get_ports USB_SMSC_REFCLK_OPTION]
#set_property PACKAGE_PIN AY32 [get_ports USB_SMSC_CLKOUT]
#set_property IOSTANDARD LVCMOS18 [get_ports USB_SMSC_CLKOUT]

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
# HDMI Source Codec (ADV7511KSTZ-P)
################################################################################

#set_property PACKAGE_PIN AM22 [get_ports HDMI_R_D0]
#set_property IOSTANDARD LVCMOS18 [get_ports HDMI_R_D0]
#set_property PACKAGE_PIN AL22 [get_ports HDMI_R_D1]
#set_property IOSTANDARD LVCMOS18 [get_ports HDMI_R_D1]
#set_property PACKAGE_PIN AJ20 [get_ports HDMI_R_D2]
#set_property IOSTANDARD LVCMOS18 [get_ports HDMI_R_D2]
#set_property PACKAGE_PIN AJ21 [get_ports HDMI_R_D3]
#set_property IOSTANDARD LVCMOS18 [get_ports HDMI_R_D3]
#set_property PACKAGE_PIN AM21 [get_ports HDMI_R_D4]
#set_property IOSTANDARD LVCMOS18 [get_ports HDMI_R_D4]
#set_property PACKAGE_PIN AL21 [get_ports HDMI_R_D5]
#set_property IOSTANDARD LVCMOS18 [get_ports HDMI_R_D5]
#set_property PACKAGE_PIN AK22 [get_ports HDMI_R_D6]
#set_property IOSTANDARD LVCMOS18 [get_ports HDMI_R_D6]
#set_property PACKAGE_PIN AJ22 [get_ports HDMI_R_D7]
#set_property IOSTANDARD LVCMOS18 [get_ports HDMI_R_D7]
#set_property PACKAGE_PIN AL20 [get_ports HDMI_R_D8]
#set_property IOSTANDARD LVCMOS18 [get_ports HDMI_R_D8]
#set_property PACKAGE_PIN AK20 [get_ports HDMI_R_D9]
#set_property IOSTANDARD LVCMOS18 [get_ports HDMI_R_D9]
#set_property PACKAGE_PIN AK23 [get_ports HDMI_R_D10]
#set_property IOSTANDARD LVCMOS18 [get_ports HDMI_R_D10]
#set_property PACKAGE_PIN AJ23 [get_ports HDMI_R_D11]
#set_property IOSTANDARD LVCMOS18 [get_ports HDMI_R_D11]
#set_property PACKAGE_PIN AN21 [get_ports HDMI_R_D12]
#set_property IOSTANDARD LVCMOS18 [get_ports HDMI_R_D12]
#set_property PACKAGE_PIN AP22 [get_ports HDMI_R_D13]
#set_property IOSTANDARD LVCMOS18 [get_ports HDMI_R_D13]
#set_property PACKAGE_PIN AP23 [get_ports HDMI_R_D14]
#set_property IOSTANDARD LVCMOS18 [get_ports HDMI_R_D14]
#set_property PACKAGE_PIN AN23 [get_ports HDMI_R_D15]
#set_property IOSTANDARD LVCMOS18 [get_ports HDMI_R_D15]
#set_property PACKAGE_PIN AM23 [get_ports HDMI_R_D16]
#set_property IOSTANDARD LVCMOS18 [get_ports HDMI_R_D16]
#set_property PACKAGE_PIN AN24 [get_ports HDMI_R_D17]
#set_property IOSTANDARD LVCMOS18 [get_ports HDMI_R_D17]
#set_property PACKAGE_PIN AY24 [get_ports HDMI_R_D18]
#set_property IOSTANDARD LVCMOS18 [get_ports HDMI_R_D18]
#set_property PACKAGE_PIN BB22 [get_ports HDMI_R_D19]
#set_property IOSTANDARD LVCMOS18 [get_ports HDMI_R_D19]
#set_property PACKAGE_PIN BA22 [get_ports HDMI_R_D20]
#set_property IOSTANDARD LVCMOS18 [get_ports HDMI_R_D20]
#set_property PACKAGE_PIN BA25 [get_ports HDMI_R_D21]
#set_property IOSTANDARD LVCMOS18 [get_ports HDMI_R_D21]
#set_property PACKAGE_PIN AY25 [get_ports HDMI_R_D22]
#set_property IOSTANDARD LVCMOS18 [get_ports HDMI_R_D22]
#set_property PACKAGE_PIN AY22 [get_ports HDMI_R_D23]
#set_property IOSTANDARD LVCMOS18 [get_ports HDMI_R_D23]
#set_property PACKAGE_PIN AY23 [get_ports HDMI_R_D24]
#set_property IOSTANDARD LVCMOS18 [get_ports HDMI_R_D24]
#set_property PACKAGE_PIN AV24 [get_ports HDMI_R_D25]
#set_property IOSTANDARD LVCMOS18 [get_ports HDMI_R_D25]
#set_property PACKAGE_PIN AU24 [get_ports HDMI_R_D26]
#set_property IOSTANDARD LVCMOS18 [get_ports HDMI_R_D26]
#set_property PACKAGE_PIN AW21 [get_ports HDMI_R_D27]
#set_property IOSTANDARD LVCMOS18 [get_ports HDMI_R_D27]
#set_property PACKAGE_PIN AV21 [get_ports HDMI_R_D28]
#set_property IOSTANDARD LVCMOS18 [get_ports HDMI_R_D28]
#set_property PACKAGE_PIN AT24 [get_ports HDMI_R_D29]
#set_property IOSTANDARD LVCMOS18 [get_ports HDMI_R_D29]
#set_property PACKAGE_PIN AR24 [get_ports HDMI_R_D30]
#set_property IOSTANDARD LVCMOS18 [get_ports HDMI_R_D30]
#set_property PACKAGE_PIN AU21 [get_ports HDMI_R_D31]
#set_property IOSTANDARD LVCMOS18 [get_ports HDMI_R_D31]
#set_property PACKAGE_PIN AT21 [get_ports HDMI_R_D32]
#set_property IOSTANDARD LVCMOS18 [get_ports HDMI_R_D32]
#set_property PACKAGE_PIN AW22 [get_ports HDMI_R_D33]
#set_property IOSTANDARD LVCMOS18 [get_ports HDMI_R_D33]
#set_property PACKAGE_PIN AW23 [get_ports HDMI_R_D34]
#set_property IOSTANDARD LVCMOS18 [get_ports HDMI_R_D34]
#set_property PACKAGE_PIN AV23 [get_ports HDMI_R_D35]
#set_property IOSTANDARD LVCMOS18 [get_ports HDMI_R_D35]

#set_property PACKAGE_PIN AU23 [get_ports HDMI_R_CLK]
#set_property IOSTANDARD LVCMOS18 [get_ports HDMI_R_CLK]
#set_property PACKAGE_PIN AP21 [get_ports HDMI_R_DE]
#set_property IOSTANDARD LVCMOS18 [get_ports HDMI_R_DE]
#set_property PACKAGE_PIN AT22 [get_ports HDMI_R_VSYNC]
#set_property IOSTANDARD LVCMOS18 [get_ports HDMI_R_VSYNC]
#set_property PACKAGE_PIN AU22 [get_ports HDMI_R_HSYNC]
#set_property IOSTANDARD LVCMOS18 [get_ports HDMI_R_HSYNC]
#set_property PACKAGE_PIN AR23 [get_ports HDMI_R_SPDIF]
#set_property IOSTANDARD LVCMOS18 [get_ports HDMI_R_SPDIF]
#set_property PACKAGE_PIN AR22 [get_ports HDMI_SPDIF_OUT_LS]
#set_property IOSTANDARD LVCMOS18 [get_ports HDMI_SPDIF_OUT_LS]
#set_property PACKAGE_PIN AM24 [get_ports HDMI_INT]
#set_property IOSTANDARD LVCMOS18 [get_ports HDMI_INT]

################################################################################
# PCI Express Edge Connector (x8)
################################################################################

#set_property PACKAGE_PIN W2 [get_ports PCIE_TX0_P]
#set_property PACKAGE_PIN Y4 [get_ports PCIE_RX0_P]
#set_property PACKAGE_PIN W1 [get_ports PCIE_TX0_N]
#set_property PACKAGE_PIN Y3 [get_ports PCIE_RX0_N]
#set_property PACKAGE_PIN AA2 [get_ports PCIE_TX1_P]
#set_property PACKAGE_PIN AA6 [get_ports PCIE_RX1_P]
#set_property PACKAGE_PIN AA1 [get_ports PCIE_TX1_N]
#set_property PACKAGE_PIN AA5 [get_ports PCIE_RX1_N]
#set_property PACKAGE_PIN AC2 [get_ports PCIE_TX2_P]
#set_property PACKAGE_PIN AB4 [get_ports PCIE_RX2_P]
#set_property PACKAGE_PIN AC1 [get_ports PCIE_TX2_N]
#set_property PACKAGE_PIN AB3 [get_ports PCIE_RX2_N]
#set_property PACKAGE_PIN AE2 [get_ports PCIE_TX3_P]
#set_property PACKAGE_PIN AC6 [get_ports PCIE_RX3_P]
#set_property PACKAGE_PIN AE1 [get_ports PCIE_TX3_N]
#set_property PACKAGE_PIN AC5 [get_ports PCIE_RX3_N]
#set_property PACKAGE_PIN AG2 [get_ports PCIE_TX4_P]
#set_property PACKAGE_PIN AD4 [get_ports PCIE_RX4_P]
#set_property PACKAGE_PIN AG1 [get_ports PCIE_TX4_N]
#set_property PACKAGE_PIN AD3 [get_ports PCIE_RX4_N]
#set_property PACKAGE_PIN AH4 [get_ports PCIE_TX5_P]
#set_property PACKAGE_PIN AE5 [get_ports PCIE_RX5_N]
#set_property PACKAGE_PIN AE6 [get_ports PCIE_RX5_P]
#set_property PACKAGE_PIN AH3 [get_ports PCIE_TX5_N]
#set_property PACKAGE_PIN AJ2 [get_ports PCIE_TX6_P]
#set_property PACKAGE_PIN AF4 [get_ports PCIE_RX6_P]
#set_property PACKAGE_PIN AJ1 [get_ports PCIE_TX6_N]
#set_property PACKAGE_PIN AF3 [get_ports PCIE_RX6_N]
#set_property PACKAGE_PIN AK4 [get_ports PCIE_TX7_P]
#set_property PACKAGE_PIN AG6 [get_ports PCIE_RX7_P]
#set_property PACKAGE_PIN AK3 [get_ports PCIE_TX7_N]
#set_property PACKAGE_PIN AG5 [get_ports PCIE_RX7_N]

# Integrated Endpoint block differential clock pair
#set_property PACKAGE_PIN AB7 [get_ports PCIE_CLK_QO_N]
#set_property PACKAGE_PIN AB8 [get_ports PCIE_CLK_QO_P]
#set_property PACKAGE_PIN AD8 [get_ports SI5324_OUT_C_P]
#set_property PACKAGE_PIN AD7 [get_ports SI5324_OUT_C_N]

#set_property PACKAGE_PIN AV33 [get_ports PCIE_WAKE_B_LS]
#set_property IOSTANDARD LVCMOS18 [get_ports PCIE_WAKE_B_LS]
#set_property PACKAGE_PIN AV35 [get_ports PCIE_PERST_LS]
#set_property IOSTANDARD LVCMOS18 [get_ports PCIE_PERST_LS]

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

################################################################################
# SFP+ Connector
################################################################################

#set_property PACKAGE_PIN AM4 [get_ports SFP_TX_P]
#set_property PACKAGE_PIN AL6 [get_ports SFP_RX_P]
#set_property PACKAGE_PIN AM3 [get_ports SFP_TX_N]
#set_property PACKAGE_PIN AL5 [get_ports SFP_RX_N]

#set_property PACKAGE_PIN AP33 [get_ports SFP_TX_DISABLE]
#set_property IOSTANDARD LVCMOS18 [get_ports SFP_TX_DISABLE]
#set_property PACKAGE_PIN BB38 [get_ports SFP_LOS_LS]
#set_property IOSTANDARD LVCMOS18 [get_ports SFP_LOS_LS]

################################################################################
# DDR3 SODIMM
################################################################################

#set_property PACKAGE_PIN A20 [get_ports DDR3_A0]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_A0]
#set_property PACKAGE_PIN B19 [get_ports DDR3_A1]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_A1]
#set_property PACKAGE_PIN C20 [get_ports DDR3_A2]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_A2]
#set_property PACKAGE_PIN A19 [get_ports DDR3_A3]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_A3]
#set_property PACKAGE_PIN A17 [get_ports DDR3_A4]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_A4]
#set_property PACKAGE_PIN A16 [get_ports DDR3_A5]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_A5]
#set_property PACKAGE_PIN D20 [get_ports DDR3_A6]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_A6]
#set_property PACKAGE_PIN C18 [get_ports DDR3_A7]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_A7]
#set_property PACKAGE_PIN D17 [get_ports DDR3_A8]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_A8]
#set_property PACKAGE_PIN C19 [get_ports DDR3_A9]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_A9]
#set_property PACKAGE_PIN B21 [get_ports DDR3_A10]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_A10]
#set_property PACKAGE_PIN B17 [get_ports DDR3_A11]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_A11]
#set_property PACKAGE_PIN A15 [get_ports DDR3_A12]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_A12]
#set_property PACKAGE_PIN A21 [get_ports DDR3_A13]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_A13]
#set_property PACKAGE_PIN F17 [get_ports DDR3_A14]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_A14]
#set_property PACKAGE_PIN E17 [get_ports DDR3_A15]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_A15]

#set_property PACKAGE_PIN D21 [get_ports DDR3_BA0]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_BA0]
#set_property PACKAGE_PIN C21 [get_ports DDR3_BA1]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_BA1]
#set_property PACKAGE_PIN D18 [get_ports DDR3_BA2]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_BA2]

#set_property PACKAGE_PIN N14 [get_ports DDR3_D0]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_D0]
#set_property PACKAGE_PIN N13 [get_ports DDR3_D1]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_D1]
#set_property PACKAGE_PIN L14 [get_ports DDR3_D2]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_D2]
#set_property PACKAGE_PIN M14 [get_ports DDR3_D3]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_D3]
#set_property PACKAGE_PIN M12 [get_ports DDR3_D4]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_D4]
#set_property PACKAGE_PIN N15 [get_ports DDR3_D5]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_D5]
#set_property PACKAGE_PIN M11 [get_ports DDR3_D6]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_D6]
#set_property PACKAGE_PIN L12 [get_ports DDR3_D7]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_D7]
#set_property PACKAGE_PIN K14 [get_ports DDR3_D8]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_D8]
#set_property PACKAGE_PIN K13 [get_ports DDR3_D9]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_D9]
#set_property PACKAGE_PIN H13 [get_ports DDR3_D10]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_D10]
#set_property PACKAGE_PIN J13 [get_ports DDR3_D11]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_D11]
#set_property PACKAGE_PIN L16 [get_ports DDR3_D12]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_D12]
#set_property PACKAGE_PIN L15 [get_ports DDR3_D13]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_D13]
#set_property PACKAGE_PIN H14 [get_ports DDR3_D14]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_D14]
#set_property PACKAGE_PIN J15 [get_ports DDR3_D15]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_D15]
#set_property PACKAGE_PIN E15 [get_ports DDR3_D16]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_D16]
#set_property PACKAGE_PIN E13 [get_ports DDR3_D17]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_D17]
#set_property PACKAGE_PIN F15 [get_ports DDR3_D18]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_D18]
#set_property PACKAGE_PIN E14 [get_ports DDR3_D19]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_D19]
#set_property PACKAGE_PIN G13 [get_ports DDR3_D20]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_D20]
#set_property PACKAGE_PIN G12 [get_ports DDR3_D21]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_D21]
#set_property PACKAGE_PIN F14 [get_ports DDR3_D22]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_D22]
#set_property PACKAGE_PIN G14 [get_ports DDR3_D23]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_D23]
#set_property PACKAGE_PIN B14 [get_ports DDR3_D24]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_D24]
#set_property PACKAGE_PIN C13 [get_ports DDR3_D25]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_D25]
#set_property PACKAGE_PIN B16 [get_ports DDR3_D26]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_D26]
#set_property PACKAGE_PIN D15 [get_ports DDR3_D27]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_D27]
#set_property PACKAGE_PIN D13 [get_ports DDR3_D28]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_D28]
#set_property PACKAGE_PIN E12 [get_ports DDR3_D29]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_D29]
#set_property PACKAGE_PIN C16 [get_ports DDR3_D30]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_D30]
#set_property PACKAGE_PIN D16 [get_ports DDR3_D31]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_D31]
#set_property PACKAGE_PIN A24 [get_ports DDR3_D32]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_D32]
#set_property PACKAGE_PIN B23 [get_ports DDR3_D33]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_D33]
#set_property PACKAGE_PIN B27 [get_ports DDR3_D34]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_D34]
#set_property PACKAGE_PIN B26 [get_ports DDR3_D35]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_D35]
#set_property PACKAGE_PIN A22 [get_ports DDR3_D36]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_D36]
#set_property PACKAGE_PIN B22 [get_ports DDR3_D37]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_D37]
#set_property PACKAGE_PIN A25 [get_ports DDR3_D38]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_D38]
#set_property PACKAGE_PIN C24 [get_ports DDR3_D39]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_D39]
#set_property PACKAGE_PIN E24 [get_ports DDR3_D40]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_D40]
#set_property PACKAGE_PIN D23 [get_ports DDR3_D41]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_D41]
#set_property PACKAGE_PIN D26 [get_ports DDR3_D42]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_D42]
#set_property PACKAGE_PIN C25 [get_ports DDR3_D43]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_D43]
#set_property PACKAGE_PIN E23 [get_ports DDR3_D44]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_D44]
#set_property PACKAGE_PIN D22 [get_ports DDR3_D45]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_D45]
#set_property PACKAGE_PIN F22 [get_ports DDR3_D46]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_D46]
#set_property PACKAGE_PIN E22 [get_ports DDR3_D47]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_D47]
#set_property PACKAGE_PIN A30 [get_ports DDR3_D48]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_D48]
#set_property PACKAGE_PIN D27 [get_ports DDR3_D49]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_D49]
#set_property PACKAGE_PIN A29 [get_ports DDR3_D50]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_D50]
#set_property PACKAGE_PIN C28 [get_ports DDR3_D51]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_D51]
#set_property PACKAGE_PIN D28 [get_ports DDR3_D52]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_D52]
#set_property PACKAGE_PIN B31 [get_ports DDR3_D53]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_D53]
#set_property PACKAGE_PIN A31 [get_ports DDR3_D54]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_D54]
#set_property PACKAGE_PIN A32 [get_ports DDR3_D55]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_D55]
#set_property PACKAGE_PIN E30 [get_ports DDR3_D56]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_D56]
#set_property PACKAGE_PIN F29 [get_ports DDR3_D57]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_D57]
#set_property PACKAGE_PIN F30 [get_ports DDR3_D58]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_D58]
#set_property PACKAGE_PIN F27 [get_ports DDR3_D59]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_D59]
#set_property PACKAGE_PIN C30 [get_ports DDR3_D60]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_D60]
#set_property PACKAGE_PIN E29 [get_ports DDR3_D61]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_D61]
#set_property PACKAGE_PIN F26 [get_ports DDR3_D62]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_D62]
#set_property PACKAGE_PIN D30 [get_ports DDR3_D63]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_D63]

#set_property PACKAGE_PIN M13 [get_ports DDR3_DM0]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_DM0]
#set_property PACKAGE_PIN K15 [get_ports DDR3_DM1]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_DM1]
#set_property PACKAGE_PIN F12 [get_ports DDR3_DM2]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_DM2]
#set_property PACKAGE_PIN A14 [get_ports DDR3_DM3]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_DM3]
#set_property PACKAGE_PIN C23 [get_ports DDR3_DM4]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_DM4]
#set_property PACKAGE_PIN D25 [get_ports DDR3_DM5]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_DM5]
#set_property PACKAGE_PIN C31 [get_ports DDR3_DM6]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_DM6]
#set_property PACKAGE_PIN F31 [get_ports DDR3_DM7]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_DM7]

#set_property PACKAGE_PIN N16 [get_ports DDR3_DQS0_P]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_DQS0_P]
#set_property PACKAGE_PIN M16 [get_ports DDR3_DQS0_N]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_DQS0_N]
#set_property PACKAGE_PIN K12 [get_ports DDR3_DQS1_P]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_DQS1_P]
#set_property PACKAGE_PIN J12 [get_ports DDR3_DQS1_N]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_DQS1_N]
#set_property PACKAGE_PIN H16 [get_ports DDR3_DQS2_P]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_DQS2_P]
#set_property PACKAGE_PIN G16 [get_ports DDR3_DQS2_N]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_DQS2_N]
#set_property PACKAGE_PIN C15 [get_ports DDR3_DQS3_P]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_DQS3_P]
#set_property PACKAGE_PIN C14 [get_ports DDR3_DQS3_N]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_DQS3_N]
#set_property PACKAGE_PIN A26 [get_ports DDR3_DQS4_P]
#set_property IOSTANDARD DIFF_SSTL15 [get_ports DDR3_DQS4_P]
#set_property PACKAGE_PIN A27 [get_ports DDR3_DQS4_N]
#set_property IOSTANDARD DIFF_SSTL15 [get_ports DDR3_DQS4_N]
#set_property PACKAGE_PIN F25 [get_ports DDR3_DQS5_P]
#set_property IOSTANDARD DIFF_SSTL15 [get_ports DDR3_DQS5_P]
#set_property PACKAGE_PIN E25 [get_ports DDR3_DQS5_N]
#set_property IOSTANDARD DIFF_SSTL15 [get_ports DDR3_DQS5_N]
#set_property PACKAGE_PIN B28 [get_ports DDR3_DQS6_P]
#set_property IOSTANDARD DIFF_SSTL15 [get_ports DDR3_DQS6_P]
#set_property PACKAGE_PIN B29 [get_ports DDR3_DQS6_N]
#set_property IOSTANDARD DIFF_SSTL15 [get_ports DDR3_DQS6_N]
#set_property PACKAGE_PIN E27 [get_ports DDR3_DQS7_P]
#set_property IOSTANDARD DIFF_SSTL15 [get_ports DDR3_DQS7_P]
#set_property PACKAGE_PIN E28 [get_ports DDR3_DQS7_N]
#set_property IOSTANDARD DIFF_SSTL15 [get_ports DDR3_DQS7_N]

#set_property PACKAGE_PIN H20 [get_ports DDR3_ODT0]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_ODT0]
#set_property PACKAGE_PIN H18 [get_ports DDR3_ODT1]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_ODT1]
#set_property PACKAGE_PIN C29 [get_ports DDR3_RESET_B]
#set_property IOSTANDARD LVCMOS15 [get_ports DDR3_RESET_B]
#set_property PACKAGE_PIN J17 [get_ports DDR3_S0_B]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_S0_B]
#set_property PACKAGE_PIN J20 [get_ports DDR3_S1_B]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_S1_B]
#set_property PACKAGE_PIN G17 [get_ports DDR3_TEMP_EVENT]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_TEMP_EVENT]
#set_property PACKAGE_PIN F20 [get_ports DDR3_WE_B]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_WE_B]
#set_property PACKAGE_PIN K17 [get_ports DDR3_CAS_B]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_CAS_B]
#set_property PACKAGE_PIN E20 [get_ports DDR3_RAS_B]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_RAS_B]
#set_property PACKAGE_PIN K19 [get_ports DDR3_CKE0]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_CKE0]
#set_property PACKAGE_PIN J18 [get_ports DDR3_CKE1]
#set_property IOSTANDARD SSTL15 [get_ports DDR3_CKE1]
#set_property PACKAGE_PIN H19 [get_ports DDR3_CLK0_P]
#set_property IOSTANDARD DIFF_SSTL15 [get_ports DDR3_CLK0_P]
#set_property PACKAGE_PIN G18 [get_ports DDR3_CLK0_N]
#set_property IOSTANDARD DIFF_SSTL15 [get_ports DDR3_CLK0_N]
#set_property PACKAGE_PIN G19 [get_ports DDR3_CLK1_P]
#set_property IOSTANDARD DIFF_SSTL15 [get_ports DDR3_CLK1_P]
#set_property PACKAGE_PIN F19 [get_ports DDR3_CLK1_N]
#set_property IOSTANDARD DIFF_SSTL15 [get_ports DDR3_CLK1_N]

## IDK what this is
#set_property PACKAGE_PIN M17 [get_ports 10N483]
#set_property IOSTANDARD SSTL15 [get_ports 10N483]
#set_property PACKAGE_PIN L17 [get_ports 10N484]
#set_property IOSTANDARD SSTL15 [get_ports 10N484]
#set_property PACKAGE_PIN N19 [get_ports 10N485]
#set_property IOSTANDARD SSTL15 [get_ports 10N485]
#set_property PACKAGE_PIN N18 [get_ports 10N486]
#set_property IOSTANDARD SSTL15 [get_ports 10N486]
#set_property PACKAGE_PIN M19 [get_ports 10N487]
#set_property IOSTANDARD SSTL15 [get_ports 10N487]
#set_property PACKAGE_PIN M18 [get_ports 10N488]
#set_property IOSTANDARD SSTL15 [get_ports 10N488]
#set_property PACKAGE_PIN P20 [get_ports 10N489]
#set_property IOSTANDARD SSTL15 [get_ports 10N489]
#set_property PACKAGE_PIN N20 [get_ports 10N490]
#set_property IOSTANDARD SSTL15 [get_ports 10N490]
#set_property PACKAGE_PIN L20 [get_ports 10N491]
#set_property IOSTANDARD SSTL15 [get_ports 10N491]
#set_property PACKAGE_PIN L19 [get_ports 10N492]
#set_property IOSTANDARD SSTL15 [get_ports 10N492]

## External 0.75V Reference
#set_property PACKAGE_PIN B18 [get_ports VTTVREF]
#set_property IOSTANDARD SSTL15 [get_ports VTTVREF]

## Some DCI VRP/N resistor connection?
#set_property PACKAGE_PIN J11 [get_ports VRP_39]
#set_property IOSTANDARD SSTL15 [get_ports VRP_39]

################################################################################
# Linear BPI Flash Memory
################################################################################

#set_property PACKAGE_PIN AJ28 [get_ports FLASH_A0]
#set_property IOSTANDARD LVCMOS18 [get_ports FLASH_A0]
#set_property PACKAGE_PIN AH28 [get_ports FLASH_A1]
#set_property IOSTANDARD LVCMOS18 [get_ports FLASH_A1]
#set_property PACKAGE_PIN AG31 [get_ports FLASH_A2]
#set_property IOSTANDARD LVCMOS18 [get_ports FLASH_A2]
#set_property PACKAGE_PIN AF30 [get_ports FLASH_A3]
#set_property IOSTANDARD LVCMOS18 [get_ports FLASH_A3]
#set_property PACKAGE_PIN AK29 [get_ports FLASH_A4]
#set_property IOSTANDARD LVCMOS18 [get_ports FLASH_A4]
#set_property PACKAGE_PIN AK28 [get_ports FLASH_A5]
#set_property IOSTANDARD LVCMOS18 [get_ports FLASH_A5]
#set_property PACKAGE_PIN AG29 [get_ports FLASH_A6]
#set_property IOSTANDARD LVCMOS18 [get_ports FLASH_A6]
#set_property PACKAGE_PIN AK30 [get_ports FLASH_A7]
#set_property IOSTANDARD LVCMOS18 [get_ports FLASH_A7]
#set_property PACKAGE_PIN AJ30 [get_ports FLASH_A8]
#set_property IOSTANDARD LVCMOS18 [get_ports FLASH_A8]
#set_property PACKAGE_PIN AH30 [get_ports FLASH_A9]
#set_property IOSTANDARD LVCMOS18 [get_ports FLASH_A9]
#set_property PACKAGE_PIN AH29 [get_ports FLASH_A10]
#set_property IOSTANDARD LVCMOS18 [get_ports FLASH_A10]
#set_property PACKAGE_PIN AL30 [get_ports FLASH_A11]
#set_property IOSTANDARD LVCMOS18 [get_ports FLASH_A11]
#set_property PACKAGE_PIN AL29 [get_ports FLASH_A12]
#set_property IOSTANDARD LVCMOS18 [get_ports FLASH_A12]
#set_property PACKAGE_PIN AN33 [get_ports FLASH_A13]
#set_property IOSTANDARD LVCMOS18 [get_ports FLASH_A13]
#set_property PACKAGE_PIN AM33 [get_ports FLASH_A14]
#set_property IOSTANDARD LVCMOS18 [get_ports FLASH_A14]
#set_property PACKAGE_PIN AM32 [get_ports FLASH_A15]
#set_property IOSTANDARD LVCMOS18 [get_ports FLASH_A15]
#set_property PACKAGE_PIN AV41 [get_ports FLASH_A16]
#set_property IOSTANDARD LVCMOS18 [get_ports FLASH_A16]
#set_property PACKAGE_PIN AU41 [get_ports FLASH_A17]
#set_property IOSTANDARD LVCMOS18 [get_ports FLASH_A17]
#set_property PACKAGE_PIN BA42 [get_ports FLASH_A18]
#set_property IOSTANDARD LVCMOS18 [get_ports FLASH_A18]
#set_property PACKAGE_PIN AU42 [get_ports FLASH_A19]
#set_property IOSTANDARD LVCMOS18 [get_ports FLASH_A19]
#set_property PACKAGE_PIN AT41 [get_ports FLASH_A20]
#set_property IOSTANDARD LVCMOS18 [get_ports FLASH_A20]
#set_property PACKAGE_PIN BA40 [get_ports FLASH_A21]
#set_property IOSTANDARD LVCMOS18 [get_ports FLASH_A21]
#set_property PACKAGE_PIN BA39 [get_ports FLASH_A22]
#set_property IOSTANDARD LVCMOS18 [get_ports FLASH_A22]
#set_property PACKAGE_PIN BB39 [get_ports FLASH_A23]
#set_property IOSTANDARD LVCMOS18 [get_ports FLASH_A23]
#set_property PACKAGE_PIN AW42 [get_ports FLASH_A24]
#set_property IOSTANDARD LVCMOS18 [get_ports FLASH_A24]
#set_property PACKAGE_PIN AW41 [get_ports FLASH_A25]
#set_property IOSTANDARD LVCMOS18 [get_ports FLASH_A25]

#set_property PACKAGE_PIN AM36 [get_ports FLASH_D0]
#set_property IOSTANDARD LVCMOS18 [get_ports FLASH_D0]
#set_property PACKAGE_PIN AN36 [get_ports FLASH_D1]
#set_property IOSTANDARD LVCMOS18 [get_ports FLASH_D1]
#set_property PACKAGE_PIN AJ36 [get_ports FLASH_D2]
#set_property IOSTANDARD LVCMOS18 [get_ports FLASH_D2]
#set_property PACKAGE_PIN AJ37 [get_ports FLASH_D3]
#set_property IOSTANDARD LVCMOS18 [get_ports FLASH_D3]
#set_property PACKAGE_PIN AK37 [get_ports FLASH_D4]
#set_property IOSTANDARD LVCMOS18 [get_ports FLASH_D4]
#set_property PACKAGE_PIN AL37 [get_ports FLASH_D5]
#set_property IOSTANDARD LVCMOS18 [get_ports FLASH_D5]
#set_property PACKAGE_PIN AN35 [get_ports FLASH_D6]
#set_property IOSTANDARD LVCMOS18 [get_ports FLASH_D6]
#set_property PACKAGE_PIN AP35 [get_ports FLASH_D7]
#set_property IOSTANDARD LVCMOS18 [get_ports FLASH_D7]
#set_property PACKAGE_PIN AM37 [get_ports FLASH_D8]
#set_property IOSTANDARD LVCMOS18 [get_ports FLASH_D8]
#set_property PACKAGE_PIN AG33 [get_ports FLASH_D9]
#set_property IOSTANDARD LVCMOS18 [get_ports FLASH_D9]
#set_property PACKAGE_PIN AH33 [get_ports FLASH_D10]
#set_property IOSTANDARD LVCMOS18 [get_ports FLASH_D10]
#set_property PACKAGE_PIN AK35 [get_ports FLASH_D11]
#set_property IOSTANDARD LVCMOS18 [get_ports FLASH_D11]
#set_property PACKAGE_PIN AL35 [get_ports FLASH_D12]
#set_property IOSTANDARD LVCMOS18 [get_ports FLASH_D12]
#set_property PACKAGE_PIN AJ31 [get_ports FLASH_D13]
#set_property IOSTANDARD LVCMOS18 [get_ports FLASH_D13]
#set_property PACKAGE_PIN AH34 [get_ports FLASH_D14]
#set_property IOSTANDARD LVCMOS18 [get_ports FLASH_D14]
#set_property PACKAGE_PIN AJ35 [get_ports FLASH_D15]
#set_property IOSTANDARD LVCMOS18 [get_ports FLASH_D15]

#set_property PACKAGE_PIN AM34 [get_ports FLASH_WAIT]
#set_property IOSTANDARD LVCMOS18 [get_ports FLASH_WAIT]
#set_property PACKAGE_PIN BB41 [get_ports FLASH_FWE_B]
#set_property IOSTANDARD LVCMOS18 [get_ports FLASH_FWE_B]
#set_property PACKAGE_PIN BA41 [get_ports FLASH_OE_B]
#set_property IOSTANDARD LVCMOS18 [get_ports FLASH_OE_B]
#set_property PACKAGE_PIN AP37 [get_ports FPGA_EMCCLK]
#set_property IOSTANDARD LVCMOS18 [get_ports FPGA_EMCCLK]
#set_property PACKAGE_PIN AL36 [get_ports FLASH_CE_B]
#set_property IOSTANDARD LVCMOS18 [get_ports FLASH_CE_B]
#set_property PACKAGE_PIN AY37 [get_ports FLASH_ADV_B]
#set_property IOSTANDARD LVCMOS18 [get_ports FLASH_ADV_B]

################################################################################
# FMC Voltage adjust
################################################################################
# set_property -dict {PACKAGE_PIN AH35 IOSTANDARD LVCMOS18} [get_ports FMC_VADJ_ON_B_LS]

################################################################################
# FMC for something
################################################################################
#set_property -dict {PACKAGE_PIN AL32 IOSTANDARD LVCMOS18} [get_ports FMC_C2M_PG_LS]


################################################################################
# FMC1
################################################################################

#################################################################################
## J1 LA00 - LA19
#################################################################################
#set_property -dict {PACKAGE_PIN K39 IOSTANDARD LVCMOS18} [get_ports FMC1_J1[0]];  # LA00_CC_P
#set_property -dict {PACKAGE_PIN K40 IOSTANDARD LVCMOS18} [get_ports FMC1_J1[1]];  # LA00_CC_N
#set_property -dict {PACKAGE_PIN J40 IOSTANDARD LVCMOS18} [get_ports FMC1_J1[2]];  # LA01_CC_P
#set_property -dict {PACKAGE_PIN J41 IOSTANDARD LVCMOS18} [get_ports FMC1_J1[3]];  # LA01_CC_N
#set_property -dict {PACKAGE_PIN P41 IOSTANDARD LVCMOS18} [get_ports FMC1_J1[4]];  # LA02_P
#set_property -dict {PACKAGE_PIN N41 IOSTANDARD LVCMOS18} [get_ports FMC1_J1[5]];  # LA02_N
#set_property -dict {PACKAGE_PIN M42 IOSTANDARD LVCMOS18} [get_ports FMC1_J1[6]];  # LA03_P
#set_property -dict {PACKAGE_PIN L42 IOSTANDARD LVCMOS18} [get_ports FMC1_J1[7]];  # LA03_N
#set_property -dict {PACKAGE_PIN H40 IOSTANDARD LVCMOS18} [get_ports FMC1_J1[8]];  # LA04_P
#set_property -dict {PACKAGE_PIN H41 IOSTANDARD LVCMOS18} [get_ports FMC1_J1[9]];  # LA04_N
#set_property -dict {PACKAGE_PIN M41 IOSTANDARD LVCMOS18} [get_ports FMC1_J1[10]]; # LA05_P
#set_property -dict {PACKAGE_PIN L41 IOSTANDARD LVCMOS18} [get_ports FMC1_J1[11]]; # LA05_N
#set_property -dict {PACKAGE_PIN K42 IOSTANDARD LVCMOS18} [get_ports FMC1_J1[12]]; # LA06_P
#set_property -dict {PACKAGE_PIN J42 IOSTANDARD LVCMOS18} [get_ports FMC1_J1[13]]; # LA06_N
#set_property -dict {PACKAGE_PIN G41 IOSTANDARD LVCMOS18} [get_ports FMC1_J1[14]]; # LA07_P
#set_property -dict {PACKAGE_PIN G42 IOSTANDARD LVCMOS18} [get_ports FMC1_J1[15]]; # LA07_N
#set_property -dict {PACKAGE_PIN M37 IOSTANDARD LVCMOS18} [get_ports FMC1_J1[16]]; # LA08_P
#set_property -dict {PACKAGE_PIN M38 IOSTANDARD LVCMOS18} [get_ports FMC1_J1[17]]; # LA08_N
#set_property -dict {PACKAGE_PIN R42 IOSTANDARD LVCMOS18} [get_ports FMC1_J1[18]]; # LA09_P
#set_property -dict {PACKAGE_PIN P42 IOSTANDARD LVCMOS18} [get_ports FMC1_J1[19]]; # LA09_N
#set_property -dict {PACKAGE_PIN N38 IOSTANDARD LVCMOS18} [get_ports FMC1_J1[20]]; # LA10_P
#set_property -dict {PACKAGE_PIN M39 IOSTANDARD LVCMOS18} [get_ports FMC1_J1[21]]; # LA10_N
#set_property -dict {PACKAGE_PIN F40 IOSTANDARD LVCMOS18} [get_ports FMC1_J1[22]]; # LA11_P
#set_property -dict {PACKAGE_PIN F41 IOSTANDARD LVCMOS18} [get_ports FMC1_J1[23]]; # LA11_N
#set_property -dict {PACKAGE_PIN R40 IOSTANDARD LVCMOS18} [get_ports FMC1_J1[24]]; # LA12_P
#set_property -dict {PACKAGE_PIN P40 IOSTANDARD LVCMOS18} [get_ports FMC1_J1[25]]; # LA12_N
#set_property -dict {PACKAGE_PIN H39 IOSTANDARD LVCMOS18} [get_ports FMC1_J1[26]]; # LA13_P
#set_property -dict {PACKAGE_PIN G39 IOSTANDARD LVCMOS18} [get_ports FMC1_J1[27]]; # LA13_N
#set_property -dict {PACKAGE_PIN N39 IOSTANDARD LVCMOS18} [get_ports FMC1_J1[28]]; # LA14_P
#set_property -dict {PACKAGE_PIN N40 IOSTANDARD LVCMOS18} [get_ports FMC1_J1[29]]; # LA14_N
#set_property -dict {PACKAGE_PIN M36 IOSTANDARD LVCMOS18} [get_ports FMC1_J1[30]]; # LA15_P
#set_property -dict {PACKAGE_PIN L37 IOSTANDARD LVCMOS18} [get_ports FMC1_J1[31]]; # LA15_N
#set_property -dict {PACKAGE_PIN K37 IOSTANDARD LVCMOS18} [get_ports FMC1_J1[32]]; # LA16_P
#set_property -dict {PACKAGE_PIN K38 IOSTANDARD LVCMOS18} [get_ports FMC1_J1[33]]; # LA16_N
#set_property -dict {PACKAGE_PIN L31 IOSTANDARD LVCMOS18} [get_ports FMC1_J1[34]]; # LA17_CC_P
#set_property -dict {PACKAGE_PIN K32 IOSTANDARD LVCMOS18} [get_ports FMC1_J1[35]]; # LA17_CC_N
#set_property -dict {PACKAGE_PIN M32 IOSTANDARD LVCMOS18} [get_ports FMC1_J1[36]]; # LA18_CC_P
#set_property -dict {PACKAGE_PIN L32 IOSTANDARD LVCMOS18} [get_ports FMC1_J1[37]]; # LA18_CC_N
#set_property -dict {PACKAGE_PIN W30 IOSTANDARD LVCMOS18} [get_ports FMC1_J1[38]]; # LA19_P
#set_property -dict {PACKAGE_PIN W31 IOSTANDARD LVCMOS18} [get_ports FMC1_J1[39]]; # LA19_N

#################################################################################
## J2 HB00 - HB19
#################################################################################
#set_property -dict {PACKAGE_PIN J25 IOSTANDARD LVCMOS18} [get_ports FMC1_J2[0]];  # HB00_CC_P
#set_property -dict {PACKAGE_PIN J26 IOSTANDARD LVCMOS18} [get_ports FMC1_J2[1]];  # HB00_CC_N
#set_property -dict {PACKAGE_PIN H28 IOSTANDARD LVCMOS18} [get_ports FMC1_J2[2]];  # HB01_P
#set_property -dict {PACKAGE_PIN H29 IOSTANDARD LVCMOS18} [get_ports FMC1_J2[3]];  # HB01_N
#set_property -dict {PACKAGE_PIN K28 IOSTANDARD LVCMOS18} [get_ports FMC1_J2[4]];  # HB02_P
#set_property -dict {PACKAGE_PIN J28 IOSTANDARD LVCMOS18} [get_ports FMC1_J2[5]];  # HB02_N
#set_property -dict {PACKAGE_PIN G28 IOSTANDARD LVCMOS18} [get_ports FMC1_J2[6]];  # HB03_P
#set_property -dict {PACKAGE_PIN G29 IOSTANDARD LVCMOS18} [get_ports FMC1_J2[7]];  # HB03_N
#set_property -dict {PACKAGE_PIN H24 IOSTANDARD LVCMOS18} [get_ports FMC1_J2[8]];  # HB04_P
#set_property -dict {PACKAGE_PIN G24 IOSTANDARD LVCMOS18} [get_ports FMC1_J2[9]];  # HB04_N
#set_property -dict {PACKAGE_PIN K27 IOSTANDARD LVCMOS18} [get_ports FMC1_J2[10]]; # HB05_P
#set_property -dict {PACKAGE_PIN J27 IOSTANDARD LVCMOS18} [get_ports FMC1_J2[11]]; # HB05_N
#set_property -dict {PACKAGE_PIN K23 IOSTANDARD LVCMOS18} [get_ports FMC1_J2[12]]; # HB06_CC_P
#set_property -dict {PACKAGE_PIN J23 IOSTANDARD LVCMOS18} [get_ports FMC1_J2[13]]; # HB06_CC_N
#set_property -dict {PACKAGE_PIN G26 IOSTANDARD LVCMOS18} [get_ports FMC1_J2[14]]; # HB07_P
#set_property -dict {PACKAGE_PIN G27 IOSTANDARD LVCMOS18} [get_ports FMC1_J2[15]]; # HB07_N
#set_property -dict {PACKAGE_PIN H25 IOSTANDARD LVCMOS18} [get_ports FMC1_J2[16]]; # HB08_P
#set_property -dict {PACKAGE_PIN H26 IOSTANDARD LVCMOS18} [get_ports FMC1_J2[17]]; # HB08_N
#set_property -dict {PACKAGE_PIN H23 IOSTANDARD LVCMOS18} [get_ports FMC1_J2[18]]; # HB09_P
#set_property -dict {PACKAGE_PIN G23 IOSTANDARD LVCMOS18} [get_ports FMC1_J2[19]]; # HB09_N
#set_property -dict {PACKAGE_PIN M22 IOSTANDARD LVCMOS18} [get_ports FMC1_J2[20]]; # HB10_P
#set_property -dict {PACKAGE_PIN L22 IOSTANDARD LVCMOS18} [get_ports FMC1_J2[21]]; # HB10_N
#set_property -dict {PACKAGE_PIN K22 IOSTANDARD LVCMOS18} [get_ports FMC1_J2[22]]; # HB11_P
#set_property -dict {PACKAGE_PIN J22 IOSTANDARD LVCMOS18} [get_ports FMC1_J2[23]]; # HB11_N
#set_property -dict {PACKAGE_PIN K24 IOSTANDARD LVCMOS18} [get_ports FMC1_J2[24]]; # HB12_P
#set_property -dict {PACKAGE_PIN K25 IOSTANDARD LVCMOS18} [get_ports FMC1_J2[25]]; # HB12_N
#set_property -dict {PACKAGE_PIN P25 IOSTANDARD LVCMOS18} [get_ports FMC1_J2[26]]; # HB13_P
#set_property -dict {PACKAGE_PIN P26 IOSTANDARD LVCMOS18} [get_ports FMC1_J2[27]]; # HB13_N
#set_property -dict {PACKAGE_PIN J21 IOSTANDARD LVCMOS18} [get_ports FMC1_J2[28]]; # HB14_P
#set_property -dict {PACKAGE_PIN H21 IOSTANDARD LVCMOS18} [get_ports FMC1_J2[29]]; # HB14_N
#set_property -dict {PACKAGE_PIN M21 IOSTANDARD LVCMOS18} [get_ports FMC1_J2[30]]; # HB15_P
#set_property -dict {PACKAGE_PIN L21 IOSTANDARD LVCMOS18} [get_ports FMC1_J2[31]]; # HB15_N
#set_property -dict {PACKAGE_PIN N25 IOSTANDARD LVCMOS18} [get_ports FMC1_J2[32]]; # HB16_P
#set_property -dict {PACKAGE_PIN N26 IOSTANDARD LVCMOS18} [get_ports FMC1_J2[33]]; # HB16_N
#set_property -dict {PACKAGE_PIN M24 IOSTANDARD LVCMOS18} [get_ports FMC1_J2[34]]; # HB17_CC_P
#set_property -dict {PACKAGE_PIN L24 IOSTANDARD LVCMOS18} [get_ports FMC1_J2[35]]; # HB17_CC_N
#set_property -dict {PACKAGE_PIN G21 IOSTANDARD LVCMOS18} [get_ports FMC1_J2[36]]; # HB18_P
#set_property -dict {PACKAGE_PIN G22 IOSTANDARD LVCMOS18} [get_ports FMC1_J2[37]]; # HB18_N
#set_property -dict {PACKAGE_PIN L25 IOSTANDARD LVCMOS18} [get_ports FMC1_J2[38]]; # HB19_P
#set_property -dict {PACKAGE_PIN L26 IOSTANDARD LVCMOS18} [get_ports FMC1_J2[39]]; # HB19_N

#################################################################################
## J3 HA00 - HA19
#################################################################################
#set_property -dict {PACKAGE_PIN E34 IOSTANDARD LVCMOS18} [get_ports FMC1_J3[0]];  # HA00_CC _P 
#set_property -dict {PACKAGE_PIN E35 IOSTANDARD LVCMOS18} [get_ports FMC1_J3[1]];  # HA00_CC _N
#set_property -dict {PACKAGE_PIN D35 IOSTANDARD LVCMOS18} [get_ports FMC1_J3[2]];  # HA01_CC _P
#set_property -dict {PACKAGE_PIN D36 IOSTANDARD LVCMOS18} [get_ports FMC1_J3[3]];  # HA01_CC _N
#set_property -dict {PACKAGE_PIN E33 IOSTANDARD LVCMOS18} [get_ports FMC1_J3[4]];  # HA02_P
#set_property -dict {PACKAGE_PIN D33 IOSTANDARD LVCMOS18} [get_ports FMC1_J3[5]];  # HA02_N
#set_property -dict {PACKAGE_PIN H33 IOSTANDARD LVCMOS18} [get_ports FMC1_J3[6]];  # HA03_P
#set_property -dict {PACKAGE_PIN G33 IOSTANDARD LVCMOS18} [get_ports FMC1_J3[7]];  # HA03_N
#set_property -dict {PACKAGE_PIN F34 IOSTANDARD LVCMOS18} [get_ports FMC1_J3[8]];  # HA04_P
#set_property -dict {PACKAGE_PIN F35 IOSTANDARD LVCMOS18} [get_ports FMC1_J3[9]];  # HA04_N
#set_property -dict {PACKAGE_PIN G32 IOSTANDARD LVCMOS18} [get_ports FMC1_J3[10]]; # HA05_P
#set_property -dict {PACKAGE_PIN F32 IOSTANDARD LVCMOS18} [get_ports FMC1_J3[11]]; # HA05_N
#set_property -dict {PACKAGE_PIN G36 IOSTANDARD LVCMOS18} [get_ports FMC1_J3[12]]; # HA06_P
#set_property -dict {PACKAGE_PIN G37 IOSTANDARD LVCMOS18} [get_ports FMC1_J3[13]]; # HA06_N
#set_property -dict {PACKAGE_PIN C38 IOSTANDARD LVCMOS18} [get_ports FMC1_J3[14]]; # HA07_P
#set_property -dict {PACKAGE_PIN C39 IOSTANDARD LVCMOS18} [get_ports FMC1_J3[15]]; # HA07_N
#set_property -dict {PACKAGE_PIN J36 IOSTANDARD LVCMOS18} [get_ports FMC1_J3[16]]; # HA08_P
#set_property -dict {PACKAGE_PIN H36 IOSTANDARD LVCMOS18} [get_ports FMC1_J3[17]]; # HA08_N
#set_property -dict {PACKAGE_PIN E32 IOSTANDARD LVCMOS18} [get_ports FMC1_J3[18]]; # HA09_P
#set_property -dict {PACKAGE_PIN D32 IOSTANDARD LVCMOS18} [get_ports FMC1_J3[19]]; # HA09_N
#set_property -dict {PACKAGE_PIN H38 IOSTANDARD LVCMOS18} [get_ports FMC1_J3[20]]; # HA10_P
#set_property -dict {PACKAGE_PIN G38 IOSTANDARD LVCMOS18} [get_ports FMC1_J3[21]]; # HA10_N
#set_property -dict {PACKAGE_PIN J37 IOSTANDARD LVCMOS18} [get_ports FMC1_J3[22]]; # HA11_P
#set_property -dict {PACKAGE_PIN J38 IOSTANDARD LVCMOS18} [get_ports FMC1_J3[23]]; # HA11_N
#set_property -dict {PACKAGE_PIN B37 IOSTANDARD LVCMOS18} [get_ports FMC1_J3[24]]; # HA12_P
#set_property -dict {PACKAGE_PIN B38 IOSTANDARD LVCMOS18} [get_ports FMC1_J3[25]]; # HA12_N
#set_property -dict {PACKAGE_PIN B36 IOSTANDARD LVCMOS18} [get_ports FMC1_J3[26]]; # HA13_P
#set_property -dict {PACKAGE_PIN A37 IOSTANDARD LVCMOS18} [get_ports FMC1_J3[27]]; # HA13_N
#set_property -dict {PACKAGE_PIN E37 IOSTANDARD LVCMOS18} [get_ports FMC1_J3[28]]; # HA14_P
#set_property -dict {PACKAGE_PIN E38 IOSTANDARD LVCMOS18} [get_ports FMC1_J3[29]]; # HA14_N
#set_property -dict {PACKAGE_PIN C33 IOSTANDARD LVCMOS18} [get_ports FMC1_J3[30]]; # HA15_P
#set_property -dict {PACKAGE_PIN C34 IOSTANDARD LVCMOS18} [get_ports FMC1_J3[31]]; # HA15_N
#set_property -dict {PACKAGE_PIN B39 IOSTANDARD LVCMOS18} [get_ports FMC1_J3[32]]; # HA16_P
#set_property -dict {PACKAGE_PIN A39 IOSTANDARD LVCMOS18} [get_ports FMC1_J3[33]]; # HA16_N
#set_property -dict {PACKAGE_PIN C35 IOSTANDARD LVCMOS18} [get_ports FMC1_J3[34]]; # HA17_CC _P
#set_property -dict {PACKAGE_PIN C36 IOSTANDARD LVCMOS18} [get_ports FMC1_J3[35]]; # HA17_CC _N
#set_property -dict {PACKAGE_PIN F39 IOSTANDARD LVCMOS18} [get_ports FMC1_J3[36]]; # HA18_P
#set_property -dict {PACKAGE_PIN E39 IOSTANDARD LVCMOS18} [get_ports FMC1_J3[37]]; # HA18_N
#set_property -dict {PACKAGE_PIN B32 IOSTANDARD LVCMOS18} [get_ports FMC1_J3[38]]; # HA19_P
#set_property -dict {PACKAGE_PIN B33 IOSTANDARD LVCMOS18} [get_ports FMC1_J3[39]]; # HA19_N

#################################################################################
## J5 FMC-JTAG
#################################################################################
# set_property -dict {PACKAGE_PIN IOSTANDARD LVCMOS18} [get_ports ];  # 3.3 
# set_property -dict {PACKAGE_PIN IOSTANDARD LVCMOS18} [get_ports ];  # GND
# set_property -dict {PACKAGE_PIN IOSTANDARD LVCMOS18} [get_ports ];  # No connection
# set_property -dict {PACKAGE_PIN IOSTANDARD LVCMOS18} [get_ports FMC1_TCK]; # 
# set_property -dict {PACKAGE_PIN IOSTANDARD LVCMOS18} [get_ports ];  # No connection
# set_property -dict {PACKAGE_PIN IOSTANDARD LVCMOS18} [get_ports FMC1_TDO]; # 
# set_property -dict {PACKAGE_PIN IOSTANDARD LVCMOS18} [get_ports FMC1_TDI]; # 
# set_property -dict {PACKAGE_PIN IOSTANDARD LVCMOS18} [get_ports ];  # No connection
# set_property -dict {PACKAGE_PIN IOSTANDARD LVCMOS18} [get_ports FMC1_TMS]; # 

#################################################################################
## J15 - User leds
#################################################################################
#set_property -dict {PACKAGE_PIN IOSTANDARD LVCMOS18} [get_ports ] # VADJ (2.5)
#set_property -dict {PACKAGE_PIN IOSTANDARD LVCMOS18} [get_ports ] # Ground
#set_property -dict {PACKAGE_PIN V29 IOSTANDARD LVCMOS18} [get_ports FMC1_J15[0]];  # LA32_P
#set_property -dict {PACKAGE_PIN U29 IOSTANDARD LVCMOS18} [get_ports {FMC1_J15[1]}];  # LA32_N
#set_property -dict {PACKAGE_PIN U31 IOSTANDARD LVCMOS18} [get_ports {FMC1_J15[2]}];  # LA33_P
#set_property -dict {PACKAGE_PIN T31 IOSTANDARD LVCMOS18} [get_ports {FMC1_J15[3]}];  # LA33_N

#################################################################################
## J16 PMOD LA28 - LA31
#################################################################################
# Set 3.3V                      Set 2.5V
#   - Connect J6.1 to J6.3        - Connect J6.3 to J6.5
#   - Connect J6.2 to J6.4        - Connect J6.4 to J6.6

#set_property -dict {PACKAGE_PIN IOSTANDARD LVCMOS18} [get_ports ] # Power (Set by J6)
#set_property -dict {PACKAGE_PIN IOSTANDARD LVCMOS18} [get_ports ] # Ground
#set_property -dict {PACKAGE_PIN L29 IOSTANDARD LVCMOS18} [get_ports {FMC1_J16[0]}];  # LA28_P
#set_property -dict {PACKAGE_PIN L30 IOSTANDARD LVCMOS18} [get_ports {FMC1_J16[1]}];  # LA28_N
#set_property -dict {PACKAGE_PIN T29 IOSTANDARD LVCMOS18} [get_ports {FMC1_J16[2]}];  # LA29_P
#set_property -dict {PACKAGE_PIN T30 IOSTANDARD LVCMOS18} [get_ports {FMC1_J16[3]}];  # LA29_N
#set_property -dict {PACKAGE_PIN IOSTANDARD LVCMOS18} [get_ports ]  # Power (Set by J6)
#set_property -dict {PACKAGE_PIN IOSTANDARD LVCMOS18} [get_ports ]  # Ground
#set_property -dict {PACKAGE_PIN V30 IOSTANDARD LVCMOS18} [get_ports {FMC1_J16[4]}];  # LA30_P
#set_property -dict {PACKAGE_PIN V31 IOSTANDARD LVCMOS18} [get_ports {FMC1_J16[5]}];  # LA30_N
#set_property -dict {PACKAGE_PIN M28 IOSTANDARD LVCMOS18} [get_ports {FMC1_J16[6]}];  # LA31_P
#set_property -dict {PACKAGE_PIN M29 IOSTANDARD LVCMOS18} [get_ports {FMC1_J16[7]}];  # LA31_N

#################################################################################
## J18 (Setting for FMC PG_M2C
#################################################################################

#################################################################################
## J19 (Do not connect with FMC - used by Mictor P1
#################################################################################

# 3.3
# GND
#               No connection
# MICTOR_TCK
#               No connection
# MICTOR_TDO
# MICTOR_TDI
#               No connection
# MICTOR_TMS

#################################################################################
## J20 LA20 - LA27
#################################################################################
#set_property -dict {PACKAGE_PIN Y29 IOSTANDARD LVCMOS18} [get_ports FMC1_J20[0]];  # LA20_P
#set_property -dict {PACKAGE_PIN Y30 IOSTANDARD LVCMOS18} [get_ports FMC1_J20[1]];  # LA20_N
#set_property -dict {PACKAGE_PIN N28 IOSTANDARD LVCMOS18} [get_ports FMC1_J20[2]];  # LA21_P
#set_property -dict {PACKAGE_PIN N29 IOSTANDARD LVCMOS18} [get_ports FMC1_J20[3]];  # LA21_N
#set_property -dict {PACKAGE_PIN R28 IOSTANDARD LVCMOS18} [get_ports FMC1_J20[4]];  # LA22_P
#set_property -dict {PACKAGE_PIN P28 IOSTANDARD LVCMOS18} [get_ports FMC1_J20[5]];  # LA22_N
#set_property -dict {PACKAGE_PIN P30 IOSTANDARD LVCMOS18} [get_ports FMC1_J20[6]];  # LA23_P
#set_property -dict {PACKAGE_PIN N31 IOSTANDARD LVCMOS18} [get_ports FMC1_J20[7]];  # LA23_N
#set_property -dict {PACKAGE_PIN R30 IOSTANDARD LVCMOS18} [get_ports FMC1_J20[8]];  # LA24_P
#set_property -dict {PACKAGE_PIN P31 IOSTANDARD LVCMOS18} [get_ports FMC1_J20[9]];  # LA24_N
#set_property -dict {PACKAGE_PIN K29 IOSTANDARD LVCMOS18} [get_ports FMC1_J20[10]]; # LA25_P
#set_property -dict {PACKAGE_PIN K30 IOSTANDARD LVCMOS18} [get_ports FMC1_J20[11]]; # LA25_N
#set_property -dict {PACKAGE_PIN J30 IOSTANDARD LVCMOS18} [get_ports FMC1_J20[12]]; # LA26_P
#set_property -dict {PACKAGE_PIN H30 IOSTANDARD LVCMOS18} [get_ports FMC1_J20[13]]; # LA26_N
#set_property -dict {PACKAGE_PIN J31 IOSTANDARD LVCMOS18} [get_ports FMC1_J20[14]]; # LA27_P
#set_property -dict {PACKAGE_PIN H31 IOSTANDARD LVCMOS18} [get_ports FMC1_J20[15]]; # LA27_N
#set_property -dict {PACKAGE_PIN E19 IOSTANDARD LVDS} [get_ports SYSCLK_P];
#set_property -dict {PACKAGE_PIN E18 IOSTANDARD LVDS} [get_ports SYSCLK_N];
#create_clock -period 5.000 -name sys_clk_pin -waveform {0.000 2.500} -add [get_ports SYSCLK_P];
#create_clock -period 5.000 -name sys_clk_pin -waveform {0.000 2.500} -add [get_ports SYSCLK_N];
#################################################################################
## J23
#################################################################################
#set_property -dict {PACKAGE_PIN P21 IOSTANDARD LVCMOS18} [get_ports FMC1_J23[0]];  # HB20_P  
#set_property -dict {PACKAGE_PIN N21 IOSTANDARD LVCMOS18} [get_ports FMC1_J23[1]];  # HB20_N
#set_property -dict {PACKAGE_PIN B34 IOSTANDARD LVCMOS18} [get_ports FMC1_J23[2]];  # HA20_P
#set_property -dict {PACKAGE_PIN A34 IOSTANDARD LVCMOS18} [get_ports FMC1_J23[3]];  # HA20_N
#set_property -dict {PACKAGE_PIN D37 IOSTANDARD LVCMOS18} [get_ports FMC1_J23[4]];  # HA21_P
#set_property -dict {PACKAGE_PIN D38 IOSTANDARD LVCMOS18} [get_ports FMC1_J23[5]];  # HA21_N
#set_property -dict {PACKAGE_PIN P22 IOSTANDARD LVCMOS18} [get_ports FMC1_J23[6]];  # HB21_P
#set_property -dict {PACKAGE_PIN P23 IOSTANDARD LVCMOS18} [get_ports FMC1_J23[7]];  # HB21_N
#set_property -dict {PACKAGE_PIN F36 IOSTANDARD LVCMOS18} [get_ports FMC1_J23[8]];  # HA22_P
#set_property -dict {PACKAGE_PIN F37 IOSTANDARD LVCMOS18} [get_ports FMC1_J23[9]];  # HA22_N
#set_property -dict {PACKAGE_PIN A35 IOSTANDARD LVCMOS18} [get_ports FMC1_J23[10]]; # HA23_P
#set_property -dict {PACKAGE_PIN A36 IOSTANDARD LVCMOS18} [get_ports FMC1_J23[11]]; # HA23_N

#################################################################################
## P1
#################################################################################
##set_property -dict {PACKAGE_PIN IOSTANDARD LVCMOS18} [get_ports ];          # No connection
##set_property -dict {PACKAGE_PIN IOSTANDARD LVCMOS18} [get_ports ];          # No connection
##set_property -dict {PACKAGE_PIN IOSTANDARD LVCMOS18} [get_ports ];          # No connection
##set_property -dict {PACKAGE_PIN IOSTANDARD LVCMOS18} [get_ports ];          # No connection
##set_property -dict {PACKAGE_PIN IOSTANDARD LVCMOS18} [get_ports ];          # No connection
#set_property -dict {PACKAGE_PIN IOSTANDARD LVCMOS18} [get_ports FMC1_MICTOR_TDO]  
##set_property -dict {PACKAGE_PIN IOSTANDARD LVCMOS18} [get_ports ];          # No connection
#set_property -dict {PACKAGE_PIN IOSTANDARD LVCMOS18} [get_ports FMC1_MICTOR_TCK];  
#set_property -dict {PACKAGE_PIN IOSTANDARD LVCMOS18} [get_ports FMC1_MICTOR_TMS];  
#set_property -dict {PACKAGE_PIN IOSTANDARD LVCMOS18} [get_ports FMC1_MICTOR_TDI];  
##set_property -dict {PACKAGE_PIN IOSTANDARD LVCMOS18} [get_ports ];          # No connection
#set_property -dict {PACKAGE_PIN M38 IOSTANDARD LVCMOS18} [get_ports FMC1_MICTOR[0]];  # LA08_N
#set_property -dict {PACKAGE_PIN M37 IOSTANDARD LVCMOS18} [get_ports FMC1_MICTOR[1]];  # LA08_P
#set_property -dict {PACKAGE_PIN G42 IOSTANDARD LVCMOS18} [get_ports FMC1_MICTOR[2]];  # LA07_N
#set_property -dict {PACKAGE_PIN G41 IOSTANDARD LVCMOS18} [get_ports FMC1_MICTOR[3]];  # LA07_P
#set_property -dict {PACKAGE_PIN J42 IOSTANDARD LVCMOS18} [get_ports FMC1_MICTOR[4]];  # LA06_N
#set_property -dict {PACKAGE_PIN K42 IOSTANDARD LVCMOS18} [get_ports FMC1_MICTOR[5]];  # LA06_P
#set_property -dict {PACKAGE_PIN L41 IOSTANDARD LVCMOS18} [get_ports FMC1_MICTOR[6]];  # LA05_N
#set_property -dict {PACKAGE_PIN M41 IOSTANDARD LVCMOS18} [get_ports FMC1_MICTOR[7]];  # LA05_P
##set_property -dict {PACKAGE_PIN IOSTANDARD LVCMOS18} [get_ports ]          # No connection
##set_property -dict {PACKAGE_PIN IOSTANDARD LVCMOS18} [get_ports ]          # No connection
#set_property -dict {PACKAGE_PIN K39 IOSTANDARD LVCMOS18} [get_ports FMC1_MICTOR[8]]  # LA00_CC _P
##set_property -dict {PACKAGE_PIN IOSTANDARD LVCMOS18} [get_ports ]          # No connection
##set_property -dict {PACKAGE_PIN IOSTANDARD LVCMOS18} [get_ports ]          # No connection
##set_property -dict {PACKAGE_PIN IOSTANDARD LVCMOS18} [get_ports ]          # VADJ (2.5)
##set_property -dict {PACKAGE_PIN IOSTANDARD LVCMOS18} [get_ports ]          # No connection
#set_property -dict {PACKAGE_PIN J41 IOSTANDARD LVCMOS18} [get_ports FMC1_MICTOR[9]];  # LA01_CC _N
#set_property -dict {PACKAGE_PIN J40 IOSTANDARD LVCMOS18} [get_ports FMC1_MICTOR[10]]; # LA01_CC _P
#set_property -dict {PACKAGE_PIN P42 IOSTANDARD LVCMOS18} [get_ports FMC1_MICTOR[11]]; # LA09_N
#set_property -dict {PACKAGE_PIN R42 IOSTANDARD LVCMOS18} [get_ports FMC1_MICTOR[12]]; # LA09_P
#set_property -dict {PACKAGE_PIN H41 IOSTANDARD LVCMOS18} [get_ports FMC1_MICTOR[13]]; # LA04_N
#set_property -dict {PACKAGE_PIN H40 IOSTANDARD LVCMOS18} [get_ports FMC1_MICTOR[14]]; # LA04_P
#set_property -dict {PACKAGE_PIN L42 IOSTANDARD LVCMOS18} [get_ports FMC1_MICTOR[15]]; # LA03_N
#set_property -dict {PACKAGE_PIN M42 IOSTANDARD LVCMOS18} [get_ports FMC1_MICTOR[16]]; # LA03_P
#set_property -dict {PACKAGE_PIN N41 IOSTANDARD LVCMOS18} [get_ports FMC1_MICTOR[17]]; # LA02_N
#set_property -dict {PACKAGE_PIN P41 IOSTANDARD LVCMOS18} [get_ports FMC1_MICTOR[18]]; # LA02_P
#set_property -dict {PACKAGE_PIN M39 IOSTANDARD LVCMOS18} [get_ports FMC1_MICTOR[19]]; # LA10_N
#set_property -dict {PACKAGE_PIN N38 IOSTANDARD LVCMOS18} [get_ports FMC1_MICTOR[20]]; # LA10_P
 
#################################################################################
## Clocks
#################################################################################
# Si570 IIC LVDS clock (10-810 MHz default: 156.250)
#set_property -dict {PACKAGE_PIN L39 IOSTANDARD LVCMOS18} [get_ports FMC1_Si570[0]];  # CLK0_M2C_P
#set_property -dict {PACKAGE_PIN L40 IOSTANDARD LVCMOS18} [get_ports FMC1_Si570[1]];  # CLK0_M2C_N
#set_property -dict {PACKAGE_PIN IOSTANDARD LVCMOS18} [get_ports FMC1_Si570_SCL]; #
#set_property -dict {PACKAGE_PIN IOSTANDARD LVCMOS18} [get_ports FMC1_Si570_SDA]; # 
#set_property -dict {PACKAGE_PIN N30 IOSTANDARD LVCMOS18} [get_ports FMC1_SMA[0]];    # CLK1_M2C_P
#set_property -dict {PACKAGE_PIN M31 IOSTANDARD LVCMOS18} [get_ports FMC1_SMA[1]];    # CLK1_M2C_N


#################################################################################
## EEPROM
#################################################################################

################################################################################
# FMC2
################################################################################

#################################################################################
## J1 LA00 - LA19
#################################################################################
#set_property -dict {PACKAGE_PIN AD40 IOSTANDARD LVCMOS18} [get_ports FMC2_J1[0]];  # LA00_CC_P
#set_property -dict {PACKAGE_PIN AD41 IOSTANDARD LVCMOS18} [get_ports FMC2_J1[1]];  # LA00_CC_N
#set_property -dict {PACKAGE_PIN AF41 IOSTANDARD LVCMOS18} [get_ports FMC2_J1[2]];  # LA01_CC_P
#set_property -dict {PACKAGE_PIN AG41 IOSTANDARD LVCMOS18} [get_ports FMC2_J1[3]];  # LA01_CC_N
#set_property -dict {PACKAGE_PIN AK39 IOSTANDARD LVCMOS18} [get_ports FMC2_J1[4]];  # LA02_P
#set_property -dict {PACKAGE_PIN AL39 IOSTANDARD LVCMOS18} [get_ports FMC2_J1[5]];  # LA02_N
#set_property -dict {PACKAGE_PIN AJ42 IOSTANDARD LVCMOS18} [get_ports FMC2_J1[6]];  # LA03_P
#set_property -dict {PACKAGE_PIN AK42 IOSTANDARD LVCMOS18} [get_ports FMC2_J1[7]];  # LA03_N
#set_property -dict {PACKAGE_PIN AL41 IOSTANDARD LVCMOS18} [get_ports FMC2_J1[8]];  # LA04_P
#set_property -dict {PACKAGE_PIN AL42 IOSTANDARD LVCMOS18} [get_ports FMC2_J1[9]];  # LA04_N
#set_property -dict {PACKAGE_PIN AF42 IOSTANDARD LVCMOS18} [get_ports FMC2_J1[10]]; # LA05_P
#set_property -dict {PACKAGE_PIN AG42 IOSTANDARD LVCMOS18} [get_ports FMC2_J1[11]]; # LA05_N
#set_property -dict {PACKAGE_PIN AD38 IOSTANDARD LVCMOS18} [get_ports FMC2_J1[12]]; # LA06_P
#set_property -dict {PACKAGE_PIN AE38 IOSTANDARD LVCMOS18} [get_ports FMC2_J1[13]]; # LA06_N
#set_property -dict {PACKAGE_PIN AC40 IOSTANDARD LVCMOS18} [get_ports FMC2_J1[14]]; # LA07_P
#set_property -dict {PACKAGE_PIN AC41 IOSTANDARD LVCMOS18} [get_ports FMC2_J1[15]]; # LA07_N
#set_property -dict {PACKAGE_PIN AD42 IOSTANDARD LVCMOS18} [get_ports FMC2_J1[16]]; # LA08_P
#set_property -dict {PACKAGE_PIN AE42 IOSTANDARD LVCMOS18} [get_ports FMC2_J1[17]]; # LA08_N
#set_property -dict {PACKAGE_PIN AJ38 IOSTANDARD LVCMOS18} [get_ports FMC2_J1[18]]; # LA09_P
#set_property -dict {PACKAGE_PIN AK38 IOSTANDARD LVCMOS18} [get_ports FMC2_J1[19]]; # LA09_N
#set_property -dict {PACKAGE_PIN AB41 IOSTANDARD LVCMOS18} [get_ports FMC2_J1[20]]; # LA10_P
#set_property -dict {PACKAGE_PIN AB42 IOSTANDARD LVCMOS18} [get_ports FMC2_J1[21]]; # LA10_N
#set_property -dict {PACKAGE_PIN Y42 IOSTANDARD LVCMOS18} [get_ports FMC2_J1[22]]; # LA11_P
#set_property -dict {PACKAGE_PIN AA42 IOSTANDARD LVCMOS18} [get_ports FMC2_J1[23]]; # LA11_N
#set_property -dict {PACKAGE_PIN Y39 IOSTANDARD LVCMOS18} [get_ports FMC2_J1[24]]; # LA12_P
#set_property -dict {PACKAGE_PIN AA39 IOSTANDARD LVCMOS18} [get_ports FMC2_J1[25]]; # LA12_N
#set_property -dict {PACKAGE_PIN W40 IOSTANDARD LVCMOS18} [get_ports FMC2_J1[26]]; # LA13_P
#set_property -dict {PACKAGE_PIN Y40 IOSTANDARD LVCMOS18} [get_ports FMC2_J1[27]]; # LA13_N
#set_property -dict {PACKAGE_PIN AB38 IOSTANDARD LVCMOS18} [get_ports FMC2_J1[28]]; # LA14_P
#set_property -dict {PACKAGE_PIN AB39 IOSTANDARD LVCMOS18} [get_ports FMC2_J1[29]]; # LA14_N
#set_property -dict {PACKAGE_PIN AC38 IOSTANDARD LVCMOS18} [get_ports FMC2_J1[30]]; # LA15_P
#set_property -dict {PACKAGE_PIN AC39 IOSTANDARD LVCMOS18} [get_ports FMC2_J1[31]]; # LA15_N
#set_property -dict {PACKAGE_PIN AJ40 IOSTANDARD LVCMOS18} [get_ports FMC2_J1[32]]; # LA16_P
#set_property -dict {PACKAGE_PIN AJ41 IOSTANDARD LVCMOS18} [get_ports FMC2_J1[33]]; # LA16_N
#set_property -dict {PACKAGE_PIN U37 IOSTANDARD LVCMOS18} [get_ports FMC2_J1[34]]; # LA17_CC_P
#set_property -dict {PACKAGE_PIN U38 IOSTANDARD LVCMOS18} [get_ports FMC2_J1[35]]; # LA17_CC_N
#set_property -dict {PACKAGE_PIN U36 IOSTANDARD LVCMOS18} [get_ports FMC2_J1[36]]; # LA18_CC_P
#set_property -dict {PACKAGE_PIN T37 IOSTANDARD LVCMOS18} [get_ports FMC2_J1[37]]; # LA18_CC_N
#set_property -dict {PACKAGE_PIN U32 IOSTANDARD LVCMOS18} [get_ports FMC2_J1[38]]; # LA19_P
#set_property -dict {PACKAGE_PIN U33 IOSTANDARD LVCMOS18} [get_ports FMC2_J1[39]]; # LA19_N

#################################################################################
## J2 HB00 - HB19 (FMC2 has not HB lane
#################################################################################


#################################################################################
## J3 HA00 - HA19
#################################################################################
#set_property -dict {PACKAGE_PIN AB33 IOSTANDARD LVCMOS18} [get_ports FMC2_J3[0]];  # HA00_CC _P 
#set_property -dict {PACKAGE_PIN AC33 IOSTANDARD LVCMOS18} [get_ports FMC2_J3[1]];  # HA00_CC _N
#set_property -dict {PACKAGE_PIN AD32 IOSTANDARD LVCMOS18} [get_ports FMC2_J3[2]];  # HA01_CC _P
#set_property -dict {PACKAGE_PIN AD33 IOSTANDARD LVCMOS18} [get_ports FMC2_J3[3]];  # HA01_CC _N
#set_property -dict {PACKAGE_PIN AC30 IOSTANDARD LVCMOS18} [get_ports FMC2_J3[4]];  # HA02_P
#set_property -dict {PACKAGE_PIN AD30 IOSTANDARD LVCMOS18} [get_ports FMC2_J3[5]];  # HA02_N
#set_property -dict {PACKAGE_PIN AA29 IOSTANDARD LVCMOS18} [get_ports FMC2_J3[6]];  # HA03_P
#set_property -dict {PACKAGE_PIN AA30 IOSTANDARD LVCMOS18} [get_ports FMC2_J3[7]];  # HA03_N
#set_property -dict {PACKAGE_PIN AB29 IOSTANDARD LVCMOS18} [get_ports FMC2_J3[8]];  # HA04_P
#set_property -dict {PACKAGE_PIN AC29 IOSTANDARD LVCMOS18} [get_ports FMC2_J3[9]];  # HA04_N
#set_property -dict {PACKAGE_PIN Y32 IOSTANDARD LVCMOS18} [get_ports FMC2_J3[10]];  # HA05_P
#set_property -dict {PACKAGE_PIN Y33 IOSTANDARD LVCMOS18} [get_ports FMC2_J3[11]];  # HA05_N
#set_property -dict {PACKAGE_PIN AB31 IOSTANDARD LVCMOS18} [get_ports FMC2_J3[12]]; # HA06_P
#set_property -dict {PACKAGE_PIN AB32 IOSTANDARD LVCMOS18} [get_ports FMC2_J3[13]]; # HA06_N
#set_property -dict {PACKAGE_PIN AC31 IOSTANDARD LVCMOS18} [get_ports FMC2_J3[14]]; # HA07_P
#set_property -dict {PACKAGE_PIN AD31 IOSTANDARD LVCMOS18} [get_ports FMC2_J3[15]]; # HA07_N
#set_property -dict {PACKAGE_PIN AA31 IOSTANDARD LVCMOS18} [get_ports FMC2_J3[16]]; # HA08_P
#set_property -dict {PACKAGE_PIN AA32 IOSTANDARD LVCMOS18} [get_ports FMC2_J3[17]]; # HA08_N
#set_property -dict {PACKAGE_PIN AE29 IOSTANDARD LVCMOS18} [get_ports FMC2_J3[18]]; # HA09_P
#set_property -dict {PACKAGE_PIN AE30 IOSTANDARD LVCMOS18} [get_ports FMC2_J3[19]]; # HA09_N
#set_property -dict {PACKAGE_PIN AF31 IOSTANDARD LVCMOS18} [get_ports FMC2_J3[20]]; # HA10_P
#set_property -dict {PACKAGE_PIN AF32 IOSTANDARD LVCMOS18} [get_ports FMC2_J3[21]]; # HA10_N
#set_property -dict {PACKAGE_PIN AE34 IOSTANDARD LVCMOS18} [get_ports FMC2_J3[22]]; # HA11_P
#set_property -dict {PACKAGE_PIN AE35 IOSTANDARD LVCMOS18} [get_ports FMC2_J3[23]]; # HA11_N
#set_property -dict {PACKAGE_PIN AF34 IOSTANDARD LVCMOS18} [get_ports FMC2_J3[24]]; # HA12_P
#set_property -dict {PACKAGE_PIN AG34 IOSTANDARD LVCMOS18} [get_ports FMC2_J3[25]]; # HA12_N
#set_property -dict {PACKAGE_PIN AE32 IOSTANDARD LVCMOS18} [get_ports FMC2_J3[26]]; # HA13_P
#set_property -dict {PACKAGE_PIN AE33 IOSTANDARD LVCMOS18} [get_ports FMC2_J3[27]]; # HA13_N
#set_property -dict {PACKAGE_PIN AF35 IOSTANDARD LVCMOS18} [get_ports FMC2_J3[28]]; # HA14_P
#set_property -dict {PACKAGE_PIN AF36 IOSTANDARD LVCMOS18} [get_ports FMC2_J3[29]]; # HA14_N
#set_property -dict {PACKAGE_PIN AE37 IOSTANDARD LVCMOS18} [get_ports FMC2_J3[30]]; # HA15_P
#set_property -dict {PACKAGE_PIN AF37 IOSTANDARD LVCMOS18} [get_ports FMC2_J3[31]]; # HA15_N
#set_property -dict {PACKAGE_PIN AG36 IOSTANDARD LVCMOS18} [get_ports FMC2_J3[32]]; # HA16_P
#set_property -dict {PACKAGE_PIN AH36 IOSTANDARD LVCMOS18} [get_ports FMC2_J3[33]]; # HA16_N
#set_property -dict {PACKAGE_PIN AC34 IOSTANDARD LVCMOS18} [get_ports FMC2_J3[34]]; # HA17_CC _P
#set_property -dict {PACKAGE_PIN AD35 IOSTANDARD LVCMOS18} [get_ports FMC2_J3[35]]; # HA17_CC _N
#set_property -dict {PACKAGE_PIN AB36 IOSTANDARD LVCMOS18} [get_ports FMC2_J3[36]]; # HA18_P
#set_property -dict {PACKAGE_PIN AB37 IOSTANDARD LVCMOS18} [get_ports FMC2_J3[37]]; # HA18_N
#set_property -dict {PACKAGE_PIN AC35 IOSTANDARD LVCMOS18} [get_ports FMC2_J3[38]]; # HA19_P
#set_property -dict {PACKAGE_PIN AC36 IOSTANDARD LVCMOS18} [get_ports FMC2_J3[39]]; # HA19_N

#################################################################################
## J5 FMC-JTAG
#################################################################################
# set_property -dict {PACKAGE_PIN IOSTANDARD LVCMOS18} [get_ports ];  # 3.3 
# set_property -dict {PACKAGE_PIN IOSTANDARD LVCMOS18} [get_ports ];  # GND
# set_property -dict {PACKAGE_PIN IOSTANDARD LVCMOS18} [get_ports ];  # No connection
#set_property -dict {PACKAGE_PIN IOSTANDARD LVCMOS18} [get_ports FMC2_TCK]; # 
# set_property -dict {PACKAGE_PIN IOSTANDARD LVCMOS18} [get_ports ];  # No connection
#set_property -dict {PACKAGE_PIN IOSTANDARD LVCMOS18} [get_ports FMC2_TDO]; # 
#set_property -dict {PACKAGE_PIN IOSTANDARD LVCMOS18} [get_ports FMC2_TDI]; # 
# set_property -dict {PACKAGE_PIN IOSTANDARD LVCMOS18} [get_ports ];  # No connection
#set_property -dict {PACKAGE_PIN IOSTANDARD LVCMOS18} [get_ports FMC2_TMS]; # 

#################################################################################
## J15 - User leds
#################################################################################
#set_property -dict {PACKAGE_PIN IOSTANDARD LVCMOS18} [get_ports ] # VADJ (2.5)
#set_property -dict {PACKAGE_PIN IOSTANDARD LVCMOS18} [get_ports ] # Ground
#set_property -dict {PACKAGE_PIN P37 IOSTANDARD LVCMOS18} [get_ports {FMC2_J15[0]}];  # LA32_P
#set_property -dict {PACKAGE_PIN P38 IOSTANDARD LVCMOS18} [get_ports {FMC2_J15[1]}];  # LA32_N
#set_property -dict {PACKAGE_PIN T36 IOSTANDARD LVCMOS18} [get_ports {FMC2_J15[2]}];  # LA33_P
#set_property -dict {PACKAGE_PIN R37 IOSTANDARD LVCMOS18} [get_ports {FMC2_J15[3]}];  # LA33_N

#################################################################################
## J16 PMOD LA28 - LA31
#################################################################################
# Set 3.3V                      Set 2.5V
#   - Connect J6.1 to J6.3        - Connect J6.3 to J6.5
#   - Connect J6.2 to J6.4        - Connect J6.4 to J6.6

#set_property -dict {PACKAGE_PIN IOSTANDARD LVCMOS18} [get_ports ] # Power (Set by J6)
#set_property -dict {PACKAGE_PIN IOSTANDARD LVCMOS18} [get_ports ] # Ground
#set_property -dict {PACKAGE_PIN IOSTANDARD LVCMOS18} [get_ports ]  # Power (Set by J6)
#set_property -dict {PACKAGE_PIN IOSTANDARD LVCMOS18} [get_ports ]  # Ground

#set_property -dict {PACKAGE_PIN V35 IOSTANDARD LVCMOS18} [get_ports {FMC2_J16[0]}];  # LA28_P
#set_property -dict {PACKAGE_PIN V36 IOSTANDARD LVCMOS18} [get_ports {FMC2_J16[1]}];  # LA28_N
#set_property -dict {PACKAGE_PIN W36 IOSTANDARD LVCMOS18} [get_ports {FMC2_J16[2]}];  # LA29_P
#set_property -dict {PACKAGE_PIN W37 IOSTANDARD LVCMOS18} [get_ports {FMC2_J16[3]}];  # LA29_N
#set_property -dict {PACKAGE_PIN T32 IOSTANDARD LVCMOS18} [get_ports {FMC2_J16[4]}];  # LA30_P
#set_property -dict {PACKAGE_PIN R32 IOSTANDARD LVCMOS18} [get_ports {FMC2_J16[5]}];  # LA30_N
#set_property -dict {PACKAGE_PIN V39 IOSTANDARD LVCMOS18} [get_ports {FMC2_J16[6]}];  # LA31_P
#set_property -dict {PACKAGE_PIN V40 IOSTANDARD LVCMOS18} [get_ports {FMC2_J16[7]}];  # LA31_N

#################################################################################
## J18 (Setting for FMC PG_M2C
#################################################################################

#################################################################################
## J19 (Do not connect with FMC - used by Mictor P1
#################################################################################

# 3.3
# GND
#               No connection
# MICTOR_TCK
#               No connection
# MICTOR_TDO
# MICTOR_TDI
#               No connection
# MICTOR_TMS

#################################################################################
## J20 LA20 - LA27
#################################################################################
#set_property -dict {PACKAGE_PIN V33 IOSTANDARD LVCMOS18} [get_ports FMC2_J20[0]];  # LA20_P
#set_property -dict {PACKAGE_PIN V34 IOSTANDARD LVCMOS18} [get_ports FMC2_J20[1]];  # LA20_N
#set_property -dict {PACKAGE_PIN P35 IOSTANDARD LVCMOS18} [get_ports FMC2_J20[2]];  # LA21_P
#set_property -dict {PACKAGE_PIN P36 IOSTANDARD LVCMOS18} [get_ports FMC2_J20[3]];  # LA21_N
#set_property -dict {PACKAGE_PIN W32 IOSTANDARD LVCMOS18} [get_ports FMC2_J20[4]];  # LA22_P
#set_property -dict {PACKAGE_PIN W33 IOSTANDARD LVCMOS18} [get_ports FMC2_J20[5]];  # LA22_N
#set_property -dict {PACKAGE_PIN R38 IOSTANDARD LVCMOS18} [get_ports FMC2_J20[6]];  # LA23_P
#set_property -dict {PACKAGE_PIN R39 IOSTANDARD LVCMOS18} [get_ports FMC2_J20[7]];  # LA23_N
#set_property -dict {PACKAGE_PIN U34 IOSTANDARD LVCMOS18} [get_ports FMC2_J20[8]];  # LA24_P
#set_property -dict {PACKAGE_PIN T35 IOSTANDARD LVCMOS18} [get_ports FMC2_J20[9]];  # LA24_N
#set_property -dict {PACKAGE_PIN R33 IOSTANDARD LVCMOS18} [get_ports FMC2_J20[10]]; # LA25_P
#set_property -dict {PACKAGE_PIN R34 IOSTANDARD LVCMOS18} [get_ports FMC2_J20[11]]; # LA25_N
#set_property -dict {PACKAGE_PIN N33 IOSTANDARD LVCMOS18} [get_ports FMC2_J20[12]]; # LA26_P
#set_property -dict {PACKAGE_PIN N34 IOSTANDARD LVCMOS18} [get_ports FMC2_J20[13]]; # LA26_N
#set_property -dict {PACKAGE_PIN P32 IOSTANDARD LVCMOS18} [get_ports FMC2_J20[14]]; # LA27_P
#set_property -dict {PACKAGE_PIN P33 IOSTANDARD LVCMOS18} [get_ports FMC2_J20[15]]; # LA27_N

#################################################################################
## J23
#################################################################################
# set_property -dict {PACKAGE_PIN IOSTANDARD LVCMOS18} [get_ports FMC2_J23[0]];  # HB20_P  (FMC2 has not HB lane)
# set_property -dict {PACKAGE_PIN IOSTANDARD LVCMOS18} [get_ports FMC2_J23[1]];  # HB20_N  (FMC2 has not HB lane)
#set_property -dict {PACKAGE_PIN AD36 IOSTANDARD LVCMOS18} [get_ports FMC2_J23[2]];  # HA20_P
#set_property -dict {PACKAGE_PIN AD37 IOSTANDARD LVCMOS18} [get_ports FMC2_J23[3]];  # HA20_N
#set_property -dict {PACKAGE_PIN AA34 IOSTANDARD LVCMOS18} [get_ports FMC2_J23[4]];  # HA21_P
#set_property -dict {PACKAGE_PIN AA35 IOSTANDARD LVCMOS18} [get_ports FMC2_J23[5]];  # HA21_N
# set_property -dict {PACKAGE_PIN IOSTANDARD LVCMOS18} [get_ports FMC2_J23[6]];  # HB21_P (FMC2 has not HB lane)
# set_property -dict {PACKAGE_PIN IOSTANDARD LVCMOS18} [get_ports FMC2_J23[7]];  # HB21_N (FMC2 has not HB lane)
#set_property -dict {PACKAGE_PIN Y35 IOSTANDARD LVCMOS18} [get_ports FMC2_J23[8]];  # HA22_P
#set_property -dict {PACKAGE_PIN AA36 IOSTANDARD LVCMOS18} [get_ports FMC2_J23[9]];  # HA22_N
#set_property -dict {PACKAGE_PIN Y37 IOSTANDARD LVCMOS18} [get_ports FMC2_J23[10]]; # HA23_P
#set_property -dict {PACKAGE_PIN AA37 IOSTANDARD LVCMOS18} [get_ports FMC2_J23[11]]; # HA23_N

#################################################################################
## P1
#################################################################################
#set_property -dict {PACKAGE_PIN IOSTANDARD LVCMOS18} [get_ports ];          # No connection
#set_property -dict {PACKAGE_PIN IOSTANDARD LVCMOS18} [get_ports ];          # No connection
#set_property -dict {PACKAGE_PIN IOSTANDARD LVCMOS18} [get_ports ];          # No connection
#set_property -dict {PACKAGE_PIN IOSTANDARD LVCMOS18} [get_ports ];          # No connection
#set_property -dict {PACKAGE_PIN IOSTANDARD LVCMOS18} [get_ports ];          # No connection
#set_property -dict {PACKAGE_PIN IOSTANDARD LVCMOS18} [get_ports FMC2_MICTOR_TDO]  
#set_property -dict {PACKAGE_PIN IOSTANDARD LVCMOS18} [get_ports ];          # No connection
#set_property -dict {PACKAGE_PIN IOSTANDARD LVCMOS18} [get_ports FMC2_MICTOR_TCK];  
#set_property -dict {PACKAGE_PIN IOSTANDARD LVCMOS18} [get_ports FMC2_MICTOR_TMS];  
#set_property -dict {PACKAGE_PIN IOSTANDARD LVCMOS18} [get_ports FMC2_MICTOR_TDI];  
#set_property -dict {PACKAGE_PIN IOSTANDARD LVCMOS18} [get_ports ];          # No connection
#set_property -dict {PACKAGE_PIN AE42 IOSTANDARD LVCMOS18} [get_ports FMC2_MICTOR[0]];  # LA08_N
#set_property -dict {PACKAGE_PIN AD42 IOSTANDARD LVCMOS18} [get_ports FMC2_MICTOR[1]];  # LA08_P
#set_property -dict {PACKAGE_PIN AC41 IOSTANDARD LVCMOS18} [get_ports FMC2_MICTOR[2]];  # LA07_N
#set_property -dict {PACKAGE_PIN AC40 IOSTANDARD LVCMOS18} [get_ports FMC2_MICTOR[3]];  # LA07_P
#set_property -dict {PACKAGE_PIN AE38 IOSTANDARD LVCMOS18} [get_ports FMC2_MICTOR[4]];  # LA06_N
#set_property -dict {PACKAGE_PIN AD38 IOSTANDARD LVCMOS18} [get_ports FMC2_MICTOR[5]];  # LA06_P
#set_property -dict {PACKAGE_PIN AG42 IOSTANDARD LVCMOS18} [get_ports FMC2_MICTOR[6]];  # LA05_N
#set_property -dict {PACKAGE_PIN AF42 IOSTANDARD LVCMOS18} [get_ports FMC2_MICTOR[7]];  # LA05_P
#set_property -dict {PACKAGE_PIN IOSTANDARD LVCMOS18} [get_ports ]          # No connection
#set_property -dict {PACKAGE_PIN IOSTANDARD LVCMOS18} [get_ports ]          # No connection
#set_property -dict {PACKAGE_PIN AD40 IOSTANDARD LVCMOS18} [get_ports FMC2_MICTOR[8]]  # LA00_CC _P
#set_property -dict {PACKAGE_PIN IOSTANDARD LVCMOS18} [get_ports ]          # No connection
#set_property -dict {PACKAGE_PIN IOSTANDARD LVCMOS18} [get_ports ]          # No connection
#set_property -dict {PACKAGE_PIN IOSTANDARD LVCMOS18} [get_ports ]          # VADJ (2.5)
#set_property -dict {PACKAGE_PIN IOSTANDARD LVCMOS18} [get_ports ]          # No connection
#set_property -dict {PACKAGE_PIN AG41 IOSTANDARD LVCMOS18} [get_ports FMC2_MICTOR[9]];  # LA01_CC _N
#set_property -dict {PACKAGE_PIN AF41 IOSTANDARD LVCMOS18} [get_ports FMC2_MICTOR[10]]; # LA01_CC _P
#set_property -dict {PACKAGE_PIN AK38 IOSTANDARD LVCMOS18} [get_ports FMC2_MICTOR[11]]; # LA09_N
#set_property -dict {PACKAGE_PIN AJ38 IOSTANDARD LVCMOS18} [get_ports FMC2_MICTOR[12]]; # LA09_P
#set_property -dict {PACKAGE_PIN AL42 IOSTANDARD LVCMOS18} [get_ports FMC2_MICTOR[13]]; # LA04_N
#set_property -dict {PACKAGE_PIN AL41 IOSTANDARD LVCMOS18} [get_ports FMC2_MICTOR[14]]; # LA04_P
#set_property -dict {PACKAGE_PIN AK42 IOSTANDARD LVCMOS18} [get_ports FMC2_MICTOR[15]]; # LA03_N
#set_property -dict {PACKAGE_PIN AJ42 IOSTANDARD LVCMOS18} [get_ports FMC2_MICTOR[16]]; # LA03_P
#set_property -dict {PACKAGE_PIN AL39 IOSTANDARD LVCMOS18} [get_ports FMC2_MICTOR[17]]; # LA02_N
#set_property -dict {PACKAGE_PIN AK39 IOSTANDARD LVCMOS18} [get_ports FMC2_MICTOR[18]]; # LA02_P
#set_property -dict {PACKAGE_PIN AB42 IOSTANDARD LVCMOS18} [get_ports FMC2_MICTOR[19]]; # LA10_N
#set_property -dict {PACKAGE_PIN AB41 IOSTANDARD LVCMOS18} [get_ports FMC2_MICTOR[20]]; # LA10_P
 
#################################################################################
## Clocks
#################################################################################
# Si570 IIC LVDS clock (10-810 MHz default: 156.250)
#set_property -dict {PACKAGE_PIN AF39 IOSTANDARD LVCMOS18} [get_ports FMC2_Si570[0]];  # CLK0_M2C_P
#set_property -dict {PACKAGE_PIN AF40 IOSTANDARD LVCMOS18} [get_ports FMC2_Si570[1]];  # CLK0_M2C_N
#set_property -dict {PACKAGE_PIN IOSTANDARD LVCMOS18} [get_ports FMC2_Si570_SCL]; #
#set_property -dict {PACKAGE_PIN IOSTANDARD LVCMOS18} [get_ports FMC2_Si570_SDA]; # 
#set_property -dict {PACKAGE_PIN U39 IOSTANDARD LVCMOS18} [get_ports FMC2_SMA[0]];    # CLK1_M2C_P
#set_property -dict {PACKAGE_PIN T39 IOSTANDARD LVCMOS18} [get_ports FMC2_SMA[1]];    # CLK1_M2C_N


#################################################################################
## EEPROM
#################################################################################

#set_property CONTROL.TRIGGER_POSITION 512 [get_hw_ilas ila_0]


