variable "file_server_name" {
  description = "The name of the VM within Proxmox"
  type        = string
}

variable "file_server_description" {
  description = "The description of the VM. Shows as the 'Notes' field in the Proxmox GUI"
  type        = string
}

variable "file_server_vm_id" {
  description = "The ID of the VM"
  type        = number
}

variable "file_server_bios" {
  description = "The BIOS to use, options are seabios or ovmf for UEFI"
  type        = string
}

variable "file_server_startup_order" {
  description = "The startup order for the VM"
  type        = number
}

variable "file_server_startup_delay" {
  description = "The number of seconds to delay before the next VM is started"
  type        = number
}

variable "file_server_cores" {
  description = "The number of CPU cores per CPU socket to allocate to the VM."
  type        = number
}

variable "file_server_sockets" {
  description = "The number of CPU sockets to allocate to the VM."
  type        = number
}

variable "file_server_memory" {
  description = "The amount of memory to allocate to the VM in Megabytes."
  type        = number
}

variable "file_server_os_type" {
  description = "Which provisioning method to use, based on the OS type. Options: ubuntu, centos, cloud-init."
  type        = string
}

variable "file_server_disk_size" {
  description = "The size of the created disk. Accepts K for kibibytes, M for mebibytes, G for gibibytes, T for tibibytes. When only a number is provided gibibytes is assumed. Required when type=disk and passthrough=false, Computed when type=disk and passthrough=true."
  type        = string
}

variable "file_server_disk_storage" {
  description = "Required when type=disk and passthrough=false. The name of the storage pool on which to store the disk."
  type        = string
}

variable "file_server_disk_1_size" {
  description = "The size of the created disk. Accepts K for kibibytes, M for mebibytes, G for gibibytes, T for tibibytes. When only a number is provided gibibytes is assumed. Required when type=disk and passthrough=false, Computed when type=disk and passthrough=true."
  type        = string
}

variable "file_server_disk_1_storage" {
  description = "Required when type=disk and passthrough=false. The name of the storage pool on which to store the disk."
  type        = string
}

variable "file_server_bridge" {
  description = "Bridge to which the network device should be attached. The Proxmox VE standard bridge is called vmbr0."
  type        = string
}

variable "file_server_firewall" {
  description = "Specify if VM firewall is enabled or disabled."
  type        = bool
}

variable "file_server_model" {
  description = "Network Card Model. The virtio model provides the best performance with very low CPU overhead. If your guest does not support this driver, it is usually best to use e1000. Options: e1000, e1000-82540em, e1000-82544gc, e1000-82545em, i82551, i82557b, i82559er, ne2k_isa, ne2k_pci, pcnet, rtl8139, virtio, vmxnet3."
  type        = string
}
