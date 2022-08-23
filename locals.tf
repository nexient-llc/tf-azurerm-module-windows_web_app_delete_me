locals {
  default_tags = {
    provisioner = "terraform"
    name        = var.windows_web_app_name
  }
  tags = merge(local.default_tags, var.windows_web_app.custom_tags)
}
