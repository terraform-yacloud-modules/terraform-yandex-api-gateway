module "api_gateway" {
  source = "../../"

  api_gateway_name = "minimal-api-gateway"
  api_gateway_spec = <<EOT
openapi: "3.0.0"
info:
  version: 1.0.0
  title: Minimal API
paths:
  /hello:
    get:
      operationId: hello
      responses:
        '200':
          description: OK
      x-yc-apigateway-integration:
        type: dummy
        http_code: 200
        content:
          text/plain: "Hello"
EOT
}
