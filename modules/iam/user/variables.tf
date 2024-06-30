variable "user_name" {
  description = "IAM 사용자의 이름을 지정하는 변수입니다."
  type        = string
}

variable "user_path" {
  description = "IAM 사용자의 경로를 지정하는 변수입니다."
  type        = string
  default     = "/"
}

variable "tags" {
  description = "AWS 리소스에 추가되는 태그입니다."
  type        = map(string)
  default = {
    "createdBy" = "Terraform"
  }
}

variable "console_user" {
  description = "AWS 콘솔을 사용하는 사용자인지 확인합니다."
  type        = bool
  default     = true
}

variable "use_localstack" {
  description = "로컬 스택을 사용하여 인프라를 구성할 것인지 여부를 묻는 변수입니다. (로컬 전용)"
  type = bool
  default = false
}

