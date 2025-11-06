module "api_gateway" {
  source = "../../"

  api_gateway_name        = "test-api-gateway"
  api_gateway_description = "Простой тестовый API Gateway"
  api_gateway_spec        = <<EOT
openapi: "3.0.0"
info:
  version: 1.0.0
  title: Test API
paths:
  /hello:
    get:
      summary: Say hello
      operationId: hello
      responses:
        '200':
          description: Greeting
          content:
            'text/plain':
              schema:
                type: "string"
      x-yc-apigateway-integration:
        type: dummy
        http_code: 200
        http_headers:
          'Content-Type': "text/plain"
        content:
          'text/plain': "Hello from Yandex API Gateway!\n"
EOT

}