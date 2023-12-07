


data "aws_iam_policy_document" "instance_assume_role_policy" {
  statement {
    actions = ["sts:AssumeRoleWithWebIdentity"]

    principals {
      type        = "Federated"
      identifiers = [data.aws_iam_openid_connect_provider.github_oidc.arn]
    }

    condition {
      test     = "StringEquals"
      variable = "token.actions.githubusercontent.com:aud"
      values   = ["sts.amazonaws.com"]
    }

    condition {
      test     = "StringEquals"
      variable = "token.actions.githubusercontent.com:sub"
      values   = ["repo:Shuaybh97/tf-mongodb:ref:refs/heads/main"]
    }
  }
}

resource "aws_iam_role" "gihub_actions" {
  name               = "github-actions-role"
  assume_role_policy = data.aws_iam_policy_document.instance_assume_role_policy.json
}


resource "aws_iam_role_policy_attachment" "github_actions_tf_state" {
  role       = aws_iam_role.gihub_actions.name
  policy_arn = aws_iam_policy.bootstrap_policy.arn
}