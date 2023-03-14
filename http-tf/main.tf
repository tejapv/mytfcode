# The following example shows how to issue an HTTP GET request supplying
# an optional request header.
data "http" "got" {
  url = "https://anapioficeandfire.com/api/characters/583"      // API to send HTTP GET to

  # Optional request headers
  request_headers = {
    Accept = "application/json"
  }
}

locals {
    user_date = jsondecode(data.http.got.response_body)

    user_name = local.user_date.name
}
