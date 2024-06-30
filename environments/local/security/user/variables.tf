variable "users_policies" {
  description = "IAM 사용자와 해당하는 사용자의 정책을 연결시키는 변수입니다."
  type = map(object({
    policy_arns  = list(string)
    console_user = bool
  }))
}

