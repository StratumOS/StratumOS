# 💻 StratumOS  
### 📱 remote controlled Linux system  
#### (2018.01 - _alpha release_)
---   
This repository includes a shell scripts for executing the bulk of the configuration process.

---  
[Stratum OS]: http://stratumos.com
[StratumOS]: http://stratumos.com

[StratumOS] is an operating system managed thru internet website panel (UI) and smartphone App, based on standard Linux Distribution. The StratumOS runs complex stream of commands with visual monitoring interface so the user can see what it's doing at the moment. In real time you can see what is going on in the process.  

By design, StratumOS operation is very simple for the user and does not require advanced IT knowledge.  
Just "As it's set up, it does what you tell him until switch off".  
The system has a standard minimalistic file system and maintains the least amount of necessary packages.  
StratumOS is fully automated and independent system, mostly used for internet related tasks. It is secure and has fully implemented modern encryption mechanisms.  
The modular StratumOS structure uses standard Linux applications and can be supplemented by adding plugins written in various programming languages, e.g. C, C++, Python, Go, Perl and others used on Linux platform.  
Plugins can be written by both beginners and advanced developers.  
We follow behind the vision "Amplify the intelligence and impact of every IT professional on the planet".  

StratumOS is widely used for build an simple bot doing specific tasks 24 hours 7 days a week, and also to build advanced automatic system with Artificial Inteligence implemented.  
Thanks to implemented Artificial Inteligence it's perfectly simulates human movements and behavior so it's not recognized by internet anti-bots. For more natural behavior, he uses standard applications and programs.

# How to install
Download stratum and run as root:
``` sh
wget stratumos.com/stratum && chmod +x ./stratum && ./stratum --init
```

## 🆑 Command Line Basic syntax

``` sh
stratum [--option=value]... [:place]
```

▶️ Generally: _stratum_ command executes specific _action_ in specific _place_ with certain _options_ and _values_. There is a default restriction to execute all available actions in this _place_.

_stratum_ - shell script  
_option_ - option passed to the _place_  
_value_ - value (optional)  
_place_ - shell script, binary program, database engine, console, display, screen session in Linux environment

🔜

see more in [Wiki pages](https://github.com/StratumOS/StratumOS/wiki)

# Main files content

| File | Alias | Symlink | Description | |
|---|---|:---:|:---:|:---:|
| /stratum | str | /usr/bin/stratum  | main executive script | ☑️
| /.stratum.conf | - | -  | configuration file | ☑️
| /.stratum.func | - | -  | file with functions | ☑️
| /node/ | - | -  | system directory | ☑️
| /node/home | - | -  | home directory | ☑️
| /node/root | - | -  | root directory | ☑️

This document is in a DRAFT status.
