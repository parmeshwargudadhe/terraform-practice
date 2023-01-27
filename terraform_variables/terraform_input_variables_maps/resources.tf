resource "aws_instance" "webapp" {
  ami = var.ec2_ami_id
  #instance_type          = var.ec2_instance_type[2]
  instance_type          = var.ec2_instance_type["large-apps"]
  key_name               = "PARAM"
  count                  = var.ec2_instance_count
  vpc_security_group_ids = [aws_security_group.sg_for_ssh.id, aws_security_group.sg_for_web.id]
  tags                   = var.ec2_instance_tags
  user_data              = <<-EOF
    #!/bin/bash
    sudo yum update -y
    sudo yum install httpd -y
    sudo systemctl enable httpd
    sudo systemctl start httpd
    echo "<h1>This web application is created using terraform in us-east-1 region</h1>" > /var/www/html/index.html
    EOF
}