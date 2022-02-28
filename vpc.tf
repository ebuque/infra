# Create a VPC
resource "aws_vpc" "dotcommz-vpc" {
  cidr_block           = var.vpc_cidr
  # Makes your instances shared on the host.
  instance_tenancy = "default"
  enable_dns_support = true
  enable_dns_hostnames = true

  # Enable/disable ClassicLink for the VPC.
  enable_classiclink = false

  # Enable/disable ClassicLink DNS Support for the VPC.
  enable_classiclink_dns_support = false

  # Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length for the VPC.
  assign_generated_ipv6_cidr_block = false
  tags = {
    Name = "dotcommz-infra-vpc"
  }
}