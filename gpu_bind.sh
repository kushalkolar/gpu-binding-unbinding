#!/bin/bash

source "/etc/libvirt/hooks/kvm.conf"
## Unbind gpu from vfio and bind to nvidia
virsh nodedev-reattach $VIRSH_GPU_VIDEO
virsh nodedev-reattach $VIRSH_GPU_AUDIO

