resource "aws_eks_node_group" "Netflixnodes" {
  cluster_name    = aws_eks_cluster.Netflixcluster.name
  node_group_name = var.node_group_name
  node_role_arn   = aws_iam_role.eks_node.arn
  subnet_ids      = [
    aws_subnet.NetflixPublicSubnet1.id,
    aws_subnet.NetflixPublicSubnet2.id
  ]
  instance_types = [var.node_instance_type]

  scaling_config {
    desired_size = var.desired_capacity
    min_size = var.min_size
    max_size = var.max_size
  }

  depends_on = [
    aws_eks_cluster.Netflixcluster,
    aws_iam_role_policy_attachment.eks_node_AmazonEKSWorkerNodePolicy,
    aws_iam_role_policy_attachment.eks_node_AmazonEKS_CNI_Policy,
    aws_iam_role_policy_attachment.eks_node_AmazonEC2ContainerRegistryReadOnly
  ]
}

output "eks_node_group_status" {
  value = aws_eks_node_group.Netflixnodes.status
}
