variable "policy_definitions" {
  description = "IAM 정책을 관리하는 변수"
  type = map(object({
    name          = string
    description   = string
    template_file = string
  }))
}

variable "region" {
  description = "AWS 리전을 지정합니다."
  type = string
  default = "ap-northeast-2"
}
