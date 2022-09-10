
provider "aws" {
  region  = "us-east-1"
  #profile = "default"
  access_key = var.access_key
  secret_key = var.secret_key


  default_tags {
    tags = local.mandatory_tag
  }
}