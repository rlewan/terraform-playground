provider "google" {
  project = "neon-effect-226212"
  region = "europe-west1"
}

terraform {
  backend "gcs" {
    bucket = "flux-kubernetes-playground-terraform-state"
    prefix = "terraform/state"
  }
}

module "infrastructure" {
  source = "infrastructure"
}
