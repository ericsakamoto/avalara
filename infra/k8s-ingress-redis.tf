resource "kubernetes_ingress" "skmt_redis_ingress" {
  metadata {
    name = "skmt_redis_ingress"
    label = {
      app = "skmt_redis_ingress"
    }
    annotations = {
      "kubernetes.io/ingress.class" = "nginx"
    }
  }
  spec {
    rule {
      http {
        path {
          path = "/*"
          backend {
            service_name = "skmt_redis_service"
            service_port = 6379
          }
        }
      }
    }
  }
}