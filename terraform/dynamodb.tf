resource "aws_dynamodb_table" "my_table" {
  name           = "MyTable"
  billing_mode   = "PROVISIONED"
  read_capacity  = 20
  write_capacity = 20
  hash_key       = "UserId"
  attribute {
    name = "UserId"
    type = "S"
  }
}
