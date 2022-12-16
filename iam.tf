resource "aws_iam_user" "learning" {
  count = length(var.users)
  name  = var.users[count.index]
}

resource "aws_iam_access_key" "learning" {
  count = length(var.users)
  user = var.users[count.index]
}

resource "aws_iam_user_policy" "full-access" {
  name = "test"
  user = aws_iam_user.learning[0].name
  policy = jsonencode({
    Version: "2012-10-17",
     Statement: [
        {
            Effect: "Allow",
            Action: "*",
            Resource: "*"
        }
      ]
  })
}


resource "aws_iam_user_policy" "s3-read" {
  name = "test"
  user = aws_iam_user.learning[1].name
  policy = jsonencode({
    Version: "2012-10-17",
      Statement: [
          {
              Effect: "Allow",
              Action: [
                  "s3:Get*",
                  "s3:List*",
                  "s3-object-lambda:Get*",
                  "s3-object-lambda:List*"
              ],
              Resource: "*"
          }
       ]          
  })
}



resource "aws_iam_user_policy" "ec2-access" {
  name = "test"
  user = aws_iam_user.learning[2].name
  policy = jsonencode({
    Version: "2012-10-17",
       Statement: [
           {
               Effect: "Allow",
               Action: "ec2:Describe*",
               Resource: "*"
           },
           {
               Effect: "Allow",
               Action: "elasticloadbalancing:Describe*",
               Resource: "*"
           },
           {
               Effect: "Allow",
               Action: [
                   "cloudwatch:ListMetrics",
                   "cloudwatch:GetMetricStatistics",
                   "cloudwatch:Describe*"
               ],
               Resource: "*"
           },
           {
               Effect: "Allow",
               Action: "autoscaling:Describe*",
               Resource: "*"
           }
       ]
  })   
}




