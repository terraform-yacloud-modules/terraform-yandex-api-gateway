resource "yandex_api_gateway" "main" {
  name        = var.api_gateway_name
  description = var.api_gateway_description
  spec        = var.api_gateway_spec
  folder_id   = var.folder_id
  labels      = var.labels

  dynamic "custom_domains" {
    for_each = var.custom_domains != null ? var.custom_domains : []
    content {
      domain_id      = custom_domains.value.domain_id
      fqdn           = custom_domains.value.fqdn
      certificate_id = custom_domains.value.certificate_id
    }
  }

  dynamic "connectivity" {
    for_each = var.connectivity != null ? [var.connectivity] : []
    content {
      network_id = connectivity.value.network_id
    }
  }

  variables         = var.variables
  execution_timeout = var.execution_timeout

  dynamic "canary" {
    for_each = var.canary != null ? [var.canary] : []
    content {
      weight    = canary.value.weight
      variables = canary.value.variables
    }
  }

  dynamic "log_options" {
    for_each = var.log_options != null ? [var.log_options] : []
    content {
      disabled     = log_options.value.disabled
      log_group_id = log_options.value.log_group_id
      folder_id    = log_options.value.folder_id
      min_level    = log_options.value.min_level
    }
  }
}
