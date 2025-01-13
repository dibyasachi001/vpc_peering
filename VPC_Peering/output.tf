# VPC Peering
output "peering_connection_vpc_id" {
  description = "The ID of the VPC Peering connection"
  value = aws_vpc_peering_connection.vpc_peer.id
}