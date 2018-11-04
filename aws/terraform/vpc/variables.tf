variable "region" {
  description = "Region to install the VPC into."
  type        = "string"
}

variable "cidr" {
  description = "CIDR to use for the VPC."
  type        = "string"
}

#variable "subnet_cidr" {
#    description = "CIDR to use for the build subnet."
#    type = "string"
#}

