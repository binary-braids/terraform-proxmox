#Domain Controller
dc02_name               = "vm-prod-dc-02"
dc02_desc               = "Domain Controller"
dc02_automatic_reboot   = true
dc02_bios               = "ovmf"
dc02_boot               = "order=sata0;sata1"
dc02_cores              = 1
dc02_sockets            = 2
dc02_cpu                = "host"
dc02_force_create       = false
dc02_hotplug            = "disk,network,usb"
dc02_memory             = 2048
dc02_onboot             = true
dc02_vm_state           = "running"
dc02_os_type            = "Microsoft Windows 11/2022/2025"
dc02_qemu_os            = "l26"
dc02_scsihw             = "lsi"
dc02_protection         = false
dc02_tablet             = true
dc02_target_node        = "prod-host-02.binarybraids.com"
dc02_efitype            = "4m"
dc02_efi_storage        = "VM-240GB-SSD"
dc02_disk_size          = "75G"
dc02_disk_storage       = "VM-240GB-SSD"
dc02_bridge             = "vmbr0"
dc02_model              = "virtio"

# Docker Host
docker_name               = "vm-prod-dkr-01"
docker_desc               = "Docker Host"
docker_automatic_reboot   = true
docker_bios               = "ovmf"
docker_boot               = "order=sata0;scsi0"
docker_cores              = 1
docker_sockets            = 4
docker_cpu                = "host"
docker_force_create       = false
docker_hotplug            = "disk,network,usb"
docker_memory             = 4096
docker_onboot             = true
docker_vm_state           = "running"
docker_os_type            = "Linux 6.x - 2.6 Kernel"
docker_qemu_os            = "l26"
docker_scsihw             = "lsi"
docker_protection         = false
docker_tablet             = true
docker_target_node        = "prod-host-02.binarybraids.com"
docker_efitype            = "4m"
docker_efi_storage        = "VM-240GB-SSD"
docker_disk_size          = "40G"
docker_disk_storage       = "VM-240GB-SSD"
docker_bridge             = "vmbr0"
docker_model              = "virtio"

#Veeam Server
veeam_name               = "vm-prod-bkp-01"
veeam_desc               = "Veeam Server"
veeam_automatic_reboot   = true
veeam_bios               = "ovmf"
veeam_boot               = "order=sata0;sata1"
veeam_cores              = 1
veeam_sockets            = 3
veeam_cpu                = "host"
veeam_force_create       = false
veeam_hotplug            = "disk,network,usb"
veeam_memory             = 5120
veeam_onboot             = true
veeam_vm_state           = "running"
veeam_os_type            = "Microsoft Windows 11/2022/2025"
veeam_qemu_os            = "l26"
veeam_scsihw             = "lsi"
veeam_protection         = false
veeam_tablet             = true
veeam_target_node        = "prod-host-02.binarybraids.com"
veeam_efitype            = "4m"
veeam_efi_storage        = "VM-240GB-SSD"
veeam_disk_size          = "75G"
veeam_disk_storage       = "VM-240GB-SSD"
veeam_bridge             = "vmbr0"
veeam_model              = "virtio"