locals {
  bucket-name = "${var.app_name}-${var.environment_name}-bucket" #Complex Expression
}

# Create S3 Bucket - with Input Varibles & Local Values
resource "aws_s3_bucket" "name" {
  bucket = local.bucket-name
  tags = {
    Name        = local.bucket-name
    Environment = var.environment_name
  }
}