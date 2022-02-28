resource "aws_nat_gateway" "dotcommz-natgw" {
  allocation_id = aws_eip.dotcommz-eip.id
  subnet_id     = aws_subnet.dotcommz-network.id
  tags = {
    Name = "NATGW"
  }
  depends_on = [aws_eip.dotcommz-eip]
}

