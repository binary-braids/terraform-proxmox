variable "docker_name" {
  description = "The name of the VM within Proxmox"
  type        = string
}

variable "docker_description" {
  description = "The description of the VM"
  type        = string
}

variable "docker_vm_id" {
  description = "The ID of the VM"
  type        = number
}

variable "docker_bios" {
  description = "The BIOS to use, options are seabios or ovmf for UEFI"
  type        = string
}

variable "docker_startup_order" {
  description = "The startup order for the VM"
  type        = number
}

variable "docker_startup_delay" {
  description = "The number of seconds to delay before the next VM is started"
  type        = number
}

variable "docker_cores" {
  description = "The number of CPU cores per CPU socket to allocate to the VM."
  type        = number
}

variable "docker_sockets" {
  description = "The number of CPU sockets to allocate to the VM."
  type        = number
}

variable "docker_memory" {
  description = "The amount of memory to allocate to the VM in Megabytes."
  type        = number
}

variable "docker_os_type" {
  description = "The OS type for the VM"
  type        = string
}

variable "docker_efi_disk_type" {
  description = "The type of efi disk device to add. Options: 2m, 4m"
  type        = string
}

variable "docker_efi_storage" {
  description = "The name of the storage pool on which to store the disk."
  type        = string
}

variable "docker_efi_disk_file_format" {
  description = "The file format of the efi disk. Defaults to raw"
  type        = string
}

variable "docker_disk_size" {
  description = "The size of the created disk specified in GB"
  type        = number
}

variable "docker_disk_storage" {
  description = "Required when type=disk and passthrough=false. The name of the storage pool on which to store the disk."
  type        = string
}

variable "docker_bridge" {
  description = "Bridge to which the network device should be attached. The Proxmox VE standard bridge is called vmbr0."
  type        = string
}

variable "docker_firewall" {
  description = "Specify if VM firewall is enabled or disabled."
  type        = bool
}

variable "docker_model" {
  description = "Network Card Model. The virtio model provides the best performance with very low CPU overhead. If your guest does not support this driver, it is usually best to use e1000. Options: e1000, e1000-82540em, e1000-82544gc, e1000-82545em, i82551, i82557b, i82559er, ne2k_isa, ne2k_pci, pcnet, rtl8139, virtio, vmxnet3."
  type        = string
}
