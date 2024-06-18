variable "region" {
  description = "Configure AWS region default value is ap-northeast-2"
  type        = string
  default     = "ap-northeast-2"
}

variable "access_key" {
  description = "AWS Access Key"
  type        = string
}

variable "secret_access_key" {
  description = "AWS Secret Access Key"
  type        = string
}

variable "s3_bucket_name" {
  description = "The name of the S3 bucket to create"
  type        = string
}
