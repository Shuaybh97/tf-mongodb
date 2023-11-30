data "aws_iam_policy_document" "github_actions" {
  statement {
    sid = "S3BackendAccess"

    actions = [
      "s3:ListBucket",
      "s3:GetObject",
      "s3:PutObject",
      "s3:DeleteObject"
    ]

    resources = [
      "arn:aws:s3:::${module.bootstrap.state_bucket}",
    ]
  }

  statement {
    sid = "IAMFullAccess"

    actions = [
     "iam:*"
    ]

    resources = ["*"]
  }

  statement {
    sid = "KMSFullAccess"

    actions = [
     "kms:*"
    ]

    resources = ["*"]
  }

}

resource "aws_iam_policy" "gihub_actions" {
  name   = "github_actions_tf_state"
  policy = data.aws_iam_policy_document.github_actions.json
}