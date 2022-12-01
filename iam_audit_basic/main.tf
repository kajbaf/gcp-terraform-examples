resource "google_organization_iam_audit_config" "organization" {
  org_id = "your-organization-id"
  service = "allServices"
  audit_log_config {
    log_type = "ADMIN_READ"
  }
  audit_log_config {
    log_type = "DATA_READ"
    exempted_members = [
      "user:fake_email@blahblah.com",
    ]
  }
}