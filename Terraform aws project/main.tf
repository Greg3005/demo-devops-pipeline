resource "aws_iam_policy" "example_policy" {
  name        = "ExamplePolicy"
  description = "An example IAM policy"
  policy      = <<EOF
{
   "Version": "2012-10-17",
   "Statement": [
     {
       "Action": [
         "s3:ListBucket"
       ],
       "Effect": "Allow",
       "Resource": "*"
     }
   ]
 }
EOF
}

