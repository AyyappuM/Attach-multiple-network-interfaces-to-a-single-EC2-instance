resource "aws_network_interface" "additional-eni-to-ec2" {
  subnet_id       = data.aws_subnet.subnet-in-az-a.id
  security_groups = ["${aws_security_group.security-group-for-test-instance-with-multiple-enis.id}"]
}

resource "aws_network_interface_attachment" "test" {
  instance_id          = aws_instance.test-instance-with-multiple-enis.id
  network_interface_id = aws_network_interface.additional-eni-to-ec2.id
  device_index         = 1
}

resource "aws_eip" "eip-attached-to-the-additional-eni" {
  domain = "vpc"
  network_interface = aws_network_interface.additional-eni-to-ec2.id

  tags = {
    Name = "eip-attached-to-the-additional-eni"
  }
}