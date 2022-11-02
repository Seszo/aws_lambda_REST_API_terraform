#S3 Bucket creation

resource "aws_s3_bucket" "poc" {
  bucket = "poc-bucket-payout"

  tags = {
    Name        = "POC bucket"
    Environment = "Dev"
  }
}

#Defining ACL

resource "aws_s3_bucket_acl" "pocacl" {
  bucket = aws_s3_bucket.poc.id
  acl    = "public-read-write"
}

#CSV upload

resource "aws_s3_object" "testobject1" {
    for_each = fileset("CSV/", "*")
    bucket = aws_s3_bucket.poc.id
    key = each.value
    source = "CSV/${each.value}"
    etag = filemd5("CSV/${each.value}")
}