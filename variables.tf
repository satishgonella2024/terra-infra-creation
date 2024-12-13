### variables.tf (Root Module)

# Removed duplicate variables from main.tf. Only defined here.

variable "name" {
  description = "Name for the resources"
  type        = string
}

variable "ami_id" {
  description = "AMI ID for the EC2 instances"
  type        = string
}

variable "instance_type" {
  description = "Instance type for the EC2 instances"
  type        = string
}

variable "key_name" {
  description = "Key pair name for SSH access"
  type        = string
}