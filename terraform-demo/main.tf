terraform {
  backend "gcs" {
    bucket = "sudocat-tf-state"
    prefix = "terraform/state"
  }
}

module "gke_cluster" {
  source         = "git@github.com:ikoshak/tf-google-gke-cluster.git"
  GOOGLE_REGION  = var.GOOGLE_REGION
  GOOGLE_PROJECT = var.GOOGLE_PROJECT
  GKE_NUM_NODES  = var.GKE_NUM_NODES
}
