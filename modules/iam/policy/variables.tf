variable "policies" {
  description = "IAM 정책 설정을 모아두는 변수입니다."
  type = map(object({
    name          = string
    description   = string
    template_file = string
  }))
}

variable "tags" {
  description = "AWS 리소스에 추가되는 태그입니다."
  type = map(string)
  default = {
	"managedBy" = "terraform"
  }
}

variable "use_localstack" {
  description = "로컬 스택을 사용하여 인프라를 구성할 것인지 여부를 묻는 변수입니다. (로컬 전용)"
  type = bool
  default = false
}

variable "shared_credentials_file" {
  description = "AWS 연결을 위한 Credentials 파일의 경로를 설정합니다. (모듈 기준이 아닌, 실행 위치 기준)"
  type = string
}

variable "region" {
  description = "AWS 리전을 지정합니다."
  type        = string
  default     = "ap-northeast-2"
}