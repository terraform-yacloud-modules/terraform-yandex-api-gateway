# Полнофункциональный пример (complete)

Пример использования модуля со всеми опциями:

- **folder_id** — каталог
- **labels** — метки
- **execution_timeout** — таймаут выполнения
- **connectivity** — подключение к сети (private API)
- **log_options** — логирование (log_group_id или folder_id + min_level)
- **canary** — канареечный релиз (weight + variables)
- **custom_domains** — пользовательские домены (опционально)

## Использование

1. Скопируйте `terraform.tfvars.example` в `terraform.tfvars`.
2. Заполните `folder_id` и `network_id` реальными ID (обязательно для apply).
3. При необходимости задайте `log_group_id` и/или `custom_domains`.
4. Выполните `terraform init`, `terraform plan`, `terraform apply`.
