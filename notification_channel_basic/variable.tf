variable "project" {
  type        = string
  description = "The project id"
}

variable "critical_service_key" {
  type        = string
  description = "PagerDuty Service Key for critical notifications"
  sensitive   = true
}

variable "medium_service_key" {
  type        = string
  description = "PagerDuty Service Key for medium notifications"
  sensitive   = true
}

