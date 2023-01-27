variable "aws_region" {
  description = "This is AWS region name where resources will be created"
  type        = string
  default     = "us-east-1"
}

variable "app_name" {
  description = "This Application Name"
  type        = string
}

variable "environment_name" {
  description = "This is Environment Name"
  type        = string
}