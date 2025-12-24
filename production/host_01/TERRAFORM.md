<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.6.0 |
| <a name="requirement_proxmox"></a> [proxmox](#requirement\_proxmox) | 0.90.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_proxmox"></a> [proxmox](#provider\_proxmox) | 0.90.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [proxmox_virtual_environment_vm.dc01](https://registry.terraform.io/providers/bpg/proxmox/0.90.0/docs/resources/virtual_environment_vm) | resource |
| [proxmox_virtual_environment_vm.file_server](https://registry.terraform.io/providers/bpg/proxmox/0.90.0/docs/resources/virtual_environment_vm) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_dc01_bios"></a> [dc01\_bios](#input\_dc01\_bios) | The BIOS to use, options are seabios or ovmf for UEFI | `string` | n/a | yes |
| <a name="input_dc01_bridge"></a> [dc01\_bridge](#input\_dc01\_bridge) | Bridge to which the network device should be attached. The Proxmox VE standard bridge is called vmbr0. | `string` | n/a | yes |
| <a name="input_dc01_cores"></a> [dc01\_cores](#input\_dc01\_cores) | The number of CPU cores per CPU socket to allocate to the VM. | `number` | n/a | yes |
| <a name="input_dc01_description"></a> [dc01\_description](#input\_dc01\_description) | The description of the VM | `string` | n/a | yes |
| <a name="input_dc01_disk_size"></a> [dc01\_disk\_size](#input\_dc01\_disk\_size) | The size of the created disk specified in GB | `number` | n/a | yes |
| <a name="input_dc01_disk_storage"></a> [dc01\_disk\_storage](#input\_dc01\_disk\_storage) | Required when type=disk and passthrough=false. The name of the storage pool on which to store the disk. | `string` | n/a | yes |
| <a name="input_dc01_efi_disk_file_format"></a> [dc01\_efi\_disk\_file\_format](#input\_dc01\_efi\_disk\_file\_format) | The file format of the efi disk. Defaults to raw | `string` | n/a | yes |
| <a name="input_dc01_efi_disk_type"></a> [dc01\_efi\_disk\_type](#input\_dc01\_efi\_disk\_type) | The type of efi disk device to add. Options: 2m, 4m | `string` | n/a | yes |
| <a name="input_dc01_efi_storage"></a> [dc01\_efi\_storage](#input\_dc01\_efi\_storage) | The name of the storage pool on which to store the disk. | `string` | n/a | yes |
| <a name="input_dc01_firewall"></a> [dc01\_firewall](#input\_dc01\_firewall) | Specify if VM firewall is enabled or disabled. | `bool` | n/a | yes |
| <a name="input_dc01_memory"></a> [dc01\_memory](#input\_dc01\_memory) | The amount of memory to allocate to the VM in Megabytes. | `number` | n/a | yes |
| <a name="input_dc01_model"></a> [dc01\_model](#input\_dc01\_model) | Network Card Model. The virtio model provides the best performance with very low CPU overhead. If your guest does not support this driver, it is usually best to use e1000. Options: e1000, e1000-82540em, e1000-82544gc, e1000-82545em, i82551, i82557b, i82559er, ne2k\_isa, ne2k\_pci, pcnet, rtl8139, virtio, vmxnet3. | `string` | n/a | yes |
| <a name="input_dc01_name"></a> [dc01\_name](#input\_dc01\_name) | The name of the VM within Proxmox | `string` | n/a | yes |
| <a name="input_dc01_os_type"></a> [dc01\_os\_type](#input\_dc01\_os\_type) | The OS type for the VM | `string` | n/a | yes |
| <a name="input_dc01_sockets"></a> [dc01\_sockets](#input\_dc01\_sockets) | The number of CPU sockets to allocate to the VM. | `number` | n/a | yes |
| <a name="input_dc01_startup_delay"></a> [dc01\_startup\_delay](#input\_dc01\_startup\_delay) | The number of seconds to delay before the next VM is started | `number` | n/a | yes |
| <a name="input_dc01_startup_order"></a> [dc01\_startup\_order](#input\_dc01\_startup\_order) | The startup order for the VM | `number` | n/a | yes |
| <a name="input_dc01_vm_id"></a> [dc01\_vm\_id](#input\_dc01\_vm\_id) | The ID of the VM | `number` | n/a | yes |
| <a name="input_file_server_bios"></a> [file\_server\_bios](#input\_file\_server\_bios) | The BIOS to use, options are seabios or ovmf for UEFI | `string` | n/a | yes |
| <a name="input_file_server_bridge"></a> [file\_server\_bridge](#input\_file\_server\_bridge) | Bridge to which the network device should be attached. The Proxmox VE standard bridge is called vmbr0. | `string` | n/a | yes |
| <a name="input_file_server_cores"></a> [file\_server\_cores](#input\_file\_server\_cores) | The number of CPU cores per CPU socket to allocate to the VM. | `number` | n/a | yes |
| <a name="input_file_server_description"></a> [file\_server\_description](#input\_file\_server\_description) | The description of the VM. Shows as the 'Notes' field in the Proxmox GUI | `string` | n/a | yes |
| <a name="input_file_server_disk_1_size"></a> [file\_server\_disk\_1\_size](#input\_file\_server\_disk\_1\_size) | The size of the created disk. Accepts K for kibibytes, M for mebibytes, G for gibibytes, T for tibibytes. When only a number is provided gibibytes is assumed. Required when type=disk and passthrough=false, Computed when type=disk and passthrough=true. | `string` | n/a | yes |
| <a name="input_file_server_disk_1_storage"></a> [file\_server\_disk\_1\_storage](#input\_file\_server\_disk\_1\_storage) | Required when type=disk and passthrough=false. The name of the storage pool on which to store the disk. | `string` | n/a | yes |
| <a name="input_file_server_disk_size"></a> [file\_server\_disk\_size](#input\_file\_server\_disk\_size) | The size of the created disk. Accepts K for kibibytes, M for mebibytes, G for gibibytes, T for tibibytes. When only a number is provided gibibytes is assumed. Required when type=disk and passthrough=false, Computed when type=disk and passthrough=true. | `string` | n/a | yes |
| <a name="input_file_server_disk_storage"></a> [file\_server\_disk\_storage](#input\_file\_server\_disk\_storage) | Required when type=disk and passthrough=false. The name of the storage pool on which to store the disk. | `string` | n/a | yes |
| <a name="input_file_server_firewall"></a> [file\_server\_firewall](#input\_file\_server\_firewall) | Specify if VM firewall is enabled or disabled. | `bool` | n/a | yes |
| <a name="input_file_server_memory"></a> [file\_server\_memory](#input\_file\_server\_memory) | The amount of memory to allocate to the VM in Megabytes. | `number` | n/a | yes |
| <a name="input_file_server_model"></a> [file\_server\_model](#input\_file\_server\_model) | Network Card Model. The virtio model provides the best performance with very low CPU overhead. If your guest does not support this driver, it is usually best to use e1000. Options: e1000, e1000-82540em, e1000-82544gc, e1000-82545em, i82551, i82557b, i82559er, ne2k\_isa, ne2k\_pci, pcnet, rtl8139, virtio, vmxnet3. | `string` | n/a | yes |
| <a name="input_file_server_name"></a> [file\_server\_name](#input\_file\_server\_name) | The name of the VM within Proxmox | `string` | n/a | yes |
| <a name="input_file_server_os_type"></a> [file\_server\_os\_type](#input\_file\_server\_os\_type) | Which provisioning method to use, based on the OS type. Options: ubuntu, centos, cloud-init. | `string` | n/a | yes |
| <a name="input_file_server_sockets"></a> [file\_server\_sockets](#input\_file\_server\_sockets) | The number of CPU sockets to allocate to the VM. | `number` | n/a | yes |
| <a name="input_file_server_startup_delay"></a> [file\_server\_startup\_delay](#input\_file\_server\_startup\_delay) | The number of seconds to delay before the next VM is started | `number` | n/a | yes |
| <a name="input_file_server_startup_order"></a> [file\_server\_startup\_order](#input\_file\_server\_startup\_order) | The startup order for the VM | `number` | n/a | yes |
| <a name="input_file_server_vm_id"></a> [file\_server\_vm\_id](#input\_file\_server\_vm\_id) | The ID of the VM | `number` | n/a | yes |
| <a name="input_node_name"></a> [node\_name](#input\_node\_name) | The target node | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->