resource "aws_api_gateway_rest_api" "example" {
  name        = "tfAPIgw"
  description = "Terraform API GW"
}

output "base_url" {
  value = "${aws_api_gateway_deployment.example.invoke_url}?id=42"
}