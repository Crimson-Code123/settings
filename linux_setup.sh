#!/usr/bin/bash

tar -xf kernel_config.tar.gz
unzip D.zip && 
unzip install.zip
cd inst
tar -xf openssl-3.4.0.tar.gz && 
tar -xf linux-6.14.tar.xz
sudo apt deb libasm1t64_0.190-1.1build4_amd64.deb && 
sudo apt deb m4_1.4.19-4build1_amd64.deb && 
sudo apt deb bison_2%3a3.8.2+dfsg-1build2_amd64.deb && 
sudo apt deb elfutils_0.190-1.1build4_amd64.deb && 
sudo apt deb pkg-config_1.8.1-2build1_amd64.deb && 
sudo apt deb libncurses-dev_6.4+20240113-1ubuntu2_amd64.deb && 
sudo apt deb zlib1g-dev_1%3a1.3.dfsg-3.1ubuntu2.1_amd64.deb && 
sudo apt deb libzstd-dev_1.5.5+dfsg2-2build1.1_amd64.deb && 
sudo apt deb libelf-dev_0.190-1.1build4_amd64.deb && 
sudo apt deb flex_2.6.4-8.2build1_amd64.deb
cd openssl-3.4.0/
./Configure && 
make -j 12 && 
#sudo make install && 
#sudo ldconfig /usr/local/lib64
cd ..
cd linux-6.14/
make clean &&
scripts/config --disable SYSTEM_REVOCATION_KEYS && 
scripts/config --disable SYSTEM_TRUSTED_KEYS && 
make menuconfig && 
time make -j 12 && 
sudo find . -name *.ko -exec strip --strip-unneeded {} + && 
# sudo nano /etc/default/grub
#command -v installkernel && sudo make modules_install install
