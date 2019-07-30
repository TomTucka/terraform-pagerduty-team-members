
# terraform-pagerduty-team-members

Terraform module for managing PagerDuty team members.

### Usage

```hcl

data "pagerduty_user" "user" {
  email = "bob.bobbins@bobbins.co.uk"
}

resource "pagerduty_team" "team" {
  name = "My Team"
}

module "team-members" {
  source        = "./modules/pagerduty-team-membership"
  team_id       = pagerduty_team.team.id
  team_user_ids = [data.pagerduty_user.user.id]
}

```
