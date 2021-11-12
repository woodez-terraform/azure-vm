variable "location" {
  type    = string
  default = "eastus2"
}
variable "prefix" {
  type    = string
  default = "woodez"
}

variable "ssh-source-address" {
  type    = string
  default = "*"
}

variable "project" {
  type    = string
}
