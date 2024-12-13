output "launch_template_id" {
  description = "The ID of the launch template"
  value       = aws_launch_template.web_server.id
}

output "autoscaling_group_name" {
  description = "The name of the Auto Scaling group"
  value       = aws_autoscaling_group.web_asg.name
}
