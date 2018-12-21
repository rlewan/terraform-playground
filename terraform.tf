terraform {
  backend "gcs" {
    bucket = "flux-kubernetes-playground-terraform-state"
    prefix = "terraform/state"
    credentials = "credentials/service-account.json"
  }
}
