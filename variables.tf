variable "prefix" {
  description = "The prefix which should be used for all resources job"
  default = "uda-proja"
}

variable "location" {
  description = "The Azure Region in which all resources should be created."
  default = "East US"
}

variable "username" {
  description = "The Admin account to login to the server."
  default = "femog008"
}

variable "password" {
  description = "The password of the admin account to be created."
  default = "P@ssw0rd#456"
}

variable "environment_tag" {
  description = "The tag to be added for the environment-tag on the resource to be created. Example 'Dev'"
  default = "dev"
}

variable "number_of_vm" {
  description = "The number of virtual machines to be provisioned"
  default = "3"
}
