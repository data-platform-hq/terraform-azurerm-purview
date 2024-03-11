variable "name" {
  type        = string
  description = "Given name to purview"
}

variable "resource_group" {
  type        = string
  description = "The name of the resource group in which to create the Microsoft SQL Server"
}

variable "location" {
  type        = string
  description = "Azure location"
}

variable "managed_resource_group_name" {
  type        = string
  description = "Purview Managed resource group name"
  default     = null
}

variable "admins_object_ids" {
  type        = set(string)
  description = "Set of object IDs designated as Admins for Purview Accounts"
  default     = []
}

variable "tags" {
  type        = map(any)
  description = "Resource tags"
  default     = {}
}
