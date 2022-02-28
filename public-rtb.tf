# Create public route table
resource "aws_route_table" "public-route-table" {
  vpc_id = aws_vpc.dotcommz-vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.dotcommz-igw.id
  }
  tags = {
    Name = "Public-RouteTable"
  }
}