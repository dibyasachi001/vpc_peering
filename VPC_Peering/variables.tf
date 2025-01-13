
variable "peer_accepter_region" {
  description = "Region of the peer VPC (Required only for cross-region otherwise leave empty if in the same region)"
  type        = string
}

variable "peer_owner_id" {
  description = "The AWS account ID of the peer VPC owner (required only for cross-account otherwise leave empty if in the same account)"
  type        = string
}

variable "auto_accept" {
  description = "Whether to automatically accept the peering request"
  type        = bool
}

variable "vpc_peer_name" {
  description = "Tags for the VPC peering connection"
  type        = string
}

variable "source_vpcid" {
  description = "Provide the source VPC Id for peering"
  type = string
}

variable "target_vpcid" {
  description = "Provide the target VPC Id for peering"
  type = string
} 