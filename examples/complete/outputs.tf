output "api_gateway_id" {
  value       = module.api_gateway.api_gateway_id
  description = "ID API Gateway"
}

output "api_gateway_url" {
  value       = module.api_gateway.api_gateway_url
  description = "URL API Gateway"
}

output "api_gateway_status" {
  value       = module.api_gateway.api_gateway_status
  description = "Статус API Gateway"
}
