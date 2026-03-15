variable "folder_id" {
  description = "ID каталога Yandex Cloud"
  type        = string
  default     = ""
}

variable "network_id" {
  description = "ID сети для connectivity (private API)"
  type        = string
  default     = ""
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
