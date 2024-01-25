# resource "google_service_account" "default" {
#   account_id   = "gke-id"
#   display_name = "gke"
# }

# resource "google_container_cluster" "primary" {
#   name               = "cluster-1"
#   location           = "us-central1-a"
#   initial_node_count = 2
#   network            = google_compute_network.vpc.name
#   subnetwork         = google_compute_subnetwork.subnet.name
#   node_config {
#     oauth_scopes = [
#       "https://www.googleapis.com/auth/cloud-platform",
#       "https://www.googleapis.com/auth/devstorage.read_only",
#     ]
#     labels = {
#       foo = "test"
#     }
#     machine_type = "n1-standard-1"
#     disk_size_gb = 30
#     tags         = ["gke-node", "${var.project_id}-gke"]
#     metadata = {
#       disable-legacy-endpoints = "true"
#     }
#   }
#   timeouts {
#     create = "15m"
#     update = "40m"
#   }
# }