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

# Grafana email alerting via SMTP
grafana_smtp_enabled      = true
grafana_smtp_host         = "smtp.gmail.com:587"
grafana_smtp_user         = "shaunaksdrive@gmail.com"
grafana_smtp_password     = "dtnr zvsx xwid hync"
grafana_smtp_from_address = "shaunaksdrive@gmail.com"
grafana_smtp_from_name    = "Grafana Alerts"
grafana_smtp_skip_verify  = false
grafana_smtp_starttls_policy = ""
