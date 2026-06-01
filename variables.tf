variable "zone_name" {
  description = "Hosted zone DNS name (e.g. memis.cloud)."
  type        = string
}

variable "record_name" {
  description = "DNS record name to create (e.g. service-dev.memis.cloud). If null, no record is created."
  type        = string
  default     = null
}

variable "alb_dns_name" {
  description = "ALB DNS name for the alias record target."
  type        = string
  default     = null
}

variable "alb_zone_id" {
  description = "ALB hosted zone ID for the alias record target."
  type        = string
  default     = null
}
