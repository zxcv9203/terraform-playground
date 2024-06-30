output "user_name" {
  value = aws_iam_user.this.name
}

output "user_arn" {
  value = aws_iam_user.this.arn
}

output "user_password" {
  value     = aws_iam_user_login_profile.this[0].password
  sensitive = true
}
