resource "kubernetes_deployment" "deployment_app" {
  metadata {
    name = var.app_name
    labels = {
      name = var.app_name
    }
  }

  spec {
    replicas = 1

    selector {
      match_labels = {
        name = var.app_name
      }
    }

    template {
      metadata {
        labels = {
          name = var.app_name
        }
      }

      spec {
        container {
          name  = var.app_name
          image = var.app_name

          port {
            name           = "http-server"
            container_port = var.app_port
          }
        }
      }
    }
  }
}

