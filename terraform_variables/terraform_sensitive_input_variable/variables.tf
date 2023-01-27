variable "aws_region" {
  description = "In this region AWS resources will be created."
  type        = string
  default     = "us-east-1"
}

variable "db_username" {
  description = "This is database username"
  type        = string
  sensitive   = true
}

variable "db_password" {
  description = "This is database password"
  type        = string
  sensitive   = true
}