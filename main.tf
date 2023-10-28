data "aws_availability_zones" "available" {}

locals {
  azs = slice(data.aws_availability_zones.available.names, 0, 2)
}

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = var.name
  cidr = var.vpc_cidr_block

  azs             = local.azs
  private_subnets = [for k, v in local.azs : cidrsubnet(var.vpc_cidr_block, 8, k)]
  public_subnets  = [for k, v in local.azs : cidrsubnet(var.vpc_cidr_block, 8, k + 4)]
  intra_subnets   = [for k, v in local.azs : cidrsubnet(var.vpc_cidr_block, 8, k + 8)]

  manage_default_network_acl    = true
  manage_default_route_table    = true
  manage_default_security_group = true

  enable_dns_hostnames = var.enable_dns_hostnames
  enable_dns_support   = var.enable_dns_support

  enable_nat_gateway = var.enable_nat_gateway
  single_nat_gateway = var.enable_nat_gateway

  enable_flow_log                      = var.enable_flow_log
  create_flow_log_cloudwatch_log_group = var.enable_flow_log
  create_flow_log_cloudwatch_iam_role  = var.enable_flow_log
  flow_log_max_aggregation_interval    = 60

  tags = merge(var.default_tags, {})
}
