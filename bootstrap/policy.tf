data "aws_iam_policy_document" "terraform_state" {
  statement {
    sid = "1"

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
  
}

resource "aws_iam_policy" "terraform_state" {
  name   = "github_actions_tf_state"
  policy = data.aws_iam_policy_document.terraform_state.json
}