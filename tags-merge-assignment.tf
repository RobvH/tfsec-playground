variable "other_tags" {
  default = {
    ArbitraryName = "optional"
  }
}

resource "aws_s3_bucket" "tags_vars_assignment" {
  name = "test-case"

  tags = merge(var.other_tags, {
    BusinessUnit = "required"
  })
}
