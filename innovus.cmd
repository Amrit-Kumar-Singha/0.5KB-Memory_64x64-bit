#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Wed Jul 17 11:17:43 2024                
#                                                     
#######################################################

#@(#)CDS: Innovus v20.14-s095_1 (64bit) 04/19/2021 14:41 (Linux 2.6.32-431.11.2.el6.x86_64)
#@(#)CDS: NanoRoute 20.14-s095_1 NR210411-1939/20_14-UB (database version 18.20.547) {superthreading v2.13}
#@(#)CDS: AAE 20.14-s018 (64bit) 04/19/2021 (Linux 2.6.32-431.11.2.el6.x86_64)
#@(#)CDS: CTE 20.14-s027_1 () Apr 13 2021 21:29:07 ( )
#@(#)CDS: SYNTECH 20.14-s017_1 () Mar 25 2021 13:07:27 ( )
#@(#)CDS: CPE v20.14-s080
#@(#)CDS: IQuantus/TQuantus 20.1.1-s460 (64bit) Fri Mar 5 18:46:16 PST 2021 (Linux 2.6.32-431.11.2.el6.x86_64)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
getVersion
getVersion
getVersion
win
set init_gnd_net VSS
set init_lef_file {../../../../installs/FOUNDRY/digital/90nm/dig/lef/gsclib090_translated.lef ../../../../installs/FOUNDRY/digital/90nm/dig/lef/gsclib090_translated_ref.lef}
set init_design_settop 0
set init_verilog 64_bit_SRAM_netlist.v
set init_mmmc_file Default.view
set init_pwr_net VDD
init_design
getIoFlowFlag
setIoFlowFlag 0
floorPlan -site gsclib090site -r 1 0.6 6 6 6 6
uiSetTool select
getIoFlowFlag
fit
clearGlobalNets
globalNetConnect VDD -type pgpin -pin VDD -instanceBasename * -hierarchicalInstance {}
clearGlobalNets
globalNetConnect VDD -type pgpin -pin VDD -instanceBasename * -hierarchicalInstance {}
globalNetConnect VSS -type pgpin -pin VSS -instanceBasename * -hierarchicalInstance {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer Metal9 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {VSS VDD} -type core_rings -follow core -layer {top Metal9 bottom Metal9 left Metal8 right Metal8} -width {top 1.8 bottom 1.8 left 1.8 right 1.8} -spacing {top 0.5 bottom 0.5 left 0.5 right 0.5} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 1 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
zoomBox -325.54750 416.26200 772.43700 903.37500
zoomBox -325.54750 464.97350 772.43700 952.08650
zoomBox -325.54750 123.99300 772.43700 611.10600
zoomBox -325.54750 -22.14150 772.43700 464.97150
zoomBox -325.54750 -70.85300 772.43700 416.26000
zoomBox -273.86600 -29.27000 659.42100 384.77600
zoomBox -273.86600 94.94350 659.42100 508.98950
zoomBox -273.86600 136.34800 659.42100 550.39400
zoomBox -273.86600 53.53900 659.42100 467.58500
zoomBox -273.86600 12.13450 659.42100 426.18050
zoomBox -10438.95900 -8166.67600 22888.25600 6618.70700
zoomBox -286411.88400 -353252.90900 787329.94000 267898.28100
zoomBox 22043.43450 -487.27000 24954.70950 804.29650
zoomBox 22954.74200 245.96700 22961.86500 249.12700
zoomBox 22956.96200 247.75750 22956.98900 247.76950
zoomBox 22953.30400 244.81850 22964.96800 249.99300
zoomBox 22292.99800 -286.46100 24408.90000 652.24400
fit
zoomIn
zoomOut
selectWire 0.9950 440.0350 445.8950 441.8350 9 VDD
zoomIn
zoomIn
fit
deselectAll
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer Metal9 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {VSS VDD} -layer Metal9 -direction horizontal -width 1.8 -spacing 0.5 -number_of_sets 2 -start_from bottom -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit Metal9 -padcore_ring_bottom_layer_limit Metal1 -block_ring_top_layer_limit Metal9 -block_ring_bottom_layer_limit Metal1 -use_wire_group 0 -snap_wire_center_to_grid None
zoomIn
zoomIn
zoomIn
zoomOut
zoomOut
zoomOut
zoomOut
fit
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer Metal9 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {VSS VDD} -layer Metal8 -direction vertical -width 1.8 -spacing 0.5 -number_of_sets 2 -start_from left -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit Metal9 -padcore_ring_bottom_layer_limit Metal1 -block_ring_top_layer_limit Metal9 -block_ring_bottom_layer_limit Metal1 -use_wire_group 0 -snap_wire_center_to_grid None
setSrouteMode -viaConnectToShape { noshape }
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { Metal1(1) Metal9(9) } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { Metal1(1) Metal9(9) } -nets { VDD VSS } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { Metal1(1) Metal9(9) }
addEndCap -preCap FILL1 -postCap FILL2 -prefix ENDCAP
addWellTap -cell FILL1 -cellInterval 40 -prefix WELLTAP
setRouteMode -earlyGlobalHonorMsvRouteConstraint false -earlyGlobalRoutePartitionPinGuide true
setEndCapMode -reset
setEndCapMode -boundary_tap false
setNanoRouteMode -quiet -droutePostRouteSpreadWire 1
setNanoRouteMode -quiet -droutePostRouteWidenWireRule LEFDefaultRouteSpec_gpdk090
setNanoRouteMode -quiet -timingEngine {}
setUsefulSkewMode -maxSkew false -noBoundary false -useCells {DLY4X4 DLY4X1 DLY3X4 DLY3X1 DLY2X4 DLY2X1 DLY1X4 DLY1X1 CLKBUFX8 CLKBUFX6 CLKBUFX4 CLKBUFX3 CLKBUFX20 CLKBUFX2 CLKBUFX16 CLKBUFX12 BUFX8 BUFX6 BUFX4 BUFX3 BUFX20 BUFX2 BUFX16 BUFX12 INVXL INVX8 INVX6 INVX4 INVX3 INVX20 INVX2 INVX16 INVX12 INVX1 CLKINVX8 CLKINVX6 CLKINVX4 CLKINVX3 CLKINVX20 CLKINVX2 CLKINVX16 CLKINVX12 CLKINVX1} -maxAllowedDelay 1
setPlaceMode -reset
setPlaceMode -congEffort auto -timingDriven 1 -clkGateAware 1 -powerDriven 0 -ignoreScan 1 -reorderScan 1 -ignoreSpare 0 -placeIOPins 1 -moduleAwareSpare 0 -preserveRouting 1 -rmAffectedRouting 0 -checkRoute 0 -swapEEQ 0
setPlaceMode -fp false
place_design
getCTSMode -engine -quiet
create_ccopt_clock_tree_spec
ctd_win -side none -id ctd_window -unit_delay
getAnalysisMode -checkType
getAnalysisMode -checkType
get_time_unit
report_timing -machine_readable -max_paths 10000 -max_slack 0.75 -path_exceptions all -early > top.mtarpt
load_timing_debug_report -name default_report top.mtarpt
reset_parasitics
extractRC
rcOut -spef sram_64bit.spef -rc_corner rc
setNanoRouteMode -quiet -routeWithTimingDriven 1
setNanoRouteMode -quiet -routeWithSiDriven 1
setNanoRouteMode -quiet -routeTopRoutingLayer 9
setNanoRouteMode -quiet -routeBottomRoutingLayer 1
setNanoRouteMode -quiet -drouteEndIteration 1
setNanoRouteMode -quiet -routeWithTimingDriven true
setNanoRouteMode -quiet -routeWithSiDriven true
routeDesign -globalDetail
setLayerPreference node_layer -isVisible 0
setLayerPreference node_layer -isVisible 1
setLayerPreference node_layer -isSelectable 0
setLayerPreference node_layer -isSelectable 1
setLayerPreference node_layer -isVisible 0
setLayerPreference node_layer -isVisible 1
getMultiCpuUsage -localCpu
get_verify_drc_mode -disable_rules -quiet
get_verify_drc_mode -quiet -area
get_verify_drc_mode -quiet -layer_range
get_verify_drc_mode -check_ndr_spacing -quiet
get_verify_drc_mode -check_only -quiet
get_verify_drc_mode -check_same_via_cell -quiet
get_verify_drc_mode -exclude_pg_net -quiet
get_verify_drc_mode -ignore_trial_route -quiet
get_verify_drc_mode -max_wrong_way_halo -quiet
get_verify_drc_mode -use_min_spacing_on_block_obs -quiet
get_verify_drc_mode -limit -quiet
set_verify_drc_mode -disable_rules {} -check_ndr_spacing auto -check_only default -check_same_via_cell false -exclude_pg_net false -ignore_trial_route false -ignore_cell_blockage false -use_min_spacing_on_block_obs auto -report sram_64bit.drc.rpt -limit 1000
verify_drc
set_verify_drc_mode -area {0 0 0 0}
saveDesign sram_64bit.innovus
streamOut 64-bit_SRAM.gds -mapFile streamOut.map -libName DesignLib -units 2000 -mode ALL
setLayerPreference node_layer -isVisible 0
setLayerPreference node_layer -isVisible 1
setLayerPreference node_layer -isSelectable 0
setLayerPreference node_layer -isVisible 0
setLayerPreference node_layer -isVisible 1
setLayerPreference node_layer -isSelectable 1
setLayerPreference node_layer -isVisible 0
setLayerPreference node_route -isVisible 0
setLayerPreference node_route -isVisible 1
setLayerPreference node_layer -isVisible 1
setLayerPreference node_net -isVisible 0
setLayerPreference node_net -isVisible 1
setLayerPreference node_route -isVisible 0
setLayerPreference node_route -isVisible 1
setLayerPreference node_gird -isVisible 1
setLayerPreference node_gird -isVisible 0
setLayerPreference node_layer -isVisible 0
setLayerPreference node_layer -isVisible 1
setLayerPreference node_layer -isSelectable 0
setLayerPreference node_layer -isVisible 0
setLayerPreference Metal9 -isVisible 1
setLayerPreference Via8 -isVisible 1
setLayerPreference Metal8 -isVisible 1
setLayerPreference Via7 -isVisible 1
setLayerPreference Metal7 -isVisible 1
setLayerPreference Via6 -isVisible 1
setLayerPreference Metal6 -isVisible 1
setLayerPreference Via5 -isVisible 1
setLayerPreference Metal5 -isVisible 1
setLayerPreference Via4 -isVisible 1
setLayerPreference Metal4 -isVisible 1
setLayerPreference Via3 -isVisible 1
setLayerPreference Metal3 -isVisible 1
setLayerPreference Via2 -isVisible 1
setLayerPreference Metal2 -isVisible 1
setLayerPreference Via1 -isVisible 1
setLayerPreference Metal1 -isVisible 1
setLayerPreference Cont -isVisible 1
setLayerPreference Poly -isVisible 1
setLayerPreference node_layer -isSelectable 1
setLayerPreference node_layer -isVisible 0
setLayerPreference node_layer -isVisible 1
zoomBox -102.17650 105.16150 470.97900 359.43800
zoomBox -65.58650 126.01500 421.59700 342.15050
zoomBox 33.52500 182.50000 287.83800 295.32400
zoomBox 93.73650 216.81600 206.57750 266.87700
zoomBox 114.07400 226.90650 183.37350 257.65050
zoomBox 130.08300 235.18000 166.25850 251.22900
zoomBox 139.80850 240.33300 155.86100 247.45450
zoomBox 143.44000 242.20750 151.82050 245.92550
zoomBox 145.33600 243.18600 149.71100 245.12700
zoomBox 139.80450 240.33100 155.86400 247.45550
zoomBox 119.50450 229.85250 178.44400 256.00050
zoomBox 45.00850 191.39850 261.30950 287.35900
zoomBox -83.37200 125.12950 404.11650 341.40050
zoomBox -464.49450 -71.60200 828.06850 501.83450
fit
setLayerPreference node_layer -isVisible 0
zoomBox 144.79700 184.57900 443.98850 317.31300
zoomBox 272.96150 240.90800 354.48900 277.07700
zoomBox 305.57550 255.24150 331.71350 266.83750
zoomBox 316.03150 259.83700 324.41200 263.55500
zoomBox 305.57000 255.23850 331.71750 266.83850
zoomBox 272.93700 240.89500 354.50550 277.08250
zoomBox 193.61500 206.03300 409.89600 301.98450
zoomBox -16.70200 113.59700 556.76250 368.01050
zoomBox -574.34950 -131.49450 946.17500 543.07550
zoomBox -2052.93400 -781.34750 1978.69350 1007.25550
fit
setLayerPreference node_layer -isVisible 1
zoomBox -1260.24350 -419.35700 1214.33850 678.47400
zoomBox -793.98450 -221.21200 993.90200 571.97100
fit
saveFPlan sram_64bit.fp
