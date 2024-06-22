resource "helm_release" "mongodb" {
  name       = "mongodb"
  #create_namespace = true
  namespace  = "springapp" #make sure that a namespace is created before deployment otherwise there'll be an error in downloading the chart.
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
