if {![namespace exists ::IMEX]} { namespace eval ::IMEX {} }
set ::IMEX::dataVar [file dirname [file normalize [info script]]]
set ::IMEX::libVar ${::IMEX::dataVar}/libs

create_library_set -name fast\
   -timing\
    [list ${::IMEX::libVar}/lib/typ/fast.lib]
create_library_set -name slow\
   -timing\
    [list ${::IMEX::libVar}/mmmc/slow.lib]
create_rc_corner -name rc\
   -preRoute_res 1\
   -postRoute_res 1\
   -preRoute_cap 1\
   -postRoute_cap 1\
   -postRoute_xcap 1\
   -preRoute_clkres 0\
   -preRoute_clkcap 0\
   -qx_tech_file ${::IMEX::libVar}/mmmc/rc/gpdk090_9l.tch
create_delay_corner -name min\
   -library_set slow\
   -rc_corner rc
create_delay_corner -name max\
   -library_set fast\
   -rc_corner rc
create_constraint_mode -name conc\
   -sdc_files\
    [list /dev/null]
create_analysis_view -name worst -constraint_mode conc -delay_corner min
create_analysis_view -name best -constraint_mode conc -delay_corner max
set_analysis_view -setup [list best] -hold [list worst]
