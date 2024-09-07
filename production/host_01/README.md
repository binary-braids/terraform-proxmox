<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.6.0 |
| <a name="requirement_esxi"></a> [esxi](#requirement\_esxi) | 1.10.3 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_esxi"></a> [esxi](#provider\_esxi) | 1.10.3 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| esxi_guest.dc01 | resource |
| esxi_guest.media | resource |
| esxi_guest.veeam | resource |
| esxi_portgroup.production | resource |
| esxi_vswitch.production | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_dc01_boot_firmware"></a> [dc01\_boot\_firmware](#input\_dc01\_boot\_firmware) | The firmware type for the guest VM | `string` | n/a | yes |
| <a name="input_dc01_disk_store"></a> [dc01\_disk\_store](#input\_dc01\_disk\_store) | The name of the data store where the guest VM will be created | `string` | n/a | yes |
| <a name="input_dc01_guest_name"></a> [dc01\_guest\_name](#input\_dc01\_guest\_name) | The name of the guest VM | `string` | n/a | yes |
| <a name="input_dc01_memsize"></a> [dc01\_memsize](#input\_dc01\_memsize) | The amount of memory to allocate the guest VM in MB (1024 = 1GB) | `number` | n/a | yes |
| <a name="input_dc01_nic_type"></a> [dc01\_nic\_type](#input\_dc01\_nic\_type) | The type for the network interface | `string` | n/a | yes |
| <a name="input_dc01_notes"></a> [dc01\_notes](#input\_dc01\_notes) | Annotated notes to add to the guest VM | `string` | n/a | yes |
| <a name="input_dc01_numvcpus"></a> [dc01\_numvcpus](#input\_dc01\_numvcpus) | The number of vCPUs to allocate to the guest VM | `number` | n/a | yes |
| <a name="input_dc01_power"></a> [dc01\_power](#input\_dc01\_power) | Set the guest VM Power state | `string` | n/a | yes |
| <a name="input_dc01_resource_pool_name"></a> [dc01\_resource\_pool\_name](#input\_dc01\_resource\_pool\_name) | The name of the Resource Pool for the guest VM | `string` | n/a | yes |
| <a name="input_dc01_virthwver"></a> [dc01\_virthwver](#input\_dc01\_virthwver) | The hardware version of the guest VM | `number` | n/a | yes |
| <a name="input_dc01_virtual_network"></a> [dc01\_virtual\_network](#input\_dc01\_virtual\_network) | The virtual network for the network interface | `string` | n/a | yes |
| <a name="input_esxi_hostname"></a> [esxi\_hostname](#input\_esxi\_hostname) | hostname for ESXI host | `string` | n/a | yes |
| <a name="input_esxi_hostport"></a> [esxi\_hostport](#input\_esxi\_hostport) | SSH port for ESXI host | `string` | n/a | yes |
| <a name="input_esxi_hostssl"></a> [esxi\_hostssl](#input\_esxi\_hostssl) | SSL port for ESXI host | `string` | n/a | yes |
| <a name="input_esxi_password"></a> [esxi\_password](#input\_esxi\_password) | password for ESXI host | `string` | n/a | yes |
| <a name="input_esxi_username"></a> [esxi\_username](#input\_esxi\_username) | username for ESXI host | `string` | n/a | yes |
| <a name="input_media_boot_firmware"></a> [media\_boot\_firmware](#input\_media\_boot\_firmware) | The firmware type for the guest VM | `string` | n/a | yes |
| <a name="input_media_disk_store"></a> [media\_disk\_store](#input\_media\_disk\_store) | The name of the data store where the guest VM will be created | `string` | n/a | yes |
| <a name="input_media_guest_name"></a> [media\_guest\_name](#input\_media\_guest\_name) | The name of the guest VM | `string` | n/a | yes |
| <a name="input_media_memsize"></a> [media\_memsize](#input\_media\_memsize) | The amount of memory to allocate the guest VM in MB (1024 = 1GB) | `number` | n/a | yes |
| <a name="input_media_nic_type"></a> [media\_nic\_type](#input\_media\_nic\_type) | The type for the network interface | `string` | n/a | yes |
| <a name="input_media_notes"></a> [media\_notes](#input\_media\_notes) | Annotated notes to add to the guest VM | `string` | n/a | yes |
| <a name="input_media_numvcpus"></a> [media\_numvcpus](#input\_media\_numvcpus) | The number of vCPUs to allocate to the guest VM | `number` | n/a | yes |
| <a name="input_media_power"></a> [media\_power](#input\_media\_power) | Set the guest VM Power state | `string` | n/a | yes |
| <a name="input_media_resource_pool_name"></a> [media\_resource\_pool\_name](#input\_media\_resource\_pool\_name) | The name of the Resource Pool for the guest VM | `string` | n/a | yes |
| <a name="input_media_virthwver"></a> [media\_virthwver](#input\_media\_virthwver) | The hardware version of the guest VM | `number` | n/a | yes |
| <a name="input_media_virtual_disk_id"></a> [media\_virtual\_disk\_id](#input\_media\_virtual\_disk\_id) | The id of the virtual disk | `string` | n/a | yes |
| <a name="input_media_virtual_disk_slot"></a> [media\_virtual\_disk\_slot](#input\_media\_virtual\_disk\_slot) | The slot for the virtual disk | `string` | n/a | yes |
| <a name="input_media_virtual_network"></a> [media\_virtual\_network](#input\_media\_virtual\_network) | The virtual network for the network interface | `string` | n/a | yes |
| <a name="input_port_group_name"></a> [port\_group\_name](#input\_port\_group\_name) | The name of the Port Group | `string` | n/a | yes |
| <a name="input_port_group_vlan"></a> [port\_group\_vlan](#input\_port\_group\_vlan) | The VLAN ID for the Port Group | `number` | n/a | yes |
| <a name="input_uplink_name"></a> [uplink\_name](#input\_uplink\_name) | The name of the vSwitch uplink | `string` | n/a | yes |
| <a name="input_veeam_boot_firmware"></a> [veeam\_boot\_firmware](#input\_veeam\_boot\_firmware) | The firmware type for the guest VM | `string` | n/a | yes |
| <a name="input_veeam_disk_store"></a> [veeam\_disk\_store](#input\_veeam\_disk\_store) | The name of the data store where the guest VM will be created | `string` | n/a | yes |
| <a name="input_veeam_guest_name"></a> [veeam\_guest\_name](#input\_veeam\_guest\_name) | The name of the guest VM | `string` | n/a | yes |
| <a name="input_veeam_memsize"></a> [veeam\_memsize](#input\_veeam\_memsize) | The amount of memory to allocate the guest VM in MB (1024 = 1GB) | `number` | n/a | yes |
| <a name="input_veeam_nic_type"></a> [veeam\_nic\_type](#input\_veeam\_nic\_type) | The type for the network interface | `string` | n/a | yes |
| <a name="input_veeam_notes"></a> [veeam\_notes](#input\_veeam\_notes) | Annotated notes to add to the guest VM | `string` | n/a | yes |
| <a name="input_veeam_numvcpus"></a> [veeam\_numvcpus](#input\_veeam\_numvcpus) | The number of vCPUs to allocate to the guest VM | `number` | n/a | yes |
| <a name="input_veeam_power"></a> [veeam\_power](#input\_veeam\_power) | Set the guest VM Power state | `string` | n/a | yes |
| <a name="input_veeam_resource_pool_name"></a> [veeam\_resource\_pool\_name](#input\_veeam\_resource\_pool\_name) | The name of the Resource Pool for the guest VM | `string` | n/a | yes |
| <a name="input_veeam_virthwver"></a> [veeam\_virthwver](#input\_veeam\_virthwver) | The hardware version of the guest VM | `number` | n/a | yes |
| <a name="input_veeam_virtual_network"></a> [veeam\_virtual\_network](#input\_veeam\_virtual\_network) | The virtual network for the network interface | `string` | n/a | yes |
| <a name="input_vswitch_name"></a> [vswitch\_name](#input\_vswitch\_name) | The name of the vSwitch | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->