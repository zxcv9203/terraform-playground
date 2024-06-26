# IAM 정책 생성

다음과 같이 terraform.tfvars 파일을 정의 후 terraform apply로 실행합니다.
```hcl
policy_definitions = {
  "mfa_login" = {
	name = "MFALoginPolicy"
	description = "MFA Login Policy"
	template_file = "templates/mfa-policy.json.tpl"
  }
}
```