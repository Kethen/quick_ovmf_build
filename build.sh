if ! [ -e edk2 ]
then
	(
		git clone https://github.com/tianocore/edk2.git
		cd edk2
		git submodule update --init --recursive
	)
fi

cd edk2
source edksetup.sh
cp ../target.txt Conf/
make -C BaseTools
build -DTPM2_ENABLE -DSECURE_BOOT_ENABLE

