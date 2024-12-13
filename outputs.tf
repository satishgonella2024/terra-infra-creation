output "launch_template_id" {
  description = "The ID of the launch template for the compute module"
  value       = module.compute.launch_template_id
}

output "autoscaling_group_name" {
  description = "The name of the Auto Scaling group"
  value       = module.compute.autoscaling_group_name
}

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
