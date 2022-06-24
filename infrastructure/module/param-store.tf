resource "aws_ssm_parameter" "bucket_name" {
  name  = "GlobalConfigurationBucket"
  type  = "String"
  value = local.bucket_name
}