#!/bin/sh
# Gets a list of old kernels (all but final one)...
oldkernels=$(ls /boot | grep ^vmlinuz | cut -d'-' -f2,3 | head -n -1)
# ...then for each old kernel version, delete all packages with that version
for kernel in $oldkernels; do
    dpkg -l | grep ^ii | grep $kernel | awk -F' ' '{print $2}' | xargs dpkg -r
done
