#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/sdhci-tegra.3/by-name/SOS:4358144:553cb5870e23e756678d5ac1bcb6dc2d6801ef4c; then
  log -t recovery "Installing new recovery image"
  applypatch EMMC:/dev/block/platform/sdhci-tegra.3/by-name/LNX:3944448:c67fef8c54da2686633706d3f05ef8bd9dcf9e82 EMMC:/dev/block/platform/sdhci-tegra.3/by-name/SOS 553cb5870e23e756678d5ac1bcb6dc2d6801ef4c 4358144 c67fef8c54da2686633706d3f05ef8bd9dcf9e82:/system/recovery-from-boot.p
else
  log -t recovery "Recovery image already installed"
fi
