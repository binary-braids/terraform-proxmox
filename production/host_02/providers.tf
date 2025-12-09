terraform {
  required_version = ">= 1.6.0"
  required_providers {
    proxmox = {
      source  = "bpg/proxmox"
      version = "0.89.1"
    }
  }
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "binarybraids"
    token        = "#{TERRAFORM_TOKEN}#"

    workspaces {
      name = "terraform-proxmox-host-02"
    }
  }
}

provider "proxmox" {
  endpoint = "https://prod-host-02.binarybraids.com:8006/api2/json"
  username = "terraform@pve"
  password = "#{PROD_02_HOST_TERRAFORM_PASSWORD}#"
}