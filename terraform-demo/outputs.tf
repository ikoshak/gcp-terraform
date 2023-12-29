output "private_key_pem" {
  sensitive = true
  value     = module.tls_private_key.private_key_pem
}

output "public_key_openssh" {
  sensitive = true
  value     = module.tls_private_key.public_key_openssh
}

output "kubeconfig" {
  value = module.gke_cluster.kubeconfig
}
