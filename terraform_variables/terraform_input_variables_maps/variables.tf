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
  default     = 1
}


/*
variable "ec2_instance_type" {
  description = "this is instance type list"
  type        = list(string)
  default     = ["t3.micro", "t3.small", "t3.large"]
}
*/

variable "ec2_instance_tags" {
  description = "These are ec2 instance tags"
  type        = map(string)
  default = {
    "Name" = "Tag name using Map of String"
    "Tier" = "Web"
  }
}
variable "ec2_instance_type" {
  description = "this is instance type map"
  type        = map(string)
  default = {
    "small-apps"  = "t3.micro"
    "medium-apps" = "t3.medium"
    "large-apps"  = "t3.large"
  }
}
