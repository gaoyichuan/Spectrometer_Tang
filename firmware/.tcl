import_device eagle_s20.db -package BG256
open_project ccd_driver.al
elaborate -top ccd_driver
optimize_rtl
report_area -file "ccd_driver_rtl.area"
read_sdc "ccd_driver.sdc"
read_adc "ccd_driver.adc"
export_db "ccd_driver_rtl.db"
optimize_gate -packarea "ccd_driver_gate.area"
export_db "ccd_driver_gate.db"
start_timer
place
route
report_area -io_info -file "ccd_driver_phy.area"
export_db "ccd_driver_pr.db"
start_timer
report_timing -mode FINAL -net_info -ep_num 3 -path_num 3 -file "ccd_driver_phy.timing"
bitgen -bit "ccd_driver.bit" -version 0X00 -g ucode:00000000000000000000000000000000
