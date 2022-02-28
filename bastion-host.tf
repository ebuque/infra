resource "aws_instance" "bastion-host" {
  ami             = "${var.ec2_instance_image}"
  instance_type   = "${var.bastion_instance_type}"
  key_name        = var.bastion-keyname
  monitoring      = true
  subnet_id       = aws_subnet.dotcommz-network.id
  private_ip      = var.bastion_host_ip
  security_groups = [aws_security_group.sg_allow_ssh_bastion.id]
  user_data = file("install_bastion.sh")

  # Copies the .pem files to /home/ubuntu/
  // provisioner "file" {
  //   source      = "certs/jenkins-master.pem"
  //   destination = "/home/ubuntu/jenkins-master.pem"
  //   connection {
  //     type        = "ssh"
  //     user        = "ubuntu"
  //     private_key = "${file("certs/bastion-host.pem")}"
  //     host        = "${self.public_dns}"
  //   }
  // }

  associate_public_ip_address = true
  tags = {
    Name = "Bastion-Host"
  }

  lifecycle {
    ignore_changes = [

    ]
  }

}

output "bastion-host_public_dns_address" {
  value = aws_instance.bastion-host.public_dns
}

