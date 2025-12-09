#Global
node_name = "prod-host-01"

#Domain Controller
dc01_name                 = "vm-prod-dc-01"
dc01_vm_id                = 101
dc01_description          = "Domain Controller"
dc01_bios                 = "ovmf"
dc01_startup_order        = 1
dc01_startup_delay        = 30
dc01_cores                = 1
dc01_sockets              = 2
dc01_memory               = 2048
dc01_os_type              = "win11"
dc01_efi_disk_type        = "4m"
dc01_efi_storage          = "VM-240GB-SSD"
dc01_disk_size            = 75
dc01_disk_storage         = "VM-240GB-SSD"
dc01_efi_disk_file_format = "raw"
dc01_bridge               = "vmbr0"
dc01_firewall             = true
dc01_model                = "virtio"

# File Server
file_server_name               = "vm-prod-fs-01"
file_server_vm_id              = 103
file_server_description        = "File Server"
file_server_bios               = "seabios"
file_server_startup_order      = 2
file_server_startup_delay      = 30 
file_server_cores              = 2
file_server_sockets            = 2
file_server_memory             = 1024
file_server_os_type            = "l26"
file_server_disk_size          = 20
file_server_disk_storage       = "VM-240GB-SSD"
file_server_disk_1_size        = 100
file_server_disk_1_storage     = "VM-240GB-SSD"
file_server_bridge             = "vmbr0"
file_server_firewall           = true
file_server_model              = "virtio"
