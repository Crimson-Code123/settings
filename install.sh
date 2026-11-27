sudo apt-get install kiwix htop redshift k3b git libmount-dev libcap-dev gperf python3-setuptools python3-wheel python3-pip \
 sphinx libevent-core-2.1-7t64 tmux m4 bison cmake flex pkg-config traceroute nmap mysql-server audacity gimp whois \
 make cmake subversion librust-alsa-sys-dev libssl-dev libxcb1-dev speedtest-cli \
 


git config --global user.email "sam.podlak@gmail.com"
git config --global user.name "Sam"


curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

#https://z3prover.github.io/api/html/go/index.html
git clone https://github.com/Z3Prover/z3.git
cd z3
python3 scripts/mk_make.py --go
cd build && make -j 8
sudo make install

pip3 install z3-solver --break-system-packages


#export CGO_CFLAGS="-I${Z3_ROOT}/src/api"
#export CGO_LDFLAGS="-L${Z3_ROOT}/build -lz3"
#export LD_LIBRARY_PATH="${Z3_ROOT}/build:$LD_LIBRARY_PATH"




