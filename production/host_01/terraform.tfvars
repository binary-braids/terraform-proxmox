#Domain Controller
dc01_name               = "vm-prod-dc-01"
dc01_desc               = "Domain Controller"
dc01_automatic_reboot   = true
dc01_bios               = "ovmf"
dc01_boot               = "order=sata0;sata1"
dc01_cores              = 1
dc01_sockets            = 2
dc01_cpu                = "host"
dc01_force_create       = false
dc01_hotplug            = "disk,network,usb"
dc01_memory             = 2048
dc01_onboot             = true
dc01_vm_state           = "running"
dc01_os_type            = "Microsoft Windows 11/2022/2025"
dc01_qemu_os            = "l26"
dc01_scsihw             = "lsi"
dc01_protection         = false
dc01_tablet             = true
dc01_target_node        = "prod-host-01.binarybraids.com"
dc01_efitype            = "4m"
dc01_efi_storage        = "VM-240GB-SSD"
dc01_disk_size          = "75G"
dc01_disk_storage       = "VM-240GB-SSD"
dc01_bridge             = "vmbr0"
dc01_model              = "virtio"

# File Server
media_name               = "vm-prod-fs-01"
media_desc               = "File Server"
media_automatic_reboot   = true
media_bios               = "seabios"
media_boot               = "order=sata0"
media_cores              = 2
media_sockets            = 2
media_cpu                = "host"
media_force_create       = false
media_hotplug            = "disk,network,usb"
media_memory             = 1024
media_onboot             = true
media_vm_state           = "running"
media_os_type            = "Linux 6.x - 2.6 Kernel"
media_qemu_os            = "l26"
media_scsihw             = "lsi"
media_protection         = false
media_tablet             = true
media_target_node        = "prod-host-01.binarybraids.com"
media_disk_size          = "20G"
media_disk_storage       = "VM-240GB-SSD"
media_bridge             = "vmbr0"
media_model              = "virtio"