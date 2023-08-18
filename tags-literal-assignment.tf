resource "aws_s3_bucket" "tags_literal_assignment" {
  name = "test-case"

  tags = {
    BusinessUnit = "required"
  }
}
