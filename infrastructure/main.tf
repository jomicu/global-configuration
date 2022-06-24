terraform {
  backend "s3" {
    bucket = "__AWS_TERRAFORM_BUCKET_PLACEHOLDER__"
    key    = "__SERVICE_PLACEHOLDER__/__ENVIRONMENT_PLACEHOLDER__/terraform.tfstate"
    region = "__AWS_REGION_PLACEHOLDER__"
    acl    = "bucket-owner-full-control"
  }
}

provider "aws" {
    region = "__AWS_REGION_PLACEHOLDER__"
}

module "configuration" {
  source      = "./module"
  bucket_name = "__AWS_GLOBAL_CONFIGURATION_BUCKET_PLACEHOLDER__"
}