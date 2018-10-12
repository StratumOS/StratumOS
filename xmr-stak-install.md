## How to install (compile) xmr-stak?

Install dependencies and tools: (htop, mc)

```
sudo apt-get install openssh-server \
mc \
htop \
perl \
libnet-ssleay-perl \
openssl \
libauthen-pam-perl \
libpam-runtime \
libio-pty-perl \
apt-show-versions \
python \
libmicrohttpd-dev libssl-dev cmake build-essential libhwloc-dev git cmake-curses-gui
```

## Compile xmr-stak:
```
sudo apt install libmicrohttpd-dev libssl-dev cmake build-essential libhwloc-dev git cmake-curses-gui
git clone https://github.com/fireice-uk/xmr-stak.git
mkdir xmr-stak/build
cd xmr-stak/build
sudo apt-get install cmake-curses-gui
ccmake ..
make install
```

```
```
