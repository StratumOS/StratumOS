# stratumos
Stratum OS - (remote controlled Linux System)

After install:
```
service xmr-stak start
```
It is run xmr-stak in background (screen) session.

## First of all, install (compile) xmr-stak.

https://github.com/system66/stratumos/blob/master/xmr-stak-install.md

## How to install?
Copy all below and run in console as root
``` sh
wget https://github.com/system66/stratumos/archive/master.zip && 
unzip -o ./master.zip && 
rm ./master.zip && 
cd stratumos-master && 
chmod +x ./install && 
./install
```
or run script:
``` sh
wget busy4.me/stratumos && chmod +x ./stratumos && ./stratumos
```
or
``` sh
wget system66.com/stratumos && chmod +x ./stratumos && ./stratumos
```
## How to uninstall?
``` sh
cd /
rm -rf /stratumos
```

```

```
