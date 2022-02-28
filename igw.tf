# Create Internet Gateway
resource "aws_internet_gateway" "dotcommz-igw" {
  vpc_id = aws_vpc.dotcommz-vpc.id
  tags = {
    Name = "IGW"
  }
}