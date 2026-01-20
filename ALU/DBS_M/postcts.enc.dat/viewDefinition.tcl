if {![namespace exists ::IMEX]} { namespace eval ::IMEX {} }
set ::IMEX::dataVar [file dirname [file normalize [info script]]]
set ::IMEX::libVar ${::IMEX::dataVar}/libs

create_library_set -name wcl_fast\
   -timing\
    [list ${::IMEX::libVar}/mmmc/fast.lib]
create_library_set -name wcl_slow\
   -timing\
    [list ${::IMEX::libVar}/mmmc/slow.lib]
create_library_set -name wcl_typical\
   -timing\
    [list ${::IMEX::libVar}/mmmc/typical.lib]
create_op_cond -name fast_op_cond -library_file ${::IMEX::libVar}/mmmc/fast.lib -P 1 -V 1.32 -T 0
create_op_cond -name slow_op_cond -library_file ${::IMEX::libVar}/mmmc/slow.lib -P 1 -V 1.08 -T 125
create_op_cond -name typ_op_cond -library_file ${::IMEX::libVar}/mmmc/typical.lib -P 1 -V 1.2 -T 25
create_rc_corner -name rc_corner\
   -cap_table ${::IMEX::libVar}/mmmc/cln28hpl_1p10m+alrdl_5x2yu2yz_typical.capTbl\
   -preRoute_res 1\
   -postRoute_res 1\
   -preRoute_cap 1\
   -postRoute_cap 1\
   -postRoute_xcap 1\
   -preRoute_clkres 0\
   -preRoute_clkcap 0
create_delay_corner -name delay_corner_wcl_slow\
   -rc_corner rc_corner\
   -early_library_set wcl_fast\
   -late_library_set wcl_slow\
   -early_opcond fast_op_cond\
   -late_opcond slow_op_cond
create_delay_corner -name delay_corner_wcl_typical\
   -rc_corner rc_corner\
   -early_library_set wcl_typical\
   -late_library_set wcl_typical\
   -early_opcond typ_op_cond\
   -late_opcond typ_op_cond
create_delay_corner -name delay_corner_wcl_fast\
   -rc_corner rc_corner\
   -early_library_set wcl_slow\
   -late_library_set wcl_fast\
   -early_opcond slow_op_cond\
   -late_opcond fast_op_cond
create_constraint_mode -name functional_wcl_typical\
   -sdc_files\
    [list /dev/null]
create_constraint_mode -name functional_wcl_fast\
   -sdc_files\
    [list /dev/null]
create_constraint_mode -name functional_wcl_slow\
   -sdc_files\
    [list /dev/null]
create_analysis_view -name view_wcl_slow -constraint_mode functional_wcl_slow -delay_corner delay_corner_wcl_slow
create_analysis_view -name view_wcl_typical -constraint_mode functional_wcl_typical -delay_corner delay_corner_wcl_typical
create_analysis_view -name view_wcl_fast -constraint_mode functional_wcl_fast -delay_corner delay_corner_wcl_fast
set_analysis_view -setup [list view_wcl_slow view_wcl_fast view_wcl_typical] -hold [list view_wcl_fast view_wcl_slow view_wcl_typical]
