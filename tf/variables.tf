variable "AWS_ACCESS_KEY" {
     type  = string
     description = "Access key for aws environment"
}

variable "AWS_SECRET_KEY" {
     type  = string
     description = "Secret key for aws environment"
}

variable "s3_bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
}

variable "region" {
  type        = string

}
variable "env" {
  description = "Environment name (e.g., dev, staging, qa)"
  type        = string
}