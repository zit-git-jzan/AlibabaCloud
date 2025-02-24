

terraform {
  required_providers {
  alicloud = {
      source  = "aliyun/alicloud"
      version = "1.140.0"
      
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
  }
}

provider "alicloud" {
  access_key = var.access_key
  secret_key = var.secret_key
  # If not set, cn-beijing will be used.
  region = var.region
}