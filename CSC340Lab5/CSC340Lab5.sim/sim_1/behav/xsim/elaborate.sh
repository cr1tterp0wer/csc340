#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2019.2 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Mon Mar 09 07:04:47 CDT 2020
# SW Build 2708876 on Wed Nov  6 21:39:14 MST 2019
#
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
#
# usage: elaborate.sh
#
# ****************************************************************************
set -Eeuo pipefail
echo "xelab -wto 2dda95eca81b4f449ff0c2b1f3d26d1f --incr --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot multiplier4by3TEST_behav xil_defaultlib.multiplier4by3TEST xil_defaultlib.glbl -log elaborate.log"
xelab -wto 2dda95eca81b4f449ff0c2b1f3d26d1f --incr --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot multiplier4by3TEST_behav xil_defaultlib.multiplier4by3TEST xil_defaultlib.glbl -log elaborate.log

