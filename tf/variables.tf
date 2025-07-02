variable "AWS_ACCESS_KEY" {
  type        = string
  description = "AWS access key"
}

variable "AWS_SECRET_KEY" {
  type        = string
  description = "AWS secret key"
}

variable "region" {
  type        = string
  description = "AWS region"
}

variable "env" {
  type        = string
  description = "Environment prefix (e.g., dev, staging, qa)"
}

variable "s3_bucket_name" {
  type        = string
  description = "S3 bucket name"
}

variable "s3_bucket_name1" {
  type        = string
  description = "S3 bucket name"
}

variable "s3_bucket_names" {
  type        = list(string)
  description = "List of S3 bucket names to create"
}