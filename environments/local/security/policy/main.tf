module "iam_policies" {
  source = "../../../../modules/iam/policy"

  shared_credentials_file = "../../../../aws-credentials"
  policies = var.policy_definitions
  use_localstack = true
}