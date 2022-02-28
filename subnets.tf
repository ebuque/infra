#Create a Subnets 
resource "aws_subnet" "dotcommz-network" {
  vpc_id            = aws_vpc.dotcommz-vpc.id
  cidr_block        = var.network
  availability_zone = var.availability_zone[0]
  tags = {
    Name = "dotcommz-network"
  }
}