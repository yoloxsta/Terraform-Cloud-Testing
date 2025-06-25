resource "aws_s3_bucket" "this" {
  bucket = "${var.prefix}-${var.bucket_name}"

  tags = {
    Environment = var.prefix
    Name        = "${var.prefix}-${var.bucket_name}"
  }
}