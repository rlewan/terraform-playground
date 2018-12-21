provider "google" {
  credentials = "${file("credentials/service-account.json")}"
  project = "neon-effect-226212"
  region = "europe-west1"
}
