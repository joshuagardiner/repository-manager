locals {
  branch_protection = flatten([
    for repo in var.github_repositories : [
      for bp in repo.branch_protection : {
        repository     = repo.name
        pattern        = bp.pattern
        enforce_admins = bp.enforce_admins
        status_checks  = bp.status_checks
      }
    ]
  ])
}