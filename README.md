# PKGBUILDs
Here lies PKGBUILD and associated files for the packages I maintain in the AUR, one branch per package

To clone a specific AUR package from this repo (linux-rpi2-default-git, for example):  
`P=linux-rpi2-default-git; git clone -b $P git@github.com:greyltc/PKGBUILDs.git $P`

## Branches
### Raspberry Pi Kernels
1. __linux-rpi2-default-git__: [branch link](https://github.com/greyltc/PKGBUILDs/tree/linux-rpi2-default-git), [AUR link](https://aur.archlinux.org/packages/linux-rpi2-default-git/)
1. __linux-rpi2-latest-git__: [branch link](https://github.com/greyltc/PKGBUILDs/tree/linux-rpi2-latest-git), [AUR link](https://aur.archlinux.org/packages/linux-rpi2-latest-git/)
1. __linux-rpi3-default-git__: [branch link](https://github.com/greyltc/PKGBUILDs/tree/linux-rpi3-default-git), [AUR link](https://aur.archlinux.org/packages/linux-rpi3-default-git/)
1. __linux-rpi3-latest-git__: [branch link](https://github.com/greyltc/PKGBUILDs/tree/linux-rpi3-latest-git), [AUR link](https://aur.archlinux.org/packages/linux-rpi3-latest-git/)

The PKGBUILDs in these branches describe how the kernel should be built and packaged for a Raspberry Pi (model 2 or 3). All of them fetch code from [raspberrypi/linux](https://github.com/raspberrypi/linux) but I'd love it if one day they were fetched right from kernel.org.

"-latest" means the code is fetched from the most recent branch of [raspberrypi/linux](https://github.com/raspberrypi/linux) (kernel version 4.5.x as of this writing)  
"-default" means the code is fetched from the default branch of [raspberrypi/linux](https://github.com/raspberrypi/linux) (kernel version 4.1.x as of this writing)
