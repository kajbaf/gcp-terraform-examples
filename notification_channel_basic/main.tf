resource "google_monitoring_notification_channel" "notification-channel-medium" {
  display_name = "Medium Services"
  project      = var.project
  description  = "Medium notification alerts"
  type         = "pagerduty"

  sensitive_labels {
    service_key = var.medium_service_key
  }
  force_delete = false
}

resource "google_monitoring_notification_channel" "notification-channel-critical" {
  display_name = "Critical Services"
  project      = var.project
  description  = "Critical notification alerts"
  type         = "pagerduty"
  sensitive_labels {
    service_key = var.critical_service_key
  }
  force_delete = false
}
