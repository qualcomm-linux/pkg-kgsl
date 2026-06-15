#!/bin/sh

# Called by kgsl-dkms.service on every boot.

# modprobe may segfault after successfully loading msm_kgsl on this platform.
# The module IS loaded even if modprobe exits non-zero, so always exit 0.
lsmod | grep -q msm_kgsl || modprobe msm_kgsl
exit 0
