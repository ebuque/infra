
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

#Allow http and https
resource "aws_security_group" "sg_allow_http_dotcomerp" {
  name        = "allow_http_dotcomerp"
  description = "Allow HTTP traffic"
  vpc_id      = aws_vpc.dotcommz-vpc.id
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

    ingress {
    from_port   = 443
    to_port     = 443
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

#All traffic from bastion
resource "aws_security_group" "sg_allow_all_trafic_on_subnet" {
  name        = "allow_all_trafic_on_subnets"
  description = "Allow all subnet inbound traffic"
  vpc_id      = aws_vpc.dotcommz-vpc.id

   ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["${var.network}"]
  }
    egress {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
    }
}