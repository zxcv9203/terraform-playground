variable "region" {
  description = "Configure AWS region default value is ap-northeast-2"
  type        = string
  default     = "ap-northeast-2"
}

variable "s3_bucket_name" {
  description = "The name of the S3 bucket to create"
  type        = string
}

variable "shared_credentials_file" {
  description = "AWS 연결을 위한 Credentials 파일의 경로를 설정합니다. (모듈 기준이 아닌, 환경 기준)"
  type        = string
}
