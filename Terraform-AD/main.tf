terraform {
 required_providers {
   azuread = {
     source  = "hashicorp/azuread"
     version = "= 1.6.0"
   }
 }
}

resource "azuread_group" "IAM" {
 display_name = "IAM Group"
 members = [
   azuread_user.karima.id
 ]
}

resource "azuread_user" "karima" {
user_principal_name   = "karima@km20241984hotmail.onmicrosoft.com"
 display_name          = "karima mechergui"
 password              = "SuperSecret01@!"
 force_password_change = true
}