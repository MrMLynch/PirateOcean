## PirateOcean (pirate-qt) ##

Pirate-Qt (PirateOcean) is a world-first Qt native wallet for ARRR ([Pirate](https://pirate.black/)). It's available for three OS platforms - Windows, Linux, MacOS.

**NB!** This repo has **three** branches:


- [WinOS](../../tree/WinOS) for Windows
- [Linux](../../tree/Linux) for Linux
- [MacOS](../../tree/MacOS) for MacOS

Visit [#wallet-development](https://discord.gg/b8FYze) channel in Pirate Discord for more information.

### System requirements ###

- Windows 7 / 10 (64-bit) based PC.
- At least 4 Gb of **free** RAM (8 or 16 Gb physical RAM recommended).
- About ~10-15 Gb of storage space to sync full blockchain (SSD drive is recommended)

Before you start create the following configuration file, named `PIRATE.conf` in `~/Library/Application\ Support/Komodo/PIRATE` folder:

    rpcuser=bitcoinrpc
    rpcpassword=password
    txindex=1
    addnode=136.243.102.225
    addnode=zero.kolo.supernet.org

And download following files in `~/Library/Application Support/ZcashParams` folder: 

- [sprout-proving.key](https://z.cash/downloads/sprout-proving.key)
- [sprout-verifying.key](https://z.cash/downloads/sprout-verifying.key)
- [sapling-spend.params](https://z.cash/downloads/sapling-spend.params)
- [sapling-output.params](https://z.cash/downloads/sapling-output.params)
- [sprout-groth16.params](https://z.cash/downloads/sprout-groth16.params)

Also you can use `fetch-params.sh` batch file in `zcutil` folder to download all needed automatically.

If you already have installed Agama Wallet - you already have all needed. 

For more information about Komodo Platform, please visit official site: [https://komodoplatform.com/](https://komodoplatform.com/) . 
For more information about Pirate, please visit official site: [https://pirate.black/](https://pirate.black/) .

If you have any questions or just want to be a part of community, please [join](https://discord.gg/b8FYze).

### Project Status ###

Currenly Pirate-qt is *under developement*. Use it at your own risk - do not use for mining or merchant applications, also we don't recommend using it with your main wallet. Before use you can copy your main wallet.dat in a secure place or use `-datadir` command-line key to select other data folder for use with Pirate-qt.

Features:

- Native QT wallet written in C/C++ and Rust (librustzcash library).
- Receiving and sending coins.
- **Sapling support**.


Existing issues:

- You tell us ... ;)

### How to build? ###

The commands in this guide should be executed in a Terminal application. The built-in one is located in `/Applications/Utilities/Terminal.app`.

Install the macOS command line tools:

`xcode-select --install`

When the popup appears, click `Install`.

Then install [Homebrew](https://brew.sh/):

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

Paste that in a Terminal prompt.

If you already have installed brew before, update it: `brew update`

Install bitcoin-qt dependencies (some of them don't needed to build PirateOcean, but good to have it there):

```
brew install automake berkeley-db4 libtool boost miniupnpc openssl pkg-config protobuf python qt libevent qrencode
brew install librsvg
```

Install other needed dependencies:

```
brew install gcc@6
brew install coreutils # to have ginstall
```

Build:

```
git clone https://github.com/TheComputerGenie/PirateOcean --branch MacOS --single-branch
cd PirateOcean
./zcutil/fetch-params.sh
./build.sh # this can take some time.

```

Launch:

```
./PirateWallet &
```

Enjoy your PirateWallet on your Mac :

![](./doc/images/komodo-qt-macos.png)


Build instructions above was successfully tested on latest macOS Mojave 10.14.3 (18D109).

### Developers of Qt wallet ###
- Main Pirate developer: [TheComputerGenie](https://github.com/TheComputerGenie)
- Main developer: [Ocean](https://github.com/ip-gpu)
- IT Expert / Sysengineer: [Decker](https://github.com/DeckerSU) 
