<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.6.0 |
| <a name="requirement_proxmx"></a> [proxmx](#requirement\_proxmx) | 3.0.1-rc4 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_proxmox"></a> [proxmox](#provider\_proxmox) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [proxmox_vm_qemu.dc01](https://registry.terraform.io/providers/hashicorp/proxmox/latest/docs/resources/vm_qemu) | resource |
| [proxmox_vm_qemu.media](https://registry.terraform.io/providers/hashicorp/proxmox/latest/docs/resources/vm_qemu) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_dc01_automatic_reboot"></a> [dc01\_automatic\_reboot](#input\_dc01\_automatic\_reboot) | Automatically reboot the VM when parameter changes require this. If disabled the provider will emit a warning when the VM needs to be rebooted. | `bool` | n/a | yes |
| <a name="input_dc01_bios"></a> [dc01\_bios](#input\_dc01\_bios) | The BIOS to use, options are seabios or ovmf for UEFI | `string` | n/a | yes |
| <a name="input_dc01_boot"></a> [dc01\_boot](#input\_dc01\_boot) | The boot order for the VM. For example: order=scsi0;ide2;net0 | `string` | n/a | yes |
| <a name="input_dc01_bridge"></a> [dc01\_bridge](#input\_dc01\_bridge) | Bridge to which the network device should be attached. The Proxmox VE standard bridge is called vmbr0. | `string` | n/a | yes |
| <a name="input_dc01_cores"></a> [dc01\_cores](#input\_dc01\_cores) | The number of CPU cores per CPU socket to allocate to the VM. | `int` | n/a | yes |
| <a name="input_dc01_cpu"></a> [dc01\_cpu](#input\_dc01\_cpu) | The type of CPU to emulate in the Guest | `string` | n/a | yes |
| <a name="input_dc01_desc"></a> [dc01\_desc](#input\_dc01\_desc) | The description of the VM. Shows as the 'Notes' field in the Proxmox GUI | `string` | n/a | yes |
| <a name="input_dc01_disk_size"></a> [dc01\_disk\_size](#input\_dc01\_disk\_size) | The size of the created disk. Accepts K for kibibytes, M for mebibytes, G for gibibytes, T for tibibytes. When only a number is provided gibibytes is assumed. Required when type=disk and passthrough=false, Computed when type=disk and passthrough=true. | `string` | n/a | yes |
| <a name="input_dc01_disk_storage"></a> [dc01\_disk\_storage](#input\_dc01\_disk\_storage) | Required when type=disk and passthrough=false. The name of the storage pool on which to store the disk. | `string` | n/a | yes |
| <a name="input_dc01_efi_storage"></a> [dc01\_efi\_storage](#input\_dc01\_efi\_storage) | The name of the storage pool on which to store the disk. | `string` | n/a | yes |
| <a name="input_dc01_efitype"></a> [dc01\_efitype](#input\_dc01\_efitype) | The type of efi disk device to add. Options: 2m, 4m | `string` | n/a | yes |
| <a name="input_dc01_force_create"></a> [dc01\_force\_create](#input\_dc01\_force\_create) | If false, and a vm of the same name, on the same node exists, terraform will attempt to reconfigure that VM with these settings. Set to true to always create a new VM (note, the name of the VM must still be unique, otherwise an error will be produced.) | `bool` | n/a | yes |
| <a name="input_dc01_hotplug"></a> [dc01\_hotplug](#input\_dc01\_hotplug) | Comma delimited list of hotplug features to enable. Options: network, disk, cpu, memory, usb. Set to 0 to disable hotplug. | `string` | n/a | yes |
| <a name="input_dc01_memory"></a> [dc01\_memory](#input\_dc01\_memory) | The amount of memory to allocate to the VM in Megabytes. | `int` | n/a | yes |
| <a name="input_dc01_model"></a> [dc01\_model](#input\_dc01\_model) | Network Card Model. The virtio model provides the best performance with very low CPU overhead. If your guest does not support this driver, it is usually best to use e1000. Options: e1000, e1000-82540em, e1000-82544gc, e1000-82545em, i82551, i82557b, i82559er, ne2k\_isa, ne2k\_pci, pcnet, rtl8139, virtio, vmxnet3. | `string` | n/a | yes |
| <a name="input_dc01_name"></a> [dc01\_name](#input\_dc01\_name) | The name of the VM within Proxmox | `string` | n/a | yes |
| <a name="input_dc01_onboot"></a> [dc01\_onboot](#input\_dc01\_onboot) | Whether to have the VM startup after the PVE node starts. | `bool` | n/a | yes |
| <a name="input_dc01_os_type"></a> [dc01\_os\_type](#input\_dc01\_os\_type) | Which provisioning method to use, based on the OS type. Options: ubuntu, centos, cloud-init. | `string` | n/a | yes |
| <a name="input_dc01_protection"></a> [dc01\_protection](#input\_dc01\_protection) | Enable/disable the VM protection from being removed. The default value of false indicates the VM is removable. | `bool` | n/a | yes |
| <a name="input_dc01_qemu_os"></a> [dc01\_qemu\_os](#input\_dc01\_qemu\_os) | The type of OS in the guest. Set properly to allow Proxmox to enable optimizations for the appropriate guest OS. It takes the value from the source template and ignore any changes to resource configuration parameter. | `string` | n/a | yes |
| <a name="input_dc01_scsihw"></a> [dc01\_scsihw](#input\_dc01\_scsihw) | The SCSI controller to emulate. Options: lsi, lsi53c810, megasas, pvscsi, virtio-scsi-pci, virtio-scsi-single. | `string` | n/a | yes |
| <a name="input_dc01_sockets"></a> [dc01\_sockets](#input\_dc01\_sockets) | The number of CPU sockets to allocate to the VM. | `int` | n/a | yes |
| <a name="input_dc01_tablet"></a> [dc01\_tablet](#input\_dc01\_tablet) | Enable/disable the USB tablet device. This device is usually needed to allow absolute mouse positioning with VNC. | `bool` | n/a | yes |
| <a name="input_dc01_target_node"></a> [dc01\_target\_node](#input\_dc01\_target\_node) | The name of the Proxmox Node on which to place the VM. | `string` | n/a | yes |
| <a name="input_dc01_vm_state"></a> [dc01\_vm\_state](#input\_dc01\_vm\_state) | The desired state of the VM, options are running, stopped and started. Do note that started will only start the vm on creation and won't fully manage the power state unlike running and stopped do. | `string` | n/a | yes |
| <a name="input_esxi_hostname"></a> [esxi\_hostname](#input\_esxi\_hostname) | hostname for ESXI host | `string` | n/a | yes |
| <a name="input_esxi_hostport"></a> [esxi\_hostport](#input\_esxi\_hostport) | SSH port for ESXI host | `string` | n/a | yes |
| <a name="input_esxi_hostssl"></a> [esxi\_hostssl](#input\_esxi\_hostssl) | SSL port for ESXI host | `string` | n/a | yes |
| <a name="input_esxi_password"></a> [esxi\_password](#input\_esxi\_password) | password for ESXI host | `string` | n/a | yes |
| <a name="input_esxi_username"></a> [esxi\_username](#input\_esxi\_username) | username for ESXI host | `string` | n/a | yes |
| <a name="input_media_automatic_reboot"></a> [media\_automatic\_reboot](#input\_media\_automatic\_reboot) | Automatically reboot the VM when parameter changes require this. If disabled the provider will emit a warning when the VM needs to be rebooted. | `bool` | n/a | yes |
| <a name="input_media_bios"></a> [media\_bios](#input\_media\_bios) | The BIOS to use, options are seabios or ovmf for UEFI | `string` | n/a | yes |
| <a name="input_media_boot"></a> [media\_boot](#input\_media\_boot) | The boot order for the VM. For example: order=scsi0;ide2;net0 | `string` | n/a | yes |
| <a name="input_media_bridge"></a> [media\_bridge](#input\_media\_bridge) | Bridge to which the network device should be attached. The Proxmox VE standard bridge is called vmbr0. | `string` | n/a | yes |
| <a name="input_media_cores"></a> [media\_cores](#input\_media\_cores) | The number of CPU cores per CPU socket to allocate to the VM. | `int` | n/a | yes |
| <a name="input_media_cpu"></a> [media\_cpu](#input\_media\_cpu) | The type of CPU to emulate in the Guest | `string` | n/a | yes |
| <a name="input_media_desc"></a> [media\_desc](#input\_media\_desc) | The description of the VM. Shows as the 'Notes' field in the Proxmox GUI | `string` | n/a | yes |
| <a name="input_media_disk_size"></a> [media\_disk\_size](#input\_media\_disk\_size) | The size of the created disk. Accepts K for kibibytes, M for mebibytes, G for gibibytes, T for tibibytes. When only a number is provided gibibytes is assumed. Required when type=disk and passthrough=false, Computed when type=disk and passthrough=true. | `string` | n/a | yes |
| <a name="input_media_disk_storage"></a> [media\_disk\_storage](#input\_media\_disk\_storage) | Required when type=disk and passthrough=false. The name of the storage pool on which to store the disk. | `string` | n/a | yes |
| <a name="input_media_force_create"></a> [media\_force\_create](#input\_media\_force\_create) | If false, and a vm of the same name, on the same node exists, terraform will attempt to reconfigure that VM with these settings. Set to true to always create a new VM (note, the name of the VM must still be unique, otherwise an error will be produced.) | `bool` | n/a | yes |
| <a name="input_media_hotplug"></a> [media\_hotplug](#input\_media\_hotplug) | Comma delimited list of hotplug features to enable. Options: network, disk, cpu, memory, usb. Set to 0 to disable hotplug. | `string` | n/a | yes |
| <a name="input_media_memory"></a> [media\_memory](#input\_media\_memory) | The amount of memory to allocate to the VM in Megabytes. | `int` | n/a | yes |
| <a name="input_media_model"></a> [media\_model](#input\_media\_model) | Network Card Model. The virtio model provides the best performance with very low CPU overhead. If your guest does not support this driver, it is usually best to use e1000. Options: e1000, e1000-82540em, e1000-82544gc, e1000-82545em, i82551, i82557b, i82559er, ne2k\_isa, ne2k\_pci, pcnet, rtl8139, virtio, vmxnet3. | `string` | n/a | yes |
| <a name="input_media_name"></a> [media\_name](#input\_media\_name) | The name of the VM within Proxmox | `string` | n/a | yes |
| <a name="input_media_onboot"></a> [media\_onboot](#input\_media\_onboot) | Whether to have the VM startup after the PVE node starts. | `bool` | n/a | yes |
| <a name="input_media_os_type"></a> [media\_os\_type](#input\_media\_os\_type) | Which provisioning method to use, based on the OS type. Options: ubuntu, centos, cloud-init. | `string` | n/a | yes |
| <a name="input_media_protection"></a> [media\_protection](#input\_media\_protection) | Enable/disable the VM protection from being removed. The default value of false indicates the VM is removable. | `bool` | n/a | yes |
| <a name="input_media_qemu_os"></a> [media\_qemu\_os](#input\_media\_qemu\_os) | The type of OS in the guest. Set properly to allow Proxmox to enable optimizations for the appropriate guest OS. It takes the value from the source template and ignore any changes to resource configuration parameter. | `string` | n/a | yes |
| <a name="input_media_scsihw"></a> [media\_scsihw](#input\_media\_scsihw) | The SCSI controller to emulate. Options: lsi, lsi53c810, megasas, pvscsi, virtio-scsi-pci, virtio-scsi-single. | `string` | n/a | yes |
| <a name="input_media_sockets"></a> [media\_sockets](#input\_media\_sockets) | The number of CPU sockets to allocate to the VM. | `int` | n/a | yes |
| <a name="input_media_tablet"></a> [media\_tablet](#input\_media\_tablet) | Enable/disable the USB tablet device. This device is usually needed to allow absolute mouse positioning with VNC. | `bool` | n/a | yes |
| <a name="input_media_target_node"></a> [media\_target\_node](#input\_media\_target\_node) | The name of the Proxmox Node on which to place the VM. | `string` | n/a | yes |
| <a name="input_media_vm_state"></a> [media\_vm\_state](#input\_media\_vm\_state) | The desired state of the VM, options are running, stopped and started. Do note that started will only start the vm on creation and won't fully manage the power state unlike running and stopped do. | `string` | n/a | yes |
| <a name="input_veeam_automatic_reboot"></a> [veeam\_automatic\_reboot](#input\_veeam\_automatic\_reboot) | Automatically reboot the VM when parameter changes require this. If disabled the provider will emit a warning when the VM needs to be rebooted. | `bool` | n/a | yes |
| <a name="input_veeam_bios"></a> [veeam\_bios](#input\_veeam\_bios) | The BIOS to use, options are seabios or ovmf for UEFI | `string` | n/a | yes |
| <a name="input_veeam_boot"></a> [veeam\_boot](#input\_veeam\_boot) | The boot order for the VM. For example: order=scsi0;ide2;net0 | `string` | n/a | yes |
| <a name="input_veeam_bridge"></a> [veeam\_bridge](#input\_veeam\_bridge) | Bridge to which the network device should be attached. The Proxmox VE standard bridge is called vmbr0. | `string` | n/a | yes |
| <a name="input_veeam_cores"></a> [veeam\_cores](#input\_veeam\_cores) | The number of CPU cores per CPU socket to allocate to the VM. | `int` | n/a | yes |
| <a name="input_veeam_cpu"></a> [veeam\_cpu](#input\_veeam\_cpu) | The type of CPU to emulate in the Guest | `string` | n/a | yes |
| <a name="input_veeam_desc"></a> [veeam\_desc](#input\_veeam\_desc) | The description of the VM. Shows as the 'Notes' field in the Proxmox GUI | `string` | n/a | yes |
| <a name="input_veeam_disk_size"></a> [veeam\_disk\_size](#input\_veeam\_disk\_size) | The size of the created disk. Accepts K for kibibytes, M for mebibytes, G for gibibytes, T for tibibytes. When only a number is provided gibibytes is assumed. Required when type=disk and passthrough=false, Computed when type=disk and passthrough=true. | `string` | n/a | yes |
| <a name="input_veeam_disk_storage"></a> [veeam\_disk\_storage](#input\_veeam\_disk\_storage) | Required when type=disk and passthrough=false. The name of the storage pool on which to store the disk. | `string` | n/a | yes |
| <a name="input_veeam_efi_storage"></a> [veeam\_efi\_storage](#input\_veeam\_efi\_storage) | The name of the storage pool on which to store the disk. | `string` | n/a | yes |
| <a name="input_veeam_efitype"></a> [veeam\_efitype](#input\_veeam\_efitype) | The type of efi disk device to add. Options: 2m, 4m | `string` | n/a | yes |
| <a name="input_veeam_force_create"></a> [veeam\_force\_create](#input\_veeam\_force\_create) | If false, and a vm of the same name, on the same node exists, terraform will attempt to reconfigure that VM with these settings. Set to true to always create a new VM (note, the name of the VM must still be unique, otherwise an error will be produced.) | `bool` | n/a | yes |
| <a name="input_veeam_hotplug"></a> [veeam\_hotplug](#input\_veeam\_hotplug) | Comma delimited list of hotplug features to enable. Options: network, disk, cpu, memory, usb. Set to 0 to disable hotplug. | `string` | n/a | yes |
| <a name="input_veeam_memory"></a> [veeam\_memory](#input\_veeam\_memory) | The amount of memory to allocate to the VM in Megabytes. | `int` | n/a | yes |
| <a name="input_veeam_model"></a> [veeam\_model](#input\_veeam\_model) | Network Card Model. The virtio model provides the best performance with very low CPU overhead. If your guest does not support this driver, it is usually best to use e1000. Options: e1000, e1000-82540em, e1000-82544gc, e1000-82545em, i82551, i82557b, i82559er, ne2k\_isa, ne2k\_pci, pcnet, rtl8139, virtio, vmxnet3. | `string` | n/a | yes |
| <a name="input_veeam_name"></a> [veeam\_name](#input\_veeam\_name) | The name of the VM within Proxmox | `string` | n/a | yes |
| <a name="input_veeam_onboot"></a> [veeam\_onboot](#input\_veeam\_onboot) | Whether to have the VM startup after the PVE node starts. | `bool` | n/a | yes |
| <a name="input_veeam_os_type"></a> [veeam\_os\_type](#input\_veeam\_os\_type) | Which provisioning method to use, based on the OS type. Options: ubuntu, centos, cloud-init. | `string` | n/a | yes |
| <a name="input_veeam_protection"></a> [veeam\_protection](#input\_veeam\_protection) | Enable/disable the VM protection from being removed. The default value of false indicates the VM is removable. | `bool` | n/a | yes |
| <a name="input_veeam_qemu_os"></a> [veeam\_qemu\_os](#input\_veeam\_qemu\_os) | The type of OS in the guest. Set properly to allow Proxmox to enable optimizations for the appropriate guest OS. It takes the value from the source template and ignore any changes to resource configuration parameter. | `string` | n/a | yes |
| <a name="input_veeam_scsihw"></a> [veeam\_scsihw](#input\_veeam\_scsihw) | The SCSI controller to emulate. Options: lsi, lsi53c810, megasas, pvscsi, virtio-scsi-pci, virtio-scsi-single. | `string` | n/a | yes |
| <a name="input_veeam_sockets"></a> [veeam\_sockets](#input\_veeam\_sockets) | The number of CPU sockets to allocate to the VM. | `int` | n/a | yes |
| <a name="input_veeam_tablet"></a> [veeam\_tablet](#input\_veeam\_tablet) | Enable/disable the USB tablet device. This device is usually needed to allow absolute mouse positioning with VNC. | `bool` | n/a | yes |
| <a name="input_veeam_target_node"></a> [veeam\_target\_node](#input\_veeam\_target\_node) | The name of the Proxmox Node on which to place the VM. | `string` | n/a | yes |
| <a name="input_veeam_vm_state"></a> [veeam\_vm\_state](#input\_veeam\_vm\_state) | The desired state of the VM, options are running, stopped and started. Do note that started will only start the vm on creation and won't fully manage the power state unlike running and stopped do. | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->