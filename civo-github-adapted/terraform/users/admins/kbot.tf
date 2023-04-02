module "kbot" {
  # kbot is your automation user for all automation
  # on the platform that needs a bot account
  source = "../modules/user/github"

  acl_policies      = ["admin"]
  email             = "<ALERTS_EMAIL>"
  first_name        = "K"
  github_username   = "<GITHUB_USER>"
  last_name         = "Bot"
  initial_password  = var.initial_password
  username          = "kbot"
  user_disabled     = false
  userpass_accessor = data.vault_auth_backend.userpass.accessor
}

variable "initial_password" {
  type = string
}
