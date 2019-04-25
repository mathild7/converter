############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project converter
set_top converter
add_files converter.cpp
add_files converter.h
add_files -tb converter_test.cpp
open_solution "solution1"
set_part {xc7z100ffg900-1}
create_clock -period 10 -name default
#source "./converter/solution1/directives.tcl"
csim_design -compiler gcc
csynth_design
cosim_design
export_design -flow syn -rtl verilog -format ip_catalog
