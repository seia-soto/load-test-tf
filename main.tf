provider "aws" {
  region      = "${local.region}"
  access_key  = "${local.access_key}"
  secret_key  = "${local.secret_key}"
}

resource "aws_lightsail_instance" "jams" {
  count             = 20
  name              = "${local.appname}.${local.domain}-${count.index}"
  availability_zone = "${local.region}a"
  blueprint_id      = "ubuntu_18_04"
  bundle_id         = "small_2_0"
  user_data         = "${file("boot.sh")}"
}
