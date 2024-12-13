variable "name" {}
variable "ami_id" {}
variable "instance_type" {}
variable "key_name" {}
variable "desired_capacity" { default = 1 }
variable "max_size" { default = 2 }
variable "min_size" { default = 1 }
variable "subnet_ids" { type = list(string) }
variable "security_group_ids" {
  description = "List of security group IDs to associate with instances"
  type        = list(string)
}
