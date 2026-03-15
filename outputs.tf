output "api_gateway_id" {
  description = "ID созданного API Gateway"
  value       = yandex_api_gateway.main.id
}

output "api_gateway_name" {
  description = "Имя созданного API Gateway"
  value       = yandex_api_gateway.main.name
}

output "api_gateway_url" {
  description = "URL созданного API Gateway (домен по умолчанию)"
  value       = yandex_api_gateway.main.domain
}

output "api_gateway_status" {
  description = "Статус созданного API Gateway"
  value       = yandex_api_gateway.main.status
}

output "api_gateway_created_at" {
  description = "Время создания API Gateway"
  value       = yandex_api_gateway.main.created_at
}

output "api_gateway_log_group_id" {
  description = "ID группы логов API Gateway"
  value       = yandex_api_gateway.main.log_group_id
}
