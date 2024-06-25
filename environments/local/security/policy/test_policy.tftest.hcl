variables {
policy_definitions = {
  "mfa_login" = {
	name = "MFALoginPolicy"
	description = "MFA Login Policy"
	template_file = "templates/mfa-policy.json.tpl"
  }
}
}

run "test_policy_details" {
  command = plan
  assert {
	condition = length(module.iam_policies.policy_arns) == 1
	error_message = "정책이 생성되지 않았습니다."
  }

  assert {
    condition     = contains(keys(module.iam_policies.policy_arns), "mfa_login")
    error_message = "정책 이름이 예상과 다릅니다."
  }
}