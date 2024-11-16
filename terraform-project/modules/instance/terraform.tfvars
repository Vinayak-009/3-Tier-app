name                = "multi-tier-app"
machine_type        = "e2-small"
zone                = "us-central1-a"
boot_image          = "projects/debian-cloud/global/images/debian-12-bookworm-v20241112"
boot_disk_size      = 10
boot_disk_type      = "pd-balanced"
labels              = { "goog-ec-src" = "vm_add-tf" }
network_stack_type  = "IPV4_ONLY"
subnetwork          = "projects/django-test-441711/regions/us-central1/subnetworks/default"
service_account_email = "519022322056-compute@developer.gserviceaccount.com"
service_account_scopes = ["https://www.googleapis.com/auth/cloud-platform"]
tags                = ["http-server", "https-server"]
