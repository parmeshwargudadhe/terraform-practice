resource "aws_instance" "webapp" {
  ami                    = var.ec2_ami_id
  instance_type          = "t2.micro"
  key_name               = "PARAM"
  count                  = var.ec2_instance_count
  vpc_security_group_ids = [aws_security_group.sg_for_ssh.id, aws_security_group.sg_for_jenkins.id]
  tags = {
    "Name" = "jenkins"
  }
  user_data = <<-EOF
    #!/bin/bash
    su ec2-user
    sudo yum upgrade -y
    sudo yum install deltarpm -y
    sudo yum upgrade -y
    sudo yum install java-11-amazon-corretto -y
    sudo amazon-linux-extras install epel -y
    sudo yum upgrade -y
    sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
    sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
    sudo yum install jenkins -y
    sudo systemctl start jenkins
    sudo systemctl enable jenkins
    sudo systemctl status jenkins
    EOF
}