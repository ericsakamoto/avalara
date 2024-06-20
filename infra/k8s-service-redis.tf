resource "kubernetes_service" "skmt_redis_service" {
  metadata {
    name = "skmt_redis_service"
  }
  spec {
    selector = {
      app = "redis"
    }
    port {
      port        = 6379
      target_port = 6379
    }
    type = "LoadBalancer"
  }
}