
locals {
  region = "us-east-1"
  mandatory_tag = {
    Project           = "gitlabiac"
    Builder           = "SHI"
    Owner             = "CONILIUS"
    Application_Owner = var.application_owner
    Group             = "DCS-IAC"
    Component_name    = var.component_name
  }
  vpc_id     = aws_vpc.gitlabiac_vpc[0].id
  creat_vpc  = var.custom_vpc
  azs        = data.aws_availability_zones.available.names
  subnet_ids = [aws_subnet.db_subnet[0].id, aws_subnet.db_subnet[1].id]
  aws_key_pair = data.aws_key_pair.shi_key.key_name
}