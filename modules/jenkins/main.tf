resource "aws_instance" "jenkins" {
  ami                         = "ami-0d176f79571d18a8f"
  instance_type               = "t3.micro"
  subnet_id                   = var.private_subnet_id
  key_name                    = var.key_pair_name
  security_groups             = [var.sg_id]
  associate_public_ip_address = false

  tags = {
    Name = "jenkins-server"
  }
}
