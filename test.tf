resource "kubernetes_pod" "nginx" {
  metadata {
    name = "nginx"
  }

  spec {
    container {
      name  = "nginx"
      image = "nginx"

      port {
        container_port = 80
      }
    }

    container {
      name  = "logrotate"
      image = "logrotate"

      port {
        container_port = 80
      }
    }
  }
}