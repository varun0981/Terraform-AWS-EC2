resource "aws_s3_bucket" "remote_s3" {
  bucket = "varun-tf-state-bucket"

  tags = {
    Name        = "varun-tf-state-bucket"
  }
}
