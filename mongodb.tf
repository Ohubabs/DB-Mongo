resource "helm_release" "mongodb" {
  name       = "mongodb"
  create_namespace = true
  namespace  = "springapp" #make sure this matches the same namespace for you java springapp application deployment
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
  volume_binding_mode = "WaitForFirstConsumer" #Immediate
  parameters = {
    type = "gp3"
    iops = 3000
    encrypted = "true"
  }
}
