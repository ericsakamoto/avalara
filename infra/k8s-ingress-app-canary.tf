resource "kubernetes_ingress" "skmt_app_canary_ingress" {
  wait_for_load_balancer = true
  metadata {
    name = "skmt_app_canary_ingress"
    label = {
      app = "skmt_app_canary_ingress"
    }
    annotations = {
      "kubernetes.io/ingress.class" = "nginx"
      "nginx.ingress.kubernetes.io/canary" = "true"
      "nginx.ingress.kubernetes.io/canary-weight" = "20"
    }
  }
  spec {
    rule {
      http {
        path {
          path = "/*"
          backend {
            service_name = "skmt_app_canary_service"
            service_port = 80
          }
        }
      }
    }
  }
}