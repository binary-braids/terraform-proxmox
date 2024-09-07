terraform {
  required_version = ">= 1.6.0"
  required_providers {
    proxmx = {
      source  = "telmate/proxmox"
      version = "3.0.1-rc4"
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
  pm_api_url = "https://prod-host-02.binarybraids.com:8006/api2/json"
  pm_user = "terraform@pve"
  pm_password = "#{PROD_02_HOST_TERRAFORM_PASSWORD}#"
}