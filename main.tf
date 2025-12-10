module "private_subnet" {
  source             = "./modules/subnet-private"
  vpc_id             = var.vpc_id
  private_cidr_block = var.private_cidr_block
}

module "security_groups" {
  source       = "./modules/security-groups"
  vpc_id       = var.vpc_id
  my_public_ip = var.my_public_ip
}

module "bastion" {
  source           = "./modules/bastion"
  public_subnet_id = var.public_subnet_id
  sg_id            = module.security_groups.bastion_sg
  key_pair_name    = var.key_pair_name
}

module "jenkins" {
  source            = "./modules/jenkins"
  private_subnet_id = module.private_subnet.private_subnet_id
  sg_id             = module.security_groups.jenkins_sg
  key_pair_name     = var.key_pair_name
}
