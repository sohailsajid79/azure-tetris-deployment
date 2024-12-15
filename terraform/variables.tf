variable "location" {
  description = "Azure region"
}

variable "rg_name" {
  description = "Name of the Resource Group"
}

variable "vnet_name" {
  description = "Name of the Virtual Network"
}

variable "vnet_address_space" {
  description = "Address space for the Virtual Network"
}

variable "subnet_name" {
  description = "Name of the Subnet"
}

variable "subnet_address_prefix" {
  description = "Address prefix for the Subnet"
}

variable "network_sg_name" {
  description = "Name of the Network Security Group"
}


variable "public_ip_name" {
  description = "Name of the Public IP"
}

variable "nic_name" {
  description = "Name of the Network Interface"
}

variable "vm_name" {
  description = "Name of the Virtual Machine"
}

variable "vm_size" {
  description = "Size of the Virtual Machine"
}

variable "admin_username" {
  description = "Admin username for the Virtual Machine"
}

variable "ssh_public_key_path" {
  description = "Path to the SSH public key"
  type        = string
}

variable "subscription_id" {
  description = "authentication"
  type        = string
  sensitive   = true
}

variable "client_id" {
  description = "authentication"
  type        = string
  sensitive   = true
}

variable "client_secret" {
  description = "authentication"
  type        = string
  sensitive   = true
}

variable "tenant_id" {
  description = "authentication"
  type        = string
  sensitive   = true
}