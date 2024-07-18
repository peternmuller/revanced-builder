#!/usr/bin/env bash

set -e

pr() { echo -e "\033[0;32m[+] ${1}\033[0m"; }
ask() {
	local y
	for ((n = 0; n < 3; n++)); do
		pr "$1 [y/n]"
		if read -r y; then
			if [ "$y" = y ]; then
				return 0
			elif [ "$y" = n ]; then
				return 1
			fi
		fi
		pr "Asking again..."
	done
	return 1
}

pr "Ask for storage permission"
until
	yes | termux-setup-storage >/dev/null 2>&1
	ls /sdcard >/dev/null 2>&1
do sleep 1; done
if [ ! -f ~/.rvmm_"$(date '+%Y%m')" ]; then
	pr "Setting up environment..."
	yes "" | pkg update -y && pkg install -y openssl git wget jq openjdk-17 zip
	: >~/.rvmm_"$(date '+%Y%m')"
fi
mkdir -p /sdcard/Download/revanced-builder/

if [ ! -d revanced-builder ]; then
	pr "Cloning revanced-builder."
	git clone https://github.com/peternmuller/revanced-builder --depth 1
	cd revanced-builder
	sed -i '/^enabled.*/d; /^\[.*\]/a enabled = false' config.toml
	grep -q 'revanced-builder' ~/.gitconfig 2>/dev/null \
		|| git config --global --add safe.directory ~/revanced-builder
else
	cd revanced-builder
	pr "Checking for revanced-builder updates"
	git fetch
	if git status | grep -q 'is behind\|fatal'; then
		pr "revanced-builder already is not synced with upstream."
		pr "Cloning revanced-builder. config.toml will be preserved."
		cd ..
		cp -f revanced-builder/config.toml .
		rm -rf revanced-builder
		git clone https://github.com/j-hc/revanced-builder --recurse --depth 1
		mv -f config.toml revanced-builder/config.toml
		cd revanced-builder
	fi
fi

[ -f ~/storage/downloads/revanced-builder/config.toml ] \
	|| cp config.toml ~/storage/downloads/revanced-builder/config.toml

if ask "Open rvmm-config-gen to generate a config?"; then
	am start -a android.intent.action.VIEW -d https://j-hc.github.io/rvmm-config-gen/
fi
printf "\n"
until
	if ask "Open 'config.toml' to configure builds?\nAll are disabled by default, you will need to enable at first time building"; then
		am start -a android.intent.action.VIEW -d file:///sdcard/Download/revanced-builder/config.toml -t text/plain
	fi
	ask "Setup is done. Do you want to start building?"
do :; done
cp -f ~/storage/downloads/revanced-builder/config.toml config.toml

./build.sh

cd build
PWD=$(pwd)
for op in *; do
	[ "$op" = "*" ] && {
		pr "glob fail"
		exit 1
	}
	mv -f "${PWD}/${op}" ~/storage/downloads/revanced-builder/"${op}"
done

pr "Outputs are available in /sdcard/Download/revanced-builder folder"
am start -a android.intent.action.VIEW -d file:///sdcard/Download/revanced-builder -t resource/folder
sleep 2
am start -a android.intent.action.VIEW -d file:///sdcard/Download/revanced-builder -t resource/folder
