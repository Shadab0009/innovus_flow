# floorplan boundary
set ret [catch {floorplan -noResize -noSnapToGrid -b  0.0000000000 0.0000000000 56.2000000000 54.3400000000  0.0000000000 0.0000000000 56.2000000000 54.3400000000  10.0000000000 10.0700000000 46.2000000000 44.2700000000 }]
if {$ret != 0} {
  floorplan -noSnapToGrid -b  0.0000000000 0.0000000000 56.2000000000 54.3400000000  0.0000000000 0.0000000000 56.2000000000 54.3400000000  10.0000000000 10.0700000000 46.2000000000 44.2700000000 
}
# Standard Cell Row
deleteRow -all
set rdagFPlanRowSpaceType 2
set rdagFPlanRowSpacing 0
createRow -site CoreSite -area  10.0000000000 10.0700000000 46.2000000000 11.7800000000  -flip1st -noCheck
createRow -site CoreSite -area  10.0000000000 11.7800000000 46.2000000000 13.4900000000  -noCheck
createRow -site CoreSite -area  10.0000000000 13.4900000000 46.2000000000 15.2000000000  -flip1st -noCheck
createRow -site CoreSite -area  10.0000000000 15.2000000000 46.2000000000 16.9100000000  -noCheck
createRow -site CoreSite -area  10.0000000000 16.9100000000 46.2000000000 18.6200000000  -flip1st -noCheck
createRow -site CoreSite -area  10.0000000000 18.6200000000 46.2000000000 20.3300000000  -noCheck
createRow -site CoreSite -area  10.0000000000 20.3300000000 46.2000000000 22.0400000000  -flip1st -noCheck
createRow -site CoreSite -area  10.0000000000 22.0400000000 46.2000000000 23.7500000000  -noCheck
createRow -site CoreSite -area  10.0000000000 23.7500000000 46.2000000000 25.4600000000  -flip1st -noCheck
createRow -site CoreSite -area  10.0000000000 25.4600000000 46.2000000000 27.1700000000  -noCheck
createRow -site CoreSite -area  10.0000000000 27.1700000000 46.2000000000 28.8800000000  -flip1st -noCheck
createRow -site CoreSite -area  10.0000000000 28.8800000000 46.2000000000 30.5900000000  -noCheck
createRow -site CoreSite -area  10.0000000000 30.5900000000 46.2000000000 32.3000000000  -flip1st -noCheck
createRow -site CoreSite -area  10.0000000000 32.3000000000 46.2000000000 34.0100000000  -noCheck
createRow -site CoreSite -area  10.0000000000 34.0100000000 46.2000000000 35.7200000000  -flip1st -noCheck
createRow -site CoreSite -area  10.0000000000 35.7200000000 46.2000000000 37.4300000000  -noCheck
createRow -site CoreSite -area  10.0000000000 37.4300000000 46.2000000000 39.1400000000  -flip1st -noCheck
createRow -site CoreSite -area  10.0000000000 39.1400000000 46.2000000000 40.8500000000  -noCheck
createRow -site CoreSite -area  10.0000000000 40.8500000000 46.2000000000 42.5600000000  -flip1st -noCheck
createRow -site CoreSite -area  10.0000000000 42.5600000000 46.2000000000 44.2700000000  -noCheck
fpSetDefaultTechSite -site CoreSite
# Placement obstruction
if {[get_db place_blockages] != ""} {
  deletePlaceBlockage -all
}
# Routing obstruction
deleteRouteBlk -all
setFPlanMode -cutOffRouteBlockageOutsideDie false
setFPlanMode -cutOffRouteBlockageOutsideDie true
# Pin blockage
deletePinBlkg -all
# Instance group
# Hierarchical Instance's constraint(Fence, Region or Guide)
# Pin
setPinAssignMode -pinEditInBatch true
editPin -pin A[31] -layer M3 -assign {0.1000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin A[30] -layer M3 -assign {0.5000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin A[29] -layer M3 -assign {1.1000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin A[28] -layer M3 -assign {1.7000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin A[27] -layer M3 -assign {2.3000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin A[26] -layer M3 -assign {2.9000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin A[25] -layer M3 -assign {3.3000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin A[24] -layer M3 -assign {3.9000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin A[23] -layer M3 -assign {4.5000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin A[22] -layer M3 -assign {5.1000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin A[21] -layer M3 -assign {5.7000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin A[20] -layer M3 -assign {6.3000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin A[19] -layer M3 -assign {6.7000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin A[18] -layer M3 -assign {7.3000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin A[17] -layer M3 -assign {7.9000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin A[16] -layer M3 -assign {8.5000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin A[15] -layer M3 -assign {9.1000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin A[14] -layer M3 -assign {9.7000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin A[13] -layer M3 -assign {10.1000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin A[12] -layer M3 -assign {10.7000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin A[11] -layer M3 -assign {11.3000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin A[10] -layer M3 -assign {11.9000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin A[9] -layer M3 -assign {12.5000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin A[8] -layer M3 -assign {13.1000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin A[7] -layer M3 -assign {13.5000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin A[6] -layer M3 -assign {14.1000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin A[5] -layer M3 -assign {14.7000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin A[4] -layer M3 -assign {15.3000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin A[3] -layer M3 -assign {15.9000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin A[2] -layer M3 -assign {16.5000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin A[1] -layer M3 -assign {16.9000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin A[0] -layer M3 -assign {17.5000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin B[31] -layer M3 -assign {18.1000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin B[30] -layer M3 -assign {18.7000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin B[29] -layer M3 -assign {19.3000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin B[28] -layer M3 -assign {19.7000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin B[27] -layer M3 -assign {20.3000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin B[26] -layer M3 -assign {20.9000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin B[25] -layer M3 -assign {21.5000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin B[24] -layer M3 -assign {22.1000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin B[23] -layer M3 -assign {22.7000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin B[22] -layer M3 -assign {23.1000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin B[21] -layer M3 -assign {23.7000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin B[20] -layer M3 -assign {24.3000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin B[19] -layer M3 -assign {24.9000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin B[18] -layer M3 -assign {25.5000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin B[17] -layer M3 -assign {26.1000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin B[16] -layer M3 -assign {26.5000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin B[15] -layer M3 -assign {27.1000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin B[14] -layer M3 -assign {27.7000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin B[13] -layer M3 -assign {28.3000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin B[12] -layer M3 -assign {28.9000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin B[11] -layer M3 -assign {29.5000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin B[10] -layer M3 -assign {29.9000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin B[9] -layer M3 -assign {30.5000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin B[8] -layer M3 -assign {31.1000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin B[7] -layer M3 -assign {31.7000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin B[6] -layer M3 -assign {32.3000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin B[5] -layer M3 -assign {32.9000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin B[4] -layer M3 -assign {33.3000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin B[3] -layer M3 -assign {33.9000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin B[2] -layer M3 -assign {34.5000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin B[1] -layer M3 -assign {35.1000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin B[0] -layer M3 -assign {35.7000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin ALUControl[1] -layer M3 -assign {36.3000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin ALUControl[0] -layer M3 -assign {36.7000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin Result[31] -layer M3 -assign {37.3000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin Result[30] -layer M3 -assign {37.9000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin Result[29] -layer M3 -assign {38.5000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin Result[28] -layer M3 -assign {39.1000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin Result[27] -layer M3 -assign {39.5000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin Result[26] -layer M3 -assign {40.1000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin Result[25] -layer M3 -assign {40.7000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin Result[24] -layer M3 -assign {41.3000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin Result[23] -layer M3 -assign {41.9000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin Result[22] -layer M3 -assign {42.5000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin Result[21] -layer M3 -assign {42.9000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin Result[20] -layer M3 -assign {43.5000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin Result[19] -layer M3 -assign {44.1000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin Result[18] -layer M3 -assign {44.7000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin Result[17] -layer M3 -assign {45.3000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin Result[16] -layer M3 -assign {45.9000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin Result[15] -layer M3 -assign {46.3000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin Result[14] -layer M3 -assign {46.9000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin Result[13] -layer M3 -assign {47.5000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin Result[12] -layer M3 -assign {48.1000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin Result[11] -layer M3 -assign {48.7000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin Result[10] -layer M3 -assign {49.3000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin Result[9] -layer M3 -assign {49.7000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin Result[8] -layer M3 -assign {50.3000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin Result[7] -layer M3 -assign {50.9000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin Result[6] -layer M3 -assign {51.5000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin Result[5] -layer M3 -assign {52.1000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin Result[4] -layer M3 -assign {52.7000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin Result[3] -layer M3 -assign {53.1000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin Result[2] -layer M3 -assign {53.7000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin Result[1] -layer M3 -assign {54.3000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin Result[0] -layer M3 -assign {54.9000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin zero -layer M3 -assign {55.5000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
editPin -pin Cout -layer M3 -assign {55.9000000000 54.3400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side N -snap MGRID 
setPinAssignMode -pinEditInBatch false
# IO pad
# Area IO
# Bump
deleteBumps -all
# partition
# Block placement
unplaceAllBlocks
deleteHaloFromBlock -allBlock
# Global Net Connection
clearGlobalNets 
applyGlobalNets 
# busSinkGroup
# blackbox
# netGroupAndBusGuide
# relative floorplan
# pin groups
# pin guides
deletePinGuide -all
# custom shape
delete_gui_object -shape
