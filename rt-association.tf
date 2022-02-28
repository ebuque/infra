# Create public route table association az1a
resource "aws_route_table_association" "public-route-association" {
  subnet_id      = aws_subnet.dotcommz-network.id
  route_table_id = aws_route_table.public-route-table.id
}