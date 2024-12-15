resource "cloudflare_record" "subdomain" {
  zone_id = data.cloudflare_zones.main.zones[0].id
  name    = "tetris"
  type    = "A"
  value   = azurerm_public_ip.public_ip.ip_address
  ttl     = 1
  proxied = true
}

data "cloudflare_zones" "main" {
  filter {
    name = var.cloudflare_zone
  }
}