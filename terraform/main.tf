variable "account_number" {
  type    = string
}

variable "availability_zone" {
  type    = string
}

provider "aws" {
  region  = "ap-south-1"
}

