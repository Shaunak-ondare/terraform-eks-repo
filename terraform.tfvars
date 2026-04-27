aws_region   = "ap-south-1"
cluster_name = "gitops-eks-cluster-prod"
vpc_cidr     = "10.3.0.0/16"

eks_cluster_version   = "1.35"
eks_node_min_size     = 1
eks_node_max_size     = 3
eks_node_desired_size = 2
eks_instance_types    = ["c7i-flex.large"]

argocd_chart_version        = "5.46.7"
nginx_ingress_chart_version = "4.8.3"
prometheus_chart_version    = "51.3.0"
