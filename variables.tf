variable "name" {
  description = "The name of the key vault"
  type        = string

}

variable "tenant_id" {
  description = "The tenant id to be used for the key vault"
  type        = string
}

variable "resource_group_name" {
  description = "The resource group to be used for the key vault"
  type        = string
}

variable "location" {
  description = "The location to be used for the key vault"
  type        = string
}

variable "management_principals" {
  description = "The managers of the key vault"
  type        = map(string)
  default     = {}
}


variable "reader_principals" {
  description = "The provisioners of the key vault"
  type        = map(string)
  default     = {}
}

variable "public_network_access_enabled" {
  description = "Whether public network access is enabled for the key vault"
  type        = bool
  default     = true
}

variable "purge_protection_enabled" {
  description = "Whether purge protection is enabled for the key vault"
  type        = bool
  default     = false
}

variable "tags" {
  type        = map(string)
  description = "Tags to be used on resources."
  default     = {}
}