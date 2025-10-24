module "vpc" {
  source = "git::https://github.com/Tiru-IT/terraform-aws-vpc.git?ref=main"  
  #defalut ref=main if you change another branch use ref
  project = var.project
  environment = var.environment
  cidr_block = var.cidr_block
  vpc_tegs = var.vpc_tegs

  # public subnets
  public_subnets_cidrs = var.public_subnets_cidrs
  # private
  private_subnets_cidrs = var.private_subnets_cidrs
  #database
  database_subnets_cidrs = var.database_subnets_cidrs
  is_perring_required = false
  
}

