# 💻 StratumOS  
### 📱 remote controlled Linux system  
#### (2018.01 - _alpha release_)
---   
This repository includes a shell scripts for executing the bulk of the configuration process.

---  

StratumOS is an operating system managed thru internet website panel (UI) and smartphone App, based on standard Linux Distribution.  
By design, StratumOS operation is very simple for the user and does not require advanced IT knowledge.  
Just "As it's set up, it does what you tell him until switch off".  
The system has a standard minimalistic file system and maintains the least amount of necessary packages.  
StratumOS is fully automated and independent system, mostly used for internet related tasks. It is secure and has fully implemented modern encryption mechanisms.  
The modular StratumOS structure uses standard Linux applications and can be supplemented by adding plugins written in various programming languages, e.g. C, C++, Python, Go, Perl and others used on Linux platform.  
Plugins can be written by both beginners and advanced developers.  
We follow behind the vision "Amplify the intelligence and impact of every IT professional on the planet".  

StratumOS is widely used for build an simple bot doing specific tasks 24 hours 7 days a week, and also to build advanced automatic system with Artificial Inteligence implemented.  

# How to install
``` sh
wget stratumos.com/stratum && chmod +x ./stratum && ./stratum --init
```

## 🆑 Command Line Basic syntax

``` sh
stratum [--option=value] [:place]
```

▶️ Generally: _stratum_ command executes specific _action_ in specific _place_ with certain _parameters_ and _values_. There is a default restriction to execute all available actions in this _place_.

_stratum_ - shell script  
_option_ - option passed to the _place_  
_value_ - value (optional)  
_place_ - shell script, binary program, database engine, console, display, screen session in Linux environment

🔜

see more in [Wiki pages](https://github.com/StratumOS/StratumOS/wiki)

# Files content

| File | Alias | Symlink | Description | |
|---|---|:---:|:---:|:---:|
| install.sh | - | - | installation script |
| /node/stratumos | st | /usr/bin/stratumos  | executive script | ☑️
| /node/stratumos/bin/ | - | /usr/bin/stratumos  | executive script | ☑️
| /node/etc/stratumos.conf | - | /usr/bin/stratumos  | config file | ☑️
| /node/etc/stratumos.json | - | /usr/bin/stratumos  | json file | ☑️

This document is in a DRAFT status.
