output "bastion_sg" {
  value = aws_security_group.bastion_sg.id
}

output "jenkins_sg" {
  value = aws_security_group.jenkins_sg.id
}
