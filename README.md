# WorkLoad Optimize SOC (WLOS) Baseline

### Simulation WLOS firmware
```sh
cd ./lab-wlos_baseline/testbench/lab6_uart
source run_clean
source run_sim
```

### Generate HEX for PYNQ
It is not recommended to run wave simulation. We use __lots of nops__ in order to solve https://github.com/bol-edu/HLS-SOC-Discussions/discussions/175
```sh
cd ./lab-wlos_baseline/testbench/lab6_uart
source run_clean
source ps_run_sim_v1
```



