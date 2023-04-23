terraform {
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