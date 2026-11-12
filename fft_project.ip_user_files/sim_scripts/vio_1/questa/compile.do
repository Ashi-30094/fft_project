vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../../../AMDDesignTools/2026.1/Vivado/data/rsb/busdef" "+incdir+../../../../fft_project.gen/sources_1/ip/vio_1/hdl/verilog" "+incdir+../../../../fft_project.gen/sources_1/ip/vio_1/hdl" \
"../../../../fft_project.gen/sources_1/ip/vio_1/sim/vio_1.v" \


vlog -work xil_defaultlib \
"glbl.v"

