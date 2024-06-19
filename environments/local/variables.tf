variable "region" {
  description = "AWS Region"
  type = string
  default = "ap-northeast-2"
}

variable "s3_bucket_name" {
  description = "The name of the S3 bucket to create"
  type = string
  default = "localstack-test-bucket"
}
