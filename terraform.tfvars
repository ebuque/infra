aws_region              = "us-east-2"
availability_zone       = ["us-east-2a", "us-east-2b"]
vpc_cidr                = "192.168.0.0/16"
network                 = "192.168.5.0/24"
bastion_host_ip         = "192.168.5.10"
dotcomerp_ip         = "192.168.5.100"
ec2_instance_image      = "ami-0b614a5d911900a9b"
instance_type           = "t3.large"
bastion_instance_type   = "t2.medium"
bastion-keyname         = "bastion"
dotcomerp-keyname         = "dotcomerp-keyname"