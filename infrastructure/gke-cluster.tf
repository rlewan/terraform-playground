resource "google_container_cluster" "gke-cluster-resource" {
  name = "gke-cluster"
  zone = "europe-west1-b"
  initial_node_count = 3

  addons_config {
    kubernetes_dashboard {
      disabled = false
    }
  }
}
