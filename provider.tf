provider "google" {
  credentials = "${file("credentials/service-account.json")}"
  project = "flux-kubernetes-playground"
  region = "europe-west1"
}
