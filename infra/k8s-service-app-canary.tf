resource "kubernetes_service" "skmt_app_canary_service" {
  metadata {
    name = "skmt_app_canary_service"
  }
  spec {
    selector = {
      app = "skmt_app"
      version = "2.0"
    }
    port {
      port        = 80
      target_port = 8080
    }
    type = "LoadBalancer"
  }
}