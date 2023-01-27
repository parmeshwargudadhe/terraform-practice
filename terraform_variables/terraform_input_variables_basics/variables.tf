variable "aws_region" {
  description = "This is variable for AWS region, in this region resource will be created"
  type        = string
  default     = "us-east-1"
}

variable "ec2_ami_id" {
  description = "This is AMI id for us-east-1 region"
  type        = string
  default     = "ami-0b5eea76982371e91"
  validation {
    condition     = length(var.ec2_ami_id) > 4 && substr(var.ec2_ami_id, 0, 4) == "ami-"
    error_message = "The ec2_ami_id value must be a valid AMI ID, string with starting with \"ami-\"."
  }
}

variable "ec2_instance_count" {
  description = "How much instances you want to create"
  type        = number
  default     = 1
}

variable "instance_type" {
  description = "This should ask to enter ec2 instance type when we try terraform apply"
  type        = string
  default     = "t2.micro"
}