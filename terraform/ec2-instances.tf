resource "aws_instance" "test-instance-with-multiple-enis" {
  ami                     = data.aws_ami.ubuntu.id
  instance_type           = "t2.micro"
  vpc_security_group_ids  = ["${aws_security_group.security-group-for-test-instance-with-multiple-enis.id}"]
  availability_zone       = "${var.availability_zone}"

  tags = {
    Name = "Test-EC2-Instance-With-Multiple-ENIs"
  }
}
