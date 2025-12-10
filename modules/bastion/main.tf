resource "aws_instance" "bastion" {
  ami                         = "ami-0d176f79571d18a8f"
  instance_type               = "t3.micro"
  subnet_id                   = var.public_subnet_id
  key_name                    = var.key_pair_name
  security_groups             = ["sg-06f634f95669ce603"]
  associate_public_ip_address = true

  tags = {
    Name = "bastion-host"
  }
}
