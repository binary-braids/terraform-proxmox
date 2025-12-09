<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.6.0 |
| <a name="requirement_proxmox"></a> [proxmox](#requirement\_proxmox) | 0.89.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_proxmox"></a> [proxmox](#provider\_proxmox) | 0.89.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [proxmox_virtual_environment_vm.dc02](https://registry.terraform.io/providers/bpg/proxmox/0.89.1/docs/resources/virtual_environment_vm) | resource |
| [proxmox_virtual_environment_vm.docker](https://registry.terraform.io/providers/bpg/proxmox/0.89.1/docs/resources/virtual_environment_vm) | resource |
| [proxmox_virtual_environment_vm.veeam](https://registry.terraform.io/providers/bpg/proxmox/0.89.1/docs/resources/virtual_environment_vm) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_dc02_bios"></a> [dc02\_bios](#input\_dc02\_bios) | The BIOS to use, options are seabios or ovmf for UEFI | `string` | n/a | yes |
| <a name="input_dc02_bridge"></a> [dc02\_bridge](#input\_dc02\_bridge) | Bridge to which the network device should be attached. The Proxmox VE standard bridge is called vmbr0. | `string` | n/a | yes |
| <a name="input_dc02_cores"></a> [dc02\_cores](#input\_dc02\_cores) | The number of CPU cores per CPU socket to allocate to the VM. | `number` | n/a | yes |
| <a name="input_dc02_description"></a> [dc02\_description](#input\_dc02\_description) | The description of the VM | `string` | n/a | yes |
| <a name="input_dc02_disk_size"></a> [dc02\_disk\_size](#input\_dc02\_disk\_size) | The size of the created disk specified in GB | `number` | n/a | yes |
| <a name="input_dc02_disk_storage"></a> [dc02\_disk\_storage](#input\_dc02\_disk\_storage) | Required when type=disk and passthrough=false. The name of the storage pool on which to store the disk. | `string` | n/a | yes |
| <a name="input_dc02_efi_disk_file_format"></a> [dc02\_efi\_disk\_file\_format](#input\_dc02\_efi\_disk\_file\_format) | The file format of the efi disk. Defaults to raw | `string` | n/a | yes |
| <a name="input_dc02_efi_disk_type"></a> [dc02\_efi\_disk\_type](#input\_dc02\_efi\_disk\_type) | The type of efi disk device to add. Options: 2m, 4m | `string` | n/a | yes |
| <a name="input_dc02_efi_storage"></a> [dc02\_efi\_storage](#input\_dc02\_efi\_storage) | The name of the storage pool on which to store the disk. | `string` | n/a | yes |
| <a name="input_dc02_firewall"></a> [dc02\_firewall](#input\_dc02\_firewall) | Specify if VM firewall is enabled or disabled. | `bool` | n/a | yes |
| <a name="input_dc02_memory"></a> [dc02\_memory](#input\_dc02\_memory) | The amount of memory to allocate to the VM in Megabytes. | `number` | n/a | yes |
| <a name="input_dc02_model"></a> [dc02\_model](#input\_dc02\_model) | Network Card Model. The virtio model provides the best performance with very low CPU overhead. If your guest does not support this driver, it is usually best to use e1000. Options: e1000, e1000-82540em, e1000-82544gc, e1000-82545em, i82551, i82557b, i82559er, ne2k\_isa, ne2k\_pci, pcnet, rtl8139, virtio, vmxnet3. | `string` | n/a | yes |
| <a name="input_dc02_name"></a> [dc02\_name](#input\_dc02\_name) | The name of the VM within Proxmox | `string` | n/a | yes |
| <a name="input_dc02_os_type"></a> [dc02\_os\_type](#input\_dc02\_os\_type) | The OS type for the VM | `string` | n/a | yes |
| <a name="input_dc02_sockets"></a> [dc02\_sockets](#input\_dc02\_sockets) | The number of CPU sockets to allocate to the VM. | `number` | n/a | yes |
| <a name="input_dc02_startup_delay"></a> [dc02\_startup\_delay](#input\_dc02\_startup\_delay) | The number of seconds to delay before the next VM is started | `number` | n/a | yes |
| <a name="input_dc02_startup_order"></a> [dc02\_startup\_order](#input\_dc02\_startup\_order) | The startup order for the VM | `number` | n/a | yes |
| <a name="input_dc02_vm_id"></a> [dc02\_vm\_id](#input\_dc02\_vm\_id) | The ID of the VM | `number` | n/a | yes |
| <a name="input_docker_bios"></a> [docker\_bios](#input\_docker\_bios) | The BIOS to use, options are seabios or ovmf for UEFI | `string` | n/a | yes |
| <a name="input_docker_bridge"></a> [docker\_bridge](#input\_docker\_bridge) | Bridge to which the network device should be attached. The Proxmox VE standard bridge is called vmbr0. | `string` | n/a | yes |
| <a name="input_docker_cores"></a> [docker\_cores](#input\_docker\_cores) | The number of CPU cores per CPU socket to allocate to the VM. | `number` | n/a | yes |
| <a name="input_docker_description"></a> [docker\_description](#input\_docker\_description) | The description of the VM | `string` | n/a | yes |
| <a name="input_docker_disk_size"></a> [docker\_disk\_size](#input\_docker\_disk\_size) | The size of the created disk specified in GB | `number` | n/a | yes |
| <a name="input_docker_disk_storage"></a> [docker\_disk\_storage](#input\_docker\_disk\_storage) | Required when type=disk and passthrough=false. The name of the storage pool on which to store the disk. | `string` | n/a | yes |
| <a name="input_docker_efi_disk_file_format"></a> [docker\_efi\_disk\_file\_format](#input\_docker\_efi\_disk\_file\_format) | The file format of the efi disk. Defaults to raw | `string` | n/a | yes |
| <a name="input_docker_efi_disk_type"></a> [docker\_efi\_disk\_type](#input\_docker\_efi\_disk\_type) | The type of efi disk device to add. Options: 2m, 4m | `string` | n/a | yes |
| <a name="input_docker_efi_storage"></a> [docker\_efi\_storage](#input\_docker\_efi\_storage) | The name of the storage pool on which to store the disk. | `string` | n/a | yes |
| <a name="input_docker_firewall"></a> [docker\_firewall](#input\_docker\_firewall) | Specify if VM firewall is enabled or disabled. | `bool` | n/a | yes |
| <a name="input_docker_memory"></a> [docker\_memory](#input\_docker\_memory) | The amount of memory to allocate to the VM in Megabytes. | `number` | n/a | yes |
| <a name="input_docker_model"></a> [docker\_model](#input\_docker\_model) | Network Card Model. The virtio model provides the best performance with very low CPU overhead. If your guest does not support this driver, it is usually best to use e1000. Options: e1000, e1000-82540em, e1000-82544gc, e1000-82545em, i82551, i82557b, i82559er, ne2k\_isa, ne2k\_pci, pcnet, rtl8139, virtio, vmxnet3. | `string` | n/a | yes |
| <a name="input_docker_name"></a> [docker\_name](#input\_docker\_name) | The name of the VM within Proxmox | `string` | n/a | yes |
| <a name="input_docker_os_type"></a> [docker\_os\_type](#input\_docker\_os\_type) | The OS type for the VM | `string` | n/a | yes |
| <a name="input_docker_sockets"></a> [docker\_sockets](#input\_docker\_sockets) | The number of CPU sockets to allocate to the VM. | `number` | n/a | yes |
| <a name="input_docker_startup_delay"></a> [docker\_startup\_delay](#input\_docker\_startup\_delay) | The number of seconds to delay before the next VM is started | `number` | n/a | yes |
| <a name="input_docker_startup_order"></a> [docker\_startup\_order](#input\_docker\_startup\_order) | The startup order for the VM | `number` | n/a | yes |
| <a name="input_docker_vm_id"></a> [docker\_vm\_id](#input\_docker\_vm\_id) | The ID of the VM | `number` | n/a | yes |
| <a name="input_node_name"></a> [node\_name](#input\_node\_name) | The target node | `string` | n/a | yes |
| <a name="input_veeam_bios"></a> [veeam\_bios](#input\_veeam\_bios) | The BIOS to use, options are seabios or ovmf for UEFI | `string` | n/a | yes |
| <a name="input_veeam_bridge"></a> [veeam\_bridge](#input\_veeam\_bridge) | Bridge to which the network device should be attached. The Proxmox VE standard bridge is called vmbr0. | `string` | n/a | yes |
| <a name="input_veeam_cores"></a> [veeam\_cores](#input\_veeam\_cores) | The number of CPU cores per CPU socket to allocate to the VM. | `number` | n/a | yes |
| <a name="input_veeam_description"></a> [veeam\_description](#input\_veeam\_description) | The description of the VM | `string` | n/a | yes |
| <a name="input_veeam_disk_size"></a> [veeam\_disk\_size](#input\_veeam\_disk\_size) | The size of the created disk specified in GB | `number` | n/a | yes |
| <a name="input_veeam_disk_storage"></a> [veeam\_disk\_storage](#input\_veeam\_disk\_storage) | Required when type=disk and passthrough=false. The name of the storage pool on which to store the disk. | `string` | n/a | yes |
| <a name="input_veeam_efi_disk_file_format"></a> [veeam\_efi\_disk\_file\_format](#input\_veeam\_efi\_disk\_file\_format) | The file format of the efi disk. Defaults to raw | `string` | n/a | yes |
| <a name="input_veeam_efi_disk_type"></a> [veeam\_efi\_disk\_type](#input\_veeam\_efi\_disk\_type) | The type of efi disk device to add. Options: 2m, 4m | `string` | n/a | yes |
| <a name="input_veeam_efi_storage"></a> [veeam\_efi\_storage](#input\_veeam\_efi\_storage) | The name of the storage pool on which to store the disk. | `string` | n/a | yes |
| <a name="input_veeam_firewall"></a> [veeam\_firewall](#input\_veeam\_firewall) | Specify if VM firewall is enabled or disabled. | `bool` | n/a | yes |
| <a name="input_veeam_memory"></a> [veeam\_memory](#input\_veeam\_memory) | The amount of memory to allocate to the VM in Megabytes. | `number` | n/a | yes |
| <a name="input_veeam_model"></a> [veeam\_model](#input\_veeam\_model) | Network Card Model. The virtio model provides the best performance with very low CPU overhead. If your guest does not support this driver, it is usually best to use e1000. Options: e1000, e1000-82540em, e1000-82544gc, e1000-82545em, i82551, i82557b, i82559er, ne2k\_isa, ne2k\_pci, pcnet, rtl8139, virtio, vmxnet3. | `string` | n/a | yes |
| <a name="input_veeam_name"></a> [veeam\_name](#input\_veeam\_name) | The name of the VM within Proxmox | `string` | n/a | yes |
| <a name="input_veeam_os_type"></a> [veeam\_os\_type](#input\_veeam\_os\_type) | The OS type for the VM | `string` | n/a | yes |
| <a name="input_veeam_sockets"></a> [veeam\_sockets](#input\_veeam\_sockets) | The number of CPU sockets to allocate to the VM. | `number` | n/a | yes |
| <a name="input_veeam_startup_delay"></a> [veeam\_startup\_delay](#input\_veeam\_startup\_delay) | The number of seconds to delay before the next VM is started | `number` | n/a | yes |
| <a name="input_veeam_startup_order"></a> [veeam\_startup\_order](#input\_veeam\_startup\_order) | The startup order for the VM | `number` | n/a | yes |
| <a name="input_veeam_vm_id"></a> [veeam\_vm\_id](#input\_veeam\_vm\_id) | The ID of the VM | `number` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->