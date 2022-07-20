resource "aws_iam_user_policy_attachment" "msspolicy" {
    count = length (var.iam_users)
    name = aws_iam_users.IamUser[count.index].name  
    policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
}