provider "flux" {
  kubernetes = {
    config_path = "${path.cwd}/.terraform/modules/gke_cluster/kubeconfig"
  }
  git = {
    url = "https://github.com/${var.GITHUB_OWNER}/${var.FLUX_GITHUB_REPO}.git"
    http = {
      username = "git"
      password = var.GITHUB_TOKEN
    }
  }
}

resource "flux_bootstrap_git" "this" {
  path = "./clusters"
  depends_on = [ module.gke_cluster ]
}
