provider "aws" {
  region  = "ap-northeast-2" # Please use the default region ID
}

data "aws_availability_zones" "available" {}