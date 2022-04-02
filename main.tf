resource "kubernetes_deployment" "name" {
  metadata {
    name = var.k8s-deployment-name
    namespace = var.k8s-deployment-namespace
  }
  spec {
    replicas = 1
    selector {
      match_labels = {
        app = var.k8s-deployment-name
      }
    }
    template {
      metadata {
        labels = {
          app = var.k8s-deployment-name
        }
      }
      spec {
        container {
          name = var.k8s-deployment-name
          image = var.k8s-deployment-image
          port {
            container_port = 5000
          }
        }
      }
    }
  }
}

resource "kubernetes_service" "svc" {
  metadata {
    name = var.k8s-deployment-name
    labels = {
      app = var.k8s-deployment-name
    }
  }
  spec {
    selector = {
      app = var.k8s-deployment-name
    }
    port {
      port        = 5001
      target_port = 5000
    }
    type = var.service-type[1]
  }
  
}