## Simple Terraform VPC module

Sensible defaults for development and testing.

- Simple multi-az VPC with public and private subnets in each AZ.
- No cost unless flow logs or NAT gateways are enabled.

### Variables
```hcl
name = "sandbox"
default_tags = {
  "Terraform" = "true"
  "Environment" = "sandbox"
}
vpc_cidr_block = "10.0.0.0/16"
enable_flow_log = false
enable_nat_gateway = false
enable_dns_hostnames = true
enable_dns_support = true
```

### Outputs
```hcl
vpc_id
vpc_cidr_block
vpc_public_subnets
vpc_private_subnets
vpc_intra_subnets
vpc_default_security_group_id
```
