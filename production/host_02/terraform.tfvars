#Global
node_name = "prod-host-02"

#Domain Controller
dc02_name                 = "vm-prod-dc-02"
dc02_vm_id                = 101
dc02_description          = "Domain Controller"
dc02_bios                 = "ovmf"
dc02_startup_order        = 1
dc02_startup_delay        = 30
dc02_cores                = 1
dc02_sockets              = 2
dc02_memory               = 2048
dc02_os_type              = "win11"
dc02_efi_disk_type        = "2m"
dc02_efi_storage          = "local-lvm"
dc02_disk_size            = 75
dc02_disk_storage         = "local-lvm"
dc02_efi_disk_file_format = "raw"
dc02_bridge               = "vmbr0"
dc02_firewall             = true
dc02_model                = "virtio"

#Veeam Server
veeam_name                 = "vm-prod-bkp-01"
veeam_vm_id                = 104
veeam_description          = "Veeam Server"
veeam_bios                 = "ovmf"
veeam_startup_order        = 4
veeam_startup_delay        = 0
veeam_cores                = 1
veeam_sockets              = 3
veeam_memory               = 5120
veeam_os_type              = "win11"
veeam_efi_disk_type        = "2m"
veeam_efi_storage          = "VM-240GB-SSD"
veeam_disk_size            = 85
veeam_disk_storage         = "VM-240GB-SSD"
veeam_efi_disk_file_format = "raw"
veeam_bridge               = "vmbr0"
veeam_firewall             = true
veeam_model                = "virtio"

# docker02 Host
docker02_name                 = "vm-prod-dkr-02"
docker02_vm_id                = 100
docker02_description          = "docker02 Host"
docker02_bios                 = "ovmf"
docker02_startup_order        = 3
docker02_startup_delay        = 0
docker02_cores                = 1
docker02_sockets              = 4
docker02_memory               = 4096
docker02_os_type              = "l26"
docker02_efi_disk_type        = "2m"
docker02_efi_storage          = "VM-240GB-SSD2"
docker02_disk_size            = 40
docker02_disk_storage         = "VM-240GB-SSD2"
docker02_efi_disk_file_format = "raw"
docker02_bridge               = "vmbr0"
docker02_firewall             = true
docker02_model                = "virtio"