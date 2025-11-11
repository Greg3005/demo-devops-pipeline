data "aws_iam_policy_document" "s3_read_only" {
  statement {
    effect    = "Allow"
    actions   = ["s3:GetObject", "s3:ListBucket"]
    resources = [
      "arn:aws:s3:::my-bucket",
      "arn:aws:s3:::my-bucket/*"
    ]
  }
}

resource "aws_iam_policy" "s3_policy" {
  name        = "MyS3ReadOnlyPolicy"
  description = "Grants read-only access to S3 bucket"
  policy      = data.aws_iam_policy_document.s3_read_only.json
}
