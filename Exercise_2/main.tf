provider "aws" {
  access_key = "xxxxxxxxx"
  secret_key = "yyyyyyyyy"
  region = var.aws_region
}

resource "aws_lambda_function" "lambda" {
  function_name = "lambda"
  role          = "arn:aws:iam::367001029154:role/udacity_pj2_lambda_role"
  handler       = "lambda.lambda_handler"
  runtime       = "python3.8"
  filename      = "lambda.zip"
}