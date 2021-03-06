resource "aws_instance" "bastion-host" {
  ami             = "${var.ec2_instance_image}"
  instance_type   = "${var.bastion_instance_type}"
  key_name        = var.bastion-keyname
  monitoring      = true
  subnet_id       = aws_subnet.dotcommz-network.id
  private_ip      = var.bastion_host_ip
  security_groups = [aws_security_group.sg_allow_ssh_bastion.id, aws_security_group.sg_allow_all_trafic_on_subnet.id]
  user_data = file("install_bastion.sh")

  # Copies the .pem files to /home/ubuntu/
  provisioner "file" {
    source      = "dotcomerp-keyname.pem"
    destination = "/home/ubuntu/dotcomerp-keyname.pem"
    connection {
      type        = "ssh"
      user        = "ubuntu"
      private_key = "${file("bastion.pem")}"
      host        = "${self.public_dns}"
    }
  }

  associate_public_ip_address = true
  tags = {
    Name = "Bastion-Host"
  }

  lifecycle {
    ignore_changes = [
      ami,
      user_data

    ]
  }

}

output "bastion-host_public_dns_address" {
  value = aws_instance.bastion-host.public_dns
}

