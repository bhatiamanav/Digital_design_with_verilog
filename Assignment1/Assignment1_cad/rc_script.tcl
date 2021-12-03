set_attr lib_search_path ../../lib/90
set_attr library ../../lib/90/slow.lib
set_attr hdl_search_path ./
read_hdl {andgate.v}
elaborate
read_sdc ./constraints_top.sdc
synthesize -to_mapped -effort medium
write_sdf -timescale ns -nonegchecks -recrem split -edges check_edge > delays.sdf

write_hdl > counter_netlist.v
write_sdc > counter_sdc.sdc


gui_show
report timing > counter_timing.rep
report power > counter_power.rep
report area > counter_cell.rep
report gates > counter_gates.rep
