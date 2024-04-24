resource "helm_release" "mongodb" {
  name       = "mongodb"
  #create_namespace = true
  namespace  = "konoha"
  repository = "oci://registry-1.docker.io/bitnamicharts"
  chart      = "mongodb"
  values = [
    "${file("mongodb.yml")}"
  ]
}

resource "kubernetes_storage_class" "mongo-sc" {
  metadata {
    name = "mongo-sc"
  }
  storage_provisioner = "ebs.csi.aws.com"
  volume_binding_mode = "Immediate"
  parameters = {
    type = "gp2"
  }
}
