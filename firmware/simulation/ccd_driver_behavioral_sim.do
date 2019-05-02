#
# Create work library
#
vlib work
#
# Compile sources
#
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