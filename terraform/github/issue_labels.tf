resource "github_issue_label" "label" {
  for_each = { for issue_label in var.github_issue_labels : issue_label.name => issue_label }

  repository = each.value.repository
  name       = each.value.name
  color      = each.value.color
}