### outputs.tf

# Network Module Outputs
output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.network.vpc_id
}

output "public_subnet_ids" {
  description = "The IDs of the public subnets"
  value       = module.network.public_subnet_ids
}

# Security Module Outputs
output "web_security_group_id" {
  description = "The ID of the web security group"
  value       = module.security.web_sg_id
}

# Compute Module Outputs
output "launch_template_id" {
  description = "The ID of the launch template for the compute module"
  value       = module.compute.launch_template_id
}

output "autoscaling_group_name" {
  description = "The name of the Auto Scaling group"
  value       = module.compute.autoscaling_group_name
}

# Load Balancer Module Outputs
output "load_balancer_dns" {
  description = "The DNS name of the load balancer"
  value       = module.load_balancer.lb_dns_name
}

output "target_group_arn" {
  description = "The ARN of the load balancer target group"
  value       = module.load_balancer.target_group_arn
}

output "http_listener_arn" {
  description = "The ARN of the HTTP listener for the load balancer"
  value       = module.load_balancer.listener_arn
}
