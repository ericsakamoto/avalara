resource "kubernetes_deployment" "skmt_redis_deployment" {
  metadata {
    name = "skmt_redis_deployment"
  }
  spec {
    replicas = 3
    selector {
      match_labels = {
        app = "redis"
      }
    }
    template {
      metadata {
        labels = {
          app = "redis"
        }
      }
      spec {
        container {
          image = "redis:latest"
          name  = "redis"
          port {
            container_port = 6379
          }
        }
      }
    }
  }
}