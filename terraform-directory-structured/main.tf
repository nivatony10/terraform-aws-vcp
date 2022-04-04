provider "aws" {
  region = var.region
}

module "vcp" {
  source = "./modules/networking"

  project               = var.project
  environment           = var.environment
  region                = var.region
  availability_zones    = var.availability_zones
  vpc_cidr              = var.vpc_cidr
  public_subnets_cidr   = var.public_subnets_cidr
  private_subnets_cidr  = var.private_subnets_cidr
  public1_subnets_cidr  = var.public1_subnets_cidr
  private1_subnets_cidr = var.private1_subnets_cidr
}

  
  module "config" {
  source             = "./"
  name               = var.name
  region             = var.region
  private_subnet_ids = module.vpc.private_subnet_ids
  public_subnet_ids  = module.vpc.public_subnet_ids
  instance_type      = "t3.large"
  public_key_name    = "deploykey"
  filename           = "${path.module}/cluster.yaml"
}
