data "azuread_client_config" "current" {}

resource "azuread_application" "aad-application" {
  display_name = "auto-acc-${var.desired_name}"
  owners       = [data.azuread_client_config.current.object_id]
}

resource "azuread_service_principal" "aad-service-principal" {
  application_id               = azuread_application.aad-application.application_id
  app_role_assignment_required = false
  owners                       = [data.azuread_client_config.current.object_id]
}