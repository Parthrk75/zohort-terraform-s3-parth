variable "aws_region" {
  type        = string
  default     = "us-east-1"
  description = "AWS region where resources will be created"
}

variable "name" {
  type        = string
  description = "Unique name to append to bucket"
}

variable "environment" {
  type        = string
  default     = "dev"
  description = "Environment tag"
}
