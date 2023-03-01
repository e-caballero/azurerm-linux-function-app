resource "azurerm_storage_account" "function_storage_account" {
  name                     = "${local.linux_function_app_name}functionappsa"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}


resource "azurerm_linux_function_app" "webapp" {
  name                = local.linux_function_app_name
  resource_group_name = var.resource_group_name
  location            = var.location

  storage_account_name       = azurerm_storage_account.function_storage_account.name
  storage_account_access_key = azurerm_storage_account.function_storage_account.primary_access_key
  service_plan_id            = azurerm_service_plan.function_storage_account.id

  site_config {}
}

#  Deploy code from a public GitHub repo
resource "azurerm_app_service_source_control" "sourcecontrol" {
  app_id             = azurerm_linux_web_app.webapp.id
  repo_url           = var.repo_url
  # check if production send to main branch, else if staging send to staging branch, else send to dev branch
  #branch             = var.environment == "prod" ? "main" : var.environment == "stg" ? "staging" : "dev"
  branch             = var.repo_branch
  use_manual_integration = true
  use_mercurial      = false
}