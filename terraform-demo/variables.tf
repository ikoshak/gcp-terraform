variable "GOOGLE_REGION" {
  description = "GCP region name"
  type        = string
  default    = "us-central1-c"
}

variable "GOOGLE_PROJECT" {
  description = "Name of project by default - My First Project"
  type        = string
}

variable "GKE_NUM_NODES" {
  description = "Number of GKE working nodes"
  type        = number
}
