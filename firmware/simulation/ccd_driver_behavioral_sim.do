#
# Create work library
#
vlib work
#
# Compile sources
#
vlog  /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/ccd_driver.v
vlog  /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/al_ip/ip_pll.v
vlog  /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/tcd1500c.v
vlog  /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/FT245_interface/ft245_async_fifo.v
vlog  /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/FT245_interface/synchroniser.v
vlog  /home/gaoyichuan/workspace/spectrum/Anlogic/ccd_driver/simulation/ccd_driver_tb.v
#
# Call vsim to invoke simulator
#
vsim -L  -gui -novopt work.ccd_driver_tb
#
# Add waves
#
add wave *
#
# Run simulation
#
run 1000ns
#
# End