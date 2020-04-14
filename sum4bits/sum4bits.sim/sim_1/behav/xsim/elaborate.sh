#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2019.2 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Mon Apr 06 12:37:57 -05 2020
# SW Build 2708876 on Wed Nov  6 21:39:14 MST 2019
#
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
#
# usage: elaborate.sh
#
# ****************************************************************************
set -Eeuo pipefail
echo "xelab -wto 0e95761fd97f44f38cf29d62b2fbbe05 --incr --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot simSum4bits_behav xil_defaultlib.simSum4bits xil_defaultlib.glbl -log elaborate.log"
xelab -wto 0e95761fd97f44f38cf29d62b2fbbe05 --incr --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot simSum4bits_behav xil_defaultlib.simSum4bits xil_defaultlib.glbl -log elaborate.log

