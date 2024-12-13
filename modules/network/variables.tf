### modules/network/variables.tf

variable "name" {
  description = "Name for the VPC and subnets"
  type        = string
}

variable "cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "public_subnet_cidr_blocks" {
  description = "CIDR blocks for public subnets"
  type        = list(string)
}

variable "public_subnet_count" {
  description = "Number of public subnets"
  type        = number
}

variable "availability_zones" {
  description = "Availability zones for subnets"
  type        = list(string)
}