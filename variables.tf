variable "name" {
  description = "base name for resources"
  type        = string
  default     = "sandbox-vpc"
}

variable "default_tags" {
  description = "value for default tags."
  type        = map(any)
  default = {
    "Terraform" = "true"
    "Environment" = "sandbox"
  }
}

variable "env" {
  description = "Environment name."
  type        = string
  default     = "sandbox"
}

variable "vpc_cidr_block" {
  description = "CIDR (Classless Inter-Domain Routing)."
  type        = string
  default     = "10.0.0.0/16"
}

variable "enable_flow_log" {
  description = "Enable flow log."
  type        = bool
  default     = false
}

variable "enable_nat_gateway" {
  description = "Enable NAT gateway."
  type        = bool
  default     = false
}

variable "enable_dns_hostnames" {
  description = "Enable DNS hostnames."
  type        = bool
  default     = true
}

variable "enable_dns_support" {
  description = "Enable DNS support."
  type        = bool
  default     = true
}
