# provider "kubernetes" {
#   config_path = "~/.kube/config"
# }

# provider "helm" {
#   kubernetes {
#     config_path = "~/.kube/config"
#   }
# }

# resource "helm_release" "prometheus" {
#   name       = "prometheus"
#   repository = "https://prometheus-community.github.io/helm-charts"
#   chart      = "prometheus"
#   namespace  = "monitoring"
#   create_namespace = true
# }

# resource "helm_release" "node_exporter" {
#   name       = "prometheus-node-exporter"
#   repository = "https://prometheus-community.github.io/helm-charts"
#   chart      = "prometheus-node-exporter"
#   namespace  = "prometheus-node-exporter"
#   create_namespace = true
# }
