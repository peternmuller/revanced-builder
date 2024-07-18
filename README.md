#### ⚠️ Do not download modules from random websites you find on Google, as many impersonate ReVanced/ReVanced Extended and provide dangerous APKs and modules. Please build your application from official sources or use open source builders like this one.

# Welcome to my ReVanced Builder!
[![CI](https://github.com/peternmuller/revanced-builder/actions/workflows/ci.yml/badge.svg?event=schedule)](https://github.com/peternmuller/revanced-builder/actions/workflows/ci.yml)

This ReVanced Builder creates both APKs and [Magisk](https://github.com/topjohnwu/Magisk)/[KernelSU](https://github.com/tiann/KernelSU) modules for [ReVanced](https://github.com/ReVanced) and [ReVanced Extended](https://github.com/inotia00/revanced-patches) versions of YouTube and YouTube Music.

#### **Get the latest CI release [here](https://github.com/peternmuller/revanced-builder/releases/latest)!**

## Usage & Installation
### Non-root users
- Install the [ReVanced GmsCore app](https://github.com/ReVanced/GmsCore/releases/latest).
- Download the APK files you want to install from the [releases page](https://github.com/peternmuller/revanced-builder/releases/latest).
- Enjoy!

### Root users
- Download the ZIP files you want to flash from the [releases page](https://github.com/peternmuller/revanced-builder/releases/latest).
- (Optional) Use [zygisk-detach](https://github.com/j-hc/zygisk-detach) to detach YouTube and YouTube Music from the Play Store.
- Enjoy!

## Building Locally
### On Termux
```console
bash <(curl -sSf https://raw.githubusercontent.com/j-hc/revanced-magisk-module/main/build-termux.sh)
```

### On Desktop
```console
git clone https://github.com/j-hc/revanced-magisk-module
cd revanced-magisk-module
./build.sh
```
