data "aws_subnet" "subnet-in-az-a" {
  filter {
    name   = "availability-zone"
    values = ["${var.availability_zone}"]
  }
}
