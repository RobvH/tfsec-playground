variable "these_tags" {
  default = {
    BusinessUnit = "required"
  }
}

resource "aws_s3_bucket" "tags_vars_assignment" {
  name = "test-case"

  tags = var.these_tags
}
