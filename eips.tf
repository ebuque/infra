# Create Public IP for Nat GW Availability Zone 1a and there routes
resource "aws_eip" "dotcommz-eip" {
  vpc                       = true
  tags = {
    Name = "EIP"
  }
}

