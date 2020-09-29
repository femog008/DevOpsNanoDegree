variable "prefix" {
  description = "The prefix which should be used for all resources job"
}

variable "location" {
  description = "The Azure Region in which all resources should be created."
  default = "East US"
}

variable "username" {
  description = "The Admin account to login to the server."
}

variable "password" {
  description = "The password of the admin account to be created."
}

variable "environment_tag" {
  description = "The tag to be added for the environment-tag on the resource to be created. Example 'Dev'"
}

variable "number_of_vm" {
  description = "The number of virtual machines to be provisioned"
}
