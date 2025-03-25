resource "aws_s3_bucket" "test-tf-cloud" { 
   bucket = "jenniekochittal"
   acl = "private"
   versioning { 
      enabled = true
   } 
   tags = { 
     Name = "test-tf-cloud" 
   } 
}

resource "aws_s3_bucket_public_access_block" "test-tf-cloud" {
  bucket = aws_s3_bucket.test-tf-cloud.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_object" "object-1" {
  bucket = aws_s3_bucket.test-tf-cloud.id
  key    = "object-1/"
}