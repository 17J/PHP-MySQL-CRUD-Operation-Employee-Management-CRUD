output "cluster_id" {
  value = aws_eks_cluster.latestdevops.id
}

output "node_group_id" {
  value = aws_eks_node_group.latestdevops.id
}

output "vpc_id" {
  value = aws_vpc.latestdevops_vpc.id
}

output "subnet_ids" {
  value = aws_subnet.latestdevops_subnet[*].id
}
