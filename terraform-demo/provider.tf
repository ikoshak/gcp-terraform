terraform {
  required_providers {
    flux = {
      source = "fluxcd/flux"
      version = "1.2.1"
    }
  }
}

terraform {
  backend "gcs" {
    bucket = "sudocat-tf-state"
    prefix = "terraform/state"
  }
}
