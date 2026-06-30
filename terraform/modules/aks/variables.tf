variable "cluster_name" {
  description = "Name of the AKS cluster"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group for the AKS cluster"
  type        = string
}

variable "dns_prefix" {
  description = "DNS prefix for the cluster"
  type        = string
}

variable "kubernetes_version" {
  description = "Kubernetes version"
  type        = string
  default     = "1.29"
}

variable "system_node_count" {
  type    = number
  default = 1
}

variable "system_vm_size" {
  type    = string
  default = "Standard_B2s"
}

variable "user_node_count" {
  type    = number
  default = 1
}

variable "user_vm_size" {
  type    = string
  default = "Standard_B2s"
}

variable "vnet_subnet_id" {
  description = "Subnet ID for AKS nodes"
  type        = string
}

variable "tags" {
  type    = map(string)
  default = {}
}