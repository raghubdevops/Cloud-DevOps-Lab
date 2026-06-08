variable "vnet_name" {}

variable "resource_group_name" {}

variable "location" {}

variable "address_space" {
  type = list(string)
}

variable "subnet1_name" {}

variable "subnet1_prefix" {
  type = list(string)
}

variable "subnet2_name" {}

variable "subnet2_prefix" {
  type = list(string)
}