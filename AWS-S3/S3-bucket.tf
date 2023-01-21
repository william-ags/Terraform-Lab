resource "aws_s3_bucket" "site_static" {
  bucket = "site-static"

  tags = {
    name = "site"
  }
}

resource "aws_s3_bucket_acl" "private" {
  bucket = aws_s3_bucket.site_static
  acl    = "private"
}