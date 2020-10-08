resource "highbond_project_type" "highbond_project_typeSCF2020_4_CRMGV1_threat_to_controls" {
  name                       = "Threat to Controls Matrix"
  //description                = 
  workflow                   = "control"
  enable_creating_projects   = true
}

output "name" {
  value = "highbond_project_type.highbond_project_typeSCF2020_4_CRMGV1_threat_to_controls.id"
}
