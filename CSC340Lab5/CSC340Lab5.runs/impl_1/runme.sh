#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/home/cr1tterp0wer/Documents/xilinx/install/Vivado/2019.2/ids_lite/ISE/bin/lin64:/home/cr1tterp0wer/Documents/xilinx/install/Vivado/2019.2/bin
else
  PATH=/home/cr1tterp0wer/Documents/xilinx/install/Vivado/2019.2/ids_lite/ISE/bin/lin64:/home/cr1tterp0wer/Documents/xilinx/install/Vivado/2019.2/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/cr1tterp0wer/CSC340Lab5/CSC340Lab5.runs/impl_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

# pre-commands:
/bin/touch .init_design.begin.rst
EAStep vivado -log multiplier4by3.vdi -applog -m64 -product Vivado -messageDb vivado.pb -mode batch -source multiplier4by3.tcl -notrace


