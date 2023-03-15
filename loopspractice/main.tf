terraform {                    
  required_providers {         
    null = {                   
      source = "hashicorp/null"
      version = "3.1.1"        
    }                          
  }                            
}                              
                               
/* provider block */           
provider "null" {              
  # Configuration options      
}                              

locals {  rgs = {
          "alpha" = { "region" ="eastus"
                      "vnet" ="omega" }
          "bravo" = { "region" ="southindia"
                      "vnet" ="psi" }
          "charlie" = {"region" = "westus2"
                       "vnet" ="chi" }
        }}

resource "null_resource" "dummy_rgs" {

    for_each = local.rgs
    triggers = {
               name= each.key     // alpha, bravo, charlie
               region= each.value.region // eastus, southindia, westus2
              /* for_each = each.value
               triggers = {
                          region = each.value
                }*/
}
}

resource "null_resource" "dummy_vnets" {
    for_each = local.rgs
    triggers = {
               name= each.value.vnet        // use value of "vnet" above
               region= each.value.region      // use value of "region" above
}
}
