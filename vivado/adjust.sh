#!/bin/bash
mv ./jupyter_notebook/caravel_fpga.bit ./jupyter_notebook/design_1.bit
mv ./jupyter_notebook/caravel_fpga.hwh ./jupyter_notebook/design_1.hwh

cp ../testbench/lab6_uart/lab6.hex -t ./jupyter_notebook
