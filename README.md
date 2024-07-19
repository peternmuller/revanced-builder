#### ⚠️ Do not download APKs or modules from random websites you find on Google, as they may be dangerous and because providers impersonate ReVanced/ReVanced Extended. Please build your application from official sources or use open source builders like this one.

# Welcome to my ReVanced Builder!
[![CI](https://github.com/peternmuller/revanced-builder/actions/workflows/ci.yml/badge.svg?event=schedule)](https://github.com/peternmuller/revanced-builder/actions/workflows/ci.yml)

This ReVanced Builder creates both APKs and [Magisk](https://github.com/topjohnwu/Magisk)/[KernelSU](https://github.com/tiann/KernelSU) modules for [ReVanced](https://github.com/ReVanced) and [ReVanced Extended](https://github.com/inotia00/revanced-patches) versions of YouTube and YouTube Music.

#### **Get the latest CI release [here](https://github.com/peternmuller/revanced-builder/releases/latest)!**

## Installation
### Non-root users
- Install the [ReVanced GmsCore app](https://github.com/ReVanced/GmsCore/releases/latest).
- Download the APK files you want to install from the [releases page](https://github.com/peternmuller/revanced-builder/releases/latest).
- (Optional) Import [one of my custom settings file](https://github.com/peternmuller/revanced-builder/tree/main/custom-settings) in your application. [*How to do this?*](https://github.com/peternmuller/revanced-builder/tree/main/custom-settings)
- Enjoy!
### Root users
- Download the ZIP files you want to flash from the [releases page](https://github.com/peternmuller/revanced-builder/releases/latest).
- (Optional) Import [one of my custom settings file](https://github.com/peternmuller/revanced-builder/tree/main/custom-settings) in your application. [*How to do this?*](https://github.com/peternmuller/revanced-builder/tree/main/custom-settings)
- (Optional) Use [zygisk-detach](https://github.com/j-hc/zygisk-detach) to detach YouTube and YouTube Music from the Play Store.
- Enjoy!

## Easily update ReVanced apps with Obtainium
You can easily update the ReVanced apps from this builder by using [Obtainium](https://github.com/ImranR98/Obtainium) which allows you to install and update apps directly from their releases pages, and receive notifications when new releases are made available.

#### Here is a quick tutorial on how to add them to Obtainium:

<img width="2160" alt="obtainium_quick_tutorial" src="https://github.com/user-attachments/assets/3f0af16e-328e-4831-99c5-9253192403c7">

> [!NOTE]
> In step 5, you need to enter the regular expression that corresponds to the application you want to install:
> - YouTube ReVanced: `youtube-revanced`
> - YouTube ReVanced Extended: `youtube-extended-revanced`
> - YouTube Music ReVanced: `yt-music-revanced`
> - YouTube Music ReVanced Extended: `yt-music-extended-revanced`

## Import custom settings in ReVanced applications
I personally like my YouTube and YouTube Music applications to be as close as possible to the original look, but less cluttered, easier and less annoying to use. If this is also the case for you, I highly recommend importing [my custom settings file](https://github.com/peternmuller/revanced-builder/tree/main/custom-settings).

**To do this, go to YouTube Settings &rarr; ReVanced (or ReVanced Extended) &rarr; Miscellaneous (or Advanced Settings for YouTube Music) &rarr; Import&nbsp;/&nbsp;Export settings.**

## Building Locally
### On Termux
```bash
bash <(curl -sSf https://raw.githubusercontent.com/peternmuller/revanced-builder/main/build-termux.sh)
```
### On Desktop
```bash
git clone https://github.com/peternmuller/revanced-builder
cd revanced-builder
./build.sh
```
