output "external_lb" { value = "${ azurerm_lb_backend_address_pool.cncf.id }" }
output "fqdn_lb" { value = "${ azurerm_public_ip.cncf.fqdn }" }
output "dns_suffix" { value = "${ replace("${azurerm_network_interface.cncf.0.internal_fqdn}", "${ var.name}1.", "")}" }

