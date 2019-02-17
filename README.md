## PirateOcean (pirate-qt) ##

Pirate-Qt (PirateOcean) is a world-first Qt native wallet for ARRR ([Pirate](https://pirate.black/)). It's available for three OS platforms - Windows, Linux, MacOS.

**NB!** This repo has **three** branches:


- [WinOS](../../tree/WinOS) for Windows
- [Linux](../../tree/Linux) for Linux
- [MacOS](../../tree/MacOS) for MacOS

Visit [#wallet-development](https://discord.gg/6bMdb5P) channel in Pirate Discord for more information.

### How to build? ###

Following dependencies are needed:

```
sudo apt-get install build-essential pkg-config libcurl3-gnutls-dev libc6-dev libevent-dev m4 g++-multilib autoconf libtool ncurses-dev unzip git python zlib1g-dev wget bsdmainutils automake libboost-all-dev libssl-dev libprotobuf-dev protobuf-compiler libqt4-dev libqrencode-dev libdb++-dev ntp ntpdate

sudo apt-get install libcurl4-gnutls-dev 
```

To build Qt wallet execute first:

```
sudo apt-get install libqt5gui5 libqt5core5a libqt5dbus5 qttools5-dev qttools5-dev-tools libprotobuf-dev protobuf-compiler
```

Aslo, if you issued troubles with dependencies, may be this [doc](https://github.com/bitcoin/bitcoin/blob/master/doc/build-unix.md) will be useful.

To build (Ubuntu 16.x / 18.x):

```
cd ~
git clone https://github.com/TheComputerGenie/PirateOcean.git -b Linux
cd PirateOcean
./build.sh
```
For future runs, simply `./PirateWallet`

If during build you get error like "fatal error: sodium.h: No such file or directory compilation terminated.", try to install libsodium-dev:

```
sudo apt install libsodium-dev
```
### Biuld Notes ###
`build.sh` file builds and runs PirateWallet, if you do not want it to auto run then comment out `./PirateWallet`

### Developers of Qt wallet ###
- Main Pirate developer: [TheComputerGenie](https://github.com/TheComputerGenie)
- Main developer: [Ocean](https://github.com/ip-gpu)
- IT Expert / Sysengineer: [Decker](https://github.com/DeckerSU) 
