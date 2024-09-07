variable "docker_name" {
  description = "The name of the VM within Proxmox"
  type        = string
}

variable "docker_desc" {
  description = "The description of the VM. Shows as the 'Notes' field in the Proxmox GUI"
  type        = string
}

variable "docker_automatic_reboot" {
  description = "Automatically reboot the VM when parameter changes require this. If disabled the provider will emit a warning when the VM needs to be rebooted."
  type        = bool
}

variable "docker_bios" {
  description = "The BIOS to use, options are seabios or ovmf for UEFI"
  type        = string
}

variable "docker_boot" {
  description = "The boot order for the VM. For example: order=scsi0;ide2;net0"
  type        = string
}

variable "docker_cores" {
  description = "The number of CPU cores per CPU socket to allocate to the VM."
  type        = number
}

variable "docker_sockets" {
  description = "The number of CPU sockets to allocate to the VM."
  type        = number
}

variable "docker_cpu" {
  description = "The type of CPU to emulate in the Guest"
  type        = string
}

variable "docker_force_create" {
  description = "If false, and a vm of the same name, on the same node exists, terraform will attempt to reconfigure that VM with these settings. Set to true to always create a new VM (note, the name of the VM must still be unique, otherwise an error will be produced.)"
  type        = bool
}

variable "docker_hotplug" {
  description = "Comma delimited list of hotplug features to enable. Options: network, disk, cpu, memory, usb. Set to 0 to disable hotplug."
  type        = string
}

variable "docker_memory" {
  description = "The amount of memory to allocate to the VM in Megabytes."
  type        = number
}

variable "docker_onboot" {
  description = "Whether to have the VM startup after the PVE node starts."
  type        = bool
}

variable "docker_vm_state" {
  description = "The desired state of the VM, options are running, stopped and started. Do note that started will only start the vm on creation and won't fully manage the power state unlike running and stopped do."
  type        = string
}

variable "docker_os_type" {
  description = "Which provisioning method to use, based on the OS type. Options: ubuntu, centos, cloud-init."
  type        = string
}

variable "docker_qemu_os" {
  description = "The type of OS in the guest. Set properly to allow Proxmox to enable optimizations for the appropriate guest OS. It takes the value from the source template and ignore any changes to resource configuration parameter."
  type        = string
}

variable "docker_scsihw" {
  description = "The SCSI controller to emulate. Options: lsi, lsi53c810, megasas, pvscsi, virtio-scsi-pci, virtio-scsi-single."
  type        = string
}

variable "docker_protection" {
  description = "Enable/disable the VM protection from being removed. The default value of false indicates the VM is removable."
  type        = bool
}

variable "docker_tablet" {
  description = "Enable/disable the USB tablet device. This device is usually needed to allow absolute mouse positioning with VNC."
  type        = bool
}

variable "docker_target_node" {
  description = "The name of the Proxmox Node on which to place the VM."
  type        = string
}

variable "docker_efitype" {
  description = "The type of efi disk device to add. Options: 2m, 4m"
  type        = string
}

variable "docker_efi_storage" {
  description = "The name of the storage pool on which to store the disk."
  type        = string
}

variable "docker_disk_size" {
  description = "The size of the created disk. Accepts K for kibibytes, M for mebibytes, G for gibibytes, T for tibibytes. When only a number is provided gibibytes is assumed. Required when type=disk and passthrough=false, Computed when type=disk and passthrough=true."
  type        = string
}

variable "docker_disk_storage" {
  description = "Required when type=disk and passthrough=false. The name of the storage pool on which to store the disk."
  type        = string
}

variable "docker_bridge" {
  description = "Bridge to which the network device should be attached. The Proxmox VE standard bridge is called vmbr0."
  type        = string
}

variable "docker_model" {
  description = "Network Card Model. The virtio model provides the best performance with very low CPU overhead. If your guest does not support this driver, it is usually best to use e1000. Options: e1000, e1000-82540em, e1000-82544gc, e1000-82545em, i82551, i82557b, i82559er, ne2k_isa, ne2k_pci, pcnet, rtl8139, virtio, vmxnet3."
  type        = string
}
