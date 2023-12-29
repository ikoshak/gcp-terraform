# GKE Variables

variable "GOOGLE_REGION" {
  description = "GCP region name"
  type        = string
  default     = "us-central1-c"
}

variable "GOOGLE_PROJECT" {
  description = "Name of project by default - My First Project"
  type        = string
}

variable "GKE_NUM_NODES" {
  description = "Number of GKE working nodes"
  type        = number
}

# TLS keys variables

variable "algorithm" {
  type        = string
  default     = "ECDSA"
  description = "The cryptographic algorithm (e.g. RSA, ECDSA)"
}

variable "ecdsa_curve" {
  type        = string
  default     = "P256"
  description = "The elliptic curve (e.g. P256, P384, P521)"
}

# git vars

variable "GITHUB_OWNER" {
  description = "GitHub repository owner"
  type        = string
}

variable "GITHUB_TOKEN" {
  description = "GitHub personal access token"
  type        = string
}

variable "FLUX_GITHUB_REPO" {
  description = "GitHub repository name for Flux"
  type        = string
}

# flux_bootstrap
/*
variable "github_repository" {
  type        = string
  description = "GitHub repository to store Flux manifests"
} */

variable "target_path" {
  type        = string
  default     = "clusters"
  description = "Flux manifests subdirectory"
}

variable "github_token" {
  type        = string
  default     = ""
  description = "The token used to authenticate with the Git repository"
}
/*
variable "private_key" {
  type        = string
  description = "The private key used to authenticate with the Git repository"
} */

variable "config_path" {
  type        = string
  default     = "~/.kube/config"
  description = "The path to the kubeconfig file"
}
