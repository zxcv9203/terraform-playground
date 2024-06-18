variable "region" {
  description = "AWS Region"
  type = string
  default = "ap-northeast-2"
}

variable "access_key" {
  description = "AWS Access Key"
  type = string
  default = "test"
}

variable "secret_access_key" {
  description = "AWS Secret Access Key"
  type = string
  default = "test"
}

variable "s3_bucket_name" {
  description = "The name of the S3 bucket to create"
  type = string
  default = "localstack-test-bucket"
}
