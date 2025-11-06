output "api_gateway_url" {
  description = "URL созданного API Gateway"
  value       = yandex_api_gateway.test-api-gateway.domain
}

output "api_gateway_id" {
  description = "ID созданного API Gateway"
  value       = yandex_api_gateway.test-api-gateway.id
}

output "api_gateway_name" {
  description = "Имя созданного API Gateway"
  value       = yandex_api_gateway.test-api-gateway.name
}

output "api_gateway_status" {
  description = "Статус созданного API Gateway"
  value       = yandex_api_gateway.test-api-gateway.status
}
