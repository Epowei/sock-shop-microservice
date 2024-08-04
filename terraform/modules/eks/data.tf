# Qurey the aws infrastructure for the provider url
data "tls_certificate" "eks" {
  url = aws_eks_cluster.eks-cluster.identity[0].oidc[0].issuer
}

# Query the aws for the latest addon version for the eks
data "aws_eks_addon_version" "latest" {
  addon_name         = var.addon_name
  kubernetes_version = aws_eks_cluster.eks-cluster.version
  most_recent        = true

  depends_on = [ aws_eks_cluster.eks-cluster ]
}