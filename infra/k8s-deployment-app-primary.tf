resource "kubernetes_deployment" "skmt_app_primary_deployment" {
  metadata {
    name = "skmt_app_primary_deployment"
  }
  spec {
    replicas = 2
    selector {
      match_labels = {
        app = "skmt_app"
      }
    }
    template {
      metadata {
        labels = {
          app = "skmt_app"
          version = "1.0"
        }
      }
      spec {
        container {
          image = "nginx:alpine"
          name  = "nginx"
          port {
            container_port = 8080
          }
          resources {
            limits = {
              cpu    = "500m"
              memory = "512Mi"
            }
            requests = {
              cpu    = "250m"
              memory = "50Mi"
            }
          }
        }
      }
    }
  }
}