# 사용자 관리

- AWS 사용자 계정을 생성하고 관리하는 방법에 대해 정의합니다. (IAM)


## tfvars 파일
```hcl
users_policies = {
  "dummy@example.com" = {
    policy_arns  = ["arn:aws:iam::aws:policy/ReadOnlyAccess"]
    console_user = true
  }
}

```