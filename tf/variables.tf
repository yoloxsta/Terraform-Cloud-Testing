variable "AWS_ACCESS_KEY" {
  type        = string
  description = "AWS access key"
}

variable "AWS_SECRET_KEY" {
  type        = string
  description = "AWS secret key"
}

variable "s3_bucket_name" {
  type        = string
  description = "S3 bucket name"
}

variable "region" {
  type        = string
  description = "AWS region"
}
