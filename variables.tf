variable "aws_region" {
  description = "AWS region where resources will be created"
  type        = string
}

variable "vpc_id" {
  description = "Existing VPC ID"
  type        = string
}

variable "public_subnet_id" {
  description = "Existing Public Subnet ID (for Bastion EC2)"
  type        = string
}

variable "my_public_ip" {
  description = "Your laptop/office public IP in CIDR format (x.x.x.x/32)"
  type        = string
}

variable "key_pair_name" {
  description = "SSH Key Pair Name"
  type        = string
}

variable "private_cidr_block" {
  description = "CIDR block for new private subnet"
  type        = string
}
variable "sg_id" {
  description = "Security Group ID to be associated with EC2 instances"
  type        = string
}