# Ubuntu Server Setup Guide

## Overview

This document describes the initial configuration of an Ubuntu Server virtual machine deployed in Microsoft Azure.

The objective is to prepare a secure, production-ready Linux server for Infrastructure as Code (IaC), automation, and cloud administration.

---

# Environment

| Component | Version |
|----------|---------|
| Operating System | Ubuntu Server 24.04 LTS |
| Cloud Platform | Microsoft Azure |
| VM Size | Standard_B2s *(or your VM size)* |
| Region | UK South |
| Provisioning | Terraform |
| Authentication | SSH Key |
| Shell | Bash |

---

# Objectives

- Deploy Ubuntu Server in Azure
- Secure remote administration
- Configure SSH authentication
- Update the operating system
- Install administration tools
- Prepare the server for automation
- Follow Linux security best practices

---

# Ubuntu Server Setup

## Azure Virtual Machine

An Ubuntu 24.04 LTS virtual machine was deployed in Microsoft Azure using Terraform.

![Azure Ubuntu VM](/screenshots//vm-overview.png)

*Figure 1 – Azure Ubuntu virtual machine overview.*



# Initial System Update

Update package repositories and install the latest security updates.

```bash
sudo apt update
sudo apt upgrade -y
```

---

# Verify Operating System

```bash
lsb_release -a
```

Example:

```text
Distributor ID: Ubuntu
Description: Ubuntu 24.04 LTS
Release: 24.04
Codename: noble
```

---

# Check System Information

```bash
hostnamectl
```

Display kernel version:

```bash
uname -r
```

Display CPU information:

```bash
lscpu
```

Display memory usage:

```bash
free -h
```

Display disk usage:

```bash
df -h
```

---

# User Management

Create a new administrator account.

```bash
sudo adduser adminuser
```

Add the user to the sudo group.

```bash
sudo usermod -aG sudo adminuser
```

Verify group membership.

```bash
groups adminuser
```

---

# SSH Configuration

Verify SSH service.

```bash
sudo systemctl status ssh
```

Enable SSH at startup.

```bash
sudo systemctl enable ssh
```

Restart SSH.

```bash
sudo systemctl restart ssh
```

## Connect via SSH

```bash
ssh -i vm-enterprise-lab_key.pem azureuser@<Public-IP>
```

Successful SSH connection:

![SSH Login](/screenshots/ssh-login.png)

*Figure 2 – Secure SSH connection to the Ubuntu server.*


## Verify Ubuntu Installation

```bash
uname -a
lsb_release -a
```

Output:

![Ubuntu Version](/screenshots/ubuntu-version.png)

*Figure 3 – Ubuntu 24.04 LTS version verification.*

## Configure Swap

```bash
sudo fallocate -l 1G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab
```

Verify swap:

![Swap Enabled](/screenshots/swap-enabled.png)

*Figure 4 – Swap successfully enabled.*
---

# Configure Firewall (UFW)

Enable the firewall.

```bash
sudo ufw allow OpenSSH
sudo ufw enable
```

Verify status.

```bash
sudo ufw status verbose
```

## Configure UFW Firewall

```bash
sudo apt install ufw -y
sudo ufw allow OpenSSH
sudo ufw enable
sudo ufw status verbose
```

Firewall configuration:

![UFW Status](/screenshots/ufw-status.png)

*Figure 5 – UFW firewall configured with SSH access allowed.*

---

# Install Azure CLI

```bash
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
```

Verify installation.

```bash
az version
```
## Install Azure CLI

```bash
az version
az login
```

Azure CLI authentication:

![Azure CLI Login](/screenshots/azure-cli-login.png)

*Figure 6 – Azure CLI installed and authenticated using device login.*


## Install Fail2Ban

```bash
sudo apt install fail2ban -y
sudo systemctl enable fail2ban
sudo systemctl start fail2ban
sudo systemctl status fail2ban
```

Service status:

![Fail2Ban](/screenshots/fail2ban-status.png)

*Figure 7 – Fail2Ban service protecting SSH from brute-force attacks.*
---

# Install PowerShell

```bash
sudo snap install powershell --classic
```

Verify.

```bash
pwsh
```

---

# Install Git

```bash
sudo apt install git -y
```

Verify.

```bash
git --version
```

---

# Install Terraform

Download the latest Terraform release from HashiCorp.

Verify installation.

```bash
terraform version
```

---

# Install Monitoring Tools

```bash
sudo apt install htop -y
```

Run:

```bash
htop
```

---

# Network Configuration

Display IP configuration.

```bash
ip address
```

Display routing table.

```bash
ip route
```

Display DNS configuration.

```bash
cat /etc/resolv.conf
```

---

# Storage Information

List block devices.

```bash
lsblk
```

List mounted filesystems.

```bash
mount
```

---

# Service Management

List running services.

```bash
systemctl --type=service --state=running
```

Restart a service.

```bash
sudo systemctl restart ssh
```

Enable a service.

```bash
sudo systemctl enable ssh
```

---

# Log Management

View system logs.

```bash
journalctl
```

View SSH logs.

```bash
journalctl -u ssh
```

Follow live logs.

```bash
journalctl -f
```

---

# Security Best Practices

- Use SSH keys instead of passwords.
- Disable password authentication where possible.
- Keep the operating system updated.
- Enable the UFW firewall.
- Use least-privilege access.
- Regularly review system logs.
- Remove unused packages.
- Rotate SSH keys periodically.

---

# Validation Checklist

| Task | Status |
|-------|--------|
| Ubuntu installed | ✅ |
| System updated | ✅ |
| SSH configured | ✅ |
| Firewall enabled | ✅ |
| Azure CLI installed | ✅ |
| Git installed | ✅ |
| Terraform installed | ✅ |
| PowerShell installed | ✅ |
| Monitoring tools installed | ✅ |

---

# Skills Demonstrated

- Linux Administration
- Ubuntu Server
- Microsoft Azure
- Infrastructure as Code (IaC)
- SSH
- Bash
- Azure CLI
- Git
- Terraform
- PowerShell
- UFW Firewall
- System Administration

---

# References

- Ubuntu Server Administration
- Microsoft Azure Documentation
- HashiCorp Terraform Documentation
- Microsoft Learn