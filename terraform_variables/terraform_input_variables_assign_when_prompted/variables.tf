variable "aws_region" {
  description = "This is variable for AWS region, in this region resource will be created"
  type        = string
  default     = "us-east-1"
}

variable "ec2_ami_id" {
  description = "This is AMI id for us-east-1 region"
  type        = string
  default     = "ami-0b5eea76982371e91"
}

variable "ec2_instance_count" {
  description = "How much instances you want to create"
  type        = number
  default     = 2
}

variable "ec2_instance_type" {
  description = "this is instance type"
  type        = string
  default     = "t3.micro"
}