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
# VPC Peering Creation
resource "aws_vpc_peering_connection" "vpc_peer" {
  peer_region          = var.peer_accepter_region
  peer_owner_id        = var.peer_owner_id            # Account ID of the peer owner
  
  vpc_id = var.source_vpcid                           # VPC ID of the requester
  peer_vpc_id = var.target_vpcid                      # VPC ID of the accepter
  auto_accept          = var.auto_accept

  accepter {
    allow_remote_vpc_dns_resolution = true
  }

  requester {
    allow_remote_vpc_dns_resolution = true
  }

  tags                 = {
    Name = "${var.vpc_peer_name}"
  }
} 