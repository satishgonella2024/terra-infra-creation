output "vpc_id" {
  value = module.network.aws_vpc.main.id
}

output "load_balancer_dns" {
  value = module.load_balancer.aws_lb.main.dns_name
}

output "autoscaling_group_name" {
  value = module.compute.aws_autoscaling_group.web_asg.name
}
