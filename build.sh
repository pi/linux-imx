#imxmake ARCH=arm myd_y6ulx_defconfig
#imxmake ARCH=arm O="$PWD/../build" mys_6ulx_defconfig
#imxmake mys_6ulx_defconfig

#imxmake ARCH=arm min_6ull_defconfig
make ARCH=arm CROSS_COMPILE=arm-none-linux-gnueabihf- zImage dtbs -j32
#make ARCH=arm CROSS_COMPILE=arm-none-linux-gnueabihf- modules -j32

mkdir -p $PWD/../build

cp $PWD/arch/arm/boot/zImage $PWD/../build/
cp $PWD/arch/arm/boot/dts/myd-y6ull*.dtb $PWD/../build/
cp $PWD/arch/arm/boot/dts/myd-y6ul*.dtb $PWD/../build/

#imxmake ARCH=arm modules -j32 2>!modules_build_errors.txt
#make modules_install O="$PWD/../build"