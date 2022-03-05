#Correction variables
variable "location" {
  type = string
  description = "Azure region where infrastructure will be created"
  default = "West Europe"
}

variable "ssh_user" {
  type = string
  description = "ssh username"
  default = "adminUsername"
}

variable "public_key_path" {
  type = string
  description = "public key path"
  default = "~/.ssh/id_rsa.pub"
}

variable "storage_account" {
  type = string
  description = "storage account name"
  default = "staccountcp2sdelrio"
}