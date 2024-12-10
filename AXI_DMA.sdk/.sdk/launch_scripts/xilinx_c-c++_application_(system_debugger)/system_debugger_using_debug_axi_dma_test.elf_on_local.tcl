connect -url tcp:127.0.0.1:3121
source E:/ACZ7020/AXI_DMA/AXI_DMA.sdk/System_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-SMT2 210251A08870"} -index 0
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-SMT2 210251A08870" && level==0} -index 1
fpga -file E:/ACZ7020/AXI_DMA/AXI_DMA.sdk/System_wrapper_hw_platform_0/System_wrapper.bit
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-SMT2 210251A08870"} -index 0
loadhw -hw E:/ACZ7020/AXI_DMA/AXI_DMA.sdk/System_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-SMT2 210251A08870"} -index 0
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent JTAG-SMT2 210251A08870"} -index 0
dow E:/ACZ7020/AXI_DMA/AXI_DMA.sdk/AXI_DMA_Test/Debug/AXI_DMA_Test.elf
configparams force-mem-access 0
bpadd -addr &main
