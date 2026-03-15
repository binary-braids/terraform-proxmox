[![terraform](https://img.shields.io/badge/terraform-purple?style=for-the-badge&logo=terraform)](https://terraform.io/)
[![proxmox](https://img.shields.io/badge/proxmox-orange?style=for-the-badge&logo=proxmox)](https://terraform.io/)
[![renovate](https://img.shields.io/badge/renovate-enabled-brightgreen?style=for-the-badge&logo=renovate)](https://github.com/renovatebot/renovate)

![Host 01 Production CD](https://github.com/binary-braids/terraform-proxmox/actions/workflows/host_01_production.yml/badge.svg)
![Host 02 Production CD](https://github.com/binary-braids/terraform-proxmox/actions/workflows/host_02_production.yml/badge.svg)
![Release CD](https://github.com/binary-braids/terraform-proxmox/actions/workflows/release.yml/badge.svg)
![Validation CI](https://github.com/binary-braids/terraform-proxmox/actions/workflows/validation.yml/badge.svg)


# Terraform Proxmox

This repository contains various Terraform modules for building proxmox resources. This project makes use of the Telmate Proxmox Terraform provider. Setup and documentation for the provider can be found at the following link: https://github.com/Telmate/terraform-provider-proxmox

## 📂 Repository structure

The Git repository contains the following directories:

```sh
📁 root
├─ .github
└─ production
```
## Getting started

The main terraform modules can be utilised with your own variables to deploy Proxmox resources.