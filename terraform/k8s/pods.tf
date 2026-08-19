resource "kubernetes_replication_controller" "app-master" {
  metadata {
    name = "app-master"
  }

  spec {
    replicas = 1

    selector = {
      app  = "bankingbackend"
    }
    template {        
    template {
      container {
        image = "mysql:latest"
        name  = "db-container"

        port {
          container_port = 3306
        }

        resources {
          requests {
            cpu    = "100m"
            memory = "100Mi"
          }
        }

        
      container {
        image = "#DockerComposePlatformImage()"
        name  = "app-container"

        port {
          container_port = 8081        }
#DockerComposeDBEnvironment()
        resources {
          requests {
            cpu    = "100m"
            memory = "100Mi"
          }
        }

      }

    }
    }
  }
}