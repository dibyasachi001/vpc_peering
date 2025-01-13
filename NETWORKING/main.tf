############################################################################
# Provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.83.0"  # Use the appropriate AWS provider version
    }
  }
}

############################################################################
# VPC Creation 
resource "aws_vpc" "vpc_request" {
  cidr_block           = var.vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name = "${var.vpc_name}"
  }
} 
