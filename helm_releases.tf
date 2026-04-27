# ArgoCD
resource "helm_release" "argocd" {
  name             = "argocd"
  repository       = "https://argoproj.github.io/argo-helm"
  chart            = "argo-cd"
  namespace        = "argocd"
  create_namespace = true
  version          = var.argocd_chart_version

  set {
    name  = "server.service.type"
    value = "ClusterIP" # Will be exposed via Ingress
  }

  depends_on = [module.eks]
}

# NGINX Ingress Controller
resource "helm_release" "nginx_ingress" {
  name             = "ingress-nginx"
  repository       = "https://kubernetes.github.io/ingress-nginx"
  chart            = "ingress-nginx"
  namespace        = "ingress-nginx"
  create_namespace = true
  version          = var.nginx_ingress_chart_version

  set {
    name  = "controller.service.type"
    value = "LoadBalancer"
  }

  depends_on = [module.eks]
}

# Kube Prometheus Stack (Monitoring & Alerting)
resource "helm_release" "kube_prometheus_stack" {
  name             = "prometheus"
  repository       = "https://prometheus-community.github.io/helm-charts"
  chart            = "kube-prometheus-stack"
  namespace        = "monitoring"
  create_namespace = true
  version          = var.prometheus_chart_version

  set {
    name  = "grafana.service.type"
    value = "ClusterIP"
  }
  
  # For alerts, you would configure Alertmanager settings here, e.g. Slack/Teams/PagerDuty integration.
  
  depends_on = [module.eks]
}
