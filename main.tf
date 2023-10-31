terraform{
    required_providers{
        aws = {
            source = "hashicorp/aws"
            version = "~>5.20.1"
        }
    }
}

provider "aws"{
    region = "us-west-2"
}
# AdventureTech bucket

resource "aws_s3_bucket" "adventuretech-mlg-bucket" {
  bucket = "adventuretech-mlg-bucket"
}

resource "aws_s3_bucket_ownership_controls" "adventuretech-mlg-bucket" {
  bucket = aws_s3_bucket.adventuretech-mlg-bucket.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_acl" "adventuretech-mlg-bucket" {
  depends_on = [aws_s3_bucket_ownership_controls.adventuretech-mlg-bucket]

  bucket = aws_s3_bucket.adventuretech-mlg-bucket.id
  acl    = "private"
}

# DataSummit bucket

resource "aws_s3_bucket" "datasummit-mlg-bucket" {
  bucket = "datasummit-mlg-bucket"
}

resource "aws_s3_bucket_ownership_controls" "datasummit-mlg-bucket" {
  bucket = aws_s3_bucket.datasummit-mlg-bucket.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_acl" "datasummit-mlg-bucket" {
  depends_on = [aws_s3_bucket_ownership_controls.datasummit-mlg-bucket]

  bucket = aws_s3_bucket.datasummit-mlg-bucket.id
  acl    = "private"
}

# CodeCarnival bucket

resource "aws_s3_bucket" "codecarnival-mlg-bucket" {
  bucket = "codecarnival-mlg-bucket"
}

resource "aws_s3_bucket_ownership_controls" "codecarnival-mlg-bucket" {
  bucket = aws_s3_bucket.codecarnival-mlg-bucket.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_acl" "codecarnival-mlg-bucket" {
  depends_on = [aws_s3_bucket_ownership_controls.codecarnival-mlg-bucket]

  bucket = aws_s3_bucket.codecarnival-mlg-bucket.id
  acl    = "private"
}