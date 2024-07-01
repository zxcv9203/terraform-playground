variables {
  users_policies = {
    "dummy@example.com" = {
      policy_arns  = ["arn:aws:iam::aws:policy/ReadOnlyAccess"]
      console_user = true
    }
  }
}

run "test_user_create" {
  command = plan
  assert {
    condition     = module.iam_user["dummy@example.com"].user_name == "dummy@example.com"
    error_message = "사용자 생성에 실패했습니다."
  }
}