variable "aws_region" {
  description = "The AWS region to deploy into"
  type        = string
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
  default     = "gitops-eks-cluster"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "eks_cluster_version" {
  description = "Kubernetes version for EKS cluster"
  type        = string
  default     = "1.30"
}

variable "eks_node_min_size" {
  description = "Minimum size of the EKS node group"
  type        = number
  default     = 1
}

variable "eks_node_max_size" {
  description = "Maximum size of the EKS node group"
  type        = number
  default     = 3
}

variable "eks_node_desired_size" {
  description = "Desired size of the EKS node group"
  type        = number
  default     = 2
}

variable "eks_instance_types" {
  description = "List of instance types for EKS node group"
  type        = list(string)
  default     = ["t3.medium"]
}

variable "argocd_chart_version" {
  description = "Version of the ArgoCD Helm chart"
  type        = string
  default     = "5.46.7"
}

variable "nginx_ingress_chart_version" {
  description = "Version of the NGINX Ingress Controller Helm chart"
  type        = string
  default     = "4.8.3"
}

variable "prometheus_chart_version" {
  description = "Version of the Kube Prometheus Stack Helm chart"
  type        = string
  default     = "51.3.0"
}

variable "grafana_smtp_enabled" {
  description = "Enable SMTP for Grafana alert email delivery"
  type        = bool
  default     = false
}

variable "grafana_smtp_host" {
  description = "Grafana SMTP host in host:port format"
  type        = string
  default     = ""
}

variable "grafana_smtp_user" {
  description = "Grafana SMTP username"
  type        = string
  default     = ""
}

variable "grafana_smtp_password" {
  description = "Grafana SMTP password or app password"
  type        = string
  default     = ""
  sensitive   = true
}

variable "grafana_smtp_from_address" {
  description = "Sender email address for Grafana alerts"
  type        = string
  default     = ""
}

variable "grafana_smtp_from_name" {
  description = "Sender display name for Grafana alerts"
  type        = string
  default     = "Grafana Alerts"
}

variable "grafana_smtp_skip_verify" {
  description = "Skip SMTP TLS certificate verification"
  type        = bool
  default     = false
}

variable "grafana_smtp_starttls_policy" {
  description = "Grafana SMTP StartTLS policy"
  type        = string
  default     = ""
}
