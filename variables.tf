variable "location" {
  description = "- (Required) The Azure Region where the Linux Function App should exist. Changing this forces a new Linux Function App to be created."
}

variable "resource_group_name" {
  description = "- (Required) The name of the Resource Group where the Linux Function App should exist. Changing this forces a new Linux Function App to be created."
}
variable "service_plan_id" {
  description = "- (Required) The ID of the App Service Plan within which to create this Function App."
}

variable "app_settings" {
type = object({ 
   app_settings= string,  
   auth_settings= string,  
   backup= string,  
   builtin_logging_enabled= string,  
   client_certificate_enabled= string,  
   client_certificate_mode= string,  
   client_certificate_exclusion_paths= string,  
   connection_string= string,  
   daily_memory_time_quota= string,  
   enabled= string,  
   content_share_force_disabled= string,  
   functions_extension_version= string,  
   https_only= string,  
   identity= string,  
   key_vault_reference_identity_id= string,  
   storage_account= string,  
   sticky_settings= string,  
   storage_account_access_key= string,  
   storage_account_name= string,  
   storage_uses_managed_identity= string,  
   storage_key_vault_secret_id= string,  
   storage_key_vault_secret_id= string,  
   storage_key_vault_secret_id= string,  
   tags= string,  
   virtual_network_subnet_id= string  
})

default = { 
    app_settings = "" 
 //(Optional) A map of key-value pairs for [App Settings](https://docs.microsoft.com/azure/azure-functions/functions-app-settings) and custom values. 

    auth_settings = "" 
 //(Optional) A `auth_settings` block as defined below. 

    backup = "" 
 //(Optional) A `backup` block as defined below. 

    builtin_logging_enabled = "" 
 //(Optional) Should built in logging be enabled. Configures `AzureWebJobsDashboard` app setting based on the configured storage setting. Defaults to `true`. 

    client_certificate_enabled = "" 
 //(Optional) Should the function app use Client Certificates. 

    client_certificate_mode = "" 
 //(Optional) The mode of the Function App's client certificates requirement for incoming requests. Possible values are `Required`, `Optional`, and `OptionalInteractiveUser`. 

    client_certificate_exclusion_paths = "" 
 //(Optional) Paths to exclude when using client certificates, separated by ; 

    connection_string = "" 
 //(Optional) One or more `connection_string` blocks as defined below. 

    daily_memory_time_quota = "" 
 //(Optional) The amount of memory in gigabyte-seconds that your application is allowed to consume per day. Setting this value only affects function apps under the consumption plan. Defaults to `0`. 

    enabled = "" 
 //(Optional) Is the Function App enabled? Defaults to `true`. 

    content_share_force_disabled = "" 
 //(Optional) Should the settings for linking the Function App to storage be suppressed. 

    functions_extension_version = "" 
 //(Optional) The runtime version associated with the Function App. Defaults to `~4`. 

    https_only = "" 
 //(Optional) Can the Function App only be accessed via HTTPS? Defaults to `false`. 

    identity = "" 
 //(Optional) A `identity` block as defined below. 

    key_vault_reference_identity_id = "" 
 //(Optional) The User Assigned Identity ID used for accessing KeyVault secrets. The identity must be assigned to the application in the `identity` block. [For more information see Access vaults with a user-assigned identity](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#access-vaults-with-a-user-assigned-identity) 

    storage_account = "" 
 //(Optional) One or more `storage_account` blocks as defined below. 

    sticky_settings = "" 
 //(Optional) A `sticky_settings` block as defined below. 

    storage_account_access_key = "" 
 //(Optional) The access key which will be used to access the backend storage account for the Function App. Conflicts with `storage_uses_managed_identity`. 

    storage_account_name = "" 
 //(Optional) The backend storage account name which will be used by this Function App. 

    storage_uses_managed_identity = "" 
 //(Optional) Should the Function App use Managed Identity to access the storage account. Conflicts with `storage_account_access_key`. 

    storage_key_vault_secret_id = "" 
 //(Optional) The Key Vault Secret ID, optionally including version, that contains the Connection String to connect to the storage account for this Function App. 

    storage_key_vault_secret_id = "" 
 //cannot be used with `storage_account_name`. 

    storage_key_vault_secret_id = "" 
 //used without a version will use the latest version of the secret, however, the service can take up to 24h to pick up a rotation of the latest version. See the [official docs](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#rotation) for more information. 

    tags = "" 
 //(Optional) A mapping of tags which should be assigned to the Linux Function App. 

    virtual_network_subnet_id = "" 
 //(Optional) The subnet id which will be used by this Function App for [regional virtual network integration](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#regional-virtual-network-integration). 

}

}
variable "application_stack" {
type = object({ 
   docker= string,  
   dotnet_version= string,  
   use_dotnet_isolated_runtime= string,  
   java_version= string,  
   node_version= string,  
   python_version= string,  
   powershell_core_version= string,  
   use_custom_runtime= string  
})

default = { 
    docker = "" 
 //(Optional) One or more `docker` blocks as defined below. 

    dotnet_version = "" 
 //(Optional) The version of .NET to use. Possible values include `3.1`, `6.0` and `7.0`. 

    use_dotnet_isolated_runtime = "" 
 //(Optional) Should the DotNet process use an isolated runtime. Defaults to `false`. 

    java_version = "" 
 //(Optional) The Version of Java to use. Supported versions include `8`, `11` & `17` (In-Preview). 

    node_version = "" 
 //(Optional) The version of Node to run. Possible values include `12`, `14`, `16` and `18`. 

    python_version = "" 
 //(Optional) The version of Python to run. Possible values are `3.10`, `3.9`, `3.8` and `3.7`. 

    powershell_core_version = "" 
 //(Optional) The version of PowerShell Core to run. Possible values are `7`, and `7.2`. 

    use_custom_runtime = "" 
 //(Optional) Should the Linux Function App use a custom runtime? 

}

}
variable "auth_settings" {
type = object({ 
   enabled= string,  
   active_directory= string,  
   additional_login_parameters= string,  
   allowed_external_redirect_urls= string,  
   default_provider= string,  
   facebook= string,  
   github= string,  
   google= string,  
   issuer= string,  
   microsoft= string,  
   runtime_version= string,  
   token_refresh_extension_hours= string,  
   token_store_enabled= string,  
   twitter= string,  
   unauthenticated_client_action= string  
})

default = { 
    enabled = "" 
 //(Required) Should the Authentication / Authorization feature be enabled for the Linux Web App? 

    active_directory = "" 
 //(Optional) An `active_directory` block as defined above. 

    additional_login_parameters = "" 
 //(Optional) Specifies a map of login Parameters to send to the OpenID Connect authorization endpoint when a user logs in. 

    allowed_external_redirect_urls = "" 
 //(Optional) Specifies a list of External URLs that can be redirected to as part of logging in or logging out of the Linux Web App. 

    default_provider = "" 
 //(Optional) The default authentication provider to use when multiple providers are configured. Possible values include: `AzureActiveDirectory`, `Facebook`, `Google`, `MicrosoftAccount`, `Twitter`, `Github` 

    facebook = "" 
 //(Optional) A `facebook` block as defined below. 

    github = "" 
 //(Optional) A `github` block as defined below. 

    google = "" 
 //(Optional) A `google` block as defined below. 

    issuer = "" 
 //(Optional) The OpenID Connect Issuer URI that represents the entity which issues access tokens for this Linux Web App. 

    microsoft = "" 
 //(Optional) A `microsoft` block as defined below. 

    runtime_version = "" 
 //(Optional) The RuntimeVersion of the Authentication / Authorization feature in use for the Linux Web App. 

    token_refresh_extension_hours = "" 
 //(Optional) The number of hours after session token expiration that a session token can be used to call the token refresh API. Defaults to `72` hours. 

    token_store_enabled = "" 
 //(Optional) Should the Linux Web App durably store platform-specific security tokens that are obtained during login flows? Defaults to `false`. 

    twitter = "" 
 //(Optional) A `twitter` block as defined below. 

    unauthenticated_client_action = "" 
 //(Optional) The action to take when an unauthenticated client attempts to access the app. Possible values include: `RedirectToLoginPage`, `AllowAnonymous`. 

}

}
variable "connection_string" {
type = object({ 
   name= string,  
   type= string,  
   value= string  
})

default = { 
    name = "" 
 //(Required) The name which should be used for this Connection. 

    type = "" 
 //(Required) Type of database. Possible values include: `MySQL`, `SQLServer`, `SQLAzure`, `Custom`, `NotificationHub`, `ServiceBus`, `EventHub`, `APIHub`, `DocDb`, `RedisCache`, and `PostgreSQL`. 

    value = "" 
 //(Required) The connection string value. 

}

}
variable "docker" {
type = object({ 
   registry_url= string,  
   image_name= string,  
   image_tag= string,  
   registry_username= string,  
   registry_password= string  
})

default = { 
    registry_url = "" 
 //(Required) The URL of the docker registry. 

    image_name = "" 
 //(Required) The name of the Docker image to use. 

    image_tag = "" 
 //(Required) The image tag of the image to use. 

    registry_username = "" 
 //(Optional) The username to use for connections to the registry. 

    registry_password = "" 
 //(Optional) The password for the account to use to connect to the registry. 

}

}
variable "github" {
type = object({ 
   client_id= string,  
   client_secret= string,  
   client_secret_setting_name= string,  
   oauth_scopes= string  
})

default = { 
    client_id = "" 
 //(Required) The ID of the GitHub app used for login. 

    client_secret = "" 
 //(Optional) The Client Secret of the GitHub app used for GitHub login. Cannot be specified with `client_secret_setting_name`. 

    client_secret_setting_name = "" 
 //(Optional) The app setting name that contains the `client_secret` value used for GitHub login. Cannot be specified with `client_secret`. 

    oauth_scopes = "" 
 //(Optional) Specifies a list of OAuth 2.0 scopes that will be requested as part of GitHub login authentication. 

}

}
variable "headers" {
type = object({ 
   x_azure_fdid= string,  
   x_fd_health_probe= string,  
   x_forwarded_for= string,  
   x_forwarded_host= string  
})

default = { 
    x_azure_fdid = "" 
 //(Optional) Specifies a list of Azure Front Door IDs. 

    x_fd_health_probe = "" 
 //(Optional) Specifies if a Front Door Health Probe should be expected. The only possible value is `1`. 

    x_forwarded_for = "" 
 //(Optional) Specifies a list of addresses for which matching should be applied. Omitting this value means allow any. 

    x_forwarded_host = "" 
 //(Optional) Specifies a list of Hosts for which matching should be applied. 

}

}
variable "ip_restriction" {
type = object({ 
   action= string,  
   headers= string,  
   ip_address= string,  
   name= string,  
   priority= string,  
   service_tag= string,  
   virtual_network_subnet_id= string  
})

default = { 
    action = "" 
 //(Optional) The action to take. Possible values are `Allow` or `Deny`. 

    headers = "" 
 //(Optional) A `headers` block as defined above. 

    ip_address = "" 
 //(Optional) The CIDR notation of the IP or IP Range to match. For example: `10.0.0.0/24` or `192.168.10.1/32` 

    name = "" 
 //(Optional) The name which should be used for this `ip_restriction`. 

    priority = "" 
 //(Optional) The priority value of this `ip_restriction`. Defaults to `65000`. 

    service_tag = "" 
 //(Optional) The Service Tag used for this IP Restriction. 

    virtual_network_subnet_id = "" 
 //(Optional) The Virtual Network Subnet ID used for this IP Restriction. 

}

}
variable "schedule" {
type = object({ 
   frequency_interval= string,  
   frequency_unit= string,  
   keep_at_least_one_backup= string,  
   retention_period_days= string,  
   start_time= string  
})

default = { 
    frequency_interval = "" 
 //(Required) How often the backup should be executed (e.g. for weekly backup, this should be set to `7` and `frequency_unit` should be set to `Day`). 

    frequency_unit = "" 
 //(Required) The unit of time for how often the backup should take place. Possible values include: `Day` and `Hour`. 

    keep_at_least_one_backup = "" 
 //(Optional) Should the service keep at least one backup, regardless of age of backup. Defaults to `false`. 

    retention_period_days = "" 
 //(Optional) After how many days backups should be deleted. Defaults to `30`. 

    start_time = "" 
 //(Optional) When the schedule should start working in RFC-3339 format. 

}

}
variable "site_config" {
type = object({ 
   always_on= string,  
   api_definition_url= string,  
   api_management_api_id= string,  
   app_command_line= string,  
   app_scale_limit= string,  
   application_insights_connection_string= string,  
   application_insights_key= string,  
   application_stack= string,  
   app_service_logs= string,  
   container_registry_managed_identity_client_id= string,  
   container_registry_use_managed_identity= string,  
   cors= string,  
   default_documents= string,  
   elastic_instance_minimum= string,  
   ftps_state= string,  
   health_check_path= string,  
   health_check_eviction_time_in_min= string,  
   http2_enabled= string,  
   ip_restriction= string,  
   load_balancing_mode= string,  
   managed_pipeline_mode= string,  
   minimum_tls_version= string,  
   pre_warmed_instance_count= string,  
   remote_debugging_enabled= string,  
   remote_debugging_version= string,  
   runtime_scale_monitoring_enabled= string,  
   scm_ip_restriction= string,  
   scm_minimum_tls_version= string,  
   scm_use_main_ip_restriction= string,  
   use_32_bit_worker= string,  
   vnet_route_all_enabled= string,  
   websockets_enabled= string,  
   worker_count= string  
})

default = { 
    always_on = "" 
 //(Optional) If this Linux Web App is Always On enabled. Defaults to `false`. 

    api_definition_url = "" 
 //(Optional) The URL of the API definition that describes this Linux Function App. 

    api_management_api_id = "" 
 //(Optional) The ID of the API Management API for this Linux Function App. 

    app_command_line = "" 
 //(Optional) The App command line to launch. 

    app_scale_limit = "" 
 //(Optional) The number of workers this function app can scale out to. Only applicable to apps on the Consumption and Premium plan. 

    application_insights_connection_string = "" 
 //(Optional) The Connection String for linking the Linux Function App to Application Insights. 

    application_insights_key = "" 
 //(Optional) The Instrumentation Key for connecting the Linux Function App to Application Insights. 

    application_stack = "" 
 //(Optional) An `application_stack` block as defined above. 

    app_service_logs = "" 
 //(Optional) An `app_service_logs` block as defined above. 

    container_registry_managed_identity_client_id = "" 
 //(Optional) The Client ID of the Managed Service Identity to use for connections to the Azure Container Registry. 

    container_registry_use_managed_identity = "" 
 //(Optional) Should connections for Azure Container Registry use Managed Identity. 

    cors = "" 
 //(Optional) A `cors` block as defined above. 

    default_documents = "" 
 //(Optional) Specifies a list of Default Documents for the Linux Web App. 

    elastic_instance_minimum = "" 
 //(Optional) The number of minimum instances for this Linux Function App. Only affects apps on Elastic Premium plans. 

    ftps_state = "" 
 //(Optional) State of FTP / FTPS service for this function app. Possible values include: `AllAllowed`, `FtpsOnly` and `Disabled`. Defaults to `Disabled`. 

    health_check_path = "" 
 //(Optional) The path to be checked for this function app health. 

    health_check_eviction_time_in_min = "" 
 //(Optional) The amount of time in minutes that a node can be unhealthy before being removed from the load balancer. Possible values are between `2` and `10`. Only valid in conjunction with `health_check_path`. 

    http2_enabled = "" 
 //(Optional) Specifies if the HTTP2 protocol should be enabled. Defaults to `false`. 

    ip_restriction = "" 
 //(Optional) One or more `ip_restriction` blocks as defined above. 

    load_balancing_mode = "" 
 //(Optional) The Site load balancing mode. Possible values include: `WeightedRoundRobin`, `LeastRequests`, `LeastResponseTime`, `WeightedTotalTraffic`, `RequestHash`, `PerSiteRoundRobin`. Defaults to `LeastRequests` if omitted. 

    managed_pipeline_mode = "" 
 //(Optional) Managed pipeline mode. Possible values include: `Integrated`, `Classic`. Defaults to `Integrated`. 

    minimum_tls_version = "" 
 //(Optional) The configures the minimum version of TLS required for SSL requests. Possible values include: `1.0`, `1.1`, and `1.2`. Defaults to `1.2`. 

    pre_warmed_instance_count = "" 
 //(Optional) The number of pre-warmed instances for this function app. Only affects apps on an Elastic Premium plan. 

    remote_debugging_enabled = "" 
 //(Optional) Should Remote Debugging be enabled. Defaults to `false`. 

    remote_debugging_version = "" 
 //(Optional) The Remote Debugging Version. Possible values include `VS2017`, `VS2019`, and `VS2022`. 

    runtime_scale_monitoring_enabled = "" 
 //(Optional) Should Scale Monitoring of the Functions Runtime be enabled? 

    scm_ip_restriction = "" 
 //(Optional) One or more `scm_ip_restriction` blocks as defined above. 

    scm_minimum_tls_version = "" 
 //(Optional) Configures the minimum version of TLS required for SSL requests to the SCM site Possible values include: `1.0`, `1.1`, and `1.2`. Defaults to `1.2`. 

    scm_use_main_ip_restriction = "" 
 //(Optional) Should the Linux Function App `ip_restriction` configuration be used for the SCM also. 

    use_32_bit_worker = "" 
 //(Optional) Should the Linux Web App use a 32-bit worker process. Defaults to `true`. 

    vnet_route_all_enabled = "" 
 //(Optional) Should all outbound traffic to have NAT Gateways, Network Security Groups and User Defined Routes applied? Defaults to `false`. 

    websockets_enabled = "" 
 //(Optional) Should Web Sockets be enabled. Defaults to `false`. 

    worker_count = "" 
 //(Optional) The number of Workers for this Linux Function App. 

}

}
variable "storage_account" {
type = object({ 
   access_key= string,  
   account_name= string,  
   name= string,  
   share_name= string,  
   type= string,  
   mount_path= string  
})

default = { 
    access_key = "" 
 //(Required) The Access key for the storage account. 

    account_name = "" 
 //(Required) The Name of the Storage Account. 

    name = "" 
 //(Required) The name which should be used for this Storage Account. 

    share_name = "" 
 //(Required) The Name of the File Share or Container Name for Blob storage. 

    type = "" 
 //(Required) The Azure Storage Type. Possible values include `AzureFiles` and `AzureBlob`. 

    mount_path = "" 
 //(Optional) The path at which to mount the storage share. 

}

}

variable "repo_url" {
type = string
description = "(Required) The URL of the Git Repository."
}

variable "repo_branch" { 
type = string
description = "(Required) The Branch of the Git Repository to use. Defaults to `main`."
}


variable "application_id" {
  description = "The application ID of the system as defined by the data classification process. Valid values for application_id are (APP-0001, APP-0002, APP-0003)."
  type        = string
  validation {
    condition     = contains(["APP-0001", "APP-0002", "APP-0003"], var.application_id)
    error_message = "Valid values for application_id are (APP-0001, APP-0002, APP-0003)."
  }
}
variable "application_owner" {
  description = "The application owner of the system as defined by the data classification process. Valid values for application_owner are (John Doe, Jane Doe, John Smith)."
  type        = string
  validation {
    condition     = contains(["John Doe", "Jane Doe", "John Smith"], var.application_owner)
    error_message = "Valid values for application_owner are (John Doe, Jane Doe, John Smith)."
  }
}
variable "application_owner_email" {
  description = "The application owner email of the system as defined by the data classification process. Valid values for application_owner_email are ( first.last@company.com)"
  type        = string
  validation {
    condition     = can(regex("^[a-z,A-Z,.]{1,}@company.com$", var.application_owner_email))
    error_message = "Valid values for application_owner_email are (first.last@company.com)"
  }
}
variable "application_team" {
  description = "The application team of the system as defined by the data classification process. Valid values for application_team are (Team 1, Team 2, Team 3)."
  type        = string
  validation {
    condition     = contains(["Team 1", "Team 2", "Team 3"], var.application_team)
    error_message = "Valid values for application_team are (Team 1, Team 2, Team 3)."
  }
}
variable "application_team_email" {
  description = "The application team email of the system as defined by the data classification process. Valid values for application_team_email are (team1@company.com)"
  type        = string
}
variable "application_team_slack" {
  description = "The application team slack of the system as defined by the data classification process. Valid values for application_team_slack are (https://app.slack.com/huddle/1234/123)"
  type        = string
  validation {
    condition     = can(regex("^(https://app.slack.com/huddle/1234/123)$", var.application_team_slack))
    error_message = "Valid values for application_team_slack are (https://app.slack.com/huddle/1234/123)"
  }
  default = "https://app.slack.com/huddle/1234/123"
}
variable "application_teams_channel" {
  description = "The application team Microsoft Teams channel of the system as defined by the data classification process. Valid values for application_teams_channel are (https://teams.microsoft.com/l/channel/1234/123)"
  type        = string
  validation {
    condition     = can(regex("^(https://teams.microsoft.com/l/channel/1234/123)$", var.application_teams_channel))
    error_message = "Valid values for application_teams_channel are (https://teams.microsoft.com/l/channel/1234/123)"
  }
  default = "https://teams.microsoft.com/l/channel/1234/123"
}
variable "component_name" {
  description = "The component name of the system as defined by the data classification process. Valid values for component_name are (component1, component2, component3)."
  type        = string
  validation {
    condition     = contains(["component1", "component2", "component3"], var.component_name)
    error_message = "Valid values for component_name are (component1, component2, component3)."
  }
}

variable "project" {
  description = "The project of the system as defined by the data classification process. Valid values for project are (project1, project2, project3)."
  type        = string
}

variable "description" {
  description = "The description of the system as defined by the data classification process. Valid values for description are (description1, description2, description3)."
  type        = string
  default = ""
}

variable "external" {
  description = "The external of the system as defined by the data classification process. Valid values for external are (external1, external2, external3)."
  type        = string
}

variable "cost_center" {
  description = "The cost center of the system as defined by the data classification process. Valid values for cost_center are (cost_center1, cost_center2, cost_center3)."
  type        = string
}

variable "compliance" {
  description = "The compliance of the system as defined by the data classification process. Valid values for compliance are (compliance1, compliance2, compliance3)."
  type        = string
}
variable "count_number" {
  description = "The count number of the system as defined by the data classification process. Valid values for count_number are (count_number1, count_number2, count_number3)."
  type        = string
}

