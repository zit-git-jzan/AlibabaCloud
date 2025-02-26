data "alicloud_zones" "default" {
  available_resource_creation = "VSwitch"
}

resource "alicloud_vpc" "vpc" {
  vpc_name   = "my-terraform-vpc"
  cidr_block = "10.0.0.0/24"
}

resource "alicloud_vswitch" "foo" {
  vswitch_name = "test1"
  cidr_block   = "10.0.0.0/16"
  vpc_id       = alicloud_vpc.vpc.id
  zone_id      = data.alicloud_zones.default.id
}