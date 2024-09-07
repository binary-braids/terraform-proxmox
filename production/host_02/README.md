<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.6.0 |
| <a name="requirement_proxmox"></a> [proxmox](#requirement\_proxmox) | 3.0.1-rc4 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_proxmox"></a> [proxmox](#provider\_proxmox) | 3.0.1-rc4 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [proxmox_vm_qemu.dc01](https://registry.terraform.io/providers/telmate/proxmox/3.0.1-rc4/docs/resources/vm_qemu) | resource |
| [proxmox_vm_qemu.docker](https://registry.terraform.io/providers/telmate/proxmox/3.0.1-rc4/docs/resources/vm_qemu) | resource |
| [proxmox_vm_qemu.veeam](https://registry.terraform.io/providers/telmate/proxmox/3.0.1-rc4/docs/resources/vm_qemu) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_dc02_automatic_reboot"></a> [dc02\_automatic\_reboot](#input\_dc02\_automatic\_reboot) | Automatically reboot the VM when parameter changes require this. If disabled the provider will emit a warning when the VM needs to be rebooted. | `bool` | n/a | yes |
| <a name="input_dc02_bios"></a> [dc02\_bios](#input\_dc02\_bios) | The BIOS to use, options are seabios or ovmf for UEFI | `string` | n/a | yes |
| <a name="input_dc02_boot"></a> [dc02\_boot](#input\_dc02\_boot) | The boot order for the VM. For example: order=scsi0;ide2;net0 | `string` | n/a | yes |
| <a name="input_dc02_bridge"></a> [dc02\_bridge](#input\_dc02\_bridge) | Bridge to which the network device should be attached. The Proxmox VE standard bridge is called vmbr0. | `string` | n/a | yes |
| <a name="input_dc02_cores"></a> [dc02\_cores](#input\_dc02\_cores) | The number of CPU cores per CPU socket to allocate to the VM. | `number` | n/a | yes |
| <a name="input_dc02_cpu"></a> [dc02\_cpu](#input\_dc02\_cpu) | The type of CPU to emulate in the Guest | `string` | n/a | yes |
| <a name="input_dc02_desc"></a> [dc02\_desc](#input\_dc02\_desc) | The description of the VM. Shows as the 'Notes' field in the Proxmox GUI | `string` | n/a | yes |
| <a name="input_dc02_disk_size"></a> [dc02\_disk\_size](#input\_dc02\_disk\_size) | The size of the created disk. Accepts K for kibibytes, M for mebibytes, G for gibibytes, T for tibibytes. When only a number is provided gibibytes is assumed. Required when type=disk and passthrough=false, Computed when type=disk and passthrough=true. | `string` | n/a | yes |
| <a name="input_dc02_disk_storage"></a> [dc02\_disk\_storage](#input\_dc02\_disk\_storage) | Required when type=disk and passthrough=false. The name of the storage pool on which to store the disk. | `string` | n/a | yes |
| <a name="input_dc02_efi_storage"></a> [dc02\_efi\_storage](#input\_dc02\_efi\_storage) | The name of the storage pool on which to store the disk. | `string` | n/a | yes |
| <a name="input_dc02_efitype"></a> [dc02\_efitype](#input\_dc02\_efitype) | The type of efi disk device to add. Options: 2m, 4m | `string` | n/a | yes |
| <a name="input_dc02_force_create"></a> [dc02\_force\_create](#input\_dc02\_force\_create) | If false, and a vm of the same name, on the same node exists, terraform will attempt to reconfigure that VM with these settings. Set to true to always create a new VM (note, the name of the VM must still be unique, otherwise an error will be produced.) | `bool` | n/a | yes |
| <a name="input_dc02_hotplug"></a> [dc02\_hotplug](#input\_dc02\_hotplug) | Comma delimited list of hotplug features to enable. Options: network, disk, cpu, memory, usb. Set to 0 to disable hotplug. | `string` | n/a | yes |
| <a name="input_dc02_memory"></a> [dc02\_memory](#input\_dc02\_memory) | The amount of memory to allocate to the VM in Megabytes. | `number` | n/a | yes |
| <a name="input_dc02_model"></a> [dc02\_model](#input\_dc02\_model) | Network Card Model. The virtio model provides the best performance with very low CPU overhead. If your guest does not support this driver, it is usually best to use e1000. Options: e1000, e1000-82540em, e1000-82544gc, e1000-82545em, i82551, i82557b, i82559er, ne2k\_isa, ne2k\_pci, pcnet, rtl8139, virtio, vmxnet3. | `string` | n/a | yes |
| <a name="input_dc02_name"></a> [dc02\_name](#input\_dc02\_name) | The name of the VM within Proxmox | `string` | n/a | yes |
| <a name="input_dc02_onboot"></a> [dc02\_onboot](#input\_dc02\_onboot) | Whether to have the VM startup after the PVE node starts. | `bool` | n/a | yes |
| <a name="input_dc02_os_type"></a> [dc02\_os\_type](#input\_dc02\_os\_type) | Which provisioning method to use, based on the OS type. Options: ubuntu, centos, cloud-init. | `string` | n/a | yes |
| <a name="input_dc02_protection"></a> [dc02\_protection](#input\_dc02\_protection) | Enable/disable the VM protection from being removed. The default value of false indicates the VM is removable. | `bool` | n/a | yes |
| <a name="input_dc02_qemu_os"></a> [dc02\_qemu\_os](#input\_dc02\_qemu\_os) | The type of OS in the guest. Set properly to allow Proxmox to enable optimizations for the appropriate guest OS. It takes the value from the source template and ignore any changes to resource configuration parameter. | `string` | n/a | yes |
| <a name="input_dc02_scsihw"></a> [dc02\_scsihw](#input\_dc02\_scsihw) | The SCSI controller to emulate. Options: lsi, lsi53c810, megasas, pvscsi, virtio-scsi-pci, virtio-scsi-single. | `string` | n/a | yes |
| <a name="input_dc02_sockets"></a> [dc02\_sockets](#input\_dc02\_sockets) | The number of CPU sockets to allocate to the VM. | `number` | n/a | yes |
| <a name="input_dc02_tablet"></a> [dc02\_tablet](#input\_dc02\_tablet) | Enable/disable the USB tablet device. This device is usually needed to allow absolute mouse positioning with VNC. | `bool` | n/a | yes |
| <a name="input_dc02_target_node"></a> [dc02\_target\_node](#input\_dc02\_target\_node) | The name of the Proxmox Node on which to place the VM. | `string` | n/a | yes |
| <a name="input_dc02_vm_state"></a> [dc02\_vm\_state](#input\_dc02\_vm\_state) | The desired state of the VM, options are running, stopped and started. Do note that started will only start the vm on creation and won't fully manage the power state unlike running and stopped do. | `string` | n/a | yes |
| <a name="input_docker_automatic_reboot"></a> [docker\_automatic\_reboot](#input\_docker\_automatic\_reboot) | Automatically reboot the VM when parameter changes require this. If disabled the provider will emit a warning when the VM needs to be rebooted. | `bool` | n/a | yes |
| <a name="input_docker_bios"></a> [docker\_bios](#input\_docker\_bios) | The BIOS to use, options are seabios or ovmf for UEFI | `string` | n/a | yes |
| <a name="input_docker_boot"></a> [docker\_boot](#input\_docker\_boot) | The boot order for the VM. For example: order=scsi0;ide2;net0 | `string` | n/a | yes |
| <a name="input_docker_bridge"></a> [docker\_bridge](#input\_docker\_bridge) | Bridge to which the network device should be attached. The Proxmox VE standard bridge is called vmbr0. | `string` | n/a | yes |
| <a name="input_docker_cores"></a> [docker\_cores](#input\_docker\_cores) | The number of CPU cores per CPU socket to allocate to the VM. | `number` | n/a | yes |
| <a name="input_docker_cpu"></a> [docker\_cpu](#input\_docker\_cpu) | The type of CPU to emulate in the Guest | `string` | n/a | yes |
| <a name="input_docker_desc"></a> [docker\_desc](#input\_docker\_desc) | The description of the VM. Shows as the 'Notes' field in the Proxmox GUI | `string` | n/a | yes |
| <a name="input_docker_disk_size"></a> [docker\_disk\_size](#input\_docker\_disk\_size) | The size of the created disk. Accepts K for kibibytes, M for mebibytes, G for gibibytes, T for tibibytes. When only a number is provided gibibytes is assumed. Required when type=disk and passthrough=false, Computed when type=disk and passthrough=true. | `string` | n/a | yes |
| <a name="input_docker_disk_storage"></a> [docker\_disk\_storage](#input\_docker\_disk\_storage) | Required when type=disk and passthrough=false. The name of the storage pool on which to store the disk. | `string` | n/a | yes |
| <a name="input_docker_efi_storage"></a> [docker\_efi\_storage](#input\_docker\_efi\_storage) | The name of the storage pool on which to store the disk. | `string` | n/a | yes |
| <a name="input_docker_efitype"></a> [docker\_efitype](#input\_docker\_efitype) | The type of efi disk device to add. Options: 2m, 4m | `string` | n/a | yes |
| <a name="input_docker_force_create"></a> [docker\_force\_create](#input\_docker\_force\_create) | If false, and a vm of the same name, on the same node exists, terraform will attempt to reconfigure that VM with these settings. Set to true to always create a new VM (note, the name of the VM must still be unique, otherwise an error will be produced.) | `bool` | n/a | yes |
| <a name="input_docker_hotplug"></a> [docker\_hotplug](#input\_docker\_hotplug) | Comma delimited list of hotplug features to enable. Options: network, disk, cpu, memory, usb. Set to 0 to disable hotplug. | `string` | n/a | yes |
| <a name="input_docker_memory"></a> [docker\_memory](#input\_docker\_memory) | The amount of memory to allocate to the VM in Megabytes. | `number` | n/a | yes |
| <a name="input_docker_model"></a> [docker\_model](#input\_docker\_model) | Network Card Model. The virtio model provides the best performance with very low CPU overhead. If your guest does not support this driver, it is usually best to use e1000. Options: e1000, e1000-82540em, e1000-82544gc, e1000-82545em, i82551, i82557b, i82559er, ne2k\_isa, ne2k\_pci, pcnet, rtl8139, virtio, vmxnet3. | `string` | n/a | yes |
| <a name="input_docker_name"></a> [docker\_name](#input\_docker\_name) | The name of the VM within Proxmox | `string` | n/a | yes |
| <a name="input_docker_onboot"></a> [docker\_onboot](#input\_docker\_onboot) | Whether to have the VM startup after the PVE node starts. | `bool` | n/a | yes |
| <a name="input_docker_os_type"></a> [docker\_os\_type](#input\_docker\_os\_type) | Which provisioning method to use, based on the OS type. Options: ubuntu, centos, cloud-init. | `string` | n/a | yes |
| <a name="input_docker_protection"></a> [docker\_protection](#input\_docker\_protection) | Enable/disable the VM protection from being removed. The default value of false indicates the VM is removable. | `bool` | n/a | yes |
| <a name="input_docker_qemu_os"></a> [docker\_qemu\_os](#input\_docker\_qemu\_os) | The type of OS in the guest. Set properly to allow Proxmox to enable optimizations for the appropriate guest OS. It takes the value from the source template and ignore any changes to resource configuration parameter. | `string` | n/a | yes |
| <a name="input_docker_scsihw"></a> [docker\_scsihw](#input\_docker\_scsihw) | The SCSI controller to emulate. Options: lsi, lsi53c810, megasas, pvscsi, virtio-scsi-pci, virtio-scsi-single. | `string` | n/a | yes |
| <a name="input_docker_sockets"></a> [docker\_sockets](#input\_docker\_sockets) | The number of CPU sockets to allocate to the VM. | `number` | n/a | yes |
| <a name="input_docker_tablet"></a> [docker\_tablet](#input\_docker\_tablet) | Enable/disable the USB tablet device. This device is usually needed to allow absolute mouse positioning with VNC. | `bool` | n/a | yes |
| <a name="input_docker_target_node"></a> [docker\_target\_node](#input\_docker\_target\_node) | The name of the Proxmox Node on which to place the VM. | `string` | n/a | yes |
| <a name="input_docker_vm_state"></a> [docker\_vm\_state](#input\_docker\_vm\_state) | The desired state of the VM, options are running, stopped and started. Do note that started will only start the vm on creation and won't fully manage the power state unlike running and stopped do. | `string` | n/a | yes |
| <a name="input_veeam_automatic_reboot"></a> [veeam\_automatic\_reboot](#input\_veeam\_automatic\_reboot) | Automatically reboot the VM when parameter changes require this. If disabled the provider will emit a warning when the VM needs to be rebooted. | `bool` | n/a | yes |
| <a name="input_veeam_bios"></a> [veeam\_bios](#input\_veeam\_bios) | The BIOS to use, options are seabios or ovmf for UEFI | `string` | n/a | yes |
| <a name="input_veeam_boot"></a> [veeam\_boot](#input\_veeam\_boot) | The boot order for the VM. For example: order=scsi0;ide2;net0 | `string` | n/a | yes |
| <a name="input_veeam_bridge"></a> [veeam\_bridge](#input\_veeam\_bridge) | Bridge to which the network device should be attached. The Proxmox VE standard bridge is called vmbr0. | `string` | n/a | yes |
| <a name="input_veeam_cores"></a> [veeam\_cores](#input\_veeam\_cores) | The number of CPU cores per CPU socket to allocate to the VM. | `number` | n/a | yes |
| <a name="input_veeam_cpu"></a> [veeam\_cpu](#input\_veeam\_cpu) | The type of CPU to emulate in the Guest | `string` | n/a | yes |
| <a name="input_veeam_desc"></a> [veeam\_desc](#input\_veeam\_desc) | The description of the VM. Shows as the 'Notes' field in the Proxmox GUI | `string` | n/a | yes |
| <a name="input_veeam_disk_size"></a> [veeam\_disk\_size](#input\_veeam\_disk\_size) | The size of the created disk. Accepts K for kibibytes, M for mebibytes, G for gibibytes, T for tibibytes. When only a number is provided gibibytes is assumed. Required when type=disk and passthrough=false, Computed when type=disk and passthrough=true. | `string` | n/a | yes |
| <a name="input_veeam_disk_storage"></a> [veeam\_disk\_storage](#input\_veeam\_disk\_storage) | Required when type=disk and passthrough=false. The name of the storage pool on which to store the disk. | `string` | n/a | yes |
| <a name="input_veeam_efi_storage"></a> [veeam\_efi\_storage](#input\_veeam\_efi\_storage) | The name of the storage pool on which to store the disk. | `string` | n/a | yes |
| <a name="input_veeam_efitype"></a> [veeam\_efitype](#input\_veeam\_efitype) | The type of efi disk device to add. Options: 2m, 4m | `string` | n/a | yes |
| <a name="input_veeam_force_create"></a> [veeam\_force\_create](#input\_veeam\_force\_create) | If false, and a vm of the same name, on the same node exists, terraform will attempt to reconfigure that VM with these settings. Set to true to always create a new VM (note, the name of the VM must still be unique, otherwise an error will be produced.) | `bool` | n/a | yes |
| <a name="input_veeam_hotplug"></a> [veeam\_hotplug](#input\_veeam\_hotplug) | Comma delimited list of hotplug features to enable. Options: network, disk, cpu, memory, usb. Set to 0 to disable hotplug. | `string` | n/a | yes |
| <a name="input_veeam_memory"></a> [veeam\_memory](#input\_veeam\_memory) | The amount of memory to allocate to the VM in Megabytes. | `number` | n/a | yes |
| <a name="input_veeam_model"></a> [veeam\_model](#input\_veeam\_model) | Network Card Model. The virtio model provides the best performance with very low CPU overhead. If your guest does not support this driver, it is usually best to use e1000. Options: e1000, e1000-82540em, e1000-82544gc, e1000-82545em, i82551, i82557b, i82559er, ne2k\_isa, ne2k\_pci, pcnet, rtl8139, virtio, vmxnet3. | `string` | n/a | yes |
| <a name="input_veeam_name"></a> [veeam\_name](#input\_veeam\_name) | The name of the VM within Proxmox | `string` | n/a | yes |
| <a name="input_veeam_onboot"></a> [veeam\_onboot](#input\_veeam\_onboot) | Whether to have the VM startup after the PVE node starts. | `bool` | n/a | yes |
| <a name="input_veeam_os_type"></a> [veeam\_os\_type](#input\_veeam\_os\_type) | Which provisioning method to use, based on the OS type. Options: ubuntu, centos, cloud-init. | `string` | n/a | yes |
| <a name="input_veeam_protection"></a> [veeam\_protection](#input\_veeam\_protection) | Enable/disable the VM protection from being removed. The default value of false indicates the VM is removable. | `bool` | n/a | yes |
| <a name="input_veeam_qemu_os"></a> [veeam\_qemu\_os](#input\_veeam\_qemu\_os) | The type of OS in the guest. Set properly to allow Proxmox to enable optimizations for the appropriate guest OS. It takes the value from the source template and ignore any changes to resource configuration parameter. | `string` | n/a | yes |
| <a name="input_veeam_scsihw"></a> [veeam\_scsihw](#input\_veeam\_scsihw) | The SCSI controller to emulate. Options: lsi, lsi53c810, megasas, pvscsi, virtio-scsi-pci, virtio-scsi-single. | `string` | n/a | yes |
| <a name="input_veeam_sockets"></a> [veeam\_sockets](#input\_veeam\_sockets) | The number of CPU sockets to allocate to the VM. | `number` | n/a | yes |
| <a name="input_veeam_tablet"></a> [veeam\_tablet](#input\_veeam\_tablet) | Enable/disable the USB tablet device. This device is usually needed to allow absolute mouse positioning with VNC. | `bool` | n/a | yes |
| <a name="input_veeam_target_node"></a> [veeam\_target\_node](#input\_veeam\_target\_node) | The name of the Proxmox Node on which to place the VM. | `string` | n/a | yes |
| <a name="input_veeam_vm_state"></a> [veeam\_vm\_state](#input\_veeam\_vm\_state) | The desired state of the VM, options are running, stopped and started. Do note that started will only start the vm on creation and won't fully manage the power state unlike running and stopped do. | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->