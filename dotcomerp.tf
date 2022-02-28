resource "aws_instance" "dotcomerp" {
  ami             = "${var.ec2_instance_image}"
  instance_type   = "${var.instance_type}"
  key_name        = var.dotcomerp-keyname
  subnet_id          = aws_subnet.dotcommz-network.id
  monitoring        = true
  private_ip      = var.dotcomerp_ip
  user_data = file("install_dotcomerp.sh")

  associate_public_ip_address = true
  tags = {
    Name = "DotComERP"
  }

    lifecycle {
    ignore_changes = [
      
    ]
  }
}

output "dotcomerp_public_dns_address" {
  value = aws_instance.dotcomerp.public_dns
}
