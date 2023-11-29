data "aws_iam_openid_connect_provider" "github_oidc" {
  arn = "arn:aws:iam::060399601368:oidc-provider/token.actions.githubusercontent.com"
}