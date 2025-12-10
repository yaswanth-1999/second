# Jenkins + Bastion Terraform Deployment

## Architecture
- Bastion EC2 → Public Subnet
- Jenkins EC2 → Private Subnet
- Access Jenkins via SSH Tunnel only

---

## SSH into Bastion
ssh -i mykey.pem ec2-user@<bastion_public_ip>

---

## SSH Tunnel for Jenkins UI
ssh -i mykey.pem -L 8080:<jenkins_private_ip>:8080 ec2-user@<bastion_public_ip>

Access Jenkins in browser:
http://localhost:8080

---

## Install Docker on Jenkins EC2

sudo yum update -y
sudo amazon-linux-extras install docker -y
sudo systemctl enable docker
sudo systemctl start docker
sudo usermod -aG docker ec2-user

---

## Run Jenkins (Docker)

docker run -d \
  --name jenkins \
  -p 8080:8080 \
  -p 50000:50000 \
  -v jenkins_home:/var/jenkins_home \
  jenkins/jenkins:lts

---

Initial password:
docker exec -it jenkins cat /var/jenkins_home/secrets/initialAdminPassword
