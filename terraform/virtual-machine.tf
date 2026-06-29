#########################################################
# Azure Linux Virtual Machine
#########################################################

# The VM will be added after the Terraform project
# has been fully refactored.

# Existing VM:
#
# Name: vm-enterprise-lab
# Size: Standard_B1ls
# Image: Ubuntu 24.04 LTS
# Trusted Launch Enabled

admin_ssh_key {
  username   = "azureuser"
  public_key = file(var.ssh_public_key_path)
}