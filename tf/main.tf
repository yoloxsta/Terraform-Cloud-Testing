#resource "aws_s3_bucket" "bucket" {
#  bucket = var.s3_bucket_name

#  tags = {
#    Name = var.s3_bucket_name
#  }
#}

resource "aws_s3_bucket" "bucket" {
  bucket = "${var.env}-${var.s3_bucket_name}"

  tags = {
    Name = "${var.env}-${var.s3_bucket_name}"
    Environment = var.env
  }
}
