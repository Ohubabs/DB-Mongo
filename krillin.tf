resource "kubernetes_secret_v1" "krillin" {
  metadata {
    name = "krillin"
    namespace = "springapp" #same namespace as springapp mongo app deployment
  }

  data = {
    mongodb-root-password = var.destructodisk #key set as per instruction in mongo helm chart. monitor any changes that occur with upgrades and edit accordingly
  }

  type = "Opaque"
}
