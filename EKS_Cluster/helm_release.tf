resource "helm_release" "node" {
  name       = "node"
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "node"
  namespace  = "node-js"
  depends_on = [kubectl_manifest.namespaces]
}


data "kubectl_file_documents" "namespaces" {
  content = file("./yaml-files/namespaces.yaml")
}

resource "kubectl_manifest" "namespaces" {
  for_each   = data.kubectl_file_documents.namespaces.manifests
  yaml_body  = each.value
  depends_on = [module.eks]
}


