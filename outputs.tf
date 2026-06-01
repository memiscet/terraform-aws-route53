output "zone_id" {
  value = local.zone_id
}

output "record_fqdn" {
  value = local.record_enabled ? aws_route53_record.this[0].fqdn : null
}

output "record_name" {
  value = local.record_enabled ? aws_route53_record.this[0].name : null
}
