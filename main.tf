resource "azurerm_windows_web_app" "main" {
  name                = var.windows_web_app_name
  resource_group_name = var.resource_group.name
  location            = var.resource_group.location
  service_plan_id     = var.service_plan_id

  site_config {
    always_on = var.windows_web_app.always_on
  }

  lifecycle {
    ignore_changes = [
      tags,
      site_config
    ]
  }
}
