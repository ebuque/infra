# Variables
variable "aws_region" {
  description = "Aws Region"
  type        = string
}

variable "vpc_cidr" {
  description = "VPC Network"
  type        = string
}

variable "ec2_instance_image" {
  description = "UBUNTU 20.04"
}

variable "bastion-keyname" {
  description = "Bastion Host Key"
}

variable "dotcomerp-keyname" {
  description = "Bastion Host Key"
}

variable "instance_type" {
  description = "Servers Instances Type"
}

variable "bastion_instance_type" {
  description = "Bastion Instances Type"
}

variable "network" {
  description = "VPC Network"

}

variable "availability_zone" {
  description = "Availability Zones"
}

variable "bastion_host_ip" {
  description = "Bastion Host IP"
}


variable "dotcomerp_ip" {
  description = "DotcomERP Host IP"
}
