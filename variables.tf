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

variable "folder_id" {
  description = "ID каталога, в котором создаётся API Gateway"
  type        = string
  default     = null
}

variable "labels" {
  description = "Метки ресурса (ключ — значение)"
  type        = map(string)
  default     = null
}

variable "custom_domains" {
  description = "Пользовательские домены: set of object({ domain_id, fqdn, certificate_id })"
  type = set(object({
    domain_id      = string
    fqdn           = string
    certificate_id = optional(string)
  }))
  default = null
}

variable "connectivity" {
  description = "Подключение к сети: object({ network_id })"
  type = object({
    network_id = string
  })
  default = null
}

variable "variables" {
  description = "Переменные для подстановки в спецификацию OpenAPI"
  type        = map(string)
  default     = null
}

variable "canary" {
  description = "Канареечный релиз: object({ weight, variables })"
  type = object({
    weight    = number
    variables = optional(map(string), {})
  })
  default = null
}

variable "log_options" {
  description = "Настройки логирования: disabled, log_group_id, folder_id, min_level"
  type = object({
    disabled     = optional(bool)
    log_group_id = optional(string)
    folder_id    = optional(string)
    min_level    = optional(string)
  })
  default = null
}

variable "execution_timeout" {
  description = "Таймаут выполнения запроса в секундах (строка, например \"30\")"
  type        = string
  default     = null
}
