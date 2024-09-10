terraform {
  required_version = ">= 1.6.0"
  required_providers {
    proxmox = {
      source  = "bpg/proxmox"
      version = "0.64.0"
    }
  }
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "binarybraids"
    token        = "#{TERRAFORM_TOKEN}#"

    workspaces {
      name = "terraform-proxmox-host-01"
    }
  }
}

provider "proxmox" {
  endpoint = "https://prod-host-01.binarybraids.com:8006/api2/json"
  username = "terraform@pve"
  password = "#{PROD_01_HOST_TERRAFORM_PASSWORD}#"
}