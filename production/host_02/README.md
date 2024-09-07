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
| esxi_guest.ansible | resource |
| esxi_guest.ca | resource |
| esxi_guest.dc02 | resource |
| esxi_guest.docker | resource |
| esxi_portgroup.production | resource |
| esxi_vswitch.production | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ansible_boot_firmware"></a> [ansible\_boot\_firmware](#input\_ansible\_boot\_firmware) | The firmware type for the guest VM | `string` | n/a | yes |
| <a name="input_ansible_disk_store"></a> [ansible\_disk\_store](#input\_ansible\_disk\_store) | The name of the data store where the guest VM will be created | `string` | n/a | yes |
| <a name="input_ansible_guest_name"></a> [ansible\_guest\_name](#input\_ansible\_guest\_name) | The name of the guest VM | `string` | n/a | yes |
| <a name="input_ansible_memsize"></a> [ansible\_memsize](#input\_ansible\_memsize) | The amount of memory to allocate the guest VM in MB (1024 = 1GB) | `number` | n/a | yes |
| <a name="input_ansible_nic_type"></a> [ansible\_nic\_type](#input\_ansible\_nic\_type) | The type for the network interface | `string` | n/a | yes |
| <a name="input_ansible_notes"></a> [ansible\_notes](#input\_ansible\_notes) | Annotated notes to add to the guest VM | `string` | n/a | yes |
| <a name="input_ansible_numvcpus"></a> [ansible\_numvcpus](#input\_ansible\_numvcpus) | The number of vCPUs to allocate to the guest VM | `number` | n/a | yes |
| <a name="input_ansible_power"></a> [ansible\_power](#input\_ansible\_power) | Set the guest VM Power state | `string` | n/a | yes |
| <a name="input_ansible_resource_pool_name"></a> [ansible\_resource\_pool\_name](#input\_ansible\_resource\_pool\_name) | The name of the Resource Pool for the guest VM | `string` | n/a | yes |
| <a name="input_ansible_virthwver"></a> [ansible\_virthwver](#input\_ansible\_virthwver) | The hardware version of the guest VM | `number` | n/a | yes |
| <a name="input_ansible_virtual_network"></a> [ansible\_virtual\_network](#input\_ansible\_virtual\_network) | The virtual network for the network interface | `string` | n/a | yes |
| <a name="input_ca_boot_firmware"></a> [ca\_boot\_firmware](#input\_ca\_boot\_firmware) | The firmware type for the guest VM | `string` | n/a | yes |
| <a name="input_ca_disk_store"></a> [ca\_disk\_store](#input\_ca\_disk\_store) | The name of the data store where the guest VM will be created | `string` | n/a | yes |
| <a name="input_ca_guest_name"></a> [ca\_guest\_name](#input\_ca\_guest\_name) | The name of the guest VM | `string` | n/a | yes |
| <a name="input_ca_memsize"></a> [ca\_memsize](#input\_ca\_memsize) | The amount of memory to allocate the guest VM in MB (1024 = 1GB) | `number` | n/a | yes |
| <a name="input_ca_nic_type"></a> [ca\_nic\_type](#input\_ca\_nic\_type) | The type for the network interface | `string` | n/a | yes |
| <a name="input_ca_notes"></a> [ca\_notes](#input\_ca\_notes) | Annotated notes to add to the guest VM | `string` | n/a | yes |
| <a name="input_ca_numvcpus"></a> [ca\_numvcpus](#input\_ca\_numvcpus) | The number of vCPUs to allocate to the guest VM | `number` | n/a | yes |
| <a name="input_ca_power"></a> [ca\_power](#input\_ca\_power) | Set the guest VM Power state | `string` | n/a | yes |
| <a name="input_ca_resource_pool_name"></a> [ca\_resource\_pool\_name](#input\_ca\_resource\_pool\_name) | The name of the Resource Pool for the guest VM | `string` | n/a | yes |
| <a name="input_ca_virthwver"></a> [ca\_virthwver](#input\_ca\_virthwver) | The hardware version of the guest VM | `number` | n/a | yes |
| <a name="input_ca_virtual_network"></a> [ca\_virtual\_network](#input\_ca\_virtual\_network) | The virtual network for the network interface | `string` | n/a | yes |
| <a name="input_dc02_boot_firmware"></a> [dc02\_boot\_firmware](#input\_dc02\_boot\_firmware) | The firmware type for the guest VM | `string` | n/a | yes |
| <a name="input_dc02_disk_store"></a> [dc02\_disk\_store](#input\_dc02\_disk\_store) | The name of the data store where the guest VM will be created | `string` | n/a | yes |
| <a name="input_dc02_guest_name"></a> [dc02\_guest\_name](#input\_dc02\_guest\_name) | The name of the guest VM | `string` | n/a | yes |
| <a name="input_dc02_memsize"></a> [dc02\_memsize](#input\_dc02\_memsize) | The amount of memory to allocate the guest VM in MB (1024 = 1GB) | `number` | n/a | yes |
| <a name="input_dc02_nic_type"></a> [dc02\_nic\_type](#input\_dc02\_nic\_type) | The type for the network interface | `string` | n/a | yes |
| <a name="input_dc02_notes"></a> [dc02\_notes](#input\_dc02\_notes) | Annotated notes to add to the guest VM | `string` | n/a | yes |
| <a name="input_dc02_numvcpus"></a> [dc02\_numvcpus](#input\_dc02\_numvcpus) | The number of vCPUs to allocate to the guest VM | `number` | n/a | yes |
| <a name="input_dc02_power"></a> [dc02\_power](#input\_dc02\_power) | Set the guest VM Power state | `string` | n/a | yes |
| <a name="input_dc02_resource_pool_name"></a> [dc02\_resource\_pool\_name](#input\_dc02\_resource\_pool\_name) | The name of the Resource Pool for the guest VM | `string` | n/a | yes |
| <a name="input_dc02_virthwver"></a> [dc02\_virthwver](#input\_dc02\_virthwver) | The hardware version of the guest VM | `number` | n/a | yes |
| <a name="input_dc02_virtual_network"></a> [dc02\_virtual\_network](#input\_dc02\_virtual\_network) | The virtual network for the network interface | `string` | n/a | yes |
| <a name="input_docker_boot_firmware"></a> [docker\_boot\_firmware](#input\_docker\_boot\_firmware) | The firmware type for the guest VM | `string` | n/a | yes |
| <a name="input_docker_clone_from_vm"></a> [docker\_clone\_from\_vm](#input\_docker\_clone\_from\_vm) | The source VM to clone | `string` | n/a | yes |
| <a name="input_docker_disk_store"></a> [docker\_disk\_store](#input\_docker\_disk\_store) | The name of the data store where the guest VM will be created | `string` | n/a | yes |
| <a name="input_docker_guest_name"></a> [docker\_guest\_name](#input\_docker\_guest\_name) | The name of the guest VM | `string` | n/a | yes |
| <a name="input_docker_memsize"></a> [docker\_memsize](#input\_docker\_memsize) | The amount of memory to allocate the guest VM in MB (1024 = 1GB) | `number` | n/a | yes |
| <a name="input_docker_nic_type"></a> [docker\_nic\_type](#input\_docker\_nic\_type) | The type for the network interface | `string` | n/a | yes |
| <a name="input_docker_notes"></a> [docker\_notes](#input\_docker\_notes) | Annotated notes to add to the guest VM | `string` | n/a | yes |
| <a name="input_docker_numvcpus"></a> [docker\_numvcpus](#input\_docker\_numvcpus) | The number of vCPUs to allocate to the guest VM | `number` | n/a | yes |
| <a name="input_docker_power"></a> [docker\_power](#input\_docker\_power) | Set the guest VM Power state | `string` | n/a | yes |
| <a name="input_docker_resource_pool_name"></a> [docker\_resource\_pool\_name](#input\_docker\_resource\_pool\_name) | The name of the Resource Pool for the guest VM | `string` | n/a | yes |
| <a name="input_docker_virthwver"></a> [docker\_virthwver](#input\_docker\_virthwver) | The hardware version of the guest VM | `number` | n/a | yes |
| <a name="input_docker_virtual_network"></a> [docker\_virtual\_network](#input\_docker\_virtual\_network) | The virtual network for the network interface | `string` | n/a | yes |
| <a name="input_esxi_hostname"></a> [esxi\_hostname](#input\_esxi\_hostname) | hostname for ESXI host | `string` | n/a | yes |
| <a name="input_esxi_hostport"></a> [esxi\_hostport](#input\_esxi\_hostport) | SSH port for ESXI host | `string` | n/a | yes |
| <a name="input_esxi_hostssl"></a> [esxi\_hostssl](#input\_esxi\_hostssl) | SSL port for ESXI host | `string` | n/a | yes |
| <a name="input_esxi_password"></a> [esxi\_password](#input\_esxi\_password) | password for ESXI host | `string` | n/a | yes |
| <a name="input_esxi_username"></a> [esxi\_username](#input\_esxi\_username) | username for ESXI host | `string` | n/a | yes |
| <a name="input_port_group_name"></a> [port\_group\_name](#input\_port\_group\_name) | The name of the Port Group | `string` | n/a | yes |
| <a name="input_port_group_vlan"></a> [port\_group\_vlan](#input\_port\_group\_vlan) | The VLAN ID for the Port Group | `number` | n/a | yes |
| <a name="input_uplink_name"></a> [uplink\_name](#input\_uplink\_name) | The name of the vSwitch uplink | `string` | n/a | yes |
| <a name="input_vswitch_name"></a> [vswitch\_name](#input\_vswitch\_name) | The name of the vSwitch | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->