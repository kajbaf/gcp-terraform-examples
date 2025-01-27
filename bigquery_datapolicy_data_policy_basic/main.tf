resource "google_bigquery_datapolicy_data_policy" "data_policy" {
    provider = google-beta
    location         = "us-central1"
    data_policy_id   = "data_policy-${local.name_suffix}"
    policy_tag       = google_data_catalog_policy_tag.policy_tag.name
    data_policy_type = "COLUMN_LEVEL_SECURITY_POLICY"
  }

  resource "google_data_catalog_policy_tag" "policy_tag" {
    provider = google-beta
    taxonomy     = google_data_catalog_taxonomy.taxonomy.id
    display_name = "Low security"
    description  = "A policy tag normally associated with low security items"
  }
  
  resource "google_data_catalog_taxonomy" "taxonomy" {
    provider = google-beta
    region                 = "us-central1"
    display_name           = "taxonomy-${local.name_suffix}"
    description            = "A collection of policy tags"
    activated_policy_types = ["FINE_GRAINED_ACCESS_CONTROL"]
  }
