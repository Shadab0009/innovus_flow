# Version:1.0 MMMC View Definition File
# Do Not Remove Above Line

## 1. Create RC Corner
create_rc_corner -name rc_corner -cap_table {/home/shadab/shadab/genus_flow/Captable/cln28hpl_1p10m+alrdl_5x2yu2yz_typical.capTbl}

# Corrected Operating Conditions Section

# 1. Fast Operating Condition linked to fast.lib
create_op_cond -name fast_op_cond -library_file {/home/shadab/shadab/genus_flow/LIB/gsclib045_v3.5/timing/fast.lib} -P {1} -V {1.32} -T {0}

# 2. Slow Operating Condition linked to slow.lib
create_op_cond -name slow_op_cond -library_file {/home/shadab/shadab/genus_flow/LIB/gsclib045_v3.5/timing/slow.lib} -P {1} -V {1.08} -T {125}

# 3. Typical Operating Condition linked to typical.lib
create_op_cond -name typ_op_cond -library_file {/home/shadab/shadab/genus_flow/LIB/gsclib045_v3.5/timing/typical.lib} -P {1} -V {1.2} -T {25}
## 3. Create Library Sets (Removed extra spaces inside braces)
create_library_set -name wcl_slow -timing {/home/shadab/shadab/genus_flow/LIB/gsclib045_v3.5/timing/slow.lib}
create_library_set -name wcl_fast -timing {/home/shadab/shadab/genus_flow/LIB/gsclib045_v3.5/timing/fast.lib}
create_library_set -name wcl_typical -timing {/home/shadab/shadab/genus_flow/LIB/gsclib045_v3.5/timing/typical.lib}

## 4. Create Constraint Modes (Removed extra spaces)
create_constraint_mode -name functional_wcl_slow -sdc_files {/home/shadab/shadab/genus_flow/ALU/work/OUTPUT/outputs_21.14-s082_1/syn_opt_simple_alu.functional_wcl_slow.sdc}
create_constraint_mode -name functional_wcl_fast -sdc_files {/home/shadab/shadab/genus_flow/ALU/work/OUTPUT/outputs_21.14-s082_1/syn_opt_simple_alu.functional_wcl_fast.sdc}
create_constraint_mode -name functional_wcl_typical -sdc_files {/home/shadab/shadab/genus_flow/ALU/work/OUTPUT/outputs_21.14-s082_1/syn_opt_simple_alu.functional_wcl_typical.sdc}

## 5. Create Delay Corners (ADDED -rc_corner)
create_delay_corner -name delay_corner_wcl_slow -early_library_set {wcl_fast} -late_library_set {wcl_slow} -early_opcond {fast_op_cond} -late_opcond {slow_op_cond} -rc_corner rc_corner
create_delay_corner -name delay_corner_wcl_fast -early_library_set {wcl_slow} -late_library_set {wcl_fast} -early_opcond {slow_op_cond} -late_opcond {fast_op_cond} -rc_corner rc_corner
create_delay_corner -name delay_corner_wcl_typical -early_library_set {wcl_typical} -late_library_set {wcl_typical} -early_opcond {typ_op_cond} -late_opcond {typ_op_cond} -rc_corner rc_corner

## 6. Create Analysis Views
create_analysis_view -name view_wcl_slow -constraint_mode {functional_wcl_slow} -delay_corner {delay_corner_wcl_slow}
create_analysis_view -name view_wcl_fast -constraint_mode {functional_wcl_fast} -delay_corner {delay_corner_wcl_fast}
create_analysis_view -name view_wcl_typical -constraint_mode {functional_wcl_typical} -delay_corner {delay_corner_wcl_typical}

## 7. Set Analysis Views
set_analysis_view -setup {view_wcl_slow view_wcl_fast view_wcl_typical} -hold {view_wcl_fast view_wcl_slow view_wcl_typical}
