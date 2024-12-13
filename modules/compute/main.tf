resource "aws_launch_template" "web_server" {
  name_prefix   = var.name
  image_id      = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  network_interfaces {
    security_groups = var.security_group_ids
  }
  tag_specifications {
    resource_type = "instance"
    tags = {
      Name = "${var.name}-web"
    }
  }
}


resource "aws_autoscaling_group" "web_asg" {
  desired_capacity     = var.desired_capacity
  max_size             = var.max_size
  min_size             = var.min_size
  launch_template {
    id      = aws_launch_template.web_server.id
    version = "$Latest"
  }
  vpc_zone_identifier = var.subnet_ids
}
