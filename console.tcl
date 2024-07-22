set_db init_lib_search_path /home/installs/FOUNDRY/digital/90nm/dig/lib  
set_db hdl_search_path /home/cadence/Desktop/sram/64-bit_SRAM
set_db library slow.lib
read_hdl 64_bit_SRAM.v
elaborate
read_sdc /home/cadence/Desktop/sram/64-bit_SRAM/constrains.sdc
set_db syn_generic_effort medium
syn_generic
set_db syn_map_effort medium
syn_map
set_db syn_opt_effort medium
syn_opt
write_hdl > 64_bit_SRAM_netlist.v
write_sdc > 64_bit_SRAM_block.sdc
report_area > 64_bit_SRAM_area.rep
report_gates > 64_bit_SRAM_gate.rep
report_power > 64_bit_SRAM_power.rep
report_timing > 64_bit_SRAM_timing.rep
gui_show
