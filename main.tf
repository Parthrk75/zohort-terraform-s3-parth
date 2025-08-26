provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "devops_bucket" {
  bucket        = "zohort-devops-${var.name}"
  force_destroy = true

  tags = {
    Name        = "zohort-devops-bucket"
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.devops_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_public_access_block" "block_public" {
  bucket                  = aws_s3_bucket.devops_bucket.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
