
#Bastion Security group allow ssh
resource "aws_security_group" "sg_allow_ssh_bastion" {
  name        = "allow_ssh_bastion"
  description = "Allow SSH and Bastion inbound traffic"
  vpc_id      = aws_vpc.dotcommz-vpc.id
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}