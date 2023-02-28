
  #Standard tags, naming convention and shared variables to load and use in the module

  #shared variables 
  #module "shared_vars" {
  #  source      = "git::https://dev.azure.com/company/company-terraform/_git/azure-shared-vars?ref=v1"
  #  location    = var.location
  #  environment = var.environment
  #}


  locals {
    common_tags = merge(local.standard_tags, var.additional_tags)
    standard_tags = {
      "ApplicationName"    = var.app_name
      "Project"     = var.project
      "Description"     = var.description
      "Environment"   = var.environment
      "OwnerEmail"       = var.owner_email
      "AlertEmail"  = var.alert_email
      "External"  = var.external
    }
  #resource naming convention 
linux_function_name = "${var.app_name}-${var.environment}-${var.location}-linux-${var.index}"