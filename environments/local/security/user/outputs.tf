output "user_names" {
  value = [for user in module.iam_user : user.user_name]
}

output "user_arns" {
  value = [for user in module.iam_user : user.user_arn]
}

output "policy_attachment_arns" {
  value = {for k, v in aws_iam_user_policy_attachment.user_policy_attachment : k => v.id}
}

output "users_login_info" {
  value = {
    for user_name, user in module.iam_user : user_name => user.user_password
  }
  description = "사용자의 로그인 정보(아이디, 패스워드)"
  sensitive   = true
}