# Virtual Machines

## Domain Controller
resource "proxmox_virtual_environment_vm" "dc01" {
  name        = var.dc01_name
  description = var.dc01_description
  node_name   = var.node_name
  migrate     = true
  vm_id       = var.dc01_vm_id

  bios = var.dc01_bios

  agent {
    enabled = true
  }

  startup {
    order      = var.dc01_startup_order
    up_delay   = var.dc01_startup_delay
  }

  cpu {
    cores = var.dc01_cores
    sockets = var.dc01_sockets
  }

  memory {
    dedicated = var.dc01_memory
  }

  efi_disk {
    datastore_id = var.dc01_efi_storage
    file_format  = var.dc01_efi_disk_file_format
    type         = var.dc01_efi_disk_type
    pre_enrolled_keys = true
  }

  disk {
    datastore_id = var.dc01_disk_storage
    interface    = "sata0"
    size         = var.dc01_disk_size
  }

  network_device {
    bridge = var.dc01_bridge
    firewall = var.dc01_firewall
    model = var.dc01_model
  }

  operating_system {
    type = var.dc01_os_type
  }
}

#File Server
resource "proxmox_virtual_environment_vm" "file_server" {
  name        = var.file_server_name
  description = var.file_server_description
  node_name   = var.node_name
  migrate     = true
  vm_id       = var.file_server_vm_id

  bios = var.file_server_bios

  agent {
    enabled = true
  }

  startup {
    order      = var.file_server_startup_order
    up_delay   = var.file_server_startup_delay
  }

  cpu {
    cores = var.file_server_cores
    sockets = var.file_server_sockets
  }

  memory {
    dedicated = var.file_server_memory
  }

  disk {
    datastore_id = var.file_server_disk_storage
    interface    = "sata0"
    size         = var.file_server_disk_size
  }

  disk {
    datastore_id = var.file_server_disk_1_storage
    interface = "sata1"
    size = var.file_server_disk_1_size
  }

  network_device {
    bridge = var.file_server_bridge
    firewall = var.file_server_firewall
    model = var.file_server_model
  }

  operating_system {
    type = var.file_server_os_type
  }
}


