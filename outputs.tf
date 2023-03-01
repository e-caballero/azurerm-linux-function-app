output "id" {
  value = azurerm_linux_function_app.webapp.id
  description = "- The ID of the Linux Function App."
}
output "custom_domain_verification_id" {
  value = azurerm_linux_function_app.webapp.custom_domain_verification_id
  description = "- The identifier used by App Service to perform domain ownership verification via DNS TXT record."
}
output "default_hostname" {
  value = azurerm_linux_function_app.webapp.default_hostname
  description = "- The default hostname of the Linux Function App."
}
output "identity" {
  value = azurerm_linux_function_app.webapp.identity
  description = "- An `identity` block as defined below."
}
output "kind" {
  value = azurerm_linux_function_app.webapp.kind
  description = "- The Kind value for this Linux Function App."
}
output "outbound_ip_address_list" {
  value = azurerm_linux_function_app.webapp.outbound_ip_address_list
  description = "- A list of outbound IP addresses. For example ['52.23.25.3', '52.143.43.12']"
}
output "outbound_ip_addresses" {
  value = azurerm_linux_function_app.webapp.outbound_ip_addresses
  description = "- A comma separated list of outbound IP addresses as a string. For example `52.23.25.3,52.143.43.12`."
}
output "possible_outbound_ip_address_list" {
  value = azurerm_linux_function_app.webapp.possible_outbound_ip_address_list
  description = "- A list of possible outbound IP addresses, not all of which are necessarily in use. This is a superset of `outbound_ip_address_list`. For example `['52.23.25.3', '52.143.43.12']`."
}
output "possible_outbound_ip_addresses" {
  value = azurerm_linux_function_app.webapp.possible_outbound_ip_addresses
  description = "- A comma separated list of possible outbound IP addresses as a string. For example `52.23.25.3,52.143.43.12,52.143.43.17`. This is a superset of `outbound_ip_addresses`."
}
output "site_credential" {
  value = azurerm_linux_function_app.webapp.site_credential
  description = "- A `site_credential` block as defined below."
}
output "principal_identity" {
  value = azurerm_linux_function_app.webapp.identity.principal_id
  description = "The Principal ID associated with this Managed Service Identity."
}
output "tenant_identity" {
  value = azurerm_linux_function_app.webapp.identity.tenant_id
  description = "The Tenant ID associated with this Managed Service Identity."
}
