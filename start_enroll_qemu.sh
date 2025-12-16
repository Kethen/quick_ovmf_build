qemu-kvm \
	-cpu host -smp sockets=1,cores=2,threads=1 -m 256M -M q35 \
	-drive if=pflash,format=raw,file=workdir/edk2/Build/OvmfX64/DEBUG_GCC5/FV/OVMF_CODE.fd,readonly=on \
	-drive if=pflash,format=raw,file=workdir/edk2/Build/OvmfX64/DEBUG_GCC5/FV/OVMF_VARS.fd \
	-drive if=virtio,format=raw,file=disk.img,readonly=on
