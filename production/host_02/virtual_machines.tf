# Virtual Machines

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

## Veeam Server
resource "proxmox_vm_qemu" "veeam" {
  name                   = var.veeam_name
  desc                   = var.veeam_desc
  automatic_reboot       = var.veeam_automatic_reboot
  bios                   = var.veeam_bios
  boot                   = var.veeam_boot
  cores                  = var.veeam_cores
  sockets                = var.veeam_sockets
  cpu                    = var.veeam_cpu
  force_create           = var.veeam_force_create
  hotplug                = var.veeam_hotplug
  memory                 = var.veeam_memory
  onboot                 = var.veeam_onboot
  vm_state               = var.veeam_vm_state
  os_type                = var.veeam_os_type
  qemu_os                = var.veeam_qemu_os
  scsihw                 = var.veeam_scsihw
  protection             = var.veeam_protection
  tablet                 = var.veeam_tablet
  target_node            = var.veeam_target_node

  efidisk {
    efitype = var.veeam_efitype
    storage = var.veeam_efi_storage
  }

  disks {
    sata {
      sata0 {
        disk {
          backup             = var.veeam_disk_backup
          cache              = var.veeam_disk_cache
          discard            = var.veeam_disk_discard
          emulatessd         = var.veeam_disk_emulatessd
          size               = var.veeam_disk_size
          storage            = var.veeam_disk_storage
        }
      }
    }
  }

  network {
    bridge    = var.veeam_bridge
    firewall  = var.veeam_firewall
    model     = var.veeam_model
  }
}

# Docker Host
resource "proxmox_vm_qemu" "docker" {
  name                   = var.docker_name
  desc                   = var.docker_desc
  automatic_reboot       = var.docker_automatic_reboot
  bios                   = var.docker_bios
  boot                   = var.docker_boot
  cores                  = var.docker_cores
  sockets                = var.docker_sockets
  cpu                    = var.docker_cpu
  force_create           = var.docker_force_create
  hotplug                = var.docker_hotplug
  memory                 = var.docker_memory
  onboot                 = var.docker_onboot
  vm_state               = var.docker_vm_state
  os_type                = var.docker_os_type
  qemu_os                = var.docker_qemu_os
  scsihw                 = var.docker_scsihw
  protection             = var.docker_protection
  tablet                 = var.docker_tablet
  target_node            = var.docker_target_node

  efidisk {
    efitype = var.docker_efitype
    storage = var.docker_efi_storage
  }

  disks {
    sata {
      sata0 {
        disk {
          backup             = var.docker_disk_backup
          cache              = var.docker_disk_cache
          discard            = var.docker_disk_discard
          emulatessd         = var.docker_disk_emulatessd
          size               = var.docker_disk_size
          storage            = var.docker_disk_storage
        }
      }
    }
  }

  network {
    bridge    = var.docker_bridge
    firewall  = var.docker_firewall
    model     = var.docker_model
  }
}


