output "vpc_id" {
  value = module.vpc.vpc_id
}

output "vpc_cidr_block" {
  value = module.vpc.vpc_cidr_block
}

output "vpc_public_subnets" {
  value = module.vpc.public_subnets
}

output "vpc_private_subnets" {
  value = module.vpc.private_subnets
}

output "vpc_intra_subnets" {
  value = module.vpc.intra_subnets
}

output "vpc_default_security_group_id" {
  value = module.vpc.default_security_group_id
}
