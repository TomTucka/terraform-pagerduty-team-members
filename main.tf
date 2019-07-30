resource "pagerduty_team_membership" "team" {
  count   = length(var.team_user_ids)
  team_id = var.team_id
  user_id = element(var.team_user_ids, count.index)
}
