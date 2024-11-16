terraform {
  backend "gcs" {
    bucket  = "multi-tier-bucket"
    prefix  = "terraform/state"
    project = "django-test-441711"
  }
}
