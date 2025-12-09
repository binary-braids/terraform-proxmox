# Virtual Machines

# Virtual Machines

## Domain Controller
resource "proxmox_virtual_environment_vm" "dc02" {
  name        = var.dc02_name
  description = var.dc02_description
  node_name   = var.node_name
  migrate     = true
  vm_id       = var.dc02_vm_id

  bios = var.dc02_bios

  agent {
    enabled = true
  }

  startup {
    order    = var.dc02_startup_order
    up_delay = var.dc02_startup_delay
  }

  cpu {
    cores   = var.dc02_cores
    sockets = var.dc02_sockets
  }

  memory {
    dedicated = var.dc02_memory
  }

  efi_disk {
    datastore_id      = var.dc02_efi_storage
    file_format       = var.dc02_efi_disk_file_format
    type              = var.dc02_efi_disk_type
    pre_enrolled_keys = false
  }

  disk {
    datastore_id = var.dc02_disk_storage
    interface    = "sata0"
    size         = var.dc02_disk_size
  }

  network_device {
    bridge   = var.dc02_bridge
    firewall = var.dc02_firewall
    model    = var.dc02_model
  }

  operating_system {
    type = var.dc02_os_type
  }
}

## Veeam Server
resource "proxmox_virtual_environment_vm" "veeam" {
  name        = var.veeam_name
  description = var.veeam_description
  node_name   = var.node_name
  migrate     = true
  vm_id       = var.veeam_vm_id

  bios = var.veeam_bios

  agent {
    enabled = true
  }

  startup {
    order    = var.veeam_startup_order
    up_delay = var.veeam_startup_delay
  }

  cpu {
    cores   = var.veeam_cores
    sockets = var.veeam_sockets
  }

  memory {
    dedicated = var.veeam_memory
  }

  efi_disk {
    datastore_id      = var.veeam_efi_storage
    file_format       = var.veeam_efi_disk_file_format
    type              = var.veeam_efi_disk_type
    pre_enrolled_keys = false
  }

  disk {
    datastore_id = var.veeam_disk_storage
    interface    = "sata0"
    size         = var.veeam_disk_size
  }

  usb {
    host = "4-1"
  }

  usb {
    host = "4-2"
  }

  network_device {
    bridge   = var.veeam_bridge
    firewall = var.veeam_firewall
    model    = var.veeam_model
  }

  operating_system {
    type = var.veeam_os_type
  }
}

# Docker Host
resource "proxmox_virtual_environment_vm" "docker" {
  name        = var.docker_name
  description = var.docker_description
  node_name   = var.node_name
  migrate     = true
  vm_id       = var.docker_vm_id

  bios = var.docker_bios

  agent {
    enabled = true
  }

  startup {
    order    = var.docker_startup_order
    up_delay = var.docker_startup_delay
  }

  cpu {
    cores   = var.docker_cores
    sockets = var.docker_sockets
  }

  memory {
    dedicated = var.docker_memory
  }

  efi_disk {
    datastore_id      = var.docker_efi_storage
    file_format       = var.docker_efi_disk_file_format
    type              = var.docker_efi_disk_type
    pre_enrolled_keys = false
  }

  disk {
    datastore_id = var.docker_disk_storage
    interface    = "sata0"
    size         = var.docker_disk_size
  }

  network_device {
    bridge   = var.docker_bridge
    firewall = var.docker_firewall
    model    = var.docker_model
  }

  operating_system {
    type = var.docker_os_type
  }
}


