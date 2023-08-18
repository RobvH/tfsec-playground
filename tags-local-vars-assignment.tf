locals {
  tags = {
    BusinessUnit = "required"
  }
}

resource "aws_s3_bucket" "tags_local_vars_assignment" {
  name = "test-case"

  tags = local.tags
}
