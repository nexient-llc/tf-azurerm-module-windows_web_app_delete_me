output "windows_web_app_id" {
  description = "windows web app ID"
  value       = azurerm_windows_web_app.main.id
}

output "windows_web_app_default_hostname" {
  description = "windows web app default_hostname"
  value       = azurerm_windows_web_app.main.default_hostname
}

output "windows_web_app_identity" {
  description = "windows web app identity"
  value       = azurerm_windows_web_app.main.identity
}


