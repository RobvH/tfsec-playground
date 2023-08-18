module "output_test" {
  source = "./modules/output-test"

  business_unit = "required"
}

resource "aws_s3_bucket" "tags_module_output" {
  name = "test-case"

  tags = module.output_test.module_tags
}
