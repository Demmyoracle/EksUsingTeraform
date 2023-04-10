provider "helm" {
  kubernetes {
    config_path = "C:/Users/USER/.kube/config"
  }
}


resource "helm_release" "grafana" {
  name       = "grafana"
  repository = "https://prometheus-community.github.io/helm-charts"
  chart      = "kube-prometheus-stack"
  

  set {
    name  = "grafana.adminPassword"
    value = "admin"
  }
}