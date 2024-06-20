resource "kubernetes_service" "skmt_app_primary_service" {
  metadata {
    name = "skmt_app_primary_service"
  }
  spec {
    selector = {
      app = "skmt_app"
      version = "1.0"
    }
    port {
      port        = 80
      target_port = 8080
    }
    type = "LoadBalancer"
  }
}