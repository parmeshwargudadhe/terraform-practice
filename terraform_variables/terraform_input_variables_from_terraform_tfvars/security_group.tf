# Security Group for SSH
resource "aws_security_group" "sg_for_ssh" {
  name        = "sg_for_ssh"
  description = "This security group will allow to ssh into EC2 instance"
  ingress {
    description = "Inbound: This will allow port 22"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    description = "Outbound: "
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Security Group for accessing Web Application

resource "aws_security_group" "sg_for_web" {
  name        = "sg_for_web"
  description = "For accessing Web Application"

  ingress {
    description = "Inbound: This will allow port 80"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "Inbound: This will allow port 80"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    description = "Outbound: "
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

}