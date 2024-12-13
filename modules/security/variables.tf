### modules/security/variables.tf

variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}

variable "name" {
  description = "Name prefix for the security group"
  type        = string
}