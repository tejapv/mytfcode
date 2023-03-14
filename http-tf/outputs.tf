# produces an output value named "got_heroes"
/*output "got_heroes" {
  description = "API that documents GOT characters"
  value       = data.http.got.response_body
}

# produces legal JSON output value named "got_heroes_json"
output "got_heroes_json" {
  description = "API that documents GOT characters"
  value       = jsondecode(data.http.got.response_body)    // note the jsondecode()
}    
*/
output "got_aliases" {
  description = "Aliases from API"
  value       =  local.user_name
}
