module "dev" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "saravram+sandboxdev@amazon.com"
    AccountName               = "sandbox-dev"
    ManagedOrganizationalUnit = "MyOU"
    SSOUserEmail              = "saravram@amazon.com"
    SSOUserFirstName          = "sarav"
    SSOUserLastName           = "ram"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox-dev"
}