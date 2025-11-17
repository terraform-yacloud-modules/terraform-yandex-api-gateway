resource "yandex_api_gateway" "test-api-gateway" {
  name        = var.api_gateway_name
  description = var.api_gateway_description
  spec        = var.api_gateway_spec
}
