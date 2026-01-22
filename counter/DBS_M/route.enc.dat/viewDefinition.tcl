if {![namespace exists ::IMEX]} { namespace eval ::IMEX {} }
set ::IMEX::dataVar [file dirname [file normalize [info script]]]
set ::IMEX::libVar ${::IMEX::dataVar}/libs

create_library_set -name wcl_fast\
   -timing\
    [list ${::IMEX::libVar}/mmmc/fast.lib]
create_library_set -name wcl_slow\
   -timing\
    [list ${::IMEX::libVar}/mmmc/slow.lib]
create_library_set -name typ_lib\
   -timing\
    [list ${::IMEX::libVar}/mmmc/typical.lib]
create_library_set -name fast_lib\
   -timing\
    [list ${::IMEX::libVar}/mmmc/fast.lib]
create_library_set -name slow_lib\
   -timing\
    [list ${::IMEX::libVar}/mmmc/slow.lib]
create_library_set -name wcl_typical\
   -timing\
    [list ${::IMEX::libVar}/mmmc/typical.lib]
create_op_cond -name op_cond_typ -library_file ${::IMEX::libVar}/mmmc/typical.lib -P 1 -V 1.2 -T 25
create_op_cond -name op_cond_fast -library_file ${::IMEX::libVar}/mmmc/fast.lib -P 1 -V 1.32 -T 0
create_op_cond -name op_cond_slow -library_file ${::IMEX::libVar}/mmmc/slow.lib -P 1 -V 1.08 -T 125
create_rc_corner -name default_rc_corner\
   -preRoute_res 1\
   -postRoute_res 1\
   -preRoute_cap 1\
   -postRoute_cap 1\
   -postRoute_xcap 1\
   -preRoute_clkres 0\
   -preRoute_clkcap 0
create_rc_corner -name rc_corner\
   -cap_table ${::IMEX::libVar}/mmmc/t018s6mlv.capTbl\
   -preRoute_res 1\
   -postRoute_res 1\
   -preRoute_cap 1\
   -postRoute_cap 1\
   -postRoute_xcap 1\
   -preRoute_clkres 0\
   -preRoute_clkcap 0
create_delay_corner -name dalay_corner_fast\
   -early_library_set slow_lib\
   -late_library_set fast_lib\
   -early_opcond op_cond_slow\
   -late_opcond op_cond_fast
create_delay_corner -name delay_corner_tpy\
   -early_library_set typ_lib\
   -late_library_set typ_lib\
   -early_opcond op_cond_tpy\
   -late_opcond op_cond_typ
create_delay_corner -name delay_corner_slow\
   -early_library_set fast_lib\
   -late_library_set slow_lib\
   -early_opcond op_cond_fast\
   -late_opcond op_cond_slow
create_constraint_mode -name constraints_slow\
   -sdc_files\
    [list /dev/null]
create_constraint_mode -name constraints_fast\
   -sdc_files\
    [list /dev/null]
create_constraint_mode -name constraints_typ\
   -sdc_files\
    [list /dev/null]
create_analysis_view -name fast_view -constraint_mode constraints_fast -delay_corner dalay_corner_fast
create_analysis_view -name slow_view -constraint_mode constraints_slow -delay_corner delay_corner_slow
create_analysis_view -name typ_view -constraint_mode constraints_typ -delay_corner delay_corner_tpy
set_analysis_view -setup [list fast_view slow_view typ_view] -hold [list fast_view slow_view typ_view]
