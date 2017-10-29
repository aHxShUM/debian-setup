#!/bin/sh

TYPE=${2:-u}

cpupower frequency-set -$TYPE $1
