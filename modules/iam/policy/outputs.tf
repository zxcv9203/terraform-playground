output "policy_arns" {
  description = "생성된 정책 ARN 리스트를 출력합니다."
  value       = { for k, v in aws_iam_policy.this : k => v.arn }
}
