terraform {
  required_providers {
    kubernetes = {
      source = "hashicorp/kubernetes"
    }
  }
}

provider "kubernetes" {
  config_path = "~/.kube/config"
}

module "nginx" {
  source   = "./app"
  app_name = "nginx"
  app_port = 8080
}
