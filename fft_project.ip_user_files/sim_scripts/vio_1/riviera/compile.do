transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../../../AMDDesignTools/2026.1/Vivado/data/rsb/busdef" "+incdir+../../../../fft_project.gen/sources_1/ip/vio_1/hdl/verilog" "+incdir+../../../../fft_project.gen/sources_1/ip/vio_1/hdl" -l xil_defaultlib \
"../../../../fft_project.gen/sources_1/ip/vio_1/sim/vio_1.v" \


vlog -work xil_defaultlib \
"glbl.v"

