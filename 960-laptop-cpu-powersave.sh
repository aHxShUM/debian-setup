#!/bin/sh

cpupower frequency-set -u 1.2GHz

echo 1 | tee /sys/devices/system/cpu/intel_pstate/no_turbo
