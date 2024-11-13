######################################################################
# Clock
######################################################################
set_property -dict {PACKAGE_PIN AY24 IOSTANDARD LVDS} [get_ports clk_p]
set_property -dict {PACKAGE_PIN AY23 IOSTANDARD LVDS} [get_ports clk_n]
  
create_clock -period 8.000 -name ref_clk [get_ports clk_p]

######################################################################
# On-board PMOD
######################################################################
set_property -dict {PACKAGE_PIN AY14 IOSTANDARD LVCMOS18} [get_ports PMOD0_1]
set_property -dict {PACKAGE_PIN AY15 IOSTANDARD LVCMOS18} [get_ports PMOD0_2]
set_property -dict {PACKAGE_PIN AW15 IOSTANDARD LVCMOS18} [get_ports PMOD0_3]
set_property -dict {PACKAGE_PIN AV15 IOSTANDARD LVCMOS18} [get_ports PMOD0_4]
set_property -dict {PACKAGE_PIN AV16 IOSTANDARD LVCMOS18} [get_ports PMOD0_5]
set_property -dict {PACKAGE_PIN AU16 IOSTANDARD LVCMOS18} [get_ports PMOD0_6]
set_property -dict {PACKAGE_PIN AT15 IOSTANDARD LVCMOS18} [get_ports PMOD0_7]
set_property -dict {PACKAGE_PIN AT16 IOSTANDARD LVCMOS18} [get_ports PMOD0_8]

set_property -dict {PACKAGE_PIN N28 IOSTANDARD LVCMOS12} [get_ports PMOD1_1]
set_property -dict {PACKAGE_PIN M30 IOSTANDARD LVCMOS12} [get_ports PMOD1_2]
set_property -dict {PACKAGE_PIN N30 IOSTANDARD LVCMOS12} [get_ports PMOD1_3]
set_property -dict {PACKAGE_PIN P30 IOSTANDARD LVCMOS12} [get_ports PMOD1_4]
set_property -dict {PACKAGE_PIN P29 IOSTANDARD LVCMOS12} [get_ports PMOD1_5]
set_property -dict {PACKAGE_PIN L31 IOSTANDARD LVCMOS12} [get_ports PMOD1_6]
set_property -dict {PACKAGE_PIN M31 IOSTANDARD LVCMOS12} [get_ports PMOD1_7]
set_property -dict {PACKAGE_PIN R29 IOSTANDARD LVCMOS12} [get_ports PMOD1_8]

######################################################################
# FMC J2 PMOD (EXP-F2P6F-I)
######################################################################
set_property -dict {PACKAGE_PIN AJ12 IOSTANDARD LVCMOS18} [get_ports J1_1] # FMC_LA32_N
set_property -dict {PACKAGE_PIN AL12 IOSTANDARD LVCMOS18} [get_ports J1_2] # FMC_LA30_N
set_property -dict {PACKAGE_PIN AW10 IOSTANDARD LVCMOS18} [get_ports J1_3] # FMC_LA28_N
set_property -dict {PACKAGE_PIN AR13 IOSTANDARD LVCMOS18} [get_ports J1_4] # FMC_LA24_N
set_property -dict {PACKAGE_PIN AV11 IOSTANDARD LVCMOS18} [get_ports J1_5] # FMC_LA21_N
set_property -dict {PACKAGE_PIN AY12 IOSTANDARD LVCMOS18} [get_ports J1_6] # FMC_LA19_N
set_property -dict {PACKAGE_PIN BC16 IOSTANDARD LVCMOS18} [get_ports J1_7] # FMC_LA15_N
set_property -dict {PACKAGE_PIN BA15 IOSTANDARD LVCMOS18} [get_ports J1_8] # FMC_LA11_N

set_property -dict {PACKAGE_PIN AK14 IOSTANDARD LVCMOS18} [get_ports J2_1] # FMC_LA33_P
set_property -dict {PACKAGE_PIN AM13 IOSTANDARD LVCMOS18} [get_ports J2_2] # FMC_LA31_P
set_property -dict {PACKAGE_PIN AN15 IOSTANDARD LVCMOS18} [get_ports J2_3] # FMC_LA29_P
set_property -dict {PACKAGE_PIN AT12 IOSTANDARD LVCMOS18} [get_ports J2_4] # FMC_LA25_P
set_property -dict {PACKAGE_PIN AW13 IOSTANDARD LVCMOS18} [get_ports J2_5] # FMC_LA22_P
set_property -dict {PACKAGE_PIN AW11 IOSTANDARD LVCMOS18} [get_ports J2_6] # FMC_LA20_P
set_property -dict {PACKAGE_PIN AV9 IOSTANDARD LVCMOS18}  [get_ports J2_7] # FMC_LA16_P
set_property -dict {PACKAGE_PIN BC14 IOSTANDARD LVCMOS18} [get_ports J2_8] # FMC_LA12_P

set_property -dict {PACKAGE_PIN AJ13 IOSTANDARD LVCMOS18} [get_ports J3_1] # FMC_LA32_P
set_property -dict {PACKAGE_PIN AK12 IOSTANDARD LVCMOS18} [get_ports J3_2] # FMC_LA30_P
set_property -dict {PACKAGE_PIN AV10 IOSTANDARD LVCMOS18} [get_ports J3_3] # FMC_LA28_P
set_property -dict {PACKAGE_PIN AP13 IOSTANDARD LVCMOS18} [get_ports J3_4] # FMC_LA24_P
set_property -dict {PACKAGE_PIN AU11 IOSTANDARD LVCMOS18} [get_ports J3_5] # FMC_LA21_P
set_property -dict {PACKAGE_PIN AW12 IOSTANDARD LVCMOS18} [get_ports J3_6] # FMC_LA19_P
set_property -dict {PACKAGE_PIN BB16 IOSTANDARD LVCMOS18} [get_ports J3_7] # FMC_LA15_P
set_property -dict {PACKAGE_PIN BA16 IOSTANDARD LVCMOS18} [get_ports J3_8] # FMC_LA11_P

set_property -dict {PACKAGE_PIN AK13 IOSTANDARD LVCMOS18} [get_ports J4_1] # FMC_LA33_N
set_property -dict {PACKAGE_PIN AM12 IOSTANDARD LVCMOS18} [get_ports J4_2] # FMC_LA31_N
set_property -dict {PACKAGE_PIN AP15 IOSTANDARD LVCMOS18} [get_ports J4_3] # FMC_LA29_N
set_property -dict {PACKAGE_PIN AU12 IOSTANDARD LVCMOS18} [get_ports J4_4] # FMC_LA25_N
set_property -dict {PACKAGE_PIN AY13 IOSTANDARD LVCMOS18} [get_ports J4_5] # FMC_LA22_N
set_property -dict {PACKAGE_PIN AY10 IOSTANDARD LVCMOS18} [get_ports J4_6] # FMC_LA20_N
set_property -dict {PACKAGE_PIN AV8 IOSTANDARD LVCMOS18}  [get_ports J4_7] # FMC_LA16_N
set_property -dict {PACKAGE_PIN BC13 IOSTANDARD LVCMOS18} [get_ports J4_8] # FMC_LA12_N

set_property -dict {PACKAGE_PIN AL15 IOSTANDARD LVCMOS18} [get_ports J5_1] # FMC_LA26_N
set_property -dict {PACKAGE_PIN AP16 IOSTANDARD LVCMOS18} [get_ports J5_2] # FMC_LA23_N
set_property -dict {PACKAGE_PIN AY7 IOSTANDARD LVCMOS18}  [get_ports J5_3] # FMC_LA13_N
set_property -dict {PACKAGE_PIN BB14 IOSTANDARD LVCMOS18} [get_ports J5_4] # FMC_LA09_N
set_property -dict {PACKAGE_PIN AM14 IOSTANDARD LVCMOS18} [get_ports J5_5] # FMC_LA27_N
set_property -dict {PACKAGE_PIN AW7 IOSTANDARD LVCMOS18}  [get_ports J5_6] # FMC_LA14_N
set_property -dict {PACKAGE_PIN BB12 IOSTANDARD LVCMOS18} [get_ports J5_7] # FMC_LA10_N
set_property -dict {PACKAGE_PIN BE13 IOSTANDARD LVCMOS18} [get_ports J5_8] # FMC_LA06_N

set_property -dict {PACKAGE_PIN AK15 IOSTANDARD LVCMOS18} [get_ports J6_1] # FMC_LA26_P
set_property -dict {PACKAGE_PIN AN16 IOSTANDARD LVCMOS18} [get_ports J6_2] # FMC_LA23_P
set_property -dict {PACKAGE_PIN AY8 IOSTANDARD LVCMOS18}  [get_ports J6_3] # FMC_LA13_P
set_property -dict {PACKAGE_PIN BA14 IOSTANDARD LVCMOS18} [get_ports J6_4] # FMC_LA09_P
set_property -dict {PACKAGE_PIN AL14 IOSTANDARD LVCMOS18} [get_ports J6_5] # FMC_LA27_P
set_property -dict {PACKAGE_PIN AW8 IOSTANDARD LVCMOS18}  [get_ports J6_6] # FMC_LA14_P
set_property -dict {PACKAGE_PIN BB13 IOSTANDARD LVCMOS18} [get_ports J6_7] # FMC_LA10_P
set_property -dict {PACKAGE_PIN BD13 IOSTANDARD LVCMOS18} [get_ports J6_8] # FMC_LA06_P

######################################################################
# FMC JTAG OLIMEX (EXP-F2P6F-I)
######################################################################
set_property -dict {PACKAGE_PIN BF12 IOSTANDARD LVCMOS18} [get_ports JTAG_TDI] # FMC_LA04_P
set_property -dict {PACKAGE_PIN BD12 IOSTANDARD LVCMOS18} [get_ports JTAG_TMS] # FMC_LA03_P
set_property -dict {PACKAGE_PIN BC11 IOSTANDARD LVCMOS18} [get_ports JTAG_TCK] # FMC_LA02_P
set_property -dict {PACKAGE_PIN BC15 IOSTANDARD LVCMOS18} [get_ports JTAG_TDO] # FMC_LA07_P
set_property -dict {PACKAGE_PIN BE12 IOSTANDARD LVCMOS18} [get_ports JTAG_SRSTN] # FMC_LA03_N
