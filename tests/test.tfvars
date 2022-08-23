windows_web_app_name = "windowswebappname"
resource_group = {
  name     = "sandbox"
  location = "East US 2"
}
service_plan_id = "/subscriptions/272192c4-fcb8-4863-9cbf-a00913d42b07/resourceGroups/sandbox/providers/Microsoft.Web/serverfarms/terratest-plan"
windows_web_app = {
  always_on   = false
  custom_tags = {}
}
