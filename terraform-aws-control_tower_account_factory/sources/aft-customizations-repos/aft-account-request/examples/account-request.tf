# Copyright Amazon.com, Inc. or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#
module "DEV_account" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "nimisha@tradeandcloud.com"
    AccountName  = "DEV_account"
    # Syntax for top-level OU
    ManagedOrganizationalUnit = "Trade_AFT"
    # Syntax for nested OU
    # ManagedOrganizationalUnit = "Sandbox (ou-xfe5-a8hb8ml8)"
    SSOUserEmail     = "nimisha@tradeandcloud.com"
    SSOUserFirstName = "nimisha"
    SSOUserLastName  = "shah"
  }

  account_tags = {
    "ABC:Owner"       = "nimisha@tradeandcloud.com"
    "ABC:Division"    = "ENT"
    "ABC:Environment" = "Dev"
    "ABC:CostCenter"  = "123456"
    "ABC:Vended"      = "true"
    "ABC:DivCode"     = "100"
    "ABC:BUCode"      = "TradeBU"
    "ABC:Project"     = "TradeandCloud"
  }

  #change_management_parameters = {
   # change_requested_by = "John Doe"
   # change_reason       = "testing the account vending process"
  #}

  #custom_fields = {
   # custom1 = "a"
   # custom2 = "b"
  #}

  #account_customizations_name = "sandbox-customizations"
}
