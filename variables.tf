variable "team_user_ids" {
  description = "List of user IDs"
}

variable "team_id" {
  description = "ID of the team you wish to make users members of"
}

variable "pagerduty_token" {
  type        = "string"
  description = "The API token for PagerDuty"
}
