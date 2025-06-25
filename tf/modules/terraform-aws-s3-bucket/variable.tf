variable "prefix" {
  description = "Environment prefix like dev, staging, prod"
  type        = string
}

variable "bucket_name" {
  description = "The base name of the S3 bucket"
  type        = string
}