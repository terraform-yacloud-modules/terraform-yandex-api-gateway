variable "folder_id" {
  description = "ID каталога Yandex Cloud. Если не задан, берётся из конфигурации провайдера"
  type        = string
  default     = null
}

variable "network_id" {
  description = "ID существующей VPC-сети для connectivity (private API). Если не задан, API Gateway создаётся публичным"
  type        = string
  default     = null
}

variable "log_group_id" {
  description = "ID группы логов (опционально)"
  type        = string
  default     = null
}

variable "custom_domains" {
  description = "Пользовательские домены (domain_id, fqdn, certificate_id)"
  type = set(object({
    domain_id      = string
    fqdn           = string
    certificate_id = optional(string)
  }))
  default = null
}
