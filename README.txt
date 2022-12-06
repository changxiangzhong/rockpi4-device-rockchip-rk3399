This project derives from the offical rockchip vendor
https://gitlab.com/rk-vendor/rk/device/rockchip/rk3399







The follow is about how to compile for the 1st time
#!/bin/sh
#repo init -u git@github.com:changxiangzhong/rockpi4-manifests.git -b rockpi-box-9.0 -m rockpi-release.xml
#repo sync -j 8
cd u-boot/                                                      &&\
./make.sh rk3399                                                &&\
cd ../kernel/                                                   &&\
make chang_defconfig                                            &&\
make rk3399-rockpi-4b.img -j32                                  &&\
cd ..                                                           &&\
source build/envsetup.sh                                        &&\
lunch 59                                                        &&\
make -j 32

###### For newly setup project, execute the following #####
cp device/rockchip/common/mkimage.sh  ./
ln -s RKTools/linux/Linux_Pack_Firmware/rockdev/ rockdev

##### Fix android-gpt.sh
# Add the following before the print
# LC_NUMERIC="en_US.UTF-8" 
