#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2019.2 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Sat Apr 11 13:53:56 -05 2020
# SW Build 2708876 on Wed Nov  6 21:39:14 MST 2019
#
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
#
# usage: elaborate.sh
#
# ****************************************************************************
set -Eeuo pipefail
echo "xelab -wto 50589f1c5fb3411c9825119526b7c78f --incr --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot BCDtoSSeg_TB_behav xil_defaultlib.BCDtoSSeg_TB xil_defaultlib.glbl -log elaborate.log"
xelab -wto 50589f1c5fb3411c9825119526b7c78f --incr --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot BCDtoSSeg_TB_behav xil_defaultlib.BCDtoSSeg_TB xil_defaultlib.glbl -log elaborate.log

