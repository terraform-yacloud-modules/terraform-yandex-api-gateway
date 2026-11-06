output "api_gateway_id" {
  value       = module.api_gateway.api_gateway_id
  description = "ID API Gateway"
}

output "api_gateway_name" {
  value       = module.api_gateway.api_gateway_name
  description = "Имя API Gateway"
}

output "api_gateway_url" {
  value       = module.api_gateway.api_gateway_url
  description = "URL API Gateway (домен по умолчанию)"
}

output "api_gateway_status" {
  value       = module.api_gateway.api_gateway_status
  description = "Статус API Gateway"
}
