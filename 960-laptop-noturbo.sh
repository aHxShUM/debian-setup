#!/bin/sh

FLAG=${1:-1}

echo $FLAG | tee /sys/devices/system/cpu/intel_pstate/no_turbo
