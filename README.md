<br />
<div align=center>
    <div align="center">
        <img src="https://github.com/acidanthera/OpenCorePkg/raw/master/Docs/Logos/OpenCore_with_text_Large.png" alt="OpenCore Logo" width="256"/>
    </div>
  <h4>OpenCore EFI for ASRock B650M PG Riptide</a></h4>
</div>

___

> [!IMPORTANT]  
> This EFI is intended to be used for reference only, and cannot be used as-is. Even for identical hardware, you will need to generate your own [SMBIOS](https://dortania.github.io/OpenCore-Install-Guide/AMD/zen.html#platforminfo) data, [USB mapping](https://dortania.github.io/OpenCore-Post-Install/usb/), and [ACPI patches](https://chefkissinc.github.io/guides/hackintosh/gathering-files/acpi/#generating-the-ssdts) to ensure proper functionality.

> [!CAUTION]
> Please follow the [OpenCore Install Guide](https://dortania.github.io/OpenCore-Install-Guide/) and [ChefKissInc Guide](https://chefkissinc.github.io/guides/hackintosh/) to create your own EFI.

___

## 🖥️ Hardware

| Component         | Model                                  |
| ----------------- | -------------------------------------- |
| CPU               | AMD Ryzen 5 7600X                      |
| iGPU              | AMD Radeon Graphics (Disable in BIOS)  |
| dGPU              | NVIDIA GeForce RTX 3060 12GB (Windows) |
| dGPU              | AMD Radeon Pro WX 7100 8GB (macOS)     |
| Motherboard       | ASRock B650M PG Riptide AM5            |
| RAM               | 64GB DDR5 3600MHz                      |
| Storage           | Silicon Power Slim S55 512 GB (macOS)  |
| Audio             | Realtek ALC897                         |
| Ethernet          | Realtek RTL8125                        |
| Wi-Fi + Bluetooth | Intel Wireless-AC 9260                 |
| BIOS Version      | 3.06                                   |

## 📝 Notes

- AM5 requires [MMIO whitelisting](https://dortania.github.io/OpenCore-Install-Guide/extras/kaslr-fix.html#using-devirtualisemmio) to provide enough memory space for the macOS kernel.

### 🛠️ BIOS Settings

> [!NOTE]
> This is not an exhaustive list of required BIOS settings. Please refer to the [OpenCore Install Guide](https://dortania.github.io/OpenCore-Install-Guide/AMD/zen.html#amd-bios-settings) for more information.

| Setting     | Value    |
| ----------- | -------- |
| Secure Boot | Disabled |

### ⚒️ What works

- [x] Graphics Acceleration (AMD Radeon Pro dGPU Only)
- [x] DRM
- [x] USB
- [x] Ethernet
- [X] Wi-Fi
- [x] Bluetooth
- [x] Audio
- [x] HDMI Audio
- [x] NVRAM
- [x] Shutdown

### ⚠️ What doesn't work

- [ ] iGPU (AMD Radeon Graphics)
  - The iGPU is unsupported by macOS, so it must be disabled in the BIOS.
- [ ] Sleep

## 📦 Versions

| Component                                                                                                             | Version |
| --------------------------------------------------------------------------------------------------------------------- | ------- |
| [OpenCore](https://github.com/acidanthera/OpenCorePkg/)                                                               | 1.0.3   |
| [AirportItlwm](https://github.com/OpenIntelWireless/itlwm/)                                                           | 2.3.0   |
| [AppleALC](https://github.com/acidanthera/AppleALC)                                                                   | 1.9.3   |
| [AppleMCEReporterDisabler](https://github.com/acidanthera/bugtracker/files/3703498/AppleMCEReporterDisabler.kext.zip) | 1.0.0   |
| [BlueToolFixup](https://github.com/acidanthera/BrcmPatchRAM)                                                          | 2.6.9   |
| [FeatureUnlock](https://github.com/acidanthera/FeatureUnlock/)                                                        | 1.1.7   |
| [IntelBluetoothFirmware](https://github.com/OpenIntelWireless/IntelBluetoothFirmware/)                                | 2.4.0   |
| [Lilu](https://github.com/acidanthera/Lilu)                                                                           | 1.7.0   |
| [LucyRTL8125Ethernet](https://github.com/Mieze/LucyRTL8125Ethernet)                                                   | 1.2.0d5 |
| [NVMeFix](https://github.com/acidanthera/NVMeFix)                                                                     | 1.1.2   |
| [RestrictEvents](https://github.com/acidanthera/RestrictEvents)                                                       | 1.1.5   |
| [SMCProcessorAMD](https://github.com/Lorys89/SMCProcessorAMD)                                                         | 1.0.1   |
| [SMCRadeonSensors](https://github.com/ChefKissInc/SMCRadeonSensors)                                                   | 2.3.1   |
| [VirtualSMC](https://github.com/acidanthera/VirtualSMC)                                                               | 1.3.4   |
| [WhateverGreen](https://github.com/acidanthera/WhateverGreen)                                                         | 1.6.9   |

## 📚 References

- [OpenCore Install Guide](https://dortania.github.io/OpenCore-Install-Guide/)
- [OpenCore Post-Install Guide](https://dortania.github.io/OpenCore-Post-Install/)
- [ChefKissInc Guide Differences](https://github.com/ChefKissInc/ChefKissInc.github.io/blob/5fb9b8f8aee751f0000a05dc5c15f318f9170e44/content/0.guide/1.guide-differences.md)
