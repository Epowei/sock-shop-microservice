#Output the security group id
output "eks-sg" {
    value    = aws_security_group.eks-sg.id
}