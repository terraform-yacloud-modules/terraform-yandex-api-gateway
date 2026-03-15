module "api_gateway" {
  source = "../../"

  api_gateway_name        = "complete-api-gateway"
  api_gateway_description = "Полнофункциональный пример: метки, таймаут, логи, сеть, канареечный релиз"
  folder_id               = var.folder_id
  api_gateway_spec        = local.openapi_spec

  labels = {
    env     = "example"
    project = "complete"
    managed = "terraform"
  }

  execution_timeout = "30"

  connectivity = {
    network_id = var.network_id
  }

  log_options = var.log_group_id != null ? {
    log_group_id = var.log_group_id
    min_level    = "INFO"
    } : {
    folder_id = var.folder_id
    min_level = "WARN"
  }

  canary = {
    weight = 10
  }

  custom_domains = var.custom_domains
}

locals {
  openapi_spec = <<-EOT
openapi: "3.0.0"
info:
  version: 1.0.0
  title: Complete API
paths:
  /hello:
    get:
      summary: Greeting with variable
      operationId: hello
      responses:
        '200':
          description: OK
          content:
            application/json:
              schema:
                type: object
                properties:
                  message:
                    type: string
                  version:
                    type: string
      x-yc-apigateway-integration:
        type: dummy
        http_code: 200
        http_headers:
          Content-Type: application/json
        content:
          application/json: '{"message":"Hello from Complete API","version":"1.0"}'
  /health:
    get:
      operationId: health
      responses:
        '200':
          description: Health check
      x-yc-apigateway-integration:
        type: dummy
        http_code: 200
        content:
          text/plain: "OK"
EOT
}
