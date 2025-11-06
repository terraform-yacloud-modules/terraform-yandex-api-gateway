variable "api_gateway_name" {
  description = "Имя API Gateway"
  type        = string
}

variable "api_gateway_description" {
  description = "Описание API Gateway"
  type        = string
  default     = null
}

variable "api_gateway_spec" {
  description = "Спецификация OpenAPI для API Gateway"
  type        = string
  default     = null
}
