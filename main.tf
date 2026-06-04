data "aws_route53_zone" "this" {
  name         = "${var.zone_name}."
  private_zone = false
}

locals {
  zone_id        = data.aws_route53_zone.this.zone_id
  record_enabled = var.record_name != null && var.alb_dns_name != null && var.alb_zone_id != null
}

resource "aws_route53_record" "this" {
  count = local.record_enabled ? 1 : 0

  zone_id         = local.zone_id
  name            = var.record_name
  type            = "A"
  allow_overwrite = true

  alias {
    name                   = var.alb_dns_name
    zone_id                = var.alb_zone_id
    evaluate_target_health = true
  }
}
