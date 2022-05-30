resource "github_branch_protection" "branch_protection" {
  for_each = {
    for bp in local.branch_protection : "${bp.repository}:${bp.pattern}" => bp
  }

  repository_id = github_repository.repository[each.value.repository].node_id

  pattern          = each.value.pattern
  allows_deletions = false
  required_status_checks {
    contexts = each.value.status_checks
    strict   = true
  }
}