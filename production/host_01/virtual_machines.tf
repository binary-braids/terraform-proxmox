# Virtual Machines

## Domain Controller
resource "proxmox_vm_qemu" "dc01" {
  name                   = var.dc01_name
  desc                   = var.dc01_desc
  automatic_reboot       = var.dc01_automatic_reboot
  bios                   = var.dc01_bios
  boot                   = var.dc01_boot
  cores                  = var.dc01_cores
  sockets                = var.dc01_sockets
  cpu                    = var.dc01_cpu
  force_create           = var.dc01_force_create
  hotplug                = var.dc01_hotplug
  memory                 = var.dc01_memory
  onboot                 = var.dc01_onboot
  vm_state               = var.dc01_vm_state
  os_type                = var.dc01_os_type
  qemu_os                = var.dc01_qemu_os
  scsihw                 = var.dc01_scsihw
  protection             = var.dc01_protection
  tablet                 = var.dc01_tablet
  target_node            = var.dc01_target_node

  efidisk {
    efitype = var.dc01_efitype
    storage = var.dc01_efi_storage
  }

  disks {
    sata {
      sata0 {
        disk {
          size               = var.dc01_disk_size
          storage            = var.dc01_disk_storage
        }
      }
    }
  }

  network {
    bridge    = var.dc01_bridge
    model     = var.dc01_model
  }
}

# Media Server
resource "proxmox_vm_qemu" "media" {
  name                   = var.media_name
  desc                   = var.media_desc
  automatic_reboot       = var.media_automatic_reboot
  bios                   = var.media_bios
  boot                   = var.media_boot
  cores                  = var.media_cores
  sockets                = var.media_sockets
  cpu                    = var.media_cpu
  force_create           = var.media_force_create
  hotplug                = var.media_hotplug
  memory                 = var.media_memory
  onboot                 = var.media_onboot
  vm_state               = var.media_vm_state
  os_type                = var.media_os_type
  qemu_os                = var.media_qemu_os
  scsihw                 = var.media_scsihw
  protection             = var.media_protection
  tablet                 = var.media_tablet
  target_node            = var.media_target_node

  disks {
    sata {
      sata0 {
        disk {
          size               = var.media_disk_size
          storage            = var.media_disk_storage
        }
      }
    }
  }

  network {
    bridge    = var.media_bridge
    firewall  = var.media_firewall
    model     = var.media_model
  }
}


