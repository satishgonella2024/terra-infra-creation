### main.tf (Root Module)

terraform {
  backend "s3" {
    bucket         = "terraform-state-bucket-eg"
    key            = "terra-wordpress/terraform.tfstate"
    region         = "eu-west-2"
    dynamodb_table = "terraform-locks"
  }
}

module "network" {
  source = "./modules/network"

  name                       = var.name
  cidr_block                 = "10.0.0.0/16"
  public_subnet_cidr_blocks  = ["10.0.1.0/24", "10.0.2.0/24"]
  public_subnet_count        = 2
  availability_zones         = ["eu-west-2a", "eu-west-2b"]
}

module "compute" {
  source       = "./modules/compute"
  name         = var.name
  ami_id       = var.ami_id
  instance_type = var.instance_type
  key_name     = var.key_name
  subnet_ids   = module.network.public_subnet_ids
  security_group_ids = [module.security.web_sg_id]
}

module "security" {
  source = "./modules/security"

  vpc_id = module.network.vpc_id
  name   = var.name
}

module "load_balancer" {
  source = "./modules/load_balancer"

  name         = var.name
  vpc_id       = module.network.vpc_id
  subnet_ids   = module.network.public_subnet_ids
  security_group_ids = [module.security.web_sg_id]
}