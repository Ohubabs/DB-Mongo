resource "kubernetes_secret_v1" "mongodb-auth" {
  metadata {
    name = "mongodb-auth"
    namespace = "springapp" #same namespace as springapp mongo app deployment
  }

  data = {
    mongodb-root-password = var.destructodisk #key set as per instruction in mongo helm chart. monitor any changes that occur with upgrades and edit accordingly
  }

  type = "Opaque"
}
