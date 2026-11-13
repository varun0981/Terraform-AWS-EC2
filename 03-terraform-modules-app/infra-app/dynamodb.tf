
resource "aws_dynamodb_table" "terraform_lock" {
  name         = "${var.env}-tf-dynamodb-table"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = var.hash_key

  attribute {
    name = var.hash_key
    type = "S"
  }

  tags = {
    Name = "${var.env}-tf-dynamodb-table"
    Environment = var.env
  }
}