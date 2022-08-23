variable "windows_web_app_name" {
  description = "windows web app name"
  type        = string
}

variable "resource_group" {
  description = "resource group to create the windows web app in"
  type = object({
    name     = string
    location = string
  })
}

variable "service_plan_id" {
  description = "service plan id"
  type        = string
}

variable "windows_web_app" {
  description = "Object containing the details for a winsows web app"
  type = object({
    custom_tags = map(string)
    always_on   = bool
  })
  default = {
    always_on   = false
    custom_tags = {}
  }
}
