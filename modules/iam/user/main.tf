resource "aws_iam_user" "this" {
  name = var.user_name
  path = var.user_path

  tags = var.tags
}

resource "aws_iam_user_login_profile" "this" {
  count = var.console_user ? 1 : 0

  user                    = aws_iam_user.this.name
  password_reset_required = true
}
