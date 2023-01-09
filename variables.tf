locals {
  subnets = length(data.aws_availability_zones.available.names)
}


variable "project" {
  default = "demo"
}
variable "environment" {}
variable "network" {}
variable "enable_nat_gateway" {
  type = bool
  default = true
}
