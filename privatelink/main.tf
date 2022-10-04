terraform {
  required_providers {
      databricks = {
          source = "databricks/databricks"
      }
      aws = {
          source = "hashicorp/aws"
      }
  }
}

variable "region" { 
  type = string
  default = "ap-northeast-2"
}

variable "databricks_account_id" {
  type = string
  description = "Databricks account id from accounts console"
}

variable "cross_account_arn" {
  type = string
  description = "ARN of cross-account role"
}

variable "databricks_account_username" {
  type = string
}    
variable "databricks_account_password" {
  type = string
}

variable "databricks_aws_account_id" {
  type = string
  description = "Databricks AWS account id"
  default = "280842790059"
}

provider "aws" {
    region = var.region

}

provider "databricks" {
  alias    = "accounts"
  host     = "https://accounts.cloud.databricks.com"
  username = var.databricks_account_username
  password = var.databricks_account_password
}

