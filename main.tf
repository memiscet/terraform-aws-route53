locals {
  zone_id = "Z${replace(upper(var.zone_name), ".", "")}PLACEHOLDER"
}
