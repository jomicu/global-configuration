# This script will replace the placeholders with the correct values

# Placeholders defined in main.tf
ENVIRONMENT_PLACEHOLDER="__ENVIRONMENT_PLACEHOLDER__"
SERVICE_PLACEHOLDER="__SERVICE_PLACEHOLDER__"
AWS_REGION_PLACEHOLDER="__AWS_REGION_PLACEHOLDER__"
AWS_TERRAFORM_BUCKET_PLACEHOLDER="__AWS_TERRAFORM_BUCKET_PLACEHOLDER__"
AWS_GLOBAL_CONFIGURATION_BUCKET_PLACEHOLDER="__AWS_GLOBAL_CONFIGURATION_BUCKET_PLACEHOLDER__"

# Standard configuration
SERVICE="global-configuration"

# Path to main.tf
PATH_TO_INFRASTRUCTURE="../infrastructure"
FILE_WITH_PLACEHOLDERS="main.tf"
PATH_TO_PLACEHOLDERS="${PATH_TO_INFRASTRUCTURE}/${FILE_WITH_PLACEHOLDERS}"

# Replace placeholders with actual values
sed -i "s|${ENVIRONMENT_PLACEHOLDER}|${ENVIRONMENT}|g" "${PATH_TO_PLACEHOLDERS}"
sed -i "s|${SERVICE_PLACEHOLDER}|${SERVICE}|g" "${PATH_TO_PLACEHOLDERS}"
sed -i "s|${AWS_REGION_PLACEHOLDER}|${AWS_REGION}|g" "${PATH_TO_PLACEHOLDERS}"
sed -i "s|${AWS_TERRAFORM_BUCKET_PLACEHOLDER}|${AWS_TERRAFORM_BUCKET}|g" "${PATH_TO_PLACEHOLDERS}"
sed -i "s|${AWS_GLOBAL_CONFIGURATION_BUCKET_PLACEHOLDER}|${AWS_GLOBAL_CONFIGURATION_BUCKET}|g" "${PATH_TO_PLACEHOLDERS}"