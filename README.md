# 💻 StratumOS
### 📱 remote controlled Linux system  
---  
This repository includes a shell scripts for executing the bulk of the configuration process.

---  

StratumOS is an operating system managed thru internet website panel and smartphone App, based on standard Linux Distribution. One of the main goal is that, the StratumOS could be fully automated and independent system but integrated with global network at the same time. It is secure and has fully implemented modern encryption mechanisms.
The modular StratumOS can be supplemented by adding plugins written in various programming languages, e.g. C, C++, Python, Go, Perl and others used on Linux platform.
Plugins can be written by both beginners and advanced developers.
We follow behind the vision "Amplify the intelligence and impact of every IT professional on the planet".  

StratumOS is widely used for build an simple bot doing specific tasks 24 hours 7 days a week, and also to build advanced automatic system with Artificial Inteligence implemented.  

# How to install
``` sh
wget stratumos.com/stratum && chmod +x ./stratum && ./stratum --init
```

## Basic syntax

``` sh
stratum [place:action] [--parameter:value]
```

see more in [Wiki pages](https://github.com/StratumOS/StratumOS/wiki)

# Files content

| File | Alias | Symlink | Description | |
|---|---|:---:|:---:|:---:|
| install.sh | - | - | installation script |
| /node/stratumos | st | /usr/bin/stratumos  | executive script | ☑️
| /node/stratumos/bin/ | - | /usr/bin/stratumos  | executive script | ☑️
| /node/etc/stratumos.conf | - | /usr/bin/stratumos  | config file | ☑️
| /node/etc/stratumos.json | - | /usr/bin/stratumos  | json file | ☑️
