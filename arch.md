# Arch Linux Installation
These instructions are my personal use. They mostly repeat the knowledge contained in [Resources](#resources) so go there instead.

## Setup
### Adjusting Windows for Dual Boot
* Open Disk Management on Windows (`diskmgmt.msc`)
* Shrink partition to desired size

### Creating Bootable USB
* Use [Rufus](https://rufus.ie/). Don't use UNetbootin.

### Change BIOS Settings and Boot from USB
* System settings are accessed through DEL key
* Disable CSM (Compatibility Support Module)
* Secure Boot option should now appear. Disable it.
* You can access the boot menu through system settings or F12 key for boot menu

## Installation
### Verify the boot mode
``` bash
# Ensure the following directory exists.
# Otherwise, you are not booted in UEFI mode (BIOS/CSM).
$ ls /sys/firmware/efi/efivars
```

### Connect to the internet
``` bash
# The following assumes a wired connection

# Ensure your network interface is listed and enabled
$ # ip link

# DHCP should work out of the box. Test it.
$ ping archlinux.org
```

### Partition the Disks
```bash

# find out the name of your drive (/dev/nvme0n1)
$ fdisk -l

# The following partitions are required for UEFI with GPT (GUID Partition Table):
#   EFI Partition system (mounted at /mnt/boot or /mnt efi): ~1024MB
#   Swap Partition: ~8GB
#   /mnt [Linux x86-64 root (/)]: Remainder of the partition

$ fdisk /dev/nvme0n1
% n                     # Create a new partition
% <ENTER>               # Use the default partition number
% <ENTER>               # Use the default starting sector
% +1024M                # The EFI partition should be 1024MB
% t                     # Change the partition type
% <ENTER>               # Use the default partition


```

<TODO> Finish instructions


## Resources
* [Arch Linux Installation Guide](https://wiki.archlinux.org/index.php/installation_guide)
* [comprehensive guide to dual boot arch & windows](https://gist.github.com/ppartarr/175aa0c3416daf3baacde17f442f80e1)
