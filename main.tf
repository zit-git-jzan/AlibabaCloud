data "alicloud_zones" "default" {
  available_resource_creation = "VSwitch"
}

resource "alicloud_vpc" "vpc" {
  vpc_name   = "my-terraform-vpc"
  cidr_block = "10.0.0.0/16"
}
