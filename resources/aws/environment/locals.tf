locals {
  bounded_contexts = []
#   bounded_contexts = [{
#     name = "LambdaBoilerplate"
#     lambdas = [
#       "example-command-handler-local",
#       "example-view-materializer-local"
#     ]
#     openapi_spec = {
#       "/examples" = {
#         post = {
#           security = [{
#             UserPool = []
#           }]
#           x-amazon-apigateway-integration = {
#             httpMethod           = "POST"
#             payloadFormatVersion = "1.0"
#             type                 = "AWS_PROXY"
#             uri                  = "arn:aws:apigateway:us-east-1:lambda:path/2015-03-31/functions/arn:aws:lambda:us-east-1:624626124579:function:example-command-handler-local/invocations"
#           }
#         }
#         get = {
#           x-amazon-apigateway-integration = {
#             httpMethod           = "POST"
#             payloadFormatVersion = "1.0"
#             type                 = "AWS_PROXY"
#             uri                  = "arn:aws:apigateway:us-east-1:lambda:path/2015-03-31/functions/arn:aws:lambda:us-east-1:624626124579:function:example-view-materializer-local/invocations"
#           }
#         }
#       }
#     }
#   }]
}
