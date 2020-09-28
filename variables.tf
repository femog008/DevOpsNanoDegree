variable "prefix" {
  description = "The prefix which should be used for all resources in this example"
}

variable "location" {
  description = "The Azure Region in which all resources in this example should be created."
  default = "East US"
}

variable "username" {
  description = "The Admin account to login to the server."
}

variable "password" {
  description = "The password of the admin account to be created."
}
