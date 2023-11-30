variable "default_authorization_action" {
  type        = string
  default     = "ALLOW"
  description = <<EOF
  Select the default action to take for authorization for your API. Valid values are "ALLOW" and "DENY".
EOF

  validation {
    condition     = contains(["ALLOW", "DENY"], var.default_authorization_action)
    error_message = "default_authorization_action must be 'ALLOW' or 'DENY'"
  }
}

variable "log_level" {
  type        = string
  default     = "ERROR"
  description = <<EOF
  Select the level of logging you would like to enable. Logs are output to cloudwatch.
  Valid values are "NONE", "ERROR", and "ALL".
EOF

  validation {
    condition     = contains(["NONE", "ERROR", "ALL"], var.log_level)
    error_message = "log_level must be 'NONE', 'ERROR', or 'ALL'"
  }
}