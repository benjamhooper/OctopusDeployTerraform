terraform {
    cloud {
    organization = "benhooper"
    workspaces {
      name = "octopusdeployterraform"
    }
  }
  required_providers {
    octopusdeploy = {
      source = "OctopusDeployLabs/octopusdeploy"
      version = "0.12.0"
    }
  }
}

provider "octopusdeploy" {
  address       = "http://localhost:8080"
  api_key       = "API-SMGZTYGXLLCVIXUUEVHOBMFSEG"
  space_id      = "Spaces-1" 
}

resource "octopusdeploy_space" "Default" {
  name        = "Default"
  is_default  = true
}

resource "octopusdeploy_team" "oct-admin" {
    id = "teams-administrators"
    name = "Octopus Administrators"
    users = [ "Users-1" ]
}

resource "octopusdeploy_team" "everyone" {
    id = "teams-everyone"
    name = "Everyone"
    users = [ "Users-1" ]
}

resource "octopusdeploy_team" "teams-managers" {
    id = "teams-managers"
    name = "Octopus Managers"
}

resource "octopusdeploy_lifecycle" "Default-Lifecycle" {
  name        = "Default Lifecycle"
  id          = "Lifecycles-1"
}