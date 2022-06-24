locals {
  bucket_name    = "${var.bucket_name}"
  tags = {
    "Created by" = "Terraform"
    "Managed by" = "Terraform"
  }
}