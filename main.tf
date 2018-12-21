provider "google" {
  credentials = "${file("credentials/service-account.json")}"
  project = "neon-effect-226212"
  region = "europe-west1"
}

terraform {
  backend "gcs" {
    bucket = "flux-kubernetes-playground-terraform-state"
    prefix = "terraform/state"
    credentials = "credentials/service-account.json"
  }
}

module "infrastructure" {
  source = "infrastructure"
}
