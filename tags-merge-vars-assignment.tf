locals {
  basic_tags    = { Arbitrary = "optional" }
  required_tags = { Team = "optional", BusinessUnit = "required" }
}

resource "aws_s3_bucket" "tags_vars_assignment" {
  name = "test-case"

  tags = merge(local.basic_tags, local.required_tags)
}
