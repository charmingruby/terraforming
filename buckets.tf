resource "aws_s3_bucket" "terraforming-bucket" {
  bucket = "terraforming-capuccino-bucket"

  tags = {
    Name = "PDF Documents" // should have type of stuff stored
  }
}
