# Yandex Cloud API Gateway Terraform module

Terraform module для создания [Yandex API Gateway](https://cloud.yandex.ru/docs/api-gateway/).

## Examples

Примеры в [`examples`](https://github.com/terraform-yacloud-modules/terraform-yandex-api-gateway/tree/main/examples) показывают использование модуля и используются для проверки изменений.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_yandex"></a> [yandex](#requirement\_yandex) | >= 0.100.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_yandex"></a> [yandex](#provider\_yandex) | >= 0.100.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [yandex_api_gateway.main](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/api_gateway) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_api_gateway_description"></a> [api\_gateway\_description](#input\_api\_gateway\_description) | Описание API Gateway | `string` | `null` | no |
| <a name="input_api_gateway_name"></a> [api\_gateway\_name](#input\_api\_gateway\_name) | Имя API Gateway | `string` | n/a | yes |
| <a name="input_api_gateway_spec"></a> [api\_gateway\_spec](#input\_api\_gateway\_spec) | Спецификация OpenAPI для API Gateway | `string` | `null` | no |
| <a name="input_canary"></a> [canary](#input\_canary) | Канареечный релиз: object({ weight, variables }) | <pre>object({<br/>    weight    = number<br/>    variables = optional(map(string), {})<br/>  })</pre> | `null` | no |
| <a name="input_connectivity"></a> [connectivity](#input\_connectivity) | Подключение к сети: object({ network\_id }) | <pre>object({<br/>    network_id = string<br/>  })</pre> | `null` | no |
| <a name="input_custom_domains"></a> [custom\_domains](#input\_custom\_domains) | Пользовательские домены: set of object({ domain\_id, fqdn, certificate\_id }) | <pre>set(object({<br/>    domain_id      = string<br/>    fqdn           = string<br/>    certificate_id = optional(string)<br/>  }))</pre> | `null` | no |
| <a name="input_execution_timeout"></a> [execution\_timeout](#input\_execution\_timeout) | Таймаут выполнения запроса в секундах (строка, например "30") | `string` | `null` | no |
| <a name="input_folder_id"></a> [folder\_id](#input\_folder\_id) | ID каталога, в котором создаётся API Gateway | `string` | `null` | no |
| <a name="input_labels"></a> [labels](#input\_labels) | Метки ресурса (ключ — значение) | `map(string)` | `null` | no |
| <a name="input_log_options"></a> [log\_options](#input\_log\_options) | Настройки логирования: disabled, log\_group\_id, folder\_id, min\_level | <pre>object({<br/>    disabled     = optional(bool)<br/>    log_group_id = optional(string)<br/>    folder_id    = optional(string)<br/>    min_level    = optional(string)<br/>  })</pre> | `null` | no |
| <a name="input_variables"></a> [variables](#input\_variables) | Переменные для подстановки в спецификацию OpenAPI | `map(string)` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_api_gateway_created_at"></a> [api\_gateway\_created\_at](#output\_api\_gateway\_created\_at) | Время создания API Gateway |
| <a name="output_api_gateway_id"></a> [api\_gateway\_id](#output\_api\_gateway\_id) | ID созданного API Gateway |
| <a name="output_api_gateway_log_group_id"></a> [api\_gateway\_log\_group\_id](#output\_api\_gateway\_log\_group\_id) | ID группы логов API Gateway |
| <a name="output_api_gateway_name"></a> [api\_gateway\_name](#output\_api\_gateway\_name) | Имя созданного API Gateway |
| <a name="output_api_gateway_status"></a> [api\_gateway\_status](#output\_api\_gateway\_status) | Статус созданного API Gateway |
| <a name="output_api_gateway_url"></a> [api\_gateway\_url](#output\_api\_gateway\_url) | URL созданного API Gateway (домен по умолчанию) |
<!-- END_TF_DOCS -->

## License

Apache-2.0 Licensed.
См. [LICENSE](https://github.com/terraform-yacloud-modules/terraform-yandex-api-gateway/blob/main/LICENSE).
