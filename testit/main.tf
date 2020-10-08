variable "highbond_access_token" {}
variable "highbond_base_url" {}
variable "highbond_org_id" {}

provider "highbond" {
  access_token = "${var.highbond_access_token}"
  base_url     = "${var.highbond_base_url}"
  org_id       = "${var.highbond_org_id}"
}

data "terraform_remote_state" "test" {
  backend = "local"

  config = {
    path = "../terraform.tfstate"
   // workspace = "default"
  }
}

resource "highbond_project" "highbond_projectSCF2020_4_CRMGV1_threat_to_controls_matrix" {
  name                     = "Threat to Controls Matrix"
  status                   = "active"
  //description              = 
  //background               = 
  //budget                   = 
  certification            = true
  //management_response      = 
  //max_sample_size          = 
  //number_of_testing_rounds = 
  //opinion                  = 
  //opinion_description      = 
  //purpose                  = 
  start_date               = "2020-09-29"
  target_date              = "2020-09-30"
  //tag_list                 = 
  project_type_id          = data.terraform_remote_state.test.outputs.name.value
  //position                 = 
  //scope                    = 
}
