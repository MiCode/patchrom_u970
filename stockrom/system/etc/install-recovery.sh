#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/sdhci-tegra.3/by-name/SOS:4356096:ac14d9f1e8a8b0dfcdd57e973e792058951f9bf5; then
  log -t recovery "Installing new recovery image"
  applypatch EMMC:/dev/block/platform/sdhci-tegra.3/by-name/LNX:3942400:8924e7b51557db4883533c326ee4555bac8b8e56 EMMC:/dev/block/platform/sdhci-tegra.3/by-name/SOS ac14d9f1e8a8b0dfcdd57e973e792058951f9bf5 4356096 8924e7b51557db4883533c326ee4555bac8b8e56:/system/recovery-from-boot.p
else
  log -t recovery "Recovery image already installed"
fi
